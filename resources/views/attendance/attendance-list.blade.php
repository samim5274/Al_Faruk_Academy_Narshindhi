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
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="bg-gray-50 font-sans">
    
    <!-- Sidebar -->
    @include('layouts.navbar')

    <!-- Header -->
    @include('layouts.header')

    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">
            <!-- [ Header ] end -->
            @include('layouts.message')
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
            <!-- <div class="card rounded-lg border shadow-sm">
                <div class="card-header px-5 py-4 border-b bg-gray-50 rounded-t-xl">
                    <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
                        
                        <h3 class="text-lg md:text-xl font-semibold text-gray-700 flex items-center gap-2">
                            📌 Student Attendance
                            <span class="text-sm font-medium text-gray-500">
                                {{ $attend[0]->room->name ?? 'N/A' }}
                                ({{ $attend[0]->room->section ?? 'N/A' }})
                            </span>
                        </h3>
                        
                        <div class="flex flex-wrap gap-3">
                            <span
                                class="flex items-center gap-1 text-gray-800 bg-green-200 px-4 py-2 rounded-full text-sm font-semibold shadow-sm hover:bg-green-300 transition">
                                ✅ Total: {{ $totalStudent }}
                            </span>
                            <span
                                class="flex items-center gap-1 text-gray-800 bg-blue-200 px-4 py-2 rounded-full text-sm font-semibold shadow-sm hover:bg-blue-300 transition">
                                🟢 Present: {{ $present }}
                            </span>
                            <span
                                class="flex items-center gap-1 text-gray-800 bg-red-200 px-4 py-2 rounded-full text-sm font-semibold shadow-sm hover:bg-red-300 transition">
                                ❌ Absent: {{ $absent }}
                            </span>
                        </div>
                    </div>
                </div>             
                <div class="card-body p-6 bg-gray-50 rounded-b-lg">
                    <div class="overflow-x-auto">
                        <table class="min-w-full table-auto border-collapse">
                            <tbody class="bg-white divide-y divide-gray-200">
                                @foreach($student as $val)
                                <tr class="hover:bg-gray-50">
                                    <td class="px-4 py-3 whitespace-nowrap">
                                        <span class="text-gray-400 text-sm">{{ $val->roll_number }}</span>
                                    </td>
                                    
                                     <td class="px-4 py-3 whitespace-nowrap">
                                        @if($val->photo)
                                            <a href="{{ url('/edit-student-view/'.$val->id) }}">
                                                <img class="w-12 h-12 rounded-full border border-gray-300 object-cover" src="{{ asset('img/student/' . $val->photo) }}" alt="student-photo" />
                                            </a>
                                        @else
                                            <span class="text-gray-400 text-sm">No Image</span>
                                        @endif
                                    </td> 

                                    <td class="px-4 py-3 whitespace-nowrap">
                                        <div class="flex flex-col gap-1">
                                            <a href="{{ url('/edit-student-view/'.$val->id) }}" class="text-gray-900 font-semibold hover:text-blue-600 transition">
                                                {{ $val->first_name }} {{ $val->last_name }} - <i class="fa fa-droplet text-red-500"></i> {{ $val->blood_group }}
                                            </a>
                                            <span class="text-gray-500 text-sm">{{ $val->address1 }}</span>
                                        </div>
                                    </td>

                                    <td class="px-4 py-3 whitespace-nowrap">
                                        <div class="flex flex-col gap-1">
                                            <div class="mb-4">
                                                <label class="block text-gray-600 mb-1">Remarks</label>
                                                <div class="flex space-x-6">
                                                    <label class="inline-flex items-center">
                                                        <input type="radio" name="remarks{{$val->id}}" checked value="On time" class="text-green-600 focus:ring-green-500">
                                                        <span class="ml-2 text-gray-700">On time</span>
                                                    </label>

                                                    <label class="inline-flex items-center">
                                                        <input type="radio" name="remarks{{$val->id}}" value="Sick Leave" class="text-green-600 focus:ring-green-500">
                                                        <span class="ml-2 text-gray-700">Sick Leave</span>
                                                    </label>

                                                    <label class="inline-flex items-center">
                                                        <input type="radio" name="remarks{{$val->id}}" value="Late" class="text-green-600 focus:ring-green-500">
                                                        <span class="ml-2 text-gray-700">Late</span>
                                                    </label>

                                                    <label class="inline-flex items-center">
                                                        <input type="radio" name="remarks{{$val->id}}" value="Absent" class="text-green-600 focus:ring-green-500">
                                                        <span class="ml-2 text-gray-700">Absent</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </td>

                                    <td class="px-4 py-3 whitespace-nowrap text-right">
                                        <div class="flex gap-2 justify-end">
                                            <a href="{{url('/std-absend/'.$val->id)}}" class="bg-red-500 hover:bg-red-600 text-white text-xs px-2 py-1 rounded flex items-center justify-center">
                                                <i class="fa-solid fa-xmark"></i>
                                            </a>
                                            <a href="{{url('/std-present/'.$val->id)}}" class="bg-green-500 hover:bg-green-600 text-white text-xs px-2 py-1 rounded flex items-center justify-center">
                                                <i class="fa-solid fa-check"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div> 
                <div class="card-body">                    
                    <div class="overflow-x-auto">
                        <table class="min-w-full text-sm text-left text-gray-600 border border-gray-200 rounded-lg">
                            <thead class="bg-gray-100 text-gray-700 uppercase text-xs">
                                <tr>
                                    <th class="px-4 py-3 border text-center">Roll No.</th>
                                    <th class="px-4 py-3 border">Student Name</th>
                                    <th class="px-4 py-3 border text-center">Date</th>
                                    <th class="px-4 py-3 border text-center">Status</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-200 text-sm text-gray-700">
                                @foreach($attend as $val)
                                <tr class="hover:bg-gray-50 transition">
                                    
                                    <td class="px-4 py-3 border text-center font-medium text-gray-600">
                                        {{ $val->student->roll_number }}
                                    </td>
                                    <td class="px-4 py-3 border"> {{ $val->student->first_name }} {{ $val->student->last_name }}</td>
                                    <td class="px-4 py-3 border text-center"> {{ \Carbon\Carbon::parse($val->attendance_date)->format('d M, Y') }}</td>
                                    <td class="px-4 py-3 border text-center">
                                        @if($val->status == 'Present')
                                            <span class="px-3 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-700" onclick="openModal({{ $val->id }})">Present</span>
                                        @else
                                            <span class="px-3 py-1 rounded-full text-xs font-semibold bg-red-100 text-red-700" onclick="openModal({{ $val->id }})">Absent</span>
                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>

                        </table>
                    </div>
                </div> 
            </div> -->
            <!-- Card End -->

            <div class="!grid grid-cols-1 lg:grid-cols-12 gap-6 items-start">

                {{-- LEFT: TABLE --}}
                @php $info = $attend->first(); @endphp
                <div class="lg:!col-span-4 space-y-6">
                    {{-- Class Details --}}                    
                    <div class="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden">
                        <div class="px-6 py-4 border-b bg-gray-50">
                            <h3 class="text-base font-semibold text-gray-800">Class Details</h3>
                        </div>
                        
                        <div class="p-6">
                            <div class="bg-gray-50 border border-gray-200 rounded-xl p-5 shadow-sm">
                                <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
                                    <h5 class="text-sm sm:text-base font-semibold text-gray-800 flex items-center gap-2">
                                        <span class="text-green-600">🎓</span>
                                        {{ $info->class->name ?? 'N/A' }} ({{ $info->class->section ?? 'N/A' }})
                                    </h5>

                                    <h5 class="text-sm sm:text-base font-semibold text-gray-700 flex items-center gap-2">
                                        <span class="text-blue-600">📅</span>
                                        Date:
                                        {{ $info ? \Carbon\Carbon::parse($info->attendance_date)->format('d M, Y') : 'N/A' }}
                                    </h5>
                                </div>

                                <div class="mt-4">
                                    <h5 class="text-sm sm:text-base font-semibold text-gray-800 flex items-center gap-2">
                                        <span class="text-purple-600">📚</span>
                                        Teacher:
                                        {{ $info->class->teachers->first_name ?? '-' }}
                                        {{ $info->class->teachers->last_name ?? '-' }}
                                    </h5>
                                </div>

                                {{-- Optional: extra info --}}
                                <div class="mt-4 grid grid-cols-1 sm:grid-cols-2 gap-3">
                                    <div class="rounded-xl border border-gray-200 bg-white p-4">
                                        <div class="text-xs text-gray-500">Total Students</div>
                                        <div class="text-lg font-bold text-gray-800">{{ $totalStudent ?? 0 }}</div>
                                    </div>

                                    <div class="rounded-xl border border-gray-200 bg-white p-4">
                                        <div class="text-xs text-gray-500">Attendance Status</div>
                                        <div class="text-sm font-semibold text-gray-800">
                                            Present: {{ $present ?? 0 }} • Absent: {{ $absent ?? 0 }}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    {{-- Totals Card --}}
                    <div class="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden">
                        <div class="px-6 py-4 border-b bg-gray-50">
                            <h3 class="text-base font-semibold text-gray-800">Summary</h3>
                            <p class="text-xs text-gray-500 mt-1">Today / Selected date overview</p>
                        </div>

                        <div class="p-6 space-y-3">
                            <div class="flex items-center justify-between bg-green-50 border border-green-200 rounded-xl px-4 py-3">
                                <span class="text-sm font-semibold text-green-700">✅ Total</span>
                                <span class="text-sm font-bold text-green-800">{{ $totalStudent ?? 0 }}</span>
                            </div>

                            <div class="flex items-center justify-between bg-blue-50 border border-blue-200 rounded-xl px-4 py-3">
                                <span class="text-sm font-semibold text-blue-700">🟢 Present</span>
                                <span class="text-sm font-bold text-blue-800">{{ $present ?? 0 }}</span>
                            </div>

                            <div class="flex items-center justify-between bg-red-50 border border-red-200 rounded-xl px-4 py-3">
                                <span class="text-sm font-semibold text-red-700">❌ Absent</span>
                                <span class="text-sm font-bold text-red-800">{{ $absent ?? 0 }}</span>
                            </div>
                        </div>
                    </div>
                </div>
                


                {{-- RIGHT: CALENDAR + TOTALS --}}
                <div class="lg:!col-span-8">
                    <div class="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden">

                        {{-- Table Header --}}
                        <div class="px-6 py-4 border-b bg-gray-50 flex items-center justify-between">
                            <h3 class="text-base md:text-lg font-semibold text-gray-800">
                                Attendance List
                            </h3>

                            {{-- Optional: Small Note --}}
                            <span class="text-xs text-gray-500">
                                Showing: {{ count($attend) }} records
                            </span>
                        </div>

                        {{-- Table Body --}}
                        <div class="p-4 md:p-6">
                            <div class="overflow-x-auto border border-gray-200 rounded-2xl">
                                <table class="min-w-full text-sm">
                                    <thead class="bg-gray-50 text-gray-600 uppercase text-xs">
                                        <tr>
                                            <th class="px-5 py-3 text-center font-semibold border-b">Roll No.</th>
                                            <th class="px-5 py-3 text-left font-semibold border-b">Student Name</th>
                                            <th class="px-5 py-3 text-center font-semibold border-b">Date</th>
                                            <th class="px-5 py-3 text-center font-semibold border-b">Status</th>
                                        </tr>
                                    </thead>

                                    <tbody class="divide-y divide-gray-100 text-gray-700">
                                        @forelse($attend as $val)
                                            <tr class="hover:bg-gray-50/70 transition">
                                                <td class="px-5 py-4 font-medium text-gray-700 text-center">
                                                    {{ $val->student->roll_number ?? 'N/A' }}
                                                </td>

                                                <td class="px-5 py-4">
                                                    <div class="font-semibold text-gray-800">
                                                        {{ $val->student->first_name ?? '' }} {{ $val->student->last_name ?? '' }}
                                                    </div>
                                                    <div class="text-xs text-red-500 mt-0.5">
                                                        <i class="fa fa-droplet"></i> {{ $val->student->blood_group }}
                                                    </div>
                                                </td>

                                                <td class="px-5 py-4 text-center text-gray-600">
                                                    {{ \Carbon\Carbon::parse($val->attendance_date)->format('d M, Y') }}
                                                </td>

                                                <td class="px-5 py-4 text-center">
                                                    @if(($val->status ?? '') == 'Present')
                                                        <button
                                                            type="button"
                                                            onclick="openModal({{ $val->id }})"
                                                            class="inline-flex items-center px-3 py-1 rounded-full text-xs font-semibold
                                                                bg-green-100 text-green-700 border border-green-200 hover:bg-green-200 transition">
                                                            Present
                                                        </button>
                                                    @else
                                                        <button
                                                            type="button"
                                                            onclick="openModal({{ $val->id }})"
                                                            class="inline-flex items-center px-3 py-1 rounded-full text-xs font-semibold
                                                                bg-red-100 text-red-700 border border-red-200 hover:bg-red-200 transition">
                                                            Absent
                                                        </button>
                                                    @endif
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="4" class="px-5 py-10 text-center text-gray-500">
                                                    No attendance data found.
                                                </td>
                                            </tr>
                                        @endforelse
                                    </tbody>

                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



    @foreach($attend as $val)
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
