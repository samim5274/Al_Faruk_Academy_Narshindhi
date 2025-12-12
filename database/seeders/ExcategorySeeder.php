<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Excategory;

class ExcategorySeeder extends Seeder
{
    
    public function run(): void
    {
        $categories = [
            'Food',
            'Transport',
            'Shopping',
            'Medical',
            'Entertainment',
            'Bills & Utilities',
            'Education',
            'Others'
        ];

        foreach ($categories as $cat) {
            Excategory::create([
                'name' => $cat
            ]);
        }
    }
}
