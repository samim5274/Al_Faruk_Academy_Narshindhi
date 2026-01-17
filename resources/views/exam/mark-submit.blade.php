<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam's - {{ $company->name ?? "SMS" }}</title>

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

    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">
            <!-- [ Header ] end -->
            @include('layouts.message')
            <!-- Breadcrumb -->
            <div class="page-header mb-6">
                <div class="page-block">
                    <div class="page-header-title">
                        <h5 class="mb-1 font-semibold text-gray-800">Result Details</h5>
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{url('/exam-class-list')}}">Class</a></li>
                        <li class="breadcrumb-item" aria-current="page">Subject</li>
                        <li class="breadcrumb-item" aria-current="page">Mark</li>
                    </ul>
                </div>
            </div>

            <!-- Card -->
            <div class="card rounded-lg border shadow-sm ">
                
                <div class="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden">
                    {{-- Header --}}
                    <div class="px-6 py-5 border-b bg-gray-50">
                        <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-3">
                            <div>
                                <h2 class="text-lg font-bold text-gray-800"><span class="text-green-500 text-xl me-2">📌</span>Result Sheet</h2>
                                <p class="text-sm text-gray-500 mt-1">
                                    Class: <span class="font-semibold text-gray-700">{{ $sub->room->name ?? 'N/A' }}</span>
                                    <span class="mx-2 text-gray-300">•</span>
                                    Section: <span class="font-semibold text-gray-700">{{ $sub->room->section ?? 'N/A' }}</span>
                                    <span class="mx-2 text-gray-300">•</span>
                                    Subject: <span class="font-semibold text-gray-700">{{ $sub->name ?? 'N/A' }}</span>
                                    <span class="mx-2 text-gray-300">•</span>
                                    Exam: <span class="font-semibold text-gray-700">{{ $exam->name ?? 'N/A' }}</span>
                                    <span class="mx-2 text-gray-300">•</span>
                                    Max Marks: <span class="font-semibold text-gray-700">{{ $exam->max_marks }}</span>
                                </p>
                            </div>

                            {{-- Optional search (frontend only) --}}
                            <div class="w-full md:w-72">
                                <div class="relative">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400">🔎</span>
                                    <input id="resultSearch" type="text" placeholder="Search roll/name..."
                                        class="w-full pl-10 pr-3 py-2.5 rounded-xl border border-gray-200 focus:outline-none focus:ring-2 focus:ring-blue-200 focus:border-blue-300"
                                        oninput="filterResults(this.value)">
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- Table Header (desktop) --}}
                    <div class="hidden lg:block px-6 py-3 bg-white border-b">
                        <div class="grid grid-cols-12 text-xs font-semibold text-gray-500 uppercase">
                            <div class="col-span-1">Roll</div>
                            <div class="col-span-4">Student</div>
                            <div class="col-span-2 text-center">Marks</div>
                            <div class="col-span-1 text-center">Grade</div>
                            <div class="col-span-1 text-center">GPA</div>
                            <div class="col-span-2">Remarks</div>
                            <div class="col-span-1 text-right">Action</div>
                        </div>
                    </div>

                    {{-- Rows --}}
                    <div class="p-4 md:p-6 space-y-3" id="resultRows">
                        @foreach($students as $val)
                            @php
                                $studentMarks = $marks->firstWhere('student_id', $val->id);
                                $hasMarks = (bool) $studentMarks;

                                $marksObtained = $hasMarks ? ($studentMarks->marks_obtained ?? null) : null;
                                $grade = $hasMarks ? ($studentMarks->grade ?? 'N/A') : '—';
                                $gpa = $hasMarks ? ($studentMarks->gpa ?? null) : null;
                                $remarks = $hasMarks ? ($studentMarks->remarks ?? '-') : '-';

                                $isPass = $hasMarks && $gpa !== null ? ($gpa >= 2.0) : false;

                                $name = trim(($val->first_name ?? '').' '.($val->last_name ?? ''));
                                $roll = $val->roll_number ?? 'N/A';
                                $blood = $val->blood_group ?? 'N/A';
                                $address = $val->address1 ?? 'Address not available';
                            @endphp

                            <div class="group bg-white border border-gray-200 rounded-2xl shadow-sm hover:shadow-md transition"
                                data-search="{{ strtolower($roll.' '.$name) }}">

                                <div class="p-4 md:p-5">
                                    <div class="grid grid-cols-1 lg:grid-cols-12 gap-4 items-center">

                                        {{-- Roll --}}
                                        <div class="lg:col-span-1">
                                            <div class="text-sm font-bold text-gray-800">{{ $roll }}</div>
                                            <div class="text-xs text-gray-400">Roll</div>
                                        </div>

                                        {{-- Student --}}
                                        <div class="lg:col-span-4 min-w-0">
                                            <div class="flex items-center gap-3">
                                                <div class="w-11 h-11 rounded-xl border border-gray-200 bg-gray-50 overflow-hidden flex items-center justify-center">
                                                    @if(!empty($val->photo))
                                                        <img src="{{ asset('img/student/' . $val->photo) }}" class="w-full h-full object-cover" alt="student">
                                                    @else
                                                        <span class="text-gray-400 text-sm font-bold">
                                                            {{ strtoupper(substr($val->first_name ?? 'S',0,1)) }}{{ strtoupper(substr($val->last_name ?? 'T',0,1)) }}
                                                        </span>
                                                    @endif
                                                </div>

                                                <div class="min-w-0">
                                                    <a href="{{ url('/edit-student-view/'.$val->id) }}"
                                                    class="block font-semibold text-gray-900 hover:text-blue-600 transition truncate">
                                                        {{ $name }}
                                                    </a>

                                                    <div class="flex flex-wrap items-center gap-2 text-xs text-gray-500 mt-1">
                                                        <span class="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-red-50 text-red-700 border border-red-100">
                                                            <i class="fa fa-droplet"></i> {{ $blood }}
                                                        </span>
                                                        <span class="text-gray-300">•</span>
                                                        <span class="truncate max-w-[340px]">{{ $address }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        {{-- Marks --}}
                                        <div class="lg:col-span-2 text-center">
                                            @if($hasMarks)
                                                <div class="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-sm font-semibold border
                                                    {{ $isPass ? 'bg-green-50 text-green-700 border-green-200' : 'bg-red-50 text-red-700 border-red-200' }}">
                                                    <span>{{ $marksObtained }}</span>
                                                    <span class="text-gray-300">/</span>
                                                    <span class="text-gray-500">{{ $exam->max_marks }}</span>
                                                </div>
                                                <div class="text-[11px] text-gray-400 mt-1">
                                                    {{ $isPass ? 'Pass' : 'Fail' }}
                                                </div>
                                            @else
                                                <div class="inline-flex items-center px-3 py-1.5 rounded-full bg-gray-50 text-gray-500 border border-gray-200 text-sm">
                                                    Not set
                                                </div>
                                            @endif
                                        </div>

                                        {{-- Grade --}}
                                        <div class="lg:col-span-1 text-center">
                                            <div class="text-sm font-bold text-gray-800">{{ $grade }}</div>
                                            <div class="text-xs text-gray-400">Grade</div>
                                        </div>

                                        {{-- GPA --}}
                                        <div class="lg:col-span-1 text-center">
                                            <div class="text-sm font-bold text-gray-800">{{ $gpa ?? '—' }}</div>
                                            <div class="text-xs text-gray-400">GPA</div>
                                        </div>

                                        {{-- Remarks --}}
                                        <div class="lg:col-span-2">
                                            @if($remarks != "N/A")
                                            <span class="inline-flex items-center px-3 py-1.5 rounded-full bg-blue-50 text-blue-700 border border-blue-100 text-sm font-semibold">
                                                {{ $remarks }}
                                            </span>
                                            @endif
                                        </div>

                                        {{-- Action --}}
                                        <div class="lg:col-span-1">
                                            <form action="{{ url('/submit-mark/'.$val->id) }}" method="POST" class="flex lg:justify-end gap-2">
                                                @csrf
                                                <input type="hidden" name="subject_id" value="{{ $sub->id }}">
                                                <input type="hidden" name="class_id" value="{{ $room->id }}">
                                                <input type="hidden" name="exam_id" value="{{ $exam->id }}">

                                                <input type="number" name="marks_obtained" min="0" max="{{ $exam->max_marks }}" step="0.01"
                                                    required value="{{ $hasMarks ? $marksObtained : '' }}"
                                                    class="w-28 rounded-xl border border-gray-200 px-3 py-2 text-sm text-gray-800
                                                            focus:outline-none focus:ring-2 focus:ring-green-200 focus:border-green-300"
                                                    placeholder="Mark">

                                                @if($hasMarks)
                                                    <button type="submit" name="edit" value="1"
                                                            onclick="return confirm('Are you sure want to update this mark?')"
                                                            class="px-3 py-2 rounded-xl bg-blue-600 hover:bg-blue-700 text-white text-sm font-semibold transition">
                                                        Update
                                                    </button>
                                                @else
                                                    <button type="submit"
                                                            onclick="return confirm('Are you sure want to save this mark?')"
                                                            class="px-3 py-2 rounded-xl bg-green-600 hover:bg-green-700 text-white text-sm font-semibold transition">
                                                        Save
                                                    </button>
                                                @endif
                                            </form>
                                        </div>

                                    </div>
                                </div>

                                {{-- Mobile footer labels --}}
                                <div class="lg:hidden px-4 md:px-5 pb-4">
                                    <div class="grid grid-cols-2 gap-2 text-xs text-gray-500">
                                        <div class="bg-gray-50 border border-gray-200 rounded-xl p-3">
                                            <div class="text-gray-400">Grade</div>
                                            <div class="font-bold text-gray-800">{{ $grade }}</div>
                                        </div>
                                        <div class="bg-gray-50 border border-gray-200 rounded-xl p-3">
                                            <div class="text-gray-400">GPA</div>
                                            <div class="font-bold text-gray-800">{{ $gpa ?? '—' }}</div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        @endforeach
                    </div>
                </div>

            </div>
            <!-- Card End -->
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

        // search student
        function filterResults(q){
            q = (q || '').toLowerCase().trim();
            document.querySelectorAll('#resultRows [data-search]').forEach(el => {
                const hay = el.getAttribute('data-search') || '';
                el.style.display = hay.includes(q) ? '' : 'none';
            });
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
