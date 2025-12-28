<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ Auth::guard('student')->user()->first_name }} {{ Auth::guard('student')->user()->last_name }} - {{ $company->name ?? "SMS" }}</title>

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

<body>
    
    <!-- [ Sidebar Menu ] start -->
    @include('studentPortal.layouts.navbar')
    <!-- [ Sidebar Menu ] end -->
     
    <!-- [ Header Topbar ] start -->
    @include('studentPortal.layouts.header')
    <!-- [ Header ] end -->

    <!-- Flash Message -->
    @include('layouts.message')

    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">
            <!-- Exams Grid -->

             <!-- 1st line change -->
            <div class="card rounded-lg border shadow-sm">
                <div class="overflow-x-auto">
                    <table class="min-w-full bg-white border rounded-xl shadow-md">
                        <thead class="bg-gray-100">
                            <tr>
                                <th class="text-left px-6 py-3 text-md font-semibold text-gray-900">#</th>
                                <th class="text-left px-6 py-3 text-md font-semibold text-gray-900">Subject</th>
                                <th class="text-left px-6 py-3 text-md font-semibold text-gray-900">Exam</th>
                                <th class="px-6 py-3 text-md text-center font-semibold text-gray-900">Marks</th>
                                <th class="px-6 py-3 text-md text-center font-semibold text-gray-900">Grade</th>
                                <th class="px-6 py-3 text-md text-center font-semibold text-gray-900">GPA</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">

                            @php
                                $overallTotal = 0;
                                $overallGpaSum = 0;
                                $overallSubjectsCount = 0;
                            @endphp

                            @foreach($marks->groupBy(function($item){ return optional($item->exam)->name ?? 'No Exam'; }) as $examName => $examMarks)
                                @php
                                    $examTotal = $examMarks->sum('marks_obtained');
                                    $examGpaSum = $examMarks->sum('gpa');
                                    $examSubjectsCount = $examMarks->count();
                                    $examAvgGpa = $examSubjectsCount > 0 ? $examGpaSum / $examSubjectsCount : 0;

                                    $overallTotal += $examTotal;
                                    $overallGpaSum += $examGpaSum;
                                    $overallSubjectsCount += $examSubjectsCount;
                                @endphp

                                <tr class="bg-gray-100">
                                    <td colspan="6" class="px-6 py-3 text-left font-bold text-gray-700 text-lg">
                                        {{ $examName }}
                                    </td>
                                </tr>

                                @foreach($examMarks as $val)
                                    <tr class="hover:bg-gray-50 transition">
                                        <td class="px-6 py-4 text-md text-gray-900">{{ $loop->iteration }}</td>
                                        <td class="px-6 py-4 text-md text-gray-900 font-semibold hover:text-blue-600 transition">
                                            {{ optional($val->subject)->name ?? '-' }}
                                        </td>
                                        <td class="px-6 py-4 text-md font-medium flex items-center gap-1
                                            {{ optional($val->exam)->name == 'Midterm' ? 'text-blue-500' : (optional($val->exam)->name == 'Final' ? 'text-green-500' : 'text-gray-500') }}">
                                            <i class="fa fa-book"></i> {{ optional($val->exam)->name ?? 'No Exam' }}
                                        </td>
                                        <td class="px-6 py-4 text-md text-center text-gray-600 truncate max-w-[220px]">
                                            {{ $val->marks_obtained ?? '-' }}
                                        </td>
                                        <td class="px-6 py-4 text-md text-center text-gray-600 truncate max-w-[220px]">
                                            {{ $val->grade ?? '-' }}
                                        </td>
                                        <td class="px-6 py-4 text-md text-center text-gray-600 truncate max-w-[220px]">
                                            {{ $val->gpa ?? '0.00' }}
                                        </td>
                                    </tr>
                                @endforeach

                                <tr class="bg-gray-50 font-semibold text-gray-800">
                                    <td colspan="3" class="text-right px-6 py-2">Exam Total:</td>
                                    <td class="text-center px-6 py-2">{{ $examTotal }}</td>
                                    <td class="text-center px-6 py-2">
                                        Avg Grade: 
                                        {{-- optional, simple logic: pick most frequent grade --}}
                                        @php
                                            $grades = $examMarks->pluck('grade')->filter()->toArray();
                                            $examAvgGrade = count($grades) ? collect($grades)->countBy()->sortDesc()->keys()->first() : '-';
                                        @endphp
                                        {{ $examAvgGrade }}
                                    </td>
                                    <td class="text-center px-6 py-2">{{ number_format($examAvgGpa, 2) }}</td>
                                </tr>

                            @endforeach

                            <tr class="bg-gray-200 font-bold text-gray-900">
                                <td colspan="3" class="text-right px-6 py-3">Overall Total:</td>
                                <td class="text-center px-6 py-3">{{ $overallTotal }}</td>
                                <td class="text-center px-6 py-3">
                                    {{-- Overall avg grade --}}
                                    @php
                                        $allGrades = $marks->pluck('grade')->filter()->toArray();
                                        $overallAvgGrade = count($allGrades) ? collect($allGrades)->countBy()->sortDesc()->keys()->first() : '-';
                                    @endphp
                                    {{ $overallAvgGrade }}
                                </td>
                                <td class="text-center px-6 py-3">{{ $overallSubjectsCount > 0 ? number_format($overallGpaSum / $overallSubjectsCount, 2) : '0.00' }}</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <br><br><hr><br><br>
            <!-- 2nd line change -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">

                <div class="bg-gradient-to-r from-indigo-50 to-indigo-100 rounded-lg shadow-lg p-4 col-span-full border border-indigo-200">
                    <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-2">
                        
                        <div class="flex items-center gap-2">
                            <span class="text-indigo-600 text-xl font-bold">📊</span>
                            <div>
                                <p class="text-gray-700 font-semibold text-sm">Overall Total Marks</p>
                                <p class="text-gray-900 font-bold text-2xl">{{ $overallTotal }}</p>
                            </div>
                        </div>

                        <div class="flex items-center gap-2">
                            <span class="text-green-600 text-xl font-bold">🎯</span>
                            <div>
                                <p class="text-gray-700 font-semibold text-sm">Overall Avg GPA / Grade</p>
                                <p class="text-gray-900 font-bold text-2xl">
                                    {{ $overallSubjectsCount > 0 ? number_format($overallGpaSum / $overallSubjectsCount, 2) : '0.00' }}
                                    /
                                    @php
                                        $allGrades = $marks->pluck('grade')->filter()->toArray();
                                        $overallAvgGrade = count($allGrades) ? collect($allGrades)->countBy()->sortDesc()->keys()->first() : '-';
                                    @endphp
                                    {{ $overallAvgGrade }}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                @php
                    $overallTotal = 0;
                    $overallGpaSum = 0;
                    $overallSubjectsCount = 0;
                @endphp

                @foreach($marks->groupBy(function($item){ return optional($item->exam)->name ?? 'No Exam'; }) as $examName => $examMarks)
                    @php
                        $examTotal = $examMarks->sum('marks_obtained');
                        $examGpaSum = $examMarks->sum('gpa');
                        $examSubjectsCount = $examMarks->count();
                        $examAvgGpa = $examSubjectsCount > 0 ? $examGpaSum / $examSubjectsCount : 0;

                        $overallTotal += $examTotal;
                        $overallGpaSum += $examGpaSum;
                        $overallSubjectsCount += $examSubjectsCount;

                        $grades = $examMarks->pluck('grade')->filter()->toArray();
                        $examAvgGrade = count($grades) ? collect($grades)->countBy()->sortDesc()->keys()->first() : '-';
                    @endphp

                    <div class="card rounded-lg border shadow-md overflow-hidden">
                        
                        <div class="bg-gradient-to-r from-indigo-100 to-indigo-200 px-4 py-3 font-bold text-indigo-800 text-lg flex justify-between items-center">
                            <span>{{ $examName }}</span>
                            <span class="text-sm font-semibold">Total: {{ $examTotal }}</span>
                        </div>

                        <div class="overflow-x-auto">
                            <table class="min-w-full table-auto">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th class="px-3 py-2 text-left text-sm font-semibold text-gray-700">#</th>
                                        <th class="px-3 py-2 text-left text-sm font-semibold text-gray-700">Subject</th>
                                        <th class="px-3 py-2 text-center text-sm font-semibold text-gray-700">Marks</th>
                                        <th class="px-3 py-2 text-center text-sm font-semibold text-gray-700">Grade</th>
                                        <th class="px-3 py-2 text-center text-sm font-semibold text-gray-700">GPA</th>
                                    </tr>
                                </thead>
                                <tbody class="divide-y divide-gray-200">
                                    @foreach($examMarks as $val)
                                        <tr class="hover:bg-gray-50 transition">
                                            <td class="px-3 py-2 text-sm text-gray-800">{{ $loop->iteration }}</td>
                                            <td class="px-3 py-2 text-sm text-gray-900 font-medium">{{ optional($val->subject)->name ?? '-' }}</td>
                                            <td class="px-3 py-2 text-sm text-center text-gray-700">{{ $val->marks_obtained ?? '-' }}</td>
                                            <td class="px-3 py-2 text-sm text-center text-gray-700">{{ $val->grade ?? '-' }}</td>
                                            <td class="px-3 py-2 text-sm text-center text-gray-700">{{ number_format($val->gpa ?? 0, 2) }}</td>
                                        </tr>
                                    @endforeach

                                    <tr class="bg-gray-100 font-semibold text-gray-800">
                                        <td colspan="2" class="px-3 py-2 text-right">Avg GPA / Grade:</td>
                                        <td colspan="3" class="px-3 py-2 text-center">
                                            {{ number_format($examAvgGpa, 2) }} / {{ $examAvgGrade }}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                @endforeach
                
            </div>

            <!-- Exams Grid End -->
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

    <script> layout_change('false'); </script>
    <script> layout_theme_sidebar_change('dark'); </script>
    <script> change_box_container('false'); </script>
    <script> layout_caption_change('true'); </script>
    <script> layout_rtl_change('false'); </script>
    <script> preset_change('preset-1'); </script>
    <script> main_layout_change('vertical'); </script>

</body>
</html>
