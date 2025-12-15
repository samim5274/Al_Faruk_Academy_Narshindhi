<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

use App\Models\Student;
use App\Models\Room;
use App\Models\Subject;
use App\Models\Mark;
use App\Models\Company;

class StudentReportController extends Controller
{
    public function genderReport(){
        $company = Company::first();
        $findData = Student::with('room')->paginate(45);
        $classes = Room::select('id','name','section')->get();
        $students = Student::with('room:id,name,section')
            ->paginate(45);
        return view('student.report.student-report', compact('findData','classes', 'students','company'));
    }

    public function findGenderReport(Request $request){
        $classes = Room::select('id','name','section')->get();
        $students = Student::with('room:id,name,section')
            ->select(
                'id',
                'first_name',
                'last_name',
                'gender',
                'class_id',
                'status',
                'religion',
                'blood_group'
            );

        if ($request->filled('gender_id')) {
            $students->where('gender', $request->gender_id);
        }

        if ($request->filled('class_id')) {
            $students->where('class_id', $request->class_id);
        }

        if ($request->filled('status')) {
            $students->where('status', $request->status);
        }

        if ($request->filled('religion')) {
            $students->where('religion', $request->religion);
        }

        if ($request->filled('blood_group')) {
            $students->where('blood_group', $request->blood_group);
        }

        $findData = $students->paginate(45)->appends($request->all());

        return view('student.report.student-report', compact('findData', 'classes', 'students'));
    }
}