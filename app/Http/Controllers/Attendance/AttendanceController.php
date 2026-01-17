<?php

namespace App\Http\Controllers\Attendance;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

use App\Models\Room;
use App\Models\Student;
use App\Models\Attendance;
use App\Models\Company;

class AttendanceController extends Controller
{
    public $date;

    public function __construct()
    {
        $this->date = Carbon::now()->format('Y-m-d');
    }

    public function classList(){
        $company = Company::first();
        $room = Room::all();
        return view('attendance.class-list', compact('room','company'));
    }

    public function attendanceView($class_id){
        $company = Company::first();

        $student = Student::with('room')->where('class_id', $class_id)->where('attend_date', $this->date)->get();        
        
        $totalStudent = Student::where('class_id', $class_id)->count(); 
        $attend = Attendance::with('student')
            ->where('class_id', $class_id)
            ->where('attendance_date', $this->date)
            ->get();
        $present = Attendance::where('status', 'Present')
            ->where('class_id', $class_id)
            ->where('attendance_date', $this->date)
            ->count();
        $absent = Attendance::where('status', 'Absent')
            ->where('class_id', $class_id)
            ->where('attendance_date', $this->date)
            ->count();
        
        return view('attendance.attendance-list', compact('student','totalStudent','attend','present','absent','company'));
    }

    public function stdPresent($id){
        $student = Student::where('id', $id)->first();

        if (empty($student)){
            return redirect()->back()->with('error','Student not found. Please try again.');
        }

        $findData = Attendance::where('student_id', $id)->where('attendance_date',$this->date)->first();
        if(!empty($findData)){
            return redirect()->back()->with('warning','This student attendance already done. Try to another.');
        }

        $attend = new Attendance();
        $attend->student_id = $id;
        $attend->class_id = $student->class_id;
        $attend->attendance_date = $this->date;
        $attend->status = 'Present';
        $attend->remarks = Auth::guard('teacher')->user()->first_name.' '.Auth::guard('teacher')->user()->last_name;

        $student->attend_date = Carbon::now()->addDay();

        $attend->save();
        $student->update();
        return redirect()->back()->with('success','Student attend in the class. Thank you.');
    }

    public function stdAbsend($id){
        $student = Student::where('id', $id)->first();

        if(empty($student)){
            return redirect()->back()->with('error','Student not found. Please try again.');
        }

        $findData = Attendance::where('student_id', $id)->where('attendance_date',$this->date)->first();
        if(!empty($findData)){
            return redirect()->back()->with('warning','This student attendance already done. Try to another.');
        }

        $attend = new Attendance();
        $attend->student_id = $id;
        $attend->class_id = $student->class_id;
        $attend->attendance_date = $this->date;
        $attend->status = 'Absent';
        $attend->remarks = Auth::guard('teacher')->user()->first_name.' '.Auth::guard('teacher')->user()->last_name;

        $student->attend_date = Carbon::now()->addDay();

        $attend->save();
        $student->update();
        return redirect()->back()->with('error','Student not attend in the class. Thank you.');
    }

    public function attendApply(){
        $students = Student::all();
        foreach($students as $student){
            // already attendance done
            $check = Attendance::where('student_id', $student->id)->where('attendance_date', $this->date)->first();

            if (!$check) {
                $attend = new Attendance();
                $attend->student_id = $student->id;
                $attend->class_id = $student->class_id;
                $attend->attendance_date = $this->date;
                $attend->status = 'Present';
                $attend->remarks = Auth::guard('teacher')->user()->first_name.' '.Auth::guard('teacher')->user()->last_name;
                $attend->save();
            }
                
            $student->attend_date = Carbon::now()->addDay();
            $student->update();
        }
        return redirect()->back()->with('success','Student attendance apply for all classes. Thank you.');
    }

    public function dailyAttendet(){
        $company = Company::first();

        $attend = Attendance::with(['student','class.teachers'])->where('attendance_date', $this->date)->latest()->get();

        $studentWise = $attend->groupBy('student_id');
        $classWise = $attend->groupBy('class_id');

        $totalStudent = Student::count();
        $present = $attend->where('status', 'Present')->count();
        $absent = $attend->where('status', 'Absent')->count();

        return view('attendance.daily-student-list', compact(
            'attend',
            'studentWise',
            'classWise',
            'totalStudent',
            'present',
            'absent',
            'company'
        ));
    }

    public function editStudentAttendance(Request $request, $id){
        $data = Attendance::find($id);
        if(!$data){
            return redirect()->back()->with('warning','Attendance not found. Please try another. Thank You!');
        }
        $data->remarks = Auth::guard('teacher')->user()->first_name.' '.Auth::guard('teacher')->user()->last_name;
        $data->status = $request->attendanceStatus;
        
        if ($request->attendanceStatus == "Absent") {

            $student = Student::with(['room'])->findOrFail($data->student_id);

            $emails = collect([
                $student->email,
                $student->father_email,
                $student->mother_email,
                $student->guardian_email,
            ])->filter()->unique()->values()->all();

            $date = $request->attendance_date ?? now()->toDateString();

            if (!empty($emails)) {
                try {
                    Mail::to($emails)->send(new \App\Mail\StudentAbsentMail($student, $date));
                } catch (\Throwable $e) {
                    $className = optional($student->class)->name ?? 'N/A';
                    $section   = optional($student->class)->section ?? 'N/A';
                    $roll      = $student->roll_number ?? 'N/A';
                    $plainText =
                        "STUDENT ABSENT NOTICE

                        Student Name : {$student->first_name} {$student->last_name}
                        Roll No      : {$roll}
                        Class        : {$className}
                        Section      : {$section}
                        Date         : ".Carbon::parse($date)->format('d M, Y')."

                        This student did not attend school today.

                        -- School Management System
                        ";

                    Mail::raw($plainText, function ($message) {
                        $message->to('info@alfarukacademy.edu.bd')
                                ->subject('Fallback Attendance Alert (No Guardian Email)');
                    });
                }
            }
        }
        $data->update();
        return redirect()->back()->with('success','Student attendance update successfully.');
    }

    public function searchAttendView(){
        $company = Company::first();
        $start = $this->date;
        $end = $this->date;
        $findData = Attendance::with('student','class')->whereBetween('attendance_date', [$start, $end])->paginate(45);
        $totalStudent = Student::count(); 
        $present = Attendance::where('status', 'Present')->where('attendance_date', $this->date)->count();
        $absent = Attendance::where('status', 'Absent')->where('attendance_date', $this->date)->count();
        return view('attendance.find-student-list', compact('findData','totalStudent','present','absent','company'));
    }

    public function searchAttendStudent(Request $request){
        $company = Company::first();
        $start = $request->input('start_date', '');
        $end = $request->input('end_date', '');
        $findData = Attendance::with('student','class')->whereBetween('attendance_date', [$start, $end])->paginate(45);
        return view('attendance.find-student-list', compact('findData','company'));
    }

    public function classListAttend(){
        $company = Company::first();
        $start = $this->date;
        $end = $this->date;
        $classes = Room::all();
        $findData = Attendance::with('student','class')->whereBetween('attendance_date', [$start, $end])->paginate(45);
        return view('attendance.find-class-student-list', compact('findData','classes','company'));
    }

    public function findClassAttend(Request $request){
        $company = Company::first();
        $request->validate([
            'class_id' => ['required'],
        ]);

        $start = $request->input('start_date', '');
        $end = $request->input('end_date', '');
        $class_id = $request->input('class_id', '');
        $classes = Room::all();
        $findData = Attendance::with('student','class')->where('class_id', $class_id)->whereBetween('attendance_date', [$start, $end])->paginate(45);
        return view('attendance.find-class-student-list', compact('findData','classes','company'));
    }

    public function studentAttend(){
        $company = Company::first();
        $start = $this->date;
        $end = $this->date;
        $classes = Room::all();
        $students = Student::all();
        $findData = Attendance::with('student','class')->whereBetween('attendance_date', [$start, $end])->paginate(45);
        return view('attendance.find-student-attendance', compact('findData','classes','students','company'));
    }

    public function findStudentAttend(Request $request){
        $company = Company::first();

        $request->validate([
            'class_id' => ['required'],
            'student_id' => ['required'],
        ]);

        $start = $request->input('start_date', '');
        $end = $request->input('end_date', '');
        $class_id = $request->input('class_id', '');
        $student_id = $request->input('student_id', '');

        $classes = Room::all();
        $students = Student::all();

        $findData = Attendance::with('student','class')
            ->where('class_id', $class_id)
            ->where('student_id', $student_id)
            ->whereBetween('attendance_date', [$start, $end])
            ->paginate(45);

        return view('attendance.find-student-attendance', compact('findData','classes','students','company'));
    }

}
