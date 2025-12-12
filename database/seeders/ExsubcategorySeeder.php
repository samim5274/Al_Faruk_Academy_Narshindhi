<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Exsubcategory;
use App\Models\Excategory;

class ExsubcategorySeeder extends Seeder
{
    
    public function run(): void
    {
        // Category-wise subcategories
        $data = [
            'Food' => ['Breakfast', 'Lunch', 'Dinner', 'Snacks', 'Groceries'],
            'Transport' => ['Bus', 'CNG', 'Bike', 'Train', 'Ride Sharing'],
            'Shopping' => ['Clothes', 'Shoes', 'Gadgets', 'Cosmetics'],
            'Medical' => ['Medicine', 'Doctor Fee', 'Test/Reports'],
            'Entertainment' => ['Movies', 'Games', 'Tours', 'Events'],
            'Bills & Utilities' => ['Electricity', 'Water', 'Gas', 'Internet', 'Mobile Recharge'],
            'Education' => ['Books', 'Tuition Fee', 'Stationery'],
            'Others' => ['Donation', 'Unexpected Cost', 'Miscellaneous']
        ];

        foreach ($data as $catName => $subCats) {

            $category = Excategory::where('name', $catName)->first();

            if ($category) {
                foreach ($subCats as $sub) {
                    Exsubcategory::create([
                        'cat_id' => $category->id,
                        'name'   => $sub
                    ]);
                }
            }
        }
    }
}
