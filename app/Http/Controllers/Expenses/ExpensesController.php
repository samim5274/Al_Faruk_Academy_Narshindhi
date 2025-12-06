<?php

namespace App\Http\Controllers\Expenses;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Carbon;
use Auth;
use App\Models\Excategory;
use App\Models\Exsubcategory;
use App\Models\Expenses;

class ExpensesController extends Controller
{
    public $date;

    public function __construct()
    {
        $this->date = Carbon::now()->format('Y-m-d');
    }

    public function index(){
        $categries = Excategory::all();
        $expenses = Expenses::with('category','subcategory')->get();
        return view('expenses.expenses', compact('categries','expenses'));
    }

    public function getSubCategory($id) {
        $subcategories = Exsubcategory::where('cat_id', $id)->get();
        return response()->json($subcategories);
    }

    public function store(Request $request){
        $request->validate([
            'title' => 'required|string|max:255',

            'category_id' => 'required|exists:excategories,id',

            'subcategory_id' => 'required|exists:exsubcategories,id',

            'amount' => 'required|numeric|min:1',

            'description' => 'nullable|string|max:1000',
        ]);


        $data = new Expenses();
        $data->title = $request->title;
        $data->catId = $request->category_id;
        $data->subcatId = $request->subcategory_id;
        $data->userId = Auth::guard('teacher')->user()->id;
        $data->amount = $request->amount;
        $data->date = Carbon::now()->format('Y-m-d');
        $data->remark = $request->description;
        $data->save();

        return redirect()->back()->with('success', 'Expense added successfully!');
    }
}
