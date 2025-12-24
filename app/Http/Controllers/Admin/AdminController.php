<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Carbon\Carbon;

use Auth;
use Session;
use App\Models\Company;
use App\Models\Student;
use App\Models\Teacher;
use App\Mail\OtpMail;
use Mail;

class AdminController extends Controller
{
    public function loginView(){
        Auth::logout();
        session()->invalidate();
        session()->regenerateToken();
        $company = Company::first();
        return view('admin.login', compact('company'));
    }

    public function userLogin(Request $request){
        $request->validate([
            'txtUsername' => 'required|email',
            'txtPassword' => 'required|min:6',
            'cbxRole'     => 'required',
        ]);

        $remember = (int)$request->filled('cbxRemember'); 
        $role     = $request->input('cbxRole');        

        $credentials = [
            'email'    => $request->txtUsername,
            'password' => $request->txtPassword,
            'status'   => 1,
        ];

        switch($role){
            case 1: // teacher
                if (Auth::guard('teacher')->attempt($credentials, $remember)) {
                    $request->session()->regenerate();

                    $teacher = Auth::guard('teacher')->user();
                    $teacher->update([
                        'last_login_at' => now(),
                        'last_login_ip' => $request->ip(),
                    ]);
                    
                    return redirect('/')->with('success', 'Login successful!');
                } else {
                    return redirect()->back()->withErrors(['txtUsername' => 'Invalid teacher credentials.']);
                }
                break;
            case 2: // student
                if (Auth::guard('student')->attempt($credentials, $remember)) {
                    $request->session()->regenerate();

                    $student = Auth::guard('student')->user();
                    $student->update([
                        'last_login_at' => now(),
                        'last_login_ip' => $request->ip(),
                    ]);

                    return redirect('/student-dashboard')->with('success', 'Login successful!');
                } else {
                    return redirect()->back()->withErrors(['txtUsername' => 'Invalid student credentials.']);
                }
                break;
            default:
                return redirect()->back()->withErrors(['cbxRole' => 'Invalid role selected.']);
                break;
        }
    }

    public function changePassView(){
        $company = Company::first();
        return view('admin.change-password', compact('company'));
    }

    public function updateUpdate(Request $request){

        $validator = Validator::make($request->all(), [
            'current_password' => 'required',
            'new_password' => [
                'required',
                'string',
                'min:6',              // Minimum 6 characters
                'regex:/[A-Z]/',      // At least one uppercase letter
                'regex:/[a-z]/',      // At least one lowercase letter
                'regex:/[0-9]/',      // At least one number
                'regex:/[!@#$%^&*(),.?":{}|<>]/' // At least one special character
            ],
            'confirm_password' => 'required|same:new_password',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $user = Auth::guard('teacher')->user();        

        // Check current password
        if (!Hash::check($request->current_password, $user->password)) {
            return redirect()->back()->with('error', 'Current password is incorrect');
        }

        // Update password
        $user->password = Hash::make($request->new_password);
        $user->save();

        return redirect()->back()->with('success', 'Password updated successfully');
    }

}
