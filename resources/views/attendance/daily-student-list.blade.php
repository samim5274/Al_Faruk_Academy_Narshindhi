<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance - {{ $company->name ?? 'SMS' }}</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600&display=swap" rel="stylesheet" />

    <!-- Icon Fonts -->
    <link rel="stylesheet" href="{{ asset('assets/fonts/phosphor/duotone/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/fonts/tabler-icons.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/fonts/feather.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/fonts/material.css') }}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}" id="main-style-link" />

    <!-- Vite (Tailwind last to avoid override) -->
    @vite('resources/css/app.css')
    @vite('resources/js/app.js')
</head>

<body class="bg-gray-50 font-sans">
    
    <!-- Sidebar -->
    @include('layouts.navbar')

    <!-- Header -->
    @include('layouts.header')

    <!-- Flash Message -->
    @include('layouts.message')

    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">
            
            <!-- Breadcrumb -->
            <div class="page-header mb-6">
                <div class="page-block">
                    <div class="page-header-title">
                        <h5 class="mb-1 font-semibold text-gray-800">Attendance Details</h5>
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{url('/class-list')}}">Attendance</a></li>
                        <li class="breadcrumb-item" aria-current="page">Class List</li>
                    </ul>
                </div>
            </div>

            <!-- Card -->
            <!-- CLASS WISE ATTENDANCE -->
            <div class="card rounded-xl border shadow-sm">

                <div class="card rounded-xl border shadow-sm p-6 mb-6">
                    <div class="flex flex-wrap items-center justify-between mb-4 gap-3">
                        <h2 class="text-xl font-bold text-gray-700 flex items-center gap-2">
                            📌 Student Attendance - {{ \Carbon\Carbon::now()->format('d-M-Y') }}
                        </h2>
                        <div class="flex flex-wrap gap-3">
                            <span class="text-black bg-green-200 px-4 py-2 rounded-full font-medium shadow hover:bg-green-300 transition-colors duration-300">
                                Total: {{ $totalStudent }}
                            </span>
                            <span class="text-black bg-blue-200 px-4 py-2 rounded-full font-medium shadow hover:bg-blue-300 transition-colors duration-300">
                                Present: {{ $present }}
                            </span>
                            <span class="text-black bg-yellow-200 px-4 py-2 rounded-full font-medium shadow hover:bg-yellow-300 transition-colors duration-300">
                                Absent: {{ $absent }}
                            </span>
                        </div>
                    </div>
                </div>

                <div class="card rounded-xl border shadow-sm p-6 mb-6">
                    <div class="overflow-y-auto border rounded-lg" style="max-height:650px;">
                        <table class="min-w-full text-sm text-gray-700">
                            <thead class="bg-gray-100 sticky top-0">
                                <tr>
                                    <th class="px-4 py-3 text-center">#</th>
                                    <th class="px-4 py-3">Student</th>
                                    <th class="px-4 py-3 text-center">Class</th>
                                    <th class="px-4 py-3 text-center">Status</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y">
                                @foreach($classWise as $classId => $rows)
                                    @php $class = $rows->first()->class; @endphp
                                    <!-- Class Header -->
                                    <tr class="bg-gray-50">
                                        <td colspan="4" class="px-5 py-3 font-semibold text-gray-800">
                                            📚 {{ $class->name ?? 'N/A' }} - {{ $class->section ?? 'N/A' }}
                                        </td>
                                    </tr>

                                    @foreach($rows as $val)
                                        <tr class="hover:bg-gray-50 transition">
                                            <td class="px-4 py-2 text-center">{{ $loop->iteration }}</td>
                                            <td class="px-4 py-2">{{ $val->student->first_name }} {{ $val->student->last_name }}</td>
                                            <td class="px-4 py-2 text-center">{{ $val->class->name }} - {{ $val->class->section }}</td>
                                            <td class="px-4 py-2 text-center">
                                                <span onclick="openModal({{ $val->id }})"
                                                    class="cursor-pointer px-3 py-1 rounded-full text-xs font-semibold
                                                    {{ $val->status === 'Present'
                                                        ? 'bg-green-100 text-green-700 hover:bg-green-200'
                                                        : 'bg-red-100 text-red-700 hover:bg-red-200' }}">
                                                    {{ $val->status }}
                                                </span>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
            <!-- Card End -->




            @foreach($classWise as $classId => $rows)
                @foreach($rows as $val)
                    <div id="examModal{{ $val->id }}" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50 overflow-auto">
                        <div class="bg-white rounded-2xl shadow-2xl w-full max-w-2xl p-6 relative mx-4 my-8">
                            
                            <!-- Header -->
                            <div class="flex items-center justify-between border-b pb-3 mb-5">
                                <h5 class="text-lg font-semibold text-gray-700 flex items-center gap-2">
                                    <span class="text-blue-600">&#128221;</span> Edit Attendance of {{ $val->student->first_name }} {{ $val->student->last_name }}
                                </h5>
                                <button onclick="closeModal({{ $val->id }})" class="text-gray-400 hover:text-red-600 transition duration-300 text-2xl">&times;</button>
                            </div>

                            <!-- Form -->
                            <form action="{{ url('/edit-attendance/'.$val->id) }}" method="POST" class="space-y-6">
                                @csrf

                                <!-- Class & Date Card -->
                                <div class="bg-gray-50 border border-gray-200 rounded-lg p-5 shadow-sm mb-4">
                                    <div class="flex flex-col sm:flex-row sm:justify-between sm:items-center gap-2 sm:gap-0">
                                        <h5 class="text-base font-semibold text-gray-800 flex items-center gap-2">
                                            <span class="text-green-600">&#127891;</span> {{ $val->class->name }} ({{ $val->class->section }})
                                        </h5>
                                        <h5 class="text-base font-semibold text-gray-700 flex items-center gap-2">
                                            <span class="text-blue-600">&#128197;</span> Date: {{ \Carbon\Carbon::parse($val->attendance_date)->format('d M, Y') }}
                                        </h5>
                                    </div>
                                    <h5 class="text-base font-semibold text-gray-800 mt-3 flex items-center gap-2">
                                        <span class="text-purple-600">&#128218;</span> Teacher: {{ $val->class->teachers->first_name ?? '-' }} {{ $val->class->teachers->last_name ?? '-' }}
                                    </h5>
                                </div>

                                <!-- Attendance Status -->
                                <div>
                                    <label class="font-medium mb-2 block text-gray-700">Attendance Status</label>
                                    <div class="flex flex-col sm:flex-row gap-4 mt-2">
                                        <label class="flex items-center gap-2 cursor-pointer">
                                            <input type="radio" name="attendanceStatus" value="Present"
                                                class="h-5 w-5 border-gray-400 focus:ring-2 focus:ring-green-400"
                                                {{ $val->status === 'Present' ? 'checked' : '' }} required>
                                            <span class="text-gray-700 font-medium hover:text-green-700 transition duration-200">Present</span>
                                        </label>
                                        <label class="flex items-center gap-2 cursor-pointer">
                                            <input type="radio" name="attendanceStatus" value="Absent"
                                                class="h-5 w-5 border-gray-400 focus:ring-2 focus:ring-red-400"
                                                {{ $val->status === 'Absent' ? 'checked' : '' }}>
                                            <span class="text-gray-700 font-medium hover:text-red-700 transition duration-200">Absent</span>
                                        </label>
                                    </div>
                                </div>

                                <!-- Submit Button -->
                                <div class="text-center">
                                    <button type="submit"
                                        class="bg-green-500 hover:bg-green-600 transition duration-300 text-white w-full rounded-lg py-2 px-6 font-medium shadow-sm hover:shadow-md">
                                        Update Attendance
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                @endforeach
            @endforeach







        </div>
    </div>
    <!-- [ Main Content ] end -->

    @include('layouts.footer')
        
    <!-- Scripts -->
    <script src="{{ asset('assets/js/plugins/simplebar.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/popper.min.js') }}"></script>
    <script src="{{ asset('assets/js/icon/custom-icon.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/feather.min.js') }}"></script>
    <script src="{{ asset('assets/js/component.js') }}"></script>
    <script src="{{ asset('assets/js/theme.js') }}"></script>
    <script src="{{ asset('assets/js/script.js') }}"></script>

    <script>
        // Pop up message (auto-hide)
        document.addEventListener("DOMContentLoaded", () => {
            const popup = document.getElementById('popup');
            if (popup) {
                // Show popup
                setTimeout(() => {
                    popup.classList.remove('opacity-0', 'translate-y-10');
                }, 100); // small delay for animation

                // Hide popup after 3 seconds
                setTimeout(() => {
                    popup.classList.add('opacity-0', 'translate-y-10');
                }, 3000);
            }
        });

        function openModal(id) {
            document.getElementById('examModal'+ id).classList.remove('hidden');
            document.getElementById('examModal'+ id).classList.add('flex');
        }

        function closeModal(id) {
            document.getElementById('examModal'+ id).classList.remove('flex');
            document.getElementById('examModal'+ id).classList.add('hidden');
        }
    </script>

    <script> layout_change('false'); </script>
    <script> layout_theme_sidebar_change('dark'); </script>
    <script> change_box_container('false'); </script>
    <script> layout_caption_change('true'); </script>
    <script> layout_rtl_change('false'); </script>
    <script> preset_change('preset-1'); </script>
    <script> main_layout_change('vertical'); </script>

</body>
</html>
