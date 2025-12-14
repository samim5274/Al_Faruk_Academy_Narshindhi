<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account - {{ $company->name ?? 'SMS' }}</title>

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

<!-- [Body] Start -->

<body>
    
    <!-- [ Sidebar Menu ] start -->
    @include('layouts.navbar')
    <!-- [ Sidebar Menu ] end -->
    <!-- [ Header Topbar ] start -->
    @include('layouts.header')
    <!-- [ Header ] end -->
    
    <!-- Flash Message -->
    @include('layouts.message')


    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <div class="page-block">
                    <div class="page-header-title">
                        <h5 class="mb-0 font-medium">Account</h5>
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                        <li class="breadcrumb-item">Setting</li>
                        <li class="breadcrumb-item"><a href="#">Account</a></li>
                        <li class="breadcrumb-item" aria-current="page">Profile</li>
                    </ul>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->

            <!-- [ Main Content ] start -->
            @php
                $teacher = Auth::guard('teacher')->user();
            @endphp

            <div class="bg-gray-100 min-h-screen py-10 px-4">
                <div class="max-w-6xl mx-auto space-y-6">

                    <!-- Profile Header -->
                    <div class="bg-white rounded-xl shadow-md p-6 flex flex-col md:flex-row items-center gap-6">
                        <img
                            src="{{ asset('img/teacher/' . ($teacher->photo ?? 'default.png')) }}"
                            class="w-36 h-36 rounded-full border-4 border-indigo-100 shadow"
                            alt="Teacher Photo">

                        <div class="flex-1 text-center md:text-left">
                            <h2 class="text-2xl font-semibold text-gray-800">
                                {{ $teacher->first_name ?? '-' }} {{ $teacher->last_name ?? '' }}
                            </h2>
                            <p class="text-indigo-600 font-medium">
                                {{ $teacher->designation ?? '-' }}
                            </p>
                            <p class="text-sm text-gray-500">
                                {{ $teacher->email ?? '-' }}
                            </p>
                        </div>

                        <a href="{{ url('/edit-teacher-view/' . $teacher->id) }}"
                        class="px-5 py-2 bg-[#3F4D67] hover:bg-[#5b6f94] text-white rounded-md text-sm font-medium">
                            Edit Profile
                        </a>
                    </div>

                    <!-- Personal Information -->
                    <div class="bg-white rounded-xl shadow-md">
                        <div class="px-6 py-4 border-b">
                            <h3 class="text-lg font-semibold text-gray-800">Personal Information</h3>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 p-6 text-sm">
                            <div>
                                <p class="text-gray-500">First Name</p>
                                <p class="font-medium">{{ $teacher->first_name ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Last Name</p>
                                <p class="font-medium">{{ $teacher->last_name ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Date of Birth</p>
                                <p class="font-medium">{{ $teacher->dob ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Gender</p>
                                <p class="font-medium">{{ $teacher->gender ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Blood Group</p>
                                <p class="font-medium">{{ $teacher->blood_group ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">National ID</p>
                                <p class="font-medium">{{ $teacher->national_id ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Phone</p>
                                <p class="font-medium">
                                    {{ $teacher->contact_number ? '0'.$teacher->contact_number : '-' }}
                                </p>
                            </div>
                            <div>
                                <p class="text-gray-500">Address</p>
                                <p class="font-medium">{{ $teacher->address ?? '-' }}</p>
                            </div>
                        </div>
                    </div>

                    <!-- Family & Guardian Information -->
                    <div class="bg-white rounded-xl shadow-md">
                        <div class="px-6 py-4 border-b">
                            <h3 class="text-lg font-semibold text-gray-800">
                                Family & Guardian Information
                            </h3>
                        </div>

                        <div class="p-6 space-y-8">

                            <!-- Father -->
                            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 items-center">
                                <div class="text-center">
                                    <img
                                        src="{{ asset('img/father/' . ($teacher->father_photo ?? 'default.png')) }}"
                                        class="w-28 h-28 rounded-full mx-auto border-2 shadow"
                                        alt="Father Photo">
                                    <p class="text-sm text-gray-500 mt-2">Father</p>
                                </div>

                                <div class="md:col-span-3 grid grid-cols-1 md:grid-cols-2 gap-4 text-sm">
                                    <div>
                                        <p class="text-gray-500">Name</p>
                                        <p class="font-medium">{{ $teacher->father_name ?? '-' }}</p>
                                    </div>
                                    <div>
                                        <p class="text-gray-500">Contact</p>
                                        <p class="font-medium">{{ $teacher->father_contact ?? '-' }}</p>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <!-- Mother -->
                            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 items-center">
                                <div class="text-center">
                                    <img
                                        src="{{ asset('img/mother/' . ($teacher->mother_photo ?? 'default.png')) }}"
                                        class="w-28 h-28 rounded-full mx-auto border-2 shadow"
                                        alt="Mother Photo">
                                    <p class="text-sm text-gray-500 mt-2">Mother</p>
                                </div>

                                <div class="md:col-span-3 grid grid-cols-1 md:grid-cols-2 gap-4 text-sm">
                                    <div>
                                        <p class="text-gray-500">Name</p>
                                        <p class="font-medium">{{ $teacher->mother_name ?? '-' }}</p>
                                    </div>
                                    <div>
                                        <p class="text-gray-500">Contact</p>
                                        <p class="font-medium">{{ $teacher->mother_contact ?? '-' }}</p>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <!-- Guardian -->
                            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 items-center">
                                <div class="flex items-center justify-center">
                                    <div class="w-28 h-28 rounded-full bg-gray-100 flex items-center justify-center text-gray-400 text-sm border">
                                        Guardian
                                    </div>
                                </div>

                                <div class="md:col-span-3 grid grid-cols-1 md:grid-cols-2 gap-4 text-sm">
                                    <div>
                                        <p class="text-gray-500">Name</p>
                                        <p class="font-medium">{{ $teacher->guardian_name ?? '-' }}</p>
                                    </div>
                                    <div>
                                        <p class="text-gray-500">Contact</p>
                                        <p class="font-medium">{{ $teacher->guardian_contact ?? '-' }}</p>
                                    </div>
                                    <div>
                                        <p class="text-gray-500">Relationship</p>
                                        <p class="font-medium">{{ $teacher->guardian_relationship ?? '-' }}</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>


                    <!-- System Information -->
                    <div class="bg-white rounded-xl shadow-md">
                        <div class="px-6 py-4 border-b">
                            <h3 class="text-lg font-semibold text-gray-800">System Information</h3>
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 p-6 text-sm">
                            <div>
                                <p class="text-gray-500">Status</p>
                                <p class="font-medium">
                                    {{ $teacher->status ? 'Active' : 'Inactive' }}
                                </p>
                            </div>
                            <div>
                                <p class="text-gray-500">Remark</p>
                                <p class="font-medium">{{ $teacher->remark ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Email Verified At</p>
                                <p class="font-medium">{{ $teacher->email_verified_at ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Last Login At</p>
                                <p class="font-medium">{{ $teacher->last_login_at ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Last Login IP</p>
                                <p class="font-medium">{{ $teacher->last_login_ip ?? '-' }}</p>
                            </div>
                            <div>
                                <p class="text-gray-500">Profile Completed</p>
                                <p class="font-medium">
                                    {{ $teacher->is_profile_completed ? 'Yes' : 'No' }}
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <!-- [ Main Content ] end -->        
        </div>
    </div>
    <!-- [ Main Content ] end -->
    @include('layouts.footer')

 
    <!-- Required Js -->
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
    
    <script>
      layout_change('light');
    </script>
     
    
    <script>
      layout_theme_sidebar_change('false');
    </script>
    
     
    <script>
      change_box_container('false');
    </script>
     
    <script>
      layout_caption_change('true');
    </script>
     
    <script>
      layout_rtl_change('false');
    </script>
     
    <script>
      preset_change('preset-1');
    </script>
     
    <script>
      main_layout_change('vertical');
    </script>
    

  </body>
  <!-- [Body] end -->
</html>