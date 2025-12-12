<?php

namespace App\Http\Controllers\StudentPortal;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

use App\Models\Room;
use App\Models\Student;
use App\Models\Subject;
use App\Models\StudentSubject;
use App\Models\Exam;
use App\Models\Mark;
use App\Models\Attendance;
use App\Models\FeeStructure;
use App\Models\FeePayment;
use App\Models\ClassSchedule;
use Auth;
use App\Models\Company;

class StudentPortalController extends Controller
{
    public function stdDashboard(){
        $company = Company::first();
        return view('studentPortal.std-dashboard', compact('company'));
    }

    public function profile(){
        $company = Company::first();
        $student = $student = Auth::guard('student')->user();
        return view('studentPortal.profile.student-profile', compact('student','company'));
    }

    public function myClass(){
        $company = Company::first();
        $student = $student = Auth::guard('student')->user();
        $routine = ClassSchedule::where('class_id', $student->class_id)->get();
        return view('studentPortal.classes.student-class', compact('student','routine','company'));
    }

    public function attendance(){
        $company = Company::first();
        $date = Carbon::today()->format('Y-m-d');
        $student = $student = Auth::guard('student')->user();
        $attendance = Attendance::where('student_id', $student->id)->where('attendance_date', $date)->paginate(30);
        return view('studentPortal.attendance.student-attendance', compact('student','attendance','company'));
    }

    public function getAttedance(Request $request){
        $company = Company::first();
        $start = $request->input('start_date', '');
        $end = $request->input('end_date', '');

        $student = $student = Auth::guard('student')->user();
        $attendance = Attendance::where('student_id', $student->id)->whereBetween('attendance_date', [$start, $end])->paginate(30);
        return view('studentPortal.attendance.student-attendance', compact('student','attendance','company'));
    }

    public function examList(){
        $company = Company::first();
        $student = $student = Auth::guard('student')->user();
        $exams = Exam::where('class_id', $student->class_id)->get();
        return view('studentPortal.exam.student-exam', compact('student','exams','company'));
    }

    public function results(){
        $company = Company::first();
        $student = $student = Auth::guard('student')->user();
        $marks = Mark::where('student_id', $student->id)->get();
        return view('studentPortal.exam.student-marks', compact('student','marks','company'));
    }

    public function feeDetails(){
        $company = Company::first();
        $student = $student = Auth::guard('student')->user();
        $structures = FeeStructure::where('class_id', $student->class_id)->get();
        $payments = FeePayment::where('student_id', $student->id)->get();
        $groupedPayments = $payments->groupBy('fee_structure_id');

        // previowus payment caltulation
        $currentClassId = $student->class_id;
        $previousStructures = FeeStructure::where('class_id', '<', $currentClassId)->get();

        $previousClassIds = $previousStructures->pluck('id')->toArray();

        $previousPayments = FeePayment::where('student_id', $student->id)
                            ->whereIn('fee_structure_id', $previousClassIds)
                            ->get()
                            ->groupBy('fee_structure_id'); 
        $previousDue = 0;

        foreach($previousStructures as $structure){
            $payments = $previousPayments[$structure->id] ?? collect();
            $totalPaid = $payments->sum('amount_paid');
            $totalDiscount = $payments->sum('discount');
            $due = ($structure->amount * 12) - ($totalPaid + $totalDiscount);
            $previousDue += max($due, 0);
        }

        return view('studentPortal.fee.student-fee-details', compact('student','structures','groupedPayments','previousDue','company'));
    }

    public function feeHistory(){
        $company = Company::first();
        $student = $student = Auth::guard('student')->user();
        $payment = FeePayment::where('student_id', $student->id)->orderBy('id', 'desc')->paginate(15);
        $paid = FeePayment::where('student_id', $student->id)->sum('amount_paid');
        $discount = FeePayment::where('student_id', $student->id)->sum('discount');
        $due = FeePayment::where('student_id', $student->id)->sum('due_amount');
        return view('studentPortal.fee.student-fee-history', compact('student','payment','paid','discount','due','company'));
    }

    public function enrollment(){
        $company = Company::first();
        $student = Auth::guard('student')->user(); 
        $subjects = Subject::where('class_id', $student->class_id)->get();
        $enrollmented = StudentSubject::where('student_id', $student->id)->get(); 
        return view('studentPortal.enrollment.student-enrollment', compact('subjects','student','enrollmented','company'));
    }

    public function enrollmentStore(Request $request){
        $validatedData = $request->validate([
            'subjectId' => ['required', 'integer', 'exists:subjects,id'],
        ]);

        $studnetId = Auth::guard('student')->user()->id;
        $subjectId = $request->input('subjectId', '');
        
        // un-enrollment code here
        if ($request->has('delete')) {
            $findData = StudentSubject::where('student_id', $studnetId)->where('subject_id', $subjectId)->first();
            if($findData){
                $findData->delete();
                return redirect()->back()->with('success', 'Student un-enrollment successfully!');
            }
        }

        $findData = StudentSubject::where('student_id', $studnetId)->where('subject_id', $subjectId)->first();
        if($findData){
            return redirect()->back()->with('warning', 'Student already enrolled in the subject!');
        }

        $subStd = new StudentSubject();
        $subStd->student_id = $studnetId;
        $subStd->subject_id = $subjectId;
        $subStd->save();
        return redirect()->back()->with('success', 'Student successfully enrolled in the subject!');
    }
}
