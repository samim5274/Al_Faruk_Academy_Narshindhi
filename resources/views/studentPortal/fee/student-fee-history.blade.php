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
            <div class="bg-white shadow-lg rounded-2xl overflow-hidden transition-shadow duration-300 hover:shadow-xl">
                <div class="p-6">                    

                    <div class="bg-gray-50 border border-gray-200 rounded-xl shadow-sm p-6">
                        <h3 class="text-lg font-bold text-gray-700 uppercase mb-4">
                            Payment Summary
                        </h3>

                        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
                            
                            <!-- Total Amount -->
                            <div class="bg-white rounded-lg p-4 border">
                                <p class="text-xs text-gray-500 uppercase">Total Amount</p>
                                <p class="text-lg font-bold text-gray-800">
                                    ৳ {{ number_format($payment->sum('amount'), 2) }}
                                </p>
                            </div>

                            <!-- Discount -->
                            <div class="bg-yellow-50 rounded-lg p-4 border border-yellow-200">
                                <p class="text-xs text-yellow-700 uppercase">Discount</p>
                                <p class="text-lg font-bold text-yellow-800">
                                    ৳ {{ number_format($payment->sum('discount'), 2) }}
                                </p>
                            </div>

                            <!-- Paid -->
                            <div class="bg-green-50 rounded-lg p-4 border border-green-200">
                                <p class="text-xs text-green-700 uppercase">Paid</p>
                                <p class="text-lg font-bold text-green-800">
                                    ৳ {{ number_format($payment->sum('paid'), 2) }}
                                </p>
                            </div>

                            <!-- Due -->
                            <div class="bg-red-50 rounded-lg p-4 border border-red-200">
                                <p class="text-xs text-red-700 uppercase">Due</p>
                                <p class="text-lg font-bold text-red-800">
                                    ৳ {{ number_format($payment->sum('due'), 2) }}
                                </p>
                            </div>

                        </div>
                    </div>

                    <div class="flex justify-between items-center my-4">
                        <h3 class="text-xl font-bold text-gray-800">Fee Payment History</h3><hr>
                    </div>

                    <div class="overflow-x-auto overflow-y-auto max-h-screen">
                        <table class="min-w-full border-collapse border border-gray-200 rounded">
                            <thead class="bg-gray-100 sticky top-0 z-10">
                                <tr class="bg-gray-100 font-bold text-gray-800 border-t sticky bottom-0 z-10">
                                    <th class="px-6 py-3 text-left text-xs font-bold text-gray-500 uppercase tracking-wider">#</th>
                                    <th class="px-6 py-3 text-left text-xs font-bold text-gray-500 uppercase tracking-wider">Purpose</th>
                                    <th class="px-6 py-3 text-left text-xs font-bold text-gray-500 uppercase tracking-wider">Date</th>
                                    <th class="px-6 py-3 text-right text-xs font-bold text-gray-500 uppercase tracking-wider">Amount</th>
                                    <th class="px-6 py-3 text-right text-xs font-bold text-gray-500 uppercase tracking-wider">Discount</th>
                                    <th class="px-6 py-3 text-right text-xs font-bold text-gray-500 uppercase tracking-wider">Paid</th>
                                    <th class="px-6 py-3 text-right text-xs font-bold text-gray-500 uppercase tracking-wider">Due</th>
                                    <th class="px-6 py-3 text-center text-xs font-bold text-gray-500 uppercase tracking-wider">Status</th>
                                </tr>
                            </thead>

                            <tbody class="divide-y divide-gray-200">
                                @php
                                    $totalDiscount = 0;
                                    $totalDue = 0;
                                    $totalPaid = 0;
                                    $totalAmount = 0;
                                @endphp
                                @forelse($payment as $index => $fee)
                                    @php
                                        $totalDiscount += $fee->discount;
                                        $totalDue      += $fee->due;
                                        $totalPaid     += $fee->paid;
                                        $totalAmount   += $fee->amount;
                                    @endphp
                                    <tr class="hover:bg-gray-50 transition-colors duration-200">
                                        <td class="px-6 py-4 text-sm font-medium text-gray-900">{{ $index + 1 }}</td>
                                        <td class="px-6 py-4 text-sm text-gray-600">
                                            {{ $fee->feeStructure->category->name }}
                                        </td>
                                        <td class="px-6 py-4 text-sm font-semibold text-gray-600 text-left">
                                            {{ \Carbon\Carbon::parse($fee->payment_date)->format('d M Y') }}
                                        </td>
                                        <td class="px-6 py-4 text-sm font-semibold text-gray-600 text-right">
                                            ৳ {{ number_format($fee->amount, 2) }}
                                        </td>                                        
                                        <td class="px-6 py-4 text-sm font-semibold text-yellow-600 text-right">
                                            ৳ {{ number_format($fee->discount, 2) }}
                                        </td>
                                        <td class="px-6 py-4 text-sm font-semibold text-green-600 text-right">
                                            ৳ {{ number_format($fee->paid, 2) }}
                                        </td>
                                        <td class="px-6 py-4 text-sm font-semibold text-red-600 text-right">
                                            ৳ {{ number_format($fee->due, 2) }}
                                        </td>
                                        <td class="px-6 py-4 text-sm text-center">
                                            @if($fee->due == '0')
                                                <span class="px-3 py-1 text-xs font-semibold rounded-full bg-green-100 text-green-800">
                                                    Paid
                                                </span>
                                            @elseif($fee->status >= '0')
                                                <span class="px-3 py-1 text-xs font-semibold rounded-full bg-yellow-200 text-yellow-800">
                                                    Partial
                                                </span>
                                            @else
                                                <span class="px-3 py-1 text-xs font-semibold rounded-full bg-red-100 text-red-800">
                                                    Unpaid
                                                </span>
                                            @endif
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="7" class="px-6 py-4 text-center text-gray-400 text-sm">
                                            No payment history available
                                        </td>
                                    </tr>
                                @endforelse
                                <tr class="bg-gray-100 font-bold text-gray-800 border-t">
                                    <td colspan="3" class="px-6 py-4 text-right">Total:</td>
                                    <td class="px-6 py-4 text-right">
                                        ৳ {{ number_format($totalAmount, 2) }}
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        ৳ {{ number_format($totalDiscount, 2) }}
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        ৳ {{ number_format($totalPaid, 2) }}
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        ৳ {{ number_format($totalDue, 2) }}
                                    </td>
                                    <td colspan="2"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
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
