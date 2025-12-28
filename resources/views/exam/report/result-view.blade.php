<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results - {{ $company->name ?? "SMS" }}</title>

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
                        <li class="breadcrumb-item"><a href="{{url('/result-and-report-analytics')}}">Class list</a></li>
                        <li class="breadcrumb-item"><a href="{{url('/result-report/class/'.$class)}}">Student list</a></li>
                        <li class="breadcrumb-item" aria-current="page">Student list</li>
                    </ul>
                </div>
            </div>

            <!-- Card -->
            @php
                $student = optional(optional($marks->first())->first())->student;
            @endphp

            <div class="card rounded-lg border shadow-sm">
                <!-- ================= Student Header ================= -->
                <div class="bg-gray-100 border-b px-4 py-4 sm:py-6 rounded-t-lg">
                    <div class="flex items-center justify-between">
                        <h2 class="text-lg sm:text-xl font-bold text-gray-800 flex items-center gap-2">
                            <span class="text-blue-500 text-xl">📌</span>
                            Student:
                            <span class="text-gray-700">
                                {{ $student->first_name ?? 'N/A' }}
                                {{ $student->last_name ?? '' }}
                            </span>
                        </h2>
                    </div>
                </div>

                <!-- ================= Table ================= -->
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border rounded-xl shadow-md">
                        <tbody class="divide-y divide-gray-200">

                            @foreach($marks as $examName => $examMarks)

                                <!-- ===== Exam Title ===== -->
                                <tr>
                                    <td colspan="6"
                                        class="px-6 py-3 bg-gradient-to-r from-indigo-50 to-indigo-100
                                        text-indigo-500 font-semibold text-lg">
                                        📘 {{ $examName }} Examination
                                    </td>
                                </tr>

                                <!-- ===== Marks Rows ===== -->
                                @foreach($examMarks as $val)
                                    <tr class="hover:bg-gray-50 transition">
                                        <td class="px-6 py-4 text-md text-gray-900">
                                            {{ $loop->iteration }}
                                        </td>

                                        <td class="px-6 py-4 text-md text-gray-900 font-semibold">
                                            {{ $val->subject->name ?? '-' }}
                                        </td>

                                        <td class="px-6 py-4 text-md text-center">
                                            <span class="px-3 py-1 rounded-full text-sm
                                                {{ str_contains(strtolower($examName),'mid') ? 'bg-blue-100 text-blue-700' :
                                                (str_contains(strtolower($examName),'final') ? 'bg-green-100 text-green-700' :
                                                'bg-purple-100 text-purple-700') }}">
                                                {{ $examName }}
                                            </span>
                                        </td>

                                        <td class="px-6 py-4 text-md text-center font-semibold text-gray-700">
                                            {{ $val->marks_obtained ?? '-' }}
                                        </td>

                                        <td class="px-6 py-4 text-md text-center">
                                            <span class="px-3 py-1 rounded-md bg-yellow-100 text-yellow-700 font-semibold">
                                                {{ $val->grade ?? '-' }}
                                            </span>
                                        </td>

                                        <td class="px-6 py-4 text-md text-center">
                                            <span class="px-3 py-1 rounded-md bg-indigo-100 text-indigo-700 font-semibold">
                                                {{ $val->gpa ?? '0.00' }}
                                            </span>
                                        </td>
                                    </tr>
                                @endforeach

                                <!-- ===== Exam Footer ===== -->
                                <tr>
                                    <td colspan="6"
                                        class="px-6 py-3 text-right bg-gray-50 font-semibold text-gray-700">
                                        🎯 Average GPA:
                                        <span class="text-indigo-600">
                                            {{ number_format($examMarks->avg('gpa'), 2) }}
                                        </span>
                                    </td>
                                </tr>

                            @endforeach

                        </tbody>
                    </table>
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
