<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results Marks - {{ $company->name ?? "SMS" }}</title>

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
                        <h5 class="mb-1 font-semibold text-gray-800">Report & Result Analytices</h5>
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{url('/total-report-result')}}">Class list</a></li>
                        <li class="breadcrumb-item" aria-current="page">Student list</li>
                    </ul>
                </div>
            </div>

            <!-- Card -->
            <!-- <div class="card rounded-lg border shadow-sm ">
                <div class="bg-gray-100 border-b px-4 py-4 sm:py-6 rounded-t-lg">
                    <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
                        
                        <h2 class="text-lg sm:text-xl font-bold text-gray-800 flex items-center gap-2">
                            <span class="text-blue-500 text-xl">📌</span>
                            <span class="text-gray-700">{{ $students[0]->room->name ?? 'N/A' }}</span> 
                            (<span class="text-gray-700">{{ $students[0]->room->section ?? 'N/A' }}</span>)
                        </h2>
                    </div>
                </div>
                 <table class="table table-striped table-hover table-bordered align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Student Name</th>
                            @foreach($subjects as $subject)
                                <th>{{ $subject->name }}</th>
                            @endforeach
                            <th class="text-end">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($studentResults as $key => $data)
                        <tr>
                            <td class="fw-bold">{{ $key + 1 }}</td>
                            <td>{{ $data['student']->first_name }} {{ $data['student']->last_name }}</td>
                            @foreach($subjects as $subject)
                                @php
                                    $result = $data['student']->results->firstWhere('subject_id', $subject->id);
                                @endphp
                                <td class="{{ $result && $result->marks_obtained < 40 ? 'text-danger fw-bold' : '' }}">
                                    {{ $result ? $result->marks_obtained : '-' }}
                                </td>
                            @endforeach
                            <td class="text-end fw-bold text-primary">{{ $data['total_marks'] }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot class="table-light">
                        <tr>
                            <td colspan="2" class="fw-bold text-center">Class Average</td>
                            @foreach($subjects as $subject)
                                @php
                                    $avg = $studentResults
                                        ? round(
                                            collect($studentResults)->map(function($s) use($subject) {
                                                $r = $s['student']->results->firstWhere('subject_id', $subject->id);
                                                return $r ? $r->marks_obtained : 0;
                                            })->avg(), 
                                        2)
                                        : 0;
                                @endphp
                                <td class="fw-semibold">{{ $avg }}</td>
                            @endforeach
                            <td></td>
                        </tr>
                    </tfoot>
                </table> 
            </div> -->

            <div class="row g-4">

                <!-- ================= Room Header ================= -->
                <div class="col-12">
                    <div class="bg-gray-100 border rounded-lg px-4 py-4 shadow-sm">
                        <h2 class="text-lg font-bold text-gray-800 flex items-center gap-2">
                            📌 Room:
                            {{ $students[0]->room->name ?? 'N/A' }}
                            ({{ $students[0]->room->section ?? 'N/A' }})
                        </h2>
                    </div>
                </div>

                <!-- ================= Student Cards ================= -->
                @foreach($studentResults as $index => $data)
                    <div class="col-md-6 col-lg-4">
                        <div class="card shadow-sm border-0 h-100 rounded-lg">

                            <!-- Student Name -->
                            <div class="card-header bg-primary text-gray-800">
                                <h4>
                                    {{ $index + 1 }}.
                                    {{ $data['student']->first_name }}
                                    {{ $data['student']->last_name }}
                                </h4>
                            </div>

                            <!-- Exam-wise Results -->
                            <div class="card-body p-2">

                                @foreach($data['exam_results'] as $exam)
                                    <div class="mb-3 border rounded">

                                        <!-- Exam Title -->
                                        <div class="bg-light px-2 py-1 font-semibold text-primary">
                                            📝 {{ $exam['exam_name'] }}
                                        </div>

                                        <!-- Subject Table -->
                                        <table class="table table-sm table-bordered mb-0">
                                            <tbody>
                                                @foreach($exam['subjects'] as $subject)
                                                    <tr>
                                                        <td>{{ $subject['subject'] }}</td>
                                                        <td class="text-center">
                                                            @if($subject['marks'] !== null)
                                                                <span class="{{ $subject['marks'] < 40 ? 'text-danger fw-bold' : '' }}">
                                                                    {{ $subject['marks'] }}
                                                                </span>
                                                            @else
                                                                -
                                                            @endif
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>

                                        <!-- Exam Total -->
                                        <div class="bg-gray-100 text-end px-2 py-1 fw-bold">
                                            Exam Total:
                                            <span class="text-primary">
                                                {{ $exam['total'] }}
                                            </span>
                                        </div>

                                    </div>
                                @endforeach

                            </div>

                            <!-- Overall Total -->
                            <div class="card-footer text-center text-lg font-semibold bg-light">
                                🎯 Overall Total:
                                <span class="text-[#3F4D67]">
                                    {{ $data['overall_total'] }}
                                </span>
                            </div>

                        </div>
                    </div>
                @endforeach

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
