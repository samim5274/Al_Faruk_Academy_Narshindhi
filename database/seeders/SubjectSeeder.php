<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

use App\Models\Subject;
use App\Models\Exam;
use App\Models\Group;

class SubjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $subjects = [
            // Class 1-8 (General)
            1 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            2 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            3 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            4 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            5 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            6 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            7 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],
            8 => [
                1 => ['Bangla', 'English', 'Math', 'Science', 'Social Studies', 'Islamic Studies', 'Physical Education'],
            ],

            // Class 9-10 (Science, Commerce, Arts)
            9 => [
                1 => ['Bangla', 'English', 'ICT', 'Physical Education'], // Compulsory
                2 => ['Physics', 'Chemistry', 'Biology', 'Higher Mathematics'], // Science
                3 => ['Accounting', 'Business Studies', 'Finance', 'Economics'], // Commerce
                4 => ['History', 'Civics', 'Geography', 'Social Work'], // Arts
            ],
            10 => [
                1 => ['Bangla', 'English', 'ICT', 'Physical Education'], // Compulsory
                2 => ['Physics', 'Chemistry', 'Biology', 'Higher Mathematics'], // Science
                3 => ['Accounting', 'Business Studies', 'Finance', 'Economics'], // Commerce
                4 => ['History', 'Civics', 'Geography', 'Social Work'], // Arts
            ],
        ];

        foreach ($subjects as $classId => $groups) {
            foreach ($groups as $groupId => $subs) {
                foreach ($subs as $subject) {
                    DB::table('subjects')->insert([
                        'class_id' => $classId,
                        'group_id' => $groupId,
                        'name' => $subject,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
                }
            }
        }
    }
}
