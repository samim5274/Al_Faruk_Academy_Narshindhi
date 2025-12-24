-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2025 at 10:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfarukdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Present',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `routing_number` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transection_details`
--

CREATE TABLE `bank_transection_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `remarks` text NOT NULL DEFAULT 'N/A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_schedules`
--

CREATE TABLE `class_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `period` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `email`, `phone`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Al-Faruk Academy & High School', '213/1, East Brahmondhi, Narsingdi. EIIN - 112668', 'info@alfarukacademy.edu.bd', '01700000000', 'www.alfarukacademy.edu.bd', '2025-12-12 05:15:24', '2025-12-12 05:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `max_marks` int(11) NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_names`
--

CREATE TABLE `exam_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `excategories`
--

CREATE TABLE `excategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `excategories`
--

INSERT INTO `excategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Food', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(2, 'Transport', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(3, 'Shopping', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(4, 'Medical', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(5, 'Entertainment', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(6, 'Bills & Utilities', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(7, 'Education', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(8, 'Others', '2025-12-24 09:40:07', '2025-12-24 09:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catId` bigint(20) UNSIGNED NOT NULL,
  `subcatId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `remark` text NOT NULL DEFAULT 'N/A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exsubcategories`
--

CREATE TABLE `exsubcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exsubcategories`
--

INSERT INTO `exsubcategories` (`id`, `cat_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Breakfast', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(2, 1, 'Lunch', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(3, 1, 'Dinner', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(4, 1, 'Snacks', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(5, 1, 'Groceries', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(6, 2, 'Bus', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(7, 2, 'CNG', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(8, 2, 'Bike', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(9, 2, 'Train', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(10, 2, 'Ride Sharing', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(11, 3, 'Clothes', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(12, 3, 'Shoes', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(13, 3, 'Gadgets', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(14, 3, 'Cosmetics', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(15, 4, 'Medicine', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(16, 4, 'Doctor Fee', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(17, 4, 'Test/Reports', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(18, 5, 'Movies', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(19, 5, 'Games', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(20, 5, 'Tours', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(21, 5, 'Events', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(22, 6, 'Electricity', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(23, 6, 'Water', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(24, 6, 'Gas', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(25, 6, 'Internet', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(26, 6, 'Mobile Recharge', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(27, 7, 'Books', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(28, 7, 'Tuition Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(29, 7, 'Stationery', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(30, 8, 'Donation', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(31, 8, 'Unexpected Cost', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(32, 8, 'Miscellaneous', '2025-12-24 09:40:08', '2025-12-24 09:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tuition Fee', 'Regular fee for academic instruction and classes', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(2, 'Admission Fee', 'One-time fee for student enrollment', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(3, 'Exam Fee', 'Fee for conducting examinations', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(4, 'Library Fee', 'Charge for library access and maintenance', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(5, 'Laboratory Fee', 'Fee for science/computer lab usage', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(6, 'Sports Fee', 'Charge for sports activities and events', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(7, 'Transport Fee', 'Fee for school bus/transport facilities', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(8, 'Hostel Fee', 'Accommodation and meal charges in hostel', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(9, 'Development Fee', 'Fee for infrastructure and school development', '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(10, 'Activity Fee', 'Fee for extracurricular activities and events', '2025-12-24 09:40:07', '2025-12-24 09:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment_details`
--

CREATE TABLE `fee_payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `total_paid` decimal(10,2) NOT NULL,
  `total_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_due` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `receipt_no` varchar(255) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment_items`
--

CREATE TABLE `fee_payment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_payment_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `fee_structure_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_structures`
--

CREATE TABLE `fee_structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `fee_cat_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Science (General Science)', NULL, NULL),
(2, 'Science (Biology / Pre-Medical)', NULL, NULL),
(3, 'Science (Physical Science / Pre-Engineering)', NULL, NULL),
(4, 'Science (Computer Science / ICT Focus)', NULL, NULL),
(5, 'Arts (Humanities / General Arts)', NULL, NULL),
(6, 'Arts (Social Science)', NULL, NULL),
(7, 'Arts (Fine Arts / Performing Arts)', NULL, NULL),
(8, 'Arts (Language & Literature Focus)', NULL, NULL),
(9, 'Commerce (Business Studies)', NULL, NULL),
(10, 'Commerce (Accounting / Finance Focus)', NULL, NULL),
(11, 'Commerce (Management / Marketing Focus)', NULL, NULL),
(12, 'Commerce (Economics Focus)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `income_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tuition Fee', 'Income from tuition', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(2, 'Donation', 'Income from donations', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(3, 'Library Fee', 'Income from library', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(4, 'Transport Fee', 'Income from transport', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(5, 'Examination Fee', 'Income from exams', '2025-12-24 09:40:08', '2025-12-24 09:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `income_sub_categories`
--

CREATE TABLE `income_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_sub_categories`
--

INSERT INTO `income_sub_categories` (`id`, `category_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Grade 1-5', 'Subcategory of Tuition Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(2, 1, 'Grade 6-10', 'Subcategory of Tuition Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(3, 1, 'Grade 11-12', 'Subcategory of Tuition Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(4, 2, 'Alumni Donation', 'Subcategory of Donation', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(5, 2, 'Sponsor Donation', 'Subcategory of Donation', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(6, 3, 'Book Fee', 'Subcategory of Library Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(7, 3, 'Late Fee', 'Subcategory of Library Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(8, 4, 'Bus Fee', 'Subcategory of Transport Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(9, 4, 'Van Fee', 'Subcategory of Transport Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(10, 5, 'Monthly Test', 'Subcategory of Examination Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08'),
(11, 5, 'Final Exam', 'Subcategory of Examination Fee', '2025-12-24 09:40:08', '2025-12-24 09:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `marks_obtained` decimal(12,2) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `gpa` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2014_10_12_000000_create_users_table', 1),
(62, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(63, '2014_10_12_100000_create_password_resets_table', 1),
(64, '2019_08_19_000000_create_failed_jobs_table', 1),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(66, '2025_09_11_094326_create_teachers_table', 1),
(67, '2025_09_12_060130_create_rooms_table', 1),
(68, '2025_09_12_060131_create_students_table', 1),
(69, '2025_09_13_043442_create_attendances_table', 1),
(70, '2025_09_13_085224_create_groups_table', 1),
(71, '2025_09_13_085225_create_subjects_table', 1),
(72, '2025_09_13_085234_create_exams_table', 1),
(73, '2025_09_13_085241_create_marks_table', 1),
(74, '2025_09_16_081917_create_student_subjects_table', 1),
(75, '2025_09_22_185426_create_fee_categories_table', 1),
(76, '2025_09_22_185444_create_fee_structures_table', 1),
(77, '2025_09_28_183808_create_exam_names_table', 1),
(78, '2025_10_03_153733_create_class_schedules_table', 1),
(79, '2025_12_06_164031_create_notices_table', 1),
(80, '2025_12_06_181454_create_excategories_table', 1),
(81, '2025_12_06_181520_create_exsubcategories_table', 1),
(82, '2025_12_06_181537_create_expenses_table', 1),
(83, '2025_12_12_103332_create_fee_payment_details_table', 1),
(84, '2025_12_12_103336_create_fee_payment_items_table', 1),
(85, '2025_12_12_104757_create_companies_table', 1),
(86, '2025_12_21_130614_create_bank_details_table', 1),
(87, '2025_12_21_130634_create_bank_transection_details_table', 1),
(88, '2025_12_23_104250_create_income_categories_table', 1),
(89, '2025_12_23_104304_create_income_sub_categories_table', 1),
(90, '2025_12_23_104324_create_incomes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `publish_date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `notice_type` varchar(255) NOT NULL DEFAULT 'public',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `class_teacher_id` bigint(20) UNSIGNED NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 50,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `section`, `class_teacher_id`, `capacity`, `created_at`, `updated_at`) VALUES
(1, 'Class 1', 'A', 1, 40, NULL, NULL),
(2, 'Class 2', 'A', 2, 42, NULL, NULL),
(3, 'Class 3', 'A', 3, 44, NULL, NULL),
(4, 'Class 4', 'A', 4, 46, NULL, NULL),
(5, 'Class 5', 'A', 5, 48, NULL, NULL),
(6, 'Class 6', 'A', 6, 50, NULL, NULL),
(7, 'Class 7', 'A', 7, 52, NULL, NULL),
(8, 'Class 8', 'A', 8, 54, NULL, NULL),
(9, 'Class 9', 'A', 9, 56, NULL, NULL),
(10, 'Class 10', 'A', 10, 58, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `admission_no` varchar(255) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `session_year` varchar(255) DEFAULT NULL,
  `previous_school` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_profession` varchar(255) DEFAULT NULL,
  `father_contact` varchar(255) DEFAULT NULL,
  `father_email` varchar(255) DEFAULT NULL,
  `father_nid` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_profession` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(255) DEFAULT NULL,
  `mother_email` varchar(255) DEFAULT NULL,
  `mother_nid` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `guardian_email` varchar(255) DEFAULT NULL,
  `guardian_nid` varchar(255) DEFAULT NULL,
  `guardian_relationship` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `roll_number` int(11) NOT NULL DEFAULT 1,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `attend_date` date DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `b_reg_no` bigint(20) DEFAULT NULL,
  `b_roll_no` bigint(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `father_photo` varchar(255) DEFAULT NULL,
  `mother_photo` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `is_profile_completed` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `admission_no`, `admission_date`, `section`, `group`, `session_year`, `previous_school`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kenneth', 'Davis', '1971-04-27', 'Other', 'A+', 'Other', 'Bangladeshi', '0010778841231', '01667984913', 'student1@example.com', '$2y$12$soCTvQnLKpYxHysHF7cpcOxmnf.Fki2DzTY1ZGPYpS8sBlBXfvaT2', '2803 Dortha Villages\nLake Jeffreyshire, CO 97318', '48252 Lockman Highway\nHomenickport, LA 52509-6568', 'ADM-00001', '1976-03-14', 'B', 'Science', '2025-2026', 'Weber PLC School', 'Dr. Frederic Rau V', 'Teacher', '01651870817', 'father1@example.com', '7033180406853', 'Karen Adams', 'Nurse', '01605747138', 'mother1@example.com', '0007370142121', 'Michale Okuneva', '01311717481', 'guardian1@example.com', '8091448270297', 'Aunt', 1, 1, 1, '2025-12-24', NULL, 2025000001, 900001, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11', '127.0.0.1', 1, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11'),
(2, 'Stefanie', 'Fahey', '1993-04-07', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '7740599329353', '01903052332', 'student2@example.com', '$2y$12$Fx2JBWUBD3.kH9pzu9aU0OWt06aVNNvU7DUppOqGfZvqxf7dmnoj6', '804 Stroman Villages\nEast Andy, ID 17370', '39280 Herzog Plaza Apt. 877\nOberbrunnerbury, KS 36596', 'ADM-00002', '2020-02-15', 'B', 'Science', '2025-2026', 'Skiles-Padberg School', 'Devon Wolf III', 'Engineer', '01494342327', 'father2@example.com', '5459955262938', 'Nyasia Abernathy', 'Businesswoman', '01499461997', 'mother2@example.com', '9543470715364', 'Zachariah Schoen', '01569726231', 'guardian2@example.com', '5663560129863', 'Grandparent', 1, 1, 7, '2025-12-24', NULL, 2025000002, 900002, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12', '127.0.0.1', 1, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12'),
(3, 'Reilly', 'Kreiger', '1977-02-20', 'Male', 'A-', 'Christian', 'Bangladeshi', '6516247095806', '01556216684', 'student3@example.com', '$2y$12$n8e7Xx7te7Jat1loGVeD7uDyd2N4aHi5IqN6Usmqi7GLmviPZGEkC', '705 Baumbach Mountains\nNew Roscoe, WA 85791', '295 Kunde Dam Apt. 772\nLake Jaysonburgh, MA 69000', 'ADM-00003', '1987-06-08', 'B', 'Commerce', '2025-2026', 'Dooley-Koelpin School', 'Quincy Gutmann V', 'Doctor', '01979212481', 'father3@example.com', '8477296304589', 'Jany Douglas', 'Businesswoman', '01745106792', 'mother3@example.com', '8350856597976', 'Ernest D\'Amore I', '01411421052', 'guardian3@example.com', '4176598615763', 'Grandparent', 1, 1, 5, '2025-12-24', NULL, 2025000003, 900003, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12', '127.0.0.1', 1, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12'),
(4, 'Estelle', 'Hermann', '1972-08-30', 'Other', 'B+', 'Other', 'Bangladeshi', '6213339954762', '01548680984', 'student4@example.com', '$2y$12$nxd1ll7ixdbMN4QWn.Ov5.OiejfnemhIsJCPZVxnxXXd3Di9pvqDO', '45266 Davis Overpass\nEast Idell, TX 84494-4028', '2316 Blanda Cliffs Apt. 588\nNew Martinbury, CT 85752', 'ADM-00004', '2010-04-30', 'B', 'Arts', '2025-2026', 'Wisozk-Cassin School', 'Mr. Hector Friesen DDS', 'Doctor', '01429454212', 'father4@example.com', '5781096172854', 'Zelda Fisher', 'Housewife', '01308728531', 'mother4@example.com', '3093563986971', 'Blair Schultz', '01987245076', 'guardian4@example.com', '7068912119678', 'Sister', 1, 2, 1, '2025-12-24', NULL, 2025000004, 900004, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12', '127.0.0.1', 1, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12'),
(5, 'Shanie', 'Bradtke', '2005-06-12', 'Other', 'AB+', 'Other', 'Bangladeshi', '7886381392021', '01403846840', 'student5@example.com', '$2y$12$DEmJB23Iv6BSdQa7yi4P9.hG2nhBiqm.x.x2.SNsxYQhnoo9Cod2W', '80856 Deanna Station Apt. 877\nBenedictland, VA 61899-7546', '603 Lewis Manor Suite 347\nNorth Zena, AZ 76478-3105', 'ADM-00005', '1992-05-27', 'B', 'Commerce', '2025-2026', 'Champlin, Price and Daugherty School', 'Peter Lesch', 'Farmer', '01484863317', 'father5@example.com', '1436945459938', 'Mrs. Dannie Haag Jr.', 'Businesswoman', '01431269554', 'mother5@example.com', '1416359302930', 'Dr. Bernhard Zemlak DVM', '01524036753', 'guardian5@example.com', '2085985946866', 'Brother', 1, 3, 1, '2025-12-24', NULL, 2025000005, 900005, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12', '127.0.0.1', 1, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12'),
(6, 'Wilfred', 'O\'Kon', '1986-09-13', 'Other', 'O+', 'Islam', 'Bangladeshi', '8771387742190', '01724595193', 'student6@example.com', '$2y$12$LWaYazvJMbJbJ7S3LG8Ye.FhQBdinprdjg1s9ixuXJaNESk/RLinC', '3825 Harvey Lakes Apt. 322\nPort Jayson, SC 79237-1748', '48931 Evan Summit\nSouth Margarettestad, KS 87896', 'ADM-00006', '2015-11-07', 'A', 'Arts', '2025-2026', 'Russel and Sons School', 'Jason Oberbrunner', 'Engineer', '01348848673', 'father6@example.com', '0736322545514', 'Shany Wolf', 'Housewife', '01552407188', 'mother6@example.com', '0016696812340', 'Francis Kassulke', '01659747902', 'guardian6@example.com', '4409977145937', 'Grandparent', 1, 2, 7, '2025-12-24', NULL, 2025000006, 900006, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12', '127.0.0.1', 1, NULL, '2025-12-24 09:39:12', '2025-12-24 09:39:12'),
(7, 'Leila', 'Russel', '1983-04-22', 'Other', 'B-', 'Other', 'Bangladeshi', '3054393819240', '01511287159', 'student7@example.com', '$2y$12$e2WU.L.QUCH8V539WDqifem267/oVSoZv0YOd3X80fTMB4MNLqhQ6', '42545 Kassulke Union\nSylvanport, RI 84774', '94595 Koelpin Ways\nPort Feltonport, GA 27069', 'ADM-00007', '1998-08-20', 'C', 'Commerce', '2025-2026', 'Leannon LLC School', 'Prof. Geo Hamill III', 'Engineer', '01597693867', 'father7@example.com', '6359060508642', 'Ernestina Heller', 'Businesswoman', '01810961217', 'mother7@example.com', '6231643973929', 'Leopoldo Predovic', '01887960862', 'guardian7@example.com', '0932112462273', 'Grandparent', 1, 1, 2, '2025-12-24', NULL, 2025000007, 900007, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13', '127.0.0.1', 1, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13'),
(8, 'Hardy', 'Cartwright', '1994-03-10', 'Female', 'AB-', 'Christian', 'Bangladeshi', '4765937008064', '01541054041', 'student8@example.com', '$2y$12$lTW2KXw43a1MSXaep4s4huKXEuIqedZsFnxvJPDpIKBYWKUD08BbW', '470 Eulalia Mills\nFaustinochester, WY 39496', '3839 Torphy Ville\nWest Deontemouth, NY 73704-2764', 'ADM-00008', '2017-04-15', 'C', 'Commerce', '2025-2026', 'Wuckert-Beahan School', 'Otho DuBuque I', 'Engineer', '01797143674', 'father8@example.com', '6202027010524', 'Adriana Spinka', 'Teacher', '01595476735', 'mother8@example.com', '6623229483587', 'Prof. Karl Hoeger PhD', '01503344287', 'guardian8@example.com', '4637871379858', 'Uncle', 1, 1, 9, '2025-12-24', NULL, 2025000008, 900008, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13', '127.0.0.1', 1, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13'),
(9, 'Elna', 'Hagenes', '1998-03-25', 'Male', 'O+', 'Hindu', 'Bangladeshi', '0924245813561', '01597054085', 'student9@example.com', '$2y$12$5WpkVXLBsA3NiVpnvLdeMObc82nvtebWiR1aeh1ciWxQwsWJBjXX2', '8205 Howell Summit Suite 537\nLake Margarette, NC 76367-4152', '556 Felicia Path Apt. 499\nPort Paulaberg, WA 19458-3357', 'ADM-00009', '2023-03-01', 'C', 'Science', '2025-2026', 'Mayert-Reinger School', 'Keshaun Hermann', 'Businessman', '01417451536', 'father9@example.com', '3279293361168', 'Clarabelle Hessel', 'Nurse', '01521459643', 'mother9@example.com', '4013626605283', 'Jackie Renner', '01936555717', 'guardian9@example.com', '0495327025705', 'Sister', 1, 3, 7, '2025-12-24', NULL, 2025000009, 900009, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13', '127.0.0.1', 1, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13'),
(10, 'Opal', 'Quigley', '2014-07-26', 'Other', 'A+', 'Other', 'Bangladeshi', '5590698256621', '01306041768', 'student10@example.com', '$2y$12$Pb5.LqFHF212aPqZwrfRdOfp7lPVof1f6WHDMEVDrdB/HT1WJ/qFq', '44756 Devon Lock Apt. 054\nEast Hector, SD 89604', '37660 Johnson Station\nNorth Bertram, PA 77542', 'ADM-00010', '1972-01-22', 'A', 'Commerce', '2025-2026', 'Renner-Armstrong School', 'Freeman Ryan DDS', 'Teacher', '01538862396', 'father10@example.com', '4074788110022', 'Lilly Schaefer', 'Teacher', '01927003798', 'mother10@example.com', '4643656884090', 'Prof. Blair Rau', '01319538589', 'guardian10@example.com', '6347223783821', 'Grandparent', 1, 2, 5, '2025-12-24', NULL, 2025000010, 900010, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13', '127.0.0.1', 1, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13'),
(11, 'Bell', 'Schinner', '1995-11-23', 'Other', 'O+', 'Other', 'Bangladeshi', '1176499306648', '01388543896', 'student11@example.com', '$2y$12$dOJCOUmY2wX2PyCzSdLIMuYKPGiivVjMT6gLhEgsftuuBbMdRV1X.', '95927 Stehr Rest\nSouth Alexzanderville, SC 66005-2584', '7957 Randy Fords Suite 336\nWest Flo, PA 15629', 'ADM-00011', '2025-10-01', 'A', 'Commerce', '2025-2026', 'Kunde, Greenholt and Rempel School', 'Mr. Kieran Rau PhD', 'Teacher', '01704511652', 'father11@example.com', '1254713091728', 'Bailee Fisher', 'Teacher', '01899171615', 'mother11@example.com', '2351500190478', 'Arvid Doyle', '01333654294', 'guardian11@example.com', '2430458752881', 'Grandparent', 1, 4, 1, '2025-12-24', NULL, 2025000011, 900011, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13', '127.0.0.1', 1, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13'),
(12, 'Judah', 'Nikolaus', '1979-07-23', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '9606337086485', '01507903710', 'student12@example.com', '$2y$12$X3gdnauQmwR5ijW7OHh0rupDtVrh6mDDwqtFn/hBXnpM3dLtRq26C', '19694 Lucio Fork\nDickinsonside, MA 03688', '556 Romaguera Rest Apt. 849\nNew Clarissa, SD 77866-7689', 'ADM-00012', '1984-04-17', 'C', 'Arts', '2025-2026', 'Borer, Johns and Dicki School', 'Devyn Marks V', 'Teacher', '01518419051', 'father12@example.com', '6086307944520', 'Harmony Hickle', 'Teacher', '01738490146', 'mother12@example.com', '9443503303558', 'Dr. Darrell Howell Jr.', '01830613718', 'guardian12@example.com', '8434761677065', 'Sister', 1, 1, 4, '2025-12-24', NULL, 2025000012, 900012, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13', '127.0.0.1', 1, NULL, '2025-12-24 09:39:13', '2025-12-24 09:39:13'),
(13, 'Whitney', 'Schowalter', '2014-06-27', 'Male', 'B-', 'Other', 'Bangladeshi', '9819119552835', '01383355473', 'student13@example.com', '$2y$12$wgUPMamngWKRpYNOzkyrNOthKXOuXlqLUgkGOiAjkxPyiNd4nm0Mq', '4011 Arianna Gardens\nStrosinfort, MI 30882-3961', '434 Herman Plains\nKutchfort, OH 41659-2447', 'ADM-00013', '2024-04-14', 'C', 'Science', '2025-2026', 'Spinka PLC School', 'Mr. Russel Kreiger', 'Teacher', '01439941156', 'father13@example.com', '1448318799196', 'Prof. Trisha Bashirian', 'Doctor', '01568755893', 'mother13@example.com', '3904509681022', 'Miles Ward', '01621960912', 'guardian13@example.com', '8566638858956', 'Brother', 1, 1, 3, '2025-12-24', NULL, 2025000013, 900013, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14', '127.0.0.1', 1, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14'),
(14, 'Jaron', 'Stracke', '2003-04-22', 'Other', 'AB-', 'Christian', 'Bangladeshi', '1303290943348', '01616360788', 'student14@example.com', '$2y$12$un3KvOTtEn0PAVUPf7tjlORE3FoO5mXIZxZTyA/63igQuSDC4Fl2G', '305 Jamarcus Cliffs\nSchroederbury, MI 20992-2927', '78330 Destinee Drive\nWisokyview, NJ 93641-2082', 'ADM-00014', '1979-04-24', 'B', 'Arts', '2025-2026', 'Sporer PLC School', 'Mr. Brendan Dare I', 'Engineer', '01678635378', 'father14@example.com', '3100557299907', 'Keely Herzog V', 'Teacher', '01686614768', 'mother14@example.com', '2695519498420', 'Prof. Kelley Conroy', '01986267342', 'guardian14@example.com', '2849169911300', 'Sister', 1, 1, 10, '2025-12-24', NULL, 2025000014, 900014, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14', '127.0.0.1', 1, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14'),
(15, 'Paige', 'Effertz', '1989-08-01', 'Other', 'O+', 'Hindu', 'Bangladeshi', '3062976940227', '01386089865', 'student15@example.com', '$2y$12$g8d8WPirM2kddWsmI01oh.Kjq7HHC/bUWXVIqS0MRTVezh/gkGfya', '482 Swaniawski Harbors Suite 524\nNorth Marleyville, MD 32141', '3238 Felipe Turnpike\nSouth Jovani, MA 90877', 'ADM-00015', '2002-04-28', 'A', 'Science', '2025-2026', 'Anderson-Hauck School', 'Dr. Josh Greenfelder', 'Businessman', '01898992856', 'father15@example.com', '4415816548931', 'Prof. Aisha Witting V', 'Businesswoman', '01965519535', 'mother15@example.com', '5722479246796', 'Lorna Wisoky', '01829535206', 'guardian15@example.com', '4734971898725', 'Uncle', 1, 2, 10, '2025-12-24', NULL, 2025000015, 900015, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14', '127.0.0.1', 1, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14'),
(16, 'Kiel', 'Abshire', '1981-02-23', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '2847713426730', '01990810386', 'student16@example.com', '$2y$12$Sw4oAZdvxesMUv4QRX.PReEBthViP1jOREpwB.WZ7Z6gPuoLbo4/2', '5019 Orn Hill Apt. 623\nWalkerfort, NE 44539-0552', '593 Yundt Manor Suite 493\nKundeview, AZ 19887-0316', 'ADM-00016', '2020-08-21', 'B', 'Commerce', '2025-2026', 'Bartell-Bednar School', 'Joel Bruen', 'Teacher', '01940050311', 'father16@example.com', '8236738355931', 'Miss Dasia Conroy DVM', 'Housewife', '01605427526', 'mother16@example.com', '6386549766598', 'Prof. Moses Okuneva MD', '01715865377', 'guardian16@example.com', '4548985521528', 'Uncle', 1, 1, 6, '2025-12-24', NULL, 2025000016, 900016, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14', '127.0.0.1', 1, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14'),
(17, 'Clifton', 'Marks', '2000-10-29', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '1543086888304', '01910563665', 'student17@example.com', '$2y$12$nkLgGx5Z6R52JTn4.P4R2uFQx2gfs8sukCFY67SccZ9dZbm9iZMsq', '20102 Kaycee Streets\nSidneyburgh, CT 40551-0234', '1703 Karson Port\nWest Rashawnberg, AL 45172-2709', 'ADM-00017', '1985-12-10', 'B', 'Commerce', '2025-2026', 'Roob LLC School', 'Levi Abshire', 'Doctor', '01512921787', 'father17@example.com', '0871780749296', 'Kattie Dickens', 'Doctor', '01625738985', 'mother17@example.com', '1370040395543', 'Mrs. Hallie Shields Sr.', '01474050049', 'guardian17@example.com', '4621753479739', 'Uncle', 1, 2, 3, '2025-12-24', NULL, 2025000017, 900017, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14', '127.0.0.1', 1, NULL, '2025-12-24 09:39:14', '2025-12-24 09:39:14'),
(18, 'Bridget', 'Ortiz', '1989-01-26', 'Other', 'A+', 'Islam', 'Bangladeshi', '0157403105335', '01347566329', 'student18@example.com', '$2y$12$1fd0UYW2stO.8JIWnPawQu...SQw3zK/c/P81xct0v.bnmwLLqaqW', '79343 Mills Square\nSouth Deborah, LA 32582', '348 Adriana Forest\nLake Carmel, OK 85113-6155', 'ADM-00018', '2021-09-10', 'C', 'Commerce', '2025-2026', 'Rath PLC School', 'Prof. Laron Christiansen', 'Doctor', '01745064994', 'father18@example.com', '8058540194411', 'Karli Kirlin PhD', 'Businesswoman', '01863915753', 'mother18@example.com', '0640742017321', 'Josiah Kling', '01939193767', 'guardian18@example.com', '5006585374840', 'Sister', 1, 3, 3, '2025-12-24', NULL, 2025000018, 900018, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15', '127.0.0.1', 1, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15'),
(19, 'Zora', 'Muller', '2017-10-23', 'Other', 'B-', 'Other', 'Bangladeshi', '0622241598208', '01786546419', 'student19@example.com', '$2y$12$rA4dpCZixcxK4orHnfGZ8eAId3ciuKJ0q7cyp4NstySuLqEx/51Aa', '635 Gwendolyn Mills Suite 214\nWest Adell, NV 54912-8579', '79771 Green Manor Apt. 639\nWest Margarett, NM 78531', 'ADM-00019', '2014-10-18', 'A', 'Arts', '2025-2026', 'Ritchie, Klocko and VonRueden School', 'Ceasar Borer IV', 'Businessman', '01364329150', 'father19@example.com', '5834069028695', 'Gabrielle Armstrong', 'Businesswoman', '01527158984', 'mother19@example.com', '9532263059114', 'Mose Wilkinson', '01643912443', 'guardian19@example.com', '9713202438702', 'Uncle', 1, 2, 4, '2025-12-24', NULL, 2025000019, 900019, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15', '127.0.0.1', 1, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15'),
(20, 'Price', 'Hickle', '2012-06-07', 'Female', 'O+', 'Hindu', 'Bangladeshi', '5939501378090', '01365732151', 'student20@example.com', '$2y$12$fqIx8JfVtrKYvIPhnBHRgesxTspaFfF..ON2pWbh7/pH9HNKOQ9oC', '1196 Durward Rapids Suite 785\nBayleebury, UT 69188-1306', '2999 Mitchell Bypass Suite 313\nCamilleburgh, IL 45052', 'ADM-00020', '2001-08-14', 'A', 'Arts', '2025-2026', 'Grimes, McCullough and Hand School', 'Dr. Benton Barton', 'Businessman', '01564928917', 'father20@example.com', '2107728841810', 'Demetris Wyman PhD', 'Nurse', '01855548605', 'mother20@example.com', '4390937268314', 'Jeffery Kemmer', '01561923514', 'guardian20@example.com', '5166588791964', 'Grandparent', 1, 1, 8, '2025-12-24', NULL, 2025000020, 900020, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15', '127.0.0.1', 1, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15'),
(21, 'Constantin', 'Leuschke', '2013-01-24', 'Male', 'O-', 'Hindu', 'Bangladeshi', '8366789542682', '01398465427', 'student21@example.com', '$2y$12$WbwoGw23EQRCCQUWI3id4eXNx6Vyn.6EnObiTX94Fr2KU8iq94Q/e', '54303 Berniece Port Apt. 512\nLake Emmet, VA 38314', '433 Caleigh Way\nWest Thereseville, DC 51746', 'ADM-00021', '1989-01-16', 'C', 'Science', '2025-2026', 'Gislason, Nicolas and Jacobson School', 'Declan Price', 'Doctor', '01515757548', 'father21@example.com', '5847640267550', 'Mayra Beatty', 'Housewife', '01491408294', 'mother21@example.com', '5267550317058', 'Devonte Shields', '01902538710', 'guardian21@example.com', '7111063550006', 'Aunt', 1, 3, 5, '2025-12-24', NULL, 2025000021, 900021, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15', '127.0.0.1', 1, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15'),
(22, 'Gregorio', 'Hagenes', '2004-11-03', 'Male', 'B-', 'Christian', 'Bangladeshi', '3815066307374', '01644812952', 'student22@example.com', '$2y$12$Vgx4lfB/VFPCHTl69HPtTufsRjpP5Uag49Ts7lvBySHzh4HfjQzQ6', '436 Beahan Squares Suite 649\nSallyville, MD 49139', '8050 Stiedemann Crest Apt. 193\nSauerburgh, WV 48096', 'ADM-00022', '2021-03-26', 'B', 'Commerce', '2025-2026', 'Keebler PLC School', 'Prof. Brant Kihn V', 'Businessman', '01529905102', 'father22@example.com', '5457938959440', 'Miss Dulce Batz', 'Doctor', '01565960681', 'mother22@example.com', '4553003677969', 'Abel Jerde', '01807340753', 'guardian22@example.com', '9586252425841', 'Uncle', 1, 2, 9, '2025-12-24', NULL, 2025000022, 900022, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15', '127.0.0.1', 1, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15'),
(23, 'Arjun', 'Lockman', '1991-02-15', 'Male', 'O-', 'Christian', 'Bangladeshi', '8372990073938', '01563175636', 'student23@example.com', '$2y$12$ZQlNhu6FjCBGgp0InadX3e3HAYoS.wBAoqX0DaXc9JQ7Jm406oFya', '2086 Trisha Meadows Suite 480\nNew Georgiana, MA 03803-7770', '4008 Gloria Burgs\nDonnellyton, MN 50135', 'ADM-00023', '1987-09-21', 'A', 'Commerce', '2025-2026', 'Stanton-Watsica School', 'Clair Schamberger II', 'Teacher', '01484598937', 'father23@example.com', '7145175136119', 'Shannon Abshire', 'Nurse', '01456539862', 'mother23@example.com', '8024992559486', 'Mr. Waldo Tillman', '01307033098', 'guardian23@example.com', '0070497337586', 'Uncle', 1, 3, 4, '2025-12-24', NULL, 2025000023, 900023, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15', '127.0.0.1', 1, NULL, '2025-12-24 09:39:15', '2025-12-24 09:39:15'),
(24, 'Reece', 'Mitchell', '1985-09-16', 'Female', 'A-', 'Hindu', 'Bangladeshi', '2733228079512', '01398008276', 'student24@example.com', '$2y$12$0hXVLOD2POre4JyaRh5E6uWZlHWEOTolOEGT3WKX1BSA2yCE5UtP6', '7387 Rashad Radial\nAldaborough, ND 37252', '7067 Ozella Extension Apt. 889\nLake Marcelina, MD 00363', 'ADM-00024', '1971-10-08', 'B', 'Arts', '2025-2026', 'Pfeffer, Schaden and Johnson School', 'Dr. Izaiah Weimann', 'Businessman', '01498767844', 'father24@example.com', '0647902689532', 'Delia Effertz V', 'Housewife', '01889786134', 'mother24@example.com', '5018013104652', 'Dr. Freddy Von', '01717148454', 'guardian24@example.com', '2516073214762', 'Grandparent', 1, 4, 4, '2025-12-24', NULL, 2025000024, 900024, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16', '127.0.0.1', 1, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16'),
(25, 'Marcellus', 'Ondricka', '2006-08-03', 'Female', 'AB+', 'Other', 'Bangladeshi', '4279912253829', '01394376933', 'student25@example.com', '$2y$12$k4zeOnj2PqdTpFaB3ffy2Obc4ho5WDK59815NEQ76HFP0AUNYLiz.', '4557 Strosin Overpass Suite 711\nLake Guiseppemouth, IN 70411', '667 Moore Lodge\nEnolafort, RI 98814', 'ADM-00025', '1978-05-18', 'B', 'Commerce', '2025-2026', 'Effertz-Harris School', 'Connor Bechtelar', 'Farmer', '01331807814', 'father25@example.com', '7590396999502', 'Duane Gusikowski', 'Businesswoman', '01790242613', 'mother25@example.com', '6511210494769', 'Aidan West', '01579101061', 'guardian25@example.com', '0889844205251', 'Grandparent', 1, 2, 2, '2025-12-24', NULL, 2025000025, 900025, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16', '127.0.0.1', 1, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16'),
(26, 'Wilson', 'Mann', '1972-10-20', 'Female', 'B+', 'Buddhist', 'Bangladeshi', '7137831247310', '01805626708', 'student26@example.com', '$2y$12$MzMdLxYrs0IEVSHX.hfCOuvOSSb.dUdW.421xiTW89Y1w7SU55QGm', '38742 Eleazar Lane\nHarbermouth, CA 42700-0349', '458 Pfannerstill Oval Suite 510\nWilbertfort, OR 93160', 'ADM-00026', '2005-09-25', 'A', 'Science', '2025-2026', 'Wiegand Ltd School', 'Dr. Easton Jerde', 'Teacher', '01717061089', 'father26@example.com', '7495080174263', 'Veronica Huels III', 'Teacher', '01928826138', 'mother26@example.com', '2597066641282', 'Dr. Dagmar Hamill Sr.', '01798417993', 'guardian26@example.com', '1912005083155', 'Aunt', 1, 5, 4, '2025-12-24', NULL, 2025000026, 900026, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16', '127.0.0.1', 1, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16'),
(27, 'Jade', 'Grady', '1996-07-11', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '2509753290976', '01543447145', 'student27@example.com', '$2y$12$ZKnLCBoB07sNM83A6tkVp.8JRuyg4ugNznMVZozBoxU8bPeKrPVDm', '38505 Walsh Dale Suite 696\nWest Joanyshire, ID 47448-2876', '96605 Libby Mountains\nDaremouth, CA 96559-8246', 'ADM-00027', '1973-02-10', 'C', 'Arts', '2025-2026', 'Daugherty, Homenick and Ledner School', 'Herman Mills', 'Businessman', '01581463953', 'father27@example.com', '8979382587081', 'Elfrieda Mohr DVM', 'Nurse', '01876842692', 'mother27@example.com', '6514950081571', 'Gregorio Deckow', '01430892754', 'guardian27@example.com', '0461102331807', 'Brother', 1, 5, 1, '2025-12-24', NULL, 2025000027, 900027, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16', '127.0.0.1', 1, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16'),
(28, 'Sage', 'Sawayn', '2000-07-24', 'Female', 'AB+', 'Other', 'Bangladeshi', '6105937825019', '01374631253', 'student28@example.com', '$2y$12$wgeMGG6K9rcbAkGrvGgfuuRAigTQgp5FdgvkVtywUlyToQXql61DO', '70947 Schimmel Ford\nNorth Angie, LA 28295-7246', '1113 Doyle Dale Apt. 943\nNew Hertha, VT 12977', 'ADM-00028', '2002-09-10', 'B', 'Science', '2025-2026', 'Morissette Ltd School', 'Kevon Denesik', 'Doctor', '01680009950', 'father28@example.com', '5987815492833', 'Chasity Weissnat', 'Housewife', '01757801750', 'mother28@example.com', '4791299829982', 'Eula Dach', '01592779971', 'guardian28@example.com', '9483260065903', 'Brother', 1, 3, 9, '2025-12-24', NULL, 2025000028, 900028, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16', '127.0.0.1', 1, NULL, '2025-12-24 09:39:16', '2025-12-24 09:39:16'),
(29, 'Jayme', 'Jacobs', '2008-06-23', 'Male', 'B+', 'Christian', 'Bangladeshi', '0696731201932', '01487149200', 'student29@example.com', '$2y$12$Q8n.PCfNg1OBxBDYyjlgmO4jkAdxHJuLH1AacC3uYP8EHPMBPgxuW', '70356 Friedrich Expressway Suite 843\nSchambergerfurt, IA 28941', '1369 Goldner Mount\nBartolettiton, ND 75973', 'ADM-00029', '1976-08-23', 'B', 'Arts', '2025-2026', 'DuBuque, Romaguera and Mills School', 'Mr. Terence Padberg', 'Teacher', '01595986816', 'father29@example.com', '2669618800274', 'Celia Waelchi', 'Doctor', '01440990767', 'mother29@example.com', '7952332558227', 'Erling Stiedemann', '01355127543', 'guardian29@example.com', '8074884758363', 'Grandparent', 1, 3, 2, '2025-12-24', NULL, 2025000029, 900029, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17', '127.0.0.1', 1, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17'),
(30, 'Jude', 'Jacobs', '1996-01-15', 'Other', 'A+', 'Other', 'Bangladeshi', '9942100031947', '01839652987', 'student30@example.com', '$2y$12$UIT78RDBzCpx4kb4h6iaheUWmNBqKaUee14RxvoOJrWT1xxvMeulC', '8668 Bayer Plaza Apt. 632\nSouth Suzanne, ID 27462', '556 Cummerata Roads Suite 399\nPort Adolphusville, HI 28941-2577', 'ADM-00030', '2020-05-10', 'A', 'Commerce', '2025-2026', 'Kemmer-Watsica School', 'Valentin Homenick I', 'Engineer', '01984979918', 'father30@example.com', '9227869715235', 'Frances Frami IV', 'Nurse', '01711873376', 'mother30@example.com', '9349226041427', 'Dr. Kenneth Douglas', '01716046974', 'guardian30@example.com', '8210858914101', 'Uncle', 1, 2, 6, '2025-12-24', NULL, 2025000030, 900030, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17', '127.0.0.1', 1, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17'),
(31, 'Kelley', 'Padberg', '1997-08-18', 'Female', 'O-', 'Islam', 'Bangladeshi', '2564978037376', '01833537228', 'student31@example.com', '$2y$12$ryCwFAkPB/ZJeFupwpqGSuaUhEs6Jst9.kgkzEdoFy1oMepPea7YS', '641 Hilpert Locks\nHilmastad, KY 69281-5470', '37079 Maximus Inlet\nHellenbury, AL 77443-8634', 'ADM-00031', '1976-06-12', 'B', 'Commerce', '2025-2026', 'Gaylord and Sons School', 'Marques Harvey I', 'Businessman', '01317395590', 'father31@example.com', '1954592007542', 'Mrs. Mylene Spinka', 'Nurse', '01903566603', 'mother31@example.com', '3498672561250', 'Kaleb Gusikowski', '01611687513', 'guardian31@example.com', '8666001402840', 'Aunt', 1, 2, 8, '2025-12-24', NULL, 2025000031, 900031, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17', '127.0.0.1', 1, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17'),
(32, 'Herminio', 'Beer', '2000-06-29', 'Other', 'O-', 'Islam', 'Bangladeshi', '9990262853696', '01435017520', 'student32@example.com', '$2y$12$ozMjsfns32cWu/F38y7C8.cFK9f5.96mOAwSz9lpIR7J5rkOCwquq', '675 Kessler Harbors\nWest Kadenton, NV 41597', '52697 Bauch Manor Suite 119\nPort Laurence, NJ 34966', 'ADM-00032', '2013-08-30', 'A', 'Arts', '2025-2026', 'Kunze-Krajcik School', 'Kenneth Waters', 'Farmer', '01884698061', 'father32@example.com', '8016663113995', 'Althea Walter', 'Businesswoman', '01497822832', 'mother32@example.com', '6674972337497', 'Reggie Brekke', '01778691805', 'guardian32@example.com', '9334030760062', 'Brother', 1, 3, 6, '2025-12-24', NULL, 2025000032, 900032, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17', '127.0.0.1', 1, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17'),
(33, 'Eliane', 'Shanahan', '2010-02-05', 'Female', 'AB+', 'Other', 'Bangladeshi', '6699552746985', '01550888814', 'student33@example.com', '$2y$12$u1s5BTJO63Doz40W2q7bkOS6rRxzB5Stog0C900pQGpdlQ7hpoDri', '464 Myles Falls\nPort Savanna, LA 53839', '254 Nicolas Way Apt. 269\nWest Edenberg, DE 00058', 'ADM-00033', '1999-07-02', 'A', 'Commerce', '2025-2026', 'Cruickshank LLC School', 'Geovanny Larkin', 'Doctor', '01888340452', 'father33@example.com', '8426900000883', 'Jayne Quigley', 'Teacher', '01949515926', 'mother33@example.com', '1580178063655', 'Freddie Stanton', '01901506090', 'guardian33@example.com', '9393847283199', 'Sister', 1, 3, 10, '2025-12-24', NULL, 2025000033, 900033, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17', '127.0.0.1', 1, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17'),
(34, 'Tristian', 'Reynolds', '1993-08-25', 'Female', 'B+', 'Islam', 'Bangladeshi', '9335501611557', '01541581632', 'student34@example.com', '$2y$12$enFbq5l3ZfaYOkPOKCWbGeBRyhpqQTuM37UOqR.8bidTZLXRR9xze', '872 Goyette Unions Apt. 015\nPort Jackieburgh, ID 27975', '602 Deckow Causeway\nErnserfort, NE 19902', 'ADM-00034', '2017-05-01', 'B', 'Commerce', '2025-2026', 'Barton Inc School', 'Keagan Turner', 'Teacher', '01632193448', 'father34@example.com', '3119621640766', 'Lexi Gottlieb', 'Nurse', '01968900354', 'mother34@example.com', '4967845520217', 'Geraldine Schowalter', '01906902679', 'guardian34@example.com', '5142742487793', 'Aunt', 1, 4, 7, '2025-12-24', NULL, 2025000034, 900034, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17', '127.0.0.1', 1, NULL, '2025-12-24 09:39:17', '2025-12-24 09:39:17'),
(35, 'Salma', 'Braun', '1986-02-04', 'Female', 'A+', 'Other', 'Bangladeshi', '0313069412735', '01638016851', 'student35@example.com', '$2y$12$SzFthZ4hfG0wjkC.VLGFSO.AnARWjLRa9OUyRXOlj1vSczkVx3HvK', '19547 Kacey Lodge\nWest Elyssamouth, HI 54558-9280', '821 Abernathy Avenue Apt. 040\nGleichnerside, IL 68490', 'ADM-00035', '1980-08-04', 'A', 'Science', '2025-2026', 'Weimann-Hane School', 'Johann Johnston', 'Engineer', '01998865610', 'father35@example.com', '1798082425623', 'Michele Dach', 'Housewife', '01731615433', 'mother35@example.com', '7183427222055', 'Alayna Larson', '01831274551', 'guardian35@example.com', '7329650985667', 'Sister', 1, 4, 5, '2025-12-24', NULL, 2025000035, 900035, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18', '127.0.0.1', 1, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18'),
(36, 'Joana', 'Ward', '1972-12-19', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '6328970518191', '01930244378', 'student36@example.com', '$2y$12$MhW23/xdoSx0PXDeKn4xP.upia59TPwx7zcLLlNIoFp6qEJtZ8HYG', '8560 Ubaldo Crest\nNorth Joany, IA 91791', '4540 Homenick Springs Apt. 270\nPort Lucio, NJ 11491-6411', 'ADM-00036', '2020-11-18', 'B', 'Science', '2025-2026', 'Tremblay, Schmidt and Schowalter School', 'Frederic Roberts', 'Businessman', '01302608441', 'father36@example.com', '2056559865010', 'Prof. Rhea Larkin Sr.', 'Businesswoman', '01569581760', 'mother36@example.com', '9233911620153', 'Mr. Donnell Prohaska', '01505940265', 'guardian36@example.com', '2773072807708', 'Uncle', 1, 5, 5, '2025-12-24', NULL, 2025000036, 900036, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18', '127.0.0.1', 1, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18'),
(37, 'Jerrod', 'Will', '2015-04-03', 'Female', 'O-', 'Hindu', 'Bangladeshi', '5186577920282', '01556096613', 'student37@example.com', '$2y$12$4Yr0gq282q1BspAKeVryEe6lPjUklU0lX1hskhTeg5G61nzr89tru', '56056 Baby Meadow\nWilliamsonfort, OR 94882', '7617 Collins Lights\nTinatown, AL 78288', 'ADM-00037', '1997-05-15', 'B', 'Commerce', '2025-2026', 'Barton PLC School', 'Mr. Peter Carroll', 'Businessman', '01735491088', 'father37@example.com', '4200157440699', 'Gerda Wuckert', 'Nurse', '01626095374', 'mother37@example.com', '5962044312197', 'Prof. Alphonso Mosciski IV', '01422558570', 'guardian37@example.com', '2600339955961', 'Uncle', 1, 4, 10, '2025-12-24', NULL, 2025000037, 900037, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18', '127.0.0.1', 1, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18'),
(38, 'Junius', 'Schulist', '2000-03-29', 'Other', 'O+', 'Hindu', 'Bangladeshi', '4302428910499', '01604017444', 'student38@example.com', '$2y$12$2uR24i395hU7qqwgVKPOwuvaXRXw0R5aIV7bSYs5/H4i6YzCSCnCi', '685 Abbott Shoals Apt. 244\nMateoberg, WI 71065-2179', '7934 Dillan Summit Suite 310\nJamarfort, FL 63064-6439', 'ADM-00038', '1983-07-03', 'C', 'Commerce', '2025-2026', 'Roberts-Labadie School', 'Mckenzie Bergnaum', 'Teacher', '01328470918', 'father38@example.com', '6206975272262', 'Marquise Johnson', 'Teacher', '01647895365', 'mother38@example.com', '7665649319280', 'Ezekiel Ward', '01883485206', 'guardian38@example.com', '5393197682824', 'Sister', 1, 6, 1, '2025-12-24', NULL, 2025000038, 900038, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18', '127.0.0.1', 1, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18'),
(39, 'Robb', 'Green', '2004-06-17', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '5895871234992', '01629952502', 'student39@example.com', '$2y$12$NU7Jh6F45IGPl5x14SrAhuLWjx0.UorA6sRK8wRyoTy5Ymp1qyx2S', '227 Connelly Plains\nLake Jerrell, VT 23196-8035', '833 Fadel Walks\nKingshire, NC 99007-2217', 'ADM-00039', '2020-12-29', 'C', 'Science', '2025-2026', 'Dare Ltd School', 'Adriel Jacobson V', 'Doctor', '01928821847', 'father39@example.com', '6865352080415', 'Prof. Imogene Mann DVM', 'Businesswoman', '01806337726', 'mother39@example.com', '5634848647468', 'Eugene Marvin', '01419454680', 'guardian39@example.com', '1783085950355', 'Uncle', 1, 3, 8, '2025-12-24', NULL, 2025000039, 900039, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18', '127.0.0.1', 1, NULL, '2025-12-24 09:39:18', '2025-12-24 09:39:18'),
(40, 'Queenie', 'Olson', '1984-11-10', 'Female', 'B+', 'Islam', 'Bangladeshi', '3900589735279', '01761848588', 'student40@example.com', '$2y$12$PyLDYLeEq73OyCPC1J/N2uqu4cPYASyVLeznsFcanM7v9jqFl/rxq', '818 Merlin Cape Apt. 372\nWest Jovannyville, ID 32820', '448 Reichel Curve Apt. 668\nHermanstad, VT 29594-9078', 'ADM-00040', '1985-01-09', 'B', 'Arts', '2025-2026', 'Koepp LLC School', 'Dr. Hans Hamill', 'Doctor', '01619981637', 'father40@example.com', '3544832236321', 'Felicity Dach Sr.', 'Nurse', '01962340080', 'mother40@example.com', '2142033702766', 'Hershel Bergstrom', '01623125299', 'guardian40@example.com', '8644568421124', 'Grandparent', 1, 6, 4, '2025-12-24', NULL, 2025000040, 900040, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19', '127.0.0.1', 1, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19'),
(41, 'Emie', 'Witting', '1997-02-15', 'Male', 'AB+', 'Other', 'Bangladeshi', '5391644575361', '01464542049', 'student41@example.com', '$2y$12$D7iZXULnfThxp4IIRp8/A.DKJxc7/vlQ6maMc5hOqw1w8V6eBY0Ne', '451 Cremin Parkway\nMarquardtfort, OK 88743', '59904 Lorenz Manors\nLake Noemieside, GA 02784', 'ADM-00041', '2009-02-17', 'C', 'Commerce', '2025-2026', 'Bartell, Barrows and Hansen School', 'Pierce Aufderhar MD', 'Engineer', '01824204156', 'father41@example.com', '5368420126025', 'Margaretta Kirlin', 'Nurse', '01444354033', 'mother41@example.com', '2350001000226', 'Prof. Jarrell King IV', '01619956394', 'guardian41@example.com', '5245307555014', 'Aunt', 1, 4, 9, '2025-12-24', NULL, 2025000041, 900041, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19', '127.0.0.1', 1, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19'),
(42, 'Michel', 'Parker', '2025-04-17', 'Male', 'O+', 'Hindu', 'Bangladeshi', '6430168887380', '01747144405', 'student42@example.com', '$2y$12$HSuYEU6QmIWZtjV4AMM9suSBsGNL434bKckifGgagRaHFCDvYcHjm', '7553 Reinhold Skyway\nHipolitochester, WV 22727-4948', '50392 Ruth Unions\nLake Oranland, TN 62973-5035', 'ADM-00042', '1990-02-09', 'C', 'Arts', '2025-2026', 'Spinka LLC School', 'Prof. Gussie Upton', 'Farmer', '01485197613', 'father42@example.com', '4123220030721', 'Kaitlyn Stehr', 'Housewife', '01740902653', 'mother42@example.com', '5557110801663', 'Mr. Dillon Carroll III', '01461284023', 'guardian42@example.com', '4149966472449', 'Sister', 1, 7, 1, '2025-12-24', NULL, 2025000042, 900042, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19', '127.0.0.1', 1, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19'),
(43, 'Anastasia', 'Satterfield', '2007-02-12', 'Female', 'O-', 'Christian', 'Bangladeshi', '9376328401881', '01638166188', 'student43@example.com', '$2y$12$DvXKryVbARksb4mEAmawIedxS9Sm9NqGO3CFE1u/xXiBUTznwiodG', '1266 Arne Pass Apt. 358\nNew Garrisonland, DE 34574-5860', '708 Thompson Wells Apt. 811\nBethanytown, IL 53178', 'ADM-00043', '2001-02-26', 'A', 'Arts', '2025-2026', 'Kozey Inc School', 'Dr. Barney Altenwerth DDS', 'Businessman', '01944548858', 'father43@example.com', '4289633256121', 'Zelda Dietrich', 'Doctor', '01463281741', 'mother43@example.com', '6850021358825', 'Bertrand Schmitt', '01849219311', 'guardian43@example.com', '4384356563642', 'Brother', 1, 7, 4, '2025-12-24', NULL, 2025000043, 900043, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19', '127.0.0.1', 1, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19'),
(44, 'Cody', 'Douglas', '2003-05-03', 'Other', 'B+', 'Other', 'Bangladeshi', '9049555593166', '01353411648', 'student44@example.com', '$2y$12$C4jythfI7utRMAnO7T1zTOKPFIOvcK8C796pYWegRdEASBNDC8V2a', '63766 Xavier Square Suite 963\nNew Palmaton, PA 34493-7926', '24330 Casandra Locks Apt. 589\nLake Elyssaport, SC 82414-1694', 'ADM-00044', '1974-12-12', 'B', 'Commerce', '2025-2026', 'Turcotte LLC School', 'Mr. Marcos Johnston II', 'Businessman', '01932036477', 'father44@example.com', '3815635237891', 'Estel Orn', 'Teacher', '01425719752', 'mother44@example.com', '4118495627269', 'Jazmin Blanda', '01710265634', 'guardian44@example.com', '9632377651603', 'Uncle', 1, 5, 7, '2025-12-24', NULL, 2025000044, 900044, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19', '127.0.0.1', 1, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19'),
(45, 'Germaine', 'Rolfson', '1999-01-11', 'Male', 'B+', 'Islam', 'Bangladeshi', '4735238025744', '01436131644', 'student45@example.com', '$2y$12$OMfLtBSkcv66lx8BHCyehOq4pmPDu7EU83.G2Xq.JG7uZ860X7WPG', '237 Rogahn Glen\nLake Sunny, WV 26546-6172', '9232 Feest Tunnel\nWest Lincolnton, CT 43658-6511', 'ADM-00045', '2012-08-16', 'A', 'Commerce', '2025-2026', 'Gusikowski and Sons School', 'Gaston Altenwerth II', 'Doctor', '01800010835', 'father45@example.com', '4736237351784', 'Duane Satterfield', 'Teacher', '01415708248', 'mother45@example.com', '1679224886450', 'Mrs. Ozella Ledner Jr.', '01936258478', 'guardian45@example.com', '8347815351399', 'Aunt', 1, 4, 2, '2025-12-24', NULL, 2025000045, 900045, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19', '127.0.0.1', 1, NULL, '2025-12-24 09:39:19', '2025-12-24 09:39:19'),
(46, 'Salma', 'Hermann', '2015-07-11', 'Other', 'O-', 'Islam', 'Bangladeshi', '1791991398382', '01714904510', 'student46@example.com', '$2y$12$y7vp8yuz4hMHDAzp0fMMqOsc6VwOA4UG1Y4W2YrdnO7c8hxckJQMe', '10502 Sage Islands\nBernardoborough, PA 95594', '5402 Myron Cliffs Suite 531\nErnserview, MS 74651-9302', 'ADM-00046', '2022-01-19', 'B', 'Commerce', '2025-2026', 'Spinka PLC School', 'Isac Rutherford', 'Engineer', '01920553515', 'father46@example.com', '4002232840374', 'Belle Zulauf', 'Doctor', '01943729723', 'mother46@example.com', '0703584280637', 'Darien Rau', '01579092188', 'guardian46@example.com', '0051897092587', 'Sister', 1, 4, 8, '2025-12-24', NULL, 2025000046, 900046, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20', '127.0.0.1', 1, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20'),
(47, 'Meredith', 'Waters', '1991-03-23', 'Male', 'B-', 'Hindu', 'Bangladeshi', '7738493037864', '01709940395', 'student47@example.com', '$2y$12$.pnmdos89jzUfGHBpvuQf.27zLXa2BlCXk8Rl0DJV.Oc3FpdX.1ya', '22894 Arthur Lodge\nSouth Frederikberg, DC 33031', '10362 Dayne Burg Apt. 440\nNew Cecilchester, ND 99133', 'ADM-00047', '2017-01-15', 'C', 'Commerce', '2025-2026', 'Daniel LLC School', 'Gillian Kilback', 'Doctor', '01827543248', 'father47@example.com', '2994862238729', 'Ms. Linnie Effertz I', 'Housewife', '01690539476', 'mother47@example.com', '7653884423288', 'Margarette Batz', '01439911743', 'guardian47@example.com', '7764456271825', 'Uncle', 1, 8, 4, '2025-12-24', NULL, 2025000047, 900047, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20', '127.0.0.1', 1, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20'),
(48, 'Haley', 'Huels', '2014-04-21', 'Other', 'O-', 'Buddhist', 'Bangladeshi', '3820838684924', '01956597669', 'student48@example.com', '$2y$12$Efgd2KDRF4wNgZQO/T8YuudkPEG4ZPFCOeNC1LiZM.BXv5r5kW52q', '7481 Payton Tunnel\nKeeblerport, ME 25895', '846 Clement Court Suite 529\nHillardbury, TN 07732-0867', 'ADM-00048', '1998-06-12', 'C', 'Commerce', '2025-2026', 'Turner, Hudson and Jacobson School', 'Merlin Mohr', 'Doctor', '01493838478', 'father48@example.com', '2690925836297', 'Deborah Purdy', 'Doctor', '01729924415', 'mother48@example.com', '3464679496268', 'Jayda Schuppe PhD', '01744217137', 'guardian48@example.com', '5705134440993', 'Grandparent', 1, 9, 4, '2025-12-24', NULL, 2025000048, 900048, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20', '127.0.0.1', 1, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20'),
(49, 'Nora', 'Hammes', '2008-05-22', 'Female', 'O+', 'Hindu', 'Bangladeshi', '2157611317018', '01834409695', 'student49@example.com', '$2y$12$XVPKghnFjij1I3HpKej.juH81f2QOVYMxNS.yGDMIiJrSsZOo5G0K', '302 Schoen Dam Apt. 871\nBreitenbergport, NV 25915-1456', '771 Gottlieb Curve Apt. 357\nNorth Aleenton, NC 54809', 'ADM-00049', '1973-10-22', 'B', 'Commerce', '2025-2026', 'Eichmann Ltd School', 'Keeley Streich', 'Farmer', '01389717639', 'father49@example.com', '9741126471740', 'Dr. Reina Kozey MD', 'Nurse', '01941094472', 'mother49@example.com', '4170710726295', 'Ms. Lea Morar II', '01984169535', 'guardian49@example.com', '1971218310822', 'Aunt', 1, 10, 4, '2025-12-24', NULL, 2025000049, 900049, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20', '127.0.0.1', 1, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20'),
(50, 'Guido', 'Shanahan', '2015-03-18', 'Female', 'A+', 'Islam', 'Bangladeshi', '6652161211049', '01345848327', 'student50@example.com', '$2y$12$YDXl7G1X0q7Hl7omDcZh2ulToGNXBNzU6ufrafrzf7WAKrrDhCfOq', '904 Walker Roads Suite 136\nEast Bert, IA 58798', '58265 Kemmer Mission Apt. 149\nSouth Johanna, MI 97583', 'ADM-00050', '1984-03-18', 'B', 'Science', '2025-2026', 'Altenwerth, Raynor and Kohler School', 'Reagan Larkin', 'Doctor', '01633784356', 'father50@example.com', '5760449496827', 'Cathrine Jast III', 'Teacher', '01973611064', 'mother50@example.com', '7426923006055', 'Robyn Moen', '01876874649', 'guardian50@example.com', '6125843009937', 'Uncle', 1, 4, 3, '2025-12-24', NULL, 2025000050, 900050, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20', '127.0.0.1', 1, NULL, '2025-12-24 09:39:20', '2025-12-24 09:39:20'),
(51, 'Gregoria', 'Casper', '1976-09-11', 'Other', 'O+', 'Islam', 'Bangladeshi', '3452682457401', '01961865460', 'student51@example.com', '$2y$12$qfdM.W6QWEflcUABzKbxb.HCT5nP3TgQFCEPIHoVUwYeCdevgZZNW', '778 Elisa Stravenue Suite 937\nRaymondview, AZ 34779-9664', '52718 Cummerata Stravenue Apt. 992\nWest Cole, WA 23122', 'ADM-00051', '2011-07-02', 'C', 'Commerce', '2025-2026', 'Sauer, Torp and Rosenbaum School', 'Freddie Keebler', 'Businessman', '01789932952', 'father51@example.com', '3215505380638', 'Leilani Nienow', 'Housewife', '01742715424', 'mother51@example.com', '5795318150353', 'Emanuel Hirthe', '01550047045', 'guardian51@example.com', '6353354854397', 'Sister', 1, 5, 9, '2025-12-24', NULL, 2025000051, 900051, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21', '127.0.0.1', 1, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21'),
(52, 'Aiden', 'Leffler', '2002-03-18', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '3441346828368', '01957187456', 'student52@example.com', '$2y$12$sVyTdcAqMn3dZkkDzx7FRemXcagVkuNVUBeBhPHxXrzy1x.9S0PXa', '374 Eva Park\nEast Drakemouth, VA 77828', '563 Pink Fields Suite 606\nSchmidtburgh, ME 89892', 'ADM-00052', '2004-11-15', 'C', 'Arts', '2025-2026', 'Littel, Welch and Gleason School', 'Jalon Maggio', 'Teacher', '01504088335', 'father52@example.com', '1403385966476', 'Pearlie Toy', 'Doctor', '01501606514', 'mother52@example.com', '0605284602550', 'Joannie Reichert', '01840385921', 'guardian52@example.com', '3596671071847', 'Uncle', 1, 6, 7, '2025-12-24', NULL, 2025000052, 900052, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21', '127.0.0.1', 1, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21'),
(53, 'Francisca', 'Watsica', '2016-06-01', 'Female', 'AB+', 'Islam', 'Bangladeshi', '2472937511617', '01783823740', 'student53@example.com', '$2y$12$P5G2RnspuiMev2m57450ZePDKonO5Mdbebki6U7BMrNVWNkxvbPZa', '5381 Schaefer Path Apt. 558\nEast Arnold, HI 46775-1156', '292 Noble Passage\nEast Cheyenne, DE 34097', 'ADM-00053', '2019-05-07', 'C', 'Science', '2025-2026', 'Kautzer, Connelly and DuBuque School', 'Aaron Stiedemann V', 'Engineer', '01780819286', 'father53@example.com', '7958322905768', 'Lindsay Pfeffer', 'Nurse', '01420056765', 'mother53@example.com', '3151110802993', 'Torey Spinka', '01940120816', 'guardian53@example.com', '5205440528848', 'Aunt', 1, 5, 3, '2025-12-24', NULL, 2025000053, 900053, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21', '127.0.0.1', 1, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21'),
(54, 'Meggie', 'Volkman', '1989-01-09', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '9674483523517', '01782906177', 'student54@example.com', '$2y$12$HGkD.hBS1XauXCSnLUu/p.QgtEOGfIRMlokn3z5qZDn3a9zM3vyUi', '7612 Matilda Branch\nHellerside, SD 66301', '162 Cielo Cliffs Apt. 207\nLake Emerson, MO 34916-7206', 'ADM-00054', '2015-07-05', 'A', 'Commerce', '2025-2026', 'Rempel-Romaguera School', 'Giovani Raynor', 'Engineer', '01834591966', 'father54@example.com', '3581805773313', 'Leatha Volkman', 'Nurse', '01882274771', 'mother54@example.com', '9851435713537', 'Hardy Morissette IV', '01551406547', 'guardian54@example.com', '3647588500904', 'Aunt', 1, 5, 10, '2025-12-24', NULL, 2025000054, 900054, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21', '127.0.0.1', 1, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21'),
(55, 'Carlie', 'Rolfson', '2002-01-13', 'Other', 'B+', 'Other', 'Bangladeshi', '6297582884555', '01794445115', 'student55@example.com', '$2y$12$BwdU2VzKvOGSMddLY0OfI.jvQJFujdgD27sbhbI6bkrgfF0OHYWzC', '7311 Romaguera Harbor\nPfefferstad, OH 60541', '250 Wuckert Port\nPort Jamieville, IN 27809', 'ADM-00055', '2002-02-14', 'B', 'Science', '2025-2026', 'Ondricka-Halvorson School', 'Prof. Diamond Russel', 'Teacher', '01658981892', 'father55@example.com', '5498793707185', 'Amara Blick', 'Nurse', '01869603668', 'mother55@example.com', '1258454594099', 'Ms. Carley Mueller', '01612277326', 'guardian55@example.com', '8387405621373', 'Aunt', 1, 5, 2, '2025-12-24', NULL, 2025000055, 900055, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21', '127.0.0.1', 1, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21'),
(56, 'Reymundo', 'Larson', '1982-09-07', 'Other', 'B-', 'Hindu', 'Bangladeshi', '7965989312809', '01971188454', 'student56@example.com', '$2y$12$arXN51PH6Ee9doP1YA69VeSqP.3.kMF2xzOkufOMM33eRKqdevENW', '80843 Baumbach Highway Suite 970\nLake Evangelinemouth, ME 30075-3500', '37223 Constantin Lodge Apt. 595\nLake Kalebberg, CO 37552', 'ADM-00056', '2009-12-21', 'A', 'Commerce', '2025-2026', 'Renner-Dibbert School', 'Freddy Bradtke', 'Businessman', '01839857439', 'father56@example.com', '5760379145803', 'Kayla Osinski', 'Doctor', '01997748097', 'mother56@example.com', '5768735183974', 'Fred Rau', '01990071613', 'guardian56@example.com', '8064154792826', 'Brother', 1, 6, 5, '2025-12-24', NULL, 2025000056, 900056, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21', '127.0.0.1', 1, NULL, '2025-12-24 09:39:21', '2025-12-24 09:39:21'),
(57, 'Liam', 'Littel', '1977-05-25', 'Male', 'O-', 'Hindu', 'Bangladeshi', '5954514408833', '01558658810', 'student57@example.com', '$2y$12$qkEfpBxQSvLlVgygnBmk8OHRo7L0KatpHjvQxYasp8lUksQOE0Ip.', '16446 Daniel Forges\nPort Selinamouth, NC 31331-7741', '7372 Dannie Plains\nWest Mekhi, MA 59042', 'ADM-00057', '2004-07-16', 'A', 'Science', '2025-2026', 'Emard Ltd School', 'Rudy Ferry', 'Farmer', '01748309550', 'father57@example.com', '9431354136675', 'Mrs. Donna Yundt', 'Doctor', '01459634278', 'mother57@example.com', '3636172710562', 'Dr. Herbert Aufderhar', '01514776116', 'guardian57@example.com', '8378459347521', 'Grandparent', 1, 11, 4, '2025-12-24', NULL, 2025000057, 900057, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22', '127.0.0.1', 1, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22'),
(58, 'Reinhold', 'Jacobs', '1975-03-04', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '5749498304475', '01306289109', 'student58@example.com', '$2y$12$igP7P5MI7o4ooDKoBaGhgO2r6SK0dlR5ce2Po5IM1zfd/hMmwaEea', '68460 Hegmann Village\nWest Dayton, VA 91245', '6590 Okey Road Apt. 157\nEast Aiyanahaven, WI 82906-1327', 'ADM-00058', '2019-05-16', 'C', 'Science', '2025-2026', 'Conn Group School', 'Emerald Koss', 'Farmer', '01928367004', 'father58@example.com', '9213105103107', 'Jayda Barton', 'Housewife', '01850434763', 'mother58@example.com', '7783469981474', 'Montana Buckridge', '01311364732', 'guardian58@example.com', '3739464175657', 'Aunt', 1, 6, 10, '2025-12-24', NULL, 2025000058, 900058, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22', '127.0.0.1', 1, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `admission_no`, `admission_date`, `section`, `group`, `session_year`, `previous_school`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(59, 'Else', 'Borer', '1998-10-01', 'Female', 'B+', 'Hindu', 'Bangladeshi', '8398364604824', '01681377050', 'student59@example.com', '$2y$12$mBRZ6WW2JuxQ2PtdElNbgecXmNxNcvu65PSLjqetHaBRCOQonS6FO', '325 Ismael Viaduct\nNorth Manuela, SD 20924-4176', '64635 Hoppe Street Apt. 800\nKleinborough, NC 50128-1262', 'ADM-00059', '1995-06-01', 'C', 'Science', '2025-2026', 'Hayes, Murray and Dicki School', 'Ralph Langworth', 'Doctor', '01629779036', 'father59@example.com', '9705221731982', 'Rosetta Franecki', 'Housewife', '01322347868', 'mother59@example.com', '8975426282056', 'Cortez Gaylord', '01903077227', 'guardian59@example.com', '3046177248230', 'Grandparent', 1, 7, 7, '2025-12-24', NULL, 2025000059, 900059, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22', '127.0.0.1', 1, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22'),
(60, 'Margarett', 'Brown', '2013-07-04', 'Other', 'B-', 'Islam', 'Bangladeshi', '5085256977308', '01978728511', 'student60@example.com', '$2y$12$8u4kkohfxFXWDuHPi.j80.673.hVcz6caMd2pzuZyqp17EJ5AyUki', '73991 Diana Spurs Suite 823\nPort Lilian, VA 67820-0089', '553 Katelyn Viaduct\nKuhichaven, RI 75807-7950', 'ADM-00060', '2016-04-14', 'C', 'Commerce', '2025-2026', 'Kilback-Rau School', 'Emerald Hackett', 'Farmer', '01681867468', 'father60@example.com', '6541441427006', 'Mrs. Kavon Hahn', 'Housewife', '01351955676', 'mother60@example.com', '1524185183234', 'Lydia Gerlach', '01591966457', 'guardian60@example.com', '6672697978232', 'Sister', 1, 4, 6, '2025-12-24', NULL, 2025000060, 900060, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22', '127.0.0.1', 1, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22'),
(61, 'Reese', 'Paucek', '1990-05-31', 'Female', 'A-', 'Christian', 'Bangladeshi', '0164522254680', '01902823520', 'student61@example.com', '$2y$12$P.a8IfrjxOvY8vybIujr/uJFU/KKCj.wLVjWMw.HHChneNl0fIvw2', '32216 Wilhelmine Canyon Suite 038\nLake Edfurt, IN 38634-0431', '363 Ondricka Lakes\nSouth Willow, HI 48261-4138', 'ADM-00061', '1975-04-21', 'C', 'Science', '2025-2026', 'Witting, Greenholt and Lindgren School', 'Devin Reichel', 'Farmer', '01983779295', 'father61@example.com', '9270839405320', 'Lolita Bayer', 'Businesswoman', '01700314208', 'mother61@example.com', '5676489985502', 'Cecelia Mertz PhD', '01480104504', 'guardian61@example.com', '9699265415749', 'Grandparent', 1, 6, 9, '2025-12-24', NULL, 2025000061, 900061, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22', '127.0.0.1', 1, NULL, '2025-12-24 09:39:22', '2025-12-24 09:39:22'),
(62, 'Carter', 'Goyette', '2002-06-07', 'Other', 'AB+', 'Christian', 'Bangladeshi', '9020680568616', '01929375969', 'student62@example.com', '$2y$12$NRaTBg3LyQHFfnCgUcF3SOeXldvKa9RKy.9JuG/4VpJUKOTPUVTAy', '86860 Conroy Bridge\nShadside, VT 81122-9699', '80972 Dare Glens Apt. 923\nNorth Herman, PA 56477-2511', 'ADM-00062', '2009-03-05', 'C', 'Commerce', '2025-2026', 'Padberg-Heller School', 'Tyree Frami II', 'Doctor', '01615310517', 'father62@example.com', '3557808425656', 'Ocie Johns V', 'Housewife', '01597742340', 'mother62@example.com', '7121254270704', 'Murl Schmeler', '01584212857', 'guardian62@example.com', '3741027498539', 'Uncle', 1, 6, 2, '2025-12-24', NULL, 2025000062, 900062, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23', '127.0.0.1', 1, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23'),
(63, 'Jamil', 'Nienow', '1981-08-28', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '3299398647956', '01881270344', 'student63@example.com', '$2y$12$XfcLbKZebnvjwBF56AmWi.PWwBOQmyqQkvLutJS/LVjUdQiBMFVs2', '431 Kub Streets\nPasqualeside, LA 80277-3666', '323 Considine Skyway Suite 942\nAdamside, PA 78783-2674', 'ADM-00063', '1976-01-03', 'A', 'Arts', '2025-2026', 'Goyette-Gaylord School', 'Efren Hintz', 'Businessman', '01313305321', 'father63@example.com', '5600179277831', 'Lydia Veum', 'Doctor', '01950331275', 'mother63@example.com', '6833467770821', 'Quentin Bergnaum III', '01663239667', 'guardian63@example.com', '1203578677786', 'Uncle', 1, 7, 10, '2025-12-24', NULL, 2025000063, 900063, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23', '127.0.0.1', 1, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23'),
(64, 'Elmira', 'Christiansen', '1997-12-16', 'Male', 'A+', 'Hindu', 'Bangladeshi', '5409779388860', '01626895021', 'student64@example.com', '$2y$12$LjmiK9ELr6eRT2ymfoQsveXw4U0wtTRlhZypZVdbbAUstx/0AQ6wK', '213 Muller Dam Suite 628\nHowelltown, KS 85307', '198 Pollich Common Suite 645\nEast Leannahaven, MT 51858-4550', 'ADM-00064', '1973-09-22', 'C', 'Commerce', '2025-2026', 'Crona-Cummerata School', 'Forrest Koss', 'Engineer', '01578344432', 'father64@example.com', '1198320120644', 'Chelsie Wilkinson', 'Housewife', '01948420583', 'mother64@example.com', '6162342207026', 'Adella O\'Reilly', '01796516661', 'guardian64@example.com', '9500138650362', 'Aunt', 1, 8, 10, '2025-12-24', NULL, 2025000064, 900064, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23', '127.0.0.1', 1, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23'),
(65, 'Nathan', 'Heathcote', '2023-03-05', 'Other', 'B+', 'Islam', 'Bangladeshi', '8528478010067', '01971400982', 'student65@example.com', '$2y$12$QNTTBbDErqz5zYoxjlz0OOkywpQ2/OksWdVSld7ZvtOVm8glbdb5C', '623 Petra Crossing\nOndrickafort, OR 77328-7964', '386 Auer Stravenue Suite 198\nSouth Janisborough, AL 78295-8032', 'ADM-00065', '1993-04-15', 'A', 'Commerce', '2025-2026', 'Abshire, Green and Stroman School', 'Tanner Bruen', 'Farmer', '01947278893', 'father65@example.com', '9667228295953', 'Lonie Reilly', 'Teacher', '01360144403', 'mother65@example.com', '8883366862371', 'Miss Kaylah Moore Jr.', '01401574500', 'guardian65@example.com', '9674283347549', 'Uncle', 1, 7, 5, '2025-12-24', NULL, 2025000065, 900065, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23', '127.0.0.1', 1, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23'),
(66, 'Adriel', 'Leannon', '2024-12-20', 'Female', 'AB+', 'Other', 'Bangladeshi', '1801065649504', '01488786843', 'student66@example.com', '$2y$12$G2KqBuc3hwnLVROrUgt0HuGeqjBvLPTO4BqRdXD0a2Qwt1C3pQpYS', '738 Ernie Junctions\nBogisichfurt, WA 93035', '91508 Royal Coves Suite 470\nO\'Keefeton, CA 70348-3732', 'ADM-00066', '2014-09-01', 'B', 'Arts', '2025-2026', 'Wiegand Group School', 'Lamar Rice Jr.', 'Doctor', '01782622280', 'father66@example.com', '9289088598669', 'Angela Bauch', 'Housewife', '01938075643', 'mother66@example.com', '8966207350266', 'Prof. Newton Pagac', '01734774300', 'guardian66@example.com', '6915938898155', 'Aunt', 1, 9, 10, '2025-12-24', NULL, 2025000066, 900066, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23', '127.0.0.1', 1, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23'),
(67, 'Kieran', 'Waters', '1984-08-21', 'Other', 'A+', 'Christian', 'Bangladeshi', '1871866094155', '01444268442', 'student67@example.com', '$2y$12$qQVH3.zKFTs56TbkN2Q.4O7h8q9P5.A6Wh6/A76VyfBNXlaHljGiy', '8594 Lane Plains\nGladyston, WI 00023', '73937 Bauch Roads\nUbaldoview, OR 33309', 'ADM-00067', '1984-07-22', 'B', 'Science', '2025-2026', 'Ryan-Rosenbaum School', 'Rylan Daugherty', 'Businessman', '01398814621', 'father67@example.com', '4009386964808', 'Sibyl Nienow', 'Housewife', '01703400160', 'mother67@example.com', '7676945757935', 'Timmy Pfannerstill', '01369451834', 'guardian67@example.com', '1715056116700', 'Aunt', 1, 8, 1, '2025-12-24', NULL, 2025000067, 900067, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23', '127.0.0.1', 1, NULL, '2025-12-24 09:39:23', '2025-12-24 09:39:23'),
(68, 'Cyril', 'Carroll', '1993-02-07', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '3260354418048', '01412001176', 'student68@example.com', '$2y$12$ZM6MZ1NV6gs0rZBLpwmJ5.CDogy4Z4DhxmQZtfDpsCg/HqLLr.NEy', '11548 Carter Crest\nEast Davinshire, WY 68520-1234', '961 Goldner Common Apt. 852\nAdalbertoton, WY 16668-6970', 'ADM-00068', '1974-03-14', 'C', 'Science', '2025-2026', 'Crist, Kuhn and Bednar School', 'Helmer Mills', 'Teacher', '01505102231', 'father68@example.com', '5057767487085', 'Ebony Spencer', 'Businesswoman', '01353076743', 'mother68@example.com', '7695549540302', 'Dr. Keegan Pacocha', '01918906718', 'guardian68@example.com', '1554013143503', 'Uncle', 1, 8, 5, '2025-12-24', NULL, 2025000068, 900068, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24', '127.0.0.1', 1, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24'),
(69, 'Elwyn', 'Beier', '2018-11-15', 'Other', 'AB+', 'Other', 'Bangladeshi', '3559397354400', '01846781297', 'student69@example.com', '$2y$12$Gdcy4Nac91wxTECJk4if5eDgmIkOnVELZOo7hLOEsaNIsa.7WtNqy', '9384 Quigley Pike\nSchmidtborough, ME 17283', '99651 Ressie Locks Apt. 023\nSouth Collinton, DE 39228', 'ADM-00069', '1973-04-01', 'B', 'Commerce', '2025-2026', 'Lehner Inc School', 'Layne Bruen', 'Businessman', '01999268668', 'father69@example.com', '5876639551835', 'Dr. Kasandra Bins', 'Doctor', '01477563965', 'mother69@example.com', '1865727979496', 'Mayra Brakus', '01427867146', 'guardian69@example.com', '5048618622938', 'Aunt', 1, 6, 3, '2025-12-24', NULL, 2025000069, 900069, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24', '127.0.0.1', 1, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24'),
(70, 'Carley', 'Little', '2022-01-03', 'Female', 'AB+', 'Other', 'Bangladeshi', '6396862879886', '01754663810', 'student70@example.com', '$2y$12$mcgg0xAtaj2TAvPuVJzCNuK4dVYS9lYhX8DwRdfBQ6qBNDEx8O.WW', '1850 Mann Course\nNorth Aliyachester, FL 29277', '4305 Flossie Lodge Apt. 839\nSimonestad, MD 21841-4615', 'ADM-00070', '1978-06-11', 'A', 'Science', '2025-2026', 'Fahey-Hoppe School', 'Victor Wunsch Jr.', 'Businessman', '01579977489', 'father70@example.com', '8132859215092', 'Deanna Price DDS', 'Teacher', '01799958918', 'mother70@example.com', '2003923337403', 'Raymundo Keeling', '01614278530', 'guardian70@example.com', '9973170796010', 'Uncle', 1, 8, 7, '2025-12-24', NULL, 2025000070, 900070, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24', '127.0.0.1', 1, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24'),
(71, 'Aurelia', 'Kunde', '2016-03-24', 'Male', 'A+', 'Christian', 'Bangladeshi', '9590449687876', '01878314025', 'student71@example.com', '$2y$12$itesGVi6cz5HPxQTDoLa5.8dmgZx7CT07DXspQjNAhmsmEd2wgeka', '143 Kilback Fort Suite 220\nPort Emmyville, CT 99238-5380', '8134 Hill Walk\nGeorgianaside, TN 32842', 'ADM-00071', '2003-07-23', 'C', 'Commerce', '2025-2026', 'McKenzie-Conn School', 'Isaac Kessler', 'Doctor', '01778606691', 'father71@example.com', '2225843339301', 'Freida Bednar', 'Teacher', '01476054479', 'mother71@example.com', '5461868863484', 'Rickey Fay', '01735779043', 'guardian71@example.com', '5993900849370', 'Grandparent', 1, 7, 2, '2025-12-24', NULL, 2025000071, 900071, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24', '127.0.0.1', 1, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24'),
(72, 'Adalberto', 'Doyle', '2003-03-25', 'Male', 'B+', 'Other', 'Bangladeshi', '3274689873117', '01677886969', 'student72@example.com', '$2y$12$Aos77dcQIjgcd9fLAkQO7eDEdkl1vB4r3tr10SHjEuj4xi1QFc/aa', '5853 Jayson Shores\nPort Benny, AR 15632', '8840 Diego Village Suite 150\nNorth Tommie, OR 18618', 'ADM-00072', '2013-02-09', 'C', 'Arts', '2025-2026', 'Grady-Block School', 'Prof. Garrick Muller', 'Engineer', '01900594529', 'father72@example.com', '5327608452461', 'Candace Bradtke', 'Doctor', '01682987166', 'mother72@example.com', '9015127516336', 'Joyce Harris', '01710121534', 'guardian72@example.com', '7019611680720', 'Aunt', 1, 10, 10, '2025-12-24', NULL, 2025000072, 900072, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24', '127.0.0.1', 1, NULL, '2025-12-24 09:39:24', '2025-12-24 09:39:24'),
(73, 'Arianna', 'Lebsack', '2025-01-25', 'Male', 'O+', 'Other', 'Bangladeshi', '7495545756321', '01542339838', 'student73@example.com', '$2y$12$bNpT8eVwnqpoXUZGgbD8aO5jWx6F/83iskS5/vdbutx6CZytkQYhu', '751 Gibson Terrace Apt. 094\nNew Kevinborough, AR 09467', '13078 Nash Valleys Suite 083\nJanellestad, CT 07450', 'ADM-00073', '2015-02-16', 'B', 'Arts', '2025-2026', 'Ferry-Nader School', 'Brennon Deckow', 'Farmer', '01419501940', 'father73@example.com', '9817913695860', 'Gabriella Kris', 'Businesswoman', '01322141390', 'mother73@example.com', '1148139680987', 'Prof. Coleman Wiza', '01648557731', 'guardian73@example.com', '3396058152437', 'Uncle', 1, 12, 4, '2025-12-24', NULL, 2025000073, 900073, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25', '127.0.0.1', 1, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25'),
(74, 'Lexus', 'Fahey', '2005-05-20', 'Female', 'A-', 'Other', 'Bangladeshi', '3779767140940', '01965975926', 'student74@example.com', '$2y$12$As6kA1Ud4FFWofy/jup.oek7mzU5U.tuI237BvJzCdh7aynH2pkNK', '946 Murphy Glen\nNew Lorena, PA 24630', '476 Nyasia Pass\nBradfordview, WV 98890-8024', 'ADM-00074', '2013-11-09', 'B', 'Science', '2025-2026', 'Ernser Ltd School', 'Prof. Waldo Wilkinson', 'Engineer', '01505237899', 'father74@example.com', '0550916624995', 'Hollie Gerlach', 'Businesswoman', '01490331079', 'mother74@example.com', '3469576296340', 'Kobe Beatty', '01661503551', 'guardian74@example.com', '9699746502249', 'Brother', 1, 9, 7, '2025-12-24', NULL, 2025000074, 900074, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25', '127.0.0.1', 1, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25'),
(75, 'Gussie', 'Durgan', '2025-02-27', 'Other', 'A+', 'Other', 'Bangladeshi', '9320877721623', '01600073589', 'student75@example.com', '$2y$12$FuMdBkGYENHh9624CgogHeMdFVKtYHbYT4ByHkVkXa75BoDl08B8i', '522 Buckridge Oval Suite 136\nLake Ralphfurt, DC 41810', '71925 Autumn River Apt. 284\nNew Evie, NC 88350-3597', 'ADM-00075', '1970-11-26', 'A', 'Science', '2025-2026', 'Gulgowski Inc School', 'Zane Simonis', 'Businessman', '01524095681', 'father75@example.com', '3640965603592', 'Michele Huels', 'Nurse', '01734175686', 'mother75@example.com', '6368055741286', 'Garett Ankunding', '01812007140', 'guardian75@example.com', '2735245470633', 'Aunt', 1, 9, 5, '2025-12-24', NULL, 2025000075, 900075, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25', '127.0.0.1', 1, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25'),
(76, 'Gregory', 'Farrell', '2000-09-22', 'Male', 'A-', 'Islam', 'Bangladeshi', '0716958046975', '01630764229', 'student76@example.com', '$2y$12$j6BWWHrOpeEXAXouFGevdu6vbcQFdJWF6ScyZmfTIco7.Nv687pCC', '9970 Oberbrunner Springs Apt. 561\nNorth Estevan, MO 78039', '79965 Pearline Shore Apt. 977\nBoyerbury, MO 67365', 'ADM-00076', '2002-06-21', 'C', 'Arts', '2025-2026', 'Schmitt LLC School', 'Dr. Giovani Miller DVM', 'Engineer', '01697767825', 'father76@example.com', '8345724452317', 'Assunta Buckridge', 'Businesswoman', '01946878573', 'mother76@example.com', '9173508444299', 'Miss Aniya Beatty MD', '01363358278', 'guardian76@example.com', '3411584045464', 'Uncle', 1, 10, 7, '2025-12-24', NULL, 2025000076, 900076, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25', '127.0.0.1', 1, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25'),
(77, 'Kaleigh', 'Greenfelder', '2005-07-03', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '8132785315760', '01881289124', 'student77@example.com', '$2y$12$hUhavE2ZsbIIsKNeCOWbE.Yo607myIyPCt78CNma/RO/O3imMUuSa', '341 Dominique Summit Apt. 512\nEast Freeman, IA 38660', '57611 Dooley Valley\nSouth Nigel, LA 28475', 'ADM-00077', '1977-11-14', 'B', 'Science', '2025-2026', 'Spinka, Ondricka and Gleason School', 'German Schuppe II', 'Farmer', '01874721464', 'father77@example.com', '9602332124421', 'Alberta Tremblay DVM', 'Doctor', '01377554682', 'mother77@example.com', '5915810573795', 'Prof. Tremaine Anderson DVM', '01696944510', 'guardian77@example.com', '0145093941446', 'Grandparent', 1, 9, 1, '2025-12-24', NULL, 2025000077, 900077, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25', '127.0.0.1', 1, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25'),
(78, 'Ubaldo', 'Cronin', '1972-02-05', 'Female', 'A-', 'Other', 'Bangladeshi', '7189606587615', '01783480801', 'student78@example.com', '$2y$12$nGc6iUYQw3KE65FRcfolmO.qSPlyrL192np2BoxteDyHRZMsGx0f6', '5344 Champlin Corners Suite 219\nRyanbury, NC 41470-3390', '8952 Nash Turnpike Suite 718\nNorth Irmaborough, UT 95390-1137', 'ADM-00078', '2021-02-27', 'B', 'Arts', '2025-2026', 'Bayer, Blanda and Bashirian School', 'Adrian Rice', 'Engineer', '01345267801', 'father78@example.com', '0357508203236', 'Alvina Murazik', 'Nurse', '01352081716', 'mother78@example.com', '1183198580492', 'Joanie Rowe', '01546437485', 'guardian78@example.com', '5930275289544', 'Aunt', 1, 7, 3, '2025-12-24', NULL, 2025000078, 900078, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25', '127.0.0.1', 1, NULL, '2025-12-24 09:39:25', '2025-12-24 09:39:25'),
(79, 'Raleigh', 'Witting', '2001-04-11', 'Female', 'AB-', 'Islam', 'Bangladeshi', '0298104047668', '01737155865', 'student79@example.com', '$2y$12$t3F6.YAFcjWnUwgFlK9oZ.0rkqKYai9Pu51DVQlVMOLaY1ibmUmam', '65407 Kihn Villages Apt. 841\nGeoffreyhaven, ID 62691-6912', '29636 Mariela Hill\nSouth Aliciamouth, CO 14752-7495', 'ADM-00079', '2012-05-24', 'B', 'Arts', '2025-2026', 'Pagac Group School', 'Dejon Skiles', 'Engineer', '01746611910', 'father79@example.com', '1582269289289', 'Lavonne Stark MD', 'Teacher', '01383377039', 'mother79@example.com', '6598680320399', 'Kira Thompson', '01597692707', 'guardian79@example.com', '4128954530352', 'Brother', 1, 11, 7, '2025-12-24', NULL, 2025000079, 900079, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26', '127.0.0.1', 1, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26'),
(80, 'Alverta', 'Marks', '2014-10-30', 'Other', 'B+', 'Buddhist', 'Bangladeshi', '0554924287985', '01664825012', 'student80@example.com', '$2y$12$bzIHu8Y1OmIL1g5eLYDjsuZNLSRyAJmcDRDzZRH5gCIl438L9f1za', '29768 Reinger Hill\nKuphalstad, SD 76730-5791', '4467 Wyman Skyway Apt. 602\nPort Hermannview, IL 04063', 'ADM-00080', '2013-11-26', 'A', 'Commerce', '2025-2026', 'Emard-Bashirian School', 'Soledad Lehner', 'Farmer', '01797841438', 'father80@example.com', '9674125345800', 'Trudie Mertz', 'Nurse', '01959894732', 'mother80@example.com', '7769474670505', 'Willa Ferry MD', '01640781517', 'guardian80@example.com', '3264011082248', 'Sister', 1, 5, 8, '2025-12-24', NULL, 2025000080, 900080, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26', '127.0.0.1', 1, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26'),
(81, 'Garret', 'Tromp', '1981-06-10', 'Other', 'B-', 'Buddhist', 'Bangladeshi', '7565844034850', '01792926984', 'student81@example.com', '$2y$12$xdYZ9AdeoEc5/jw17xvxhe49VOilBtZxPKpz4nggWzqii4X1/PrDC', '56862 Prosacco Park\nKerlukeburgh, CA 00176', '52602 Vada Isle\nLemkechester, SD 81436', 'ADM-00081', '1973-10-24', 'A', 'Arts', '2025-2026', 'Gerlach, Littel and Gleichner School', 'Arely Waters', 'Teacher', '01417238933', 'father81@example.com', '0802887748326', 'Ms. Kaya Braun IV', 'Housewife', '01526441258', 'mother81@example.com', '0267860939434', 'Shanie McKenzie', '01508430581', 'guardian81@example.com', '7517513380636', 'Uncle', 1, 7, 9, '2025-12-24', NULL, 2025000081, 900081, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26', '127.0.0.1', 1, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26'),
(82, 'Mittie', 'Ankunding', '2015-04-14', 'Female', 'AB-', 'Islam', 'Bangladeshi', '2770207818300', '01831698658', 'student82@example.com', '$2y$12$lJhSis9a8DCr.xs6UlUGk.J4PZa2iPshf71Z7lhQ2tEjRtX2ipJXe', '410 Jessyca Points\nKathleenbury, ME 09125', '46751 Keeling Haven\nLisandrotown, HI 21711', 'ADM-00082', '1988-12-25', 'C', 'Commerce', '2025-2026', 'Mertz, Berge and Rath School', 'Robb Hayes', 'Farmer', '01320499089', 'father82@example.com', '5067675244596', 'Marina Spencer', 'Housewife', '01859861932', 'mother82@example.com', '0013106760488', 'Mr. Forest Rosenbaum Sr.', '01901268335', 'guardian82@example.com', '5337125119041', 'Sister', 1, 6, 8, '2025-12-24', NULL, 2025000082, 900082, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26', '127.0.0.1', 1, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26'),
(83, 'Trenton', 'Casper', '2023-11-01', 'Female', 'O-', 'Islam', 'Bangladeshi', '6855762128446', '01485514983', 'student83@example.com', '$2y$12$aRsN2svbym.xWevuhepf9uuQAD1GNB9nkCpJtQuCoaJqTQVpybXBy', '1018 Tillman Alley\nPort Ford, AL 97967', '4310 Hettinger Orchard\nSouth Dominic, KS 22845-4645', 'ADM-00083', '1982-02-19', 'C', 'Commerce', '2025-2026', 'O\'Conner Ltd School', 'Nat Metz', 'Teacher', '01854502150', 'father83@example.com', '7634818078425', 'Mrs. Cassidy Bergnaum', 'Nurse', '01347216236', 'mother83@example.com', '1714363364640', 'Mr. Arch Baumbach', '01388390283', 'guardian83@example.com', '2437479860010', 'Grandparent', 1, 8, 2, '2025-12-24', NULL, 2025000083, 900083, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26', '127.0.0.1', 1, NULL, '2025-12-24 09:39:26', '2025-12-24 09:39:26'),
(84, 'Newell', 'Torp', '2025-02-20', 'Female', 'AB-', 'Hindu', 'Bangladeshi', '1958455906047', '01483213950', 'student84@example.com', '$2y$12$e1F4T38bu8l.EZKGgAkPk.K6lUWJ84g4jx1diKUKtVeL/Py.pSv6e', '88452 Douglas Estate\nLake Kieranport, AL 13531-8753', '502 Gunnar Mountains Apt. 919\nOrnfort, ME 04982', 'ADM-00084', '2004-11-16', 'B', 'Science', '2025-2026', 'Kshlerin and Sons School', 'Daron Cremin', 'Businessman', '01827358760', 'father84@example.com', '4301108394015', 'Virginia Bechtelar', 'Nurse', '01949870036', 'mother84@example.com', '6604357909432', 'Anne Lesch', '01322927631', 'guardian84@example.com', '0525612168641', 'Grandparent', 1, 12, 7, '2025-12-24', NULL, 2025000084, 900084, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27', '127.0.0.1', 1, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27'),
(85, 'Spencer', 'Glover', '1979-02-23', 'Male', 'O-', 'Islam', 'Bangladeshi', '8206552090369', '01982145131', 'student85@example.com', '$2y$12$/8UNhnuCtf3r0wUfIwjdXeqOJBirsUDU8nyS8wumgQ6FesKUtMFRG', '7438 Bria Ports\nEast Alfonzoberg, NE 58575-5978', '4103 Maeve Oval Apt. 633\nWest Ceciliaburgh, OR 94317', 'ADM-00085', '1982-07-06', 'C', 'Arts', '2025-2026', 'Osinski-Crist School', 'Mr. Chesley Upton', 'Farmer', '01906651153', 'father85@example.com', '1877489762378', 'Margarette Jast', 'Doctor', '01685004387', 'mother85@example.com', '8310989016912', 'Kamille Ankunding', '01500524234', 'guardian85@example.com', '7226218911863', 'Sister', 1, 10, 1, '2025-12-24', NULL, 2025000085, 900085, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27', '127.0.0.1', 1, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27'),
(86, 'Jon', 'Harvey', '2004-01-04', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '2621775842171', '01467610779', 'student86@example.com', '$2y$12$OyuGiGVwT.3Dn4sY0Yphw.dvo2AzMqjQgfPnH4EY6WMmebFqDX9/a', '72464 Maximus Way\nEast Derecktown, WA 85382', '584 Andy Trace\nNew Rex, KS 47559-9341', 'ADM-00086', '1979-08-02', 'B', 'Commerce', '2025-2026', 'Stark, Kreiger and Eichmann School', 'Mr. Richard Larson II', 'Teacher', '01699080269', 'father86@example.com', '4883549272675', 'Wilhelmine Zboncak I', 'Nurse', '01798391853', 'mother86@example.com', '2187355274468', 'Theresa Doyle', '01800973789', 'guardian86@example.com', '9778296121774', 'Grandparent', 1, 8, 3, '2025-12-24', NULL, 2025000086, 900086, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27', '127.0.0.1', 1, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27'),
(87, 'Abigale', 'Lowe', '1995-12-08', 'Male', 'O-', 'Islam', 'Bangladeshi', '4669772633686', '01476648902', 'student87@example.com', '$2y$12$AtmDb2.hfwcZa6SUWuf.4OQOReCDhx7cBKcMDibkumVP5mCveZluy', '7178 Bayer Square\nWest Devantefurt, NC 47295-4884', '94713 Gerhold Wall\nCollinsmouth, VA 20367', 'ADM-00087', '2007-12-09', 'B', 'Arts', '2025-2026', 'Jast-Moore School', 'Cale Schimmel', 'Teacher', '01936631193', 'father87@example.com', '6481691233365', 'Prof. Elta Sporer', 'Teacher', '01672411941', 'mother87@example.com', '6588143675429', 'Mabelle Hahn V', '01731769342', 'guardian87@example.com', '2161739127340', 'Grandparent', 1, 9, 2, '2025-12-24', NULL, 2025000087, 900087, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27', '127.0.0.1', 1, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27'),
(88, 'Florida', 'Maggio', '2022-11-10', 'Other', 'O-', 'Islam', 'Bangladeshi', '1605440240895', '01377970825', 'student88@example.com', '$2y$12$hkZyAEqwj6nk2IK8rdzG5.w1meIMmiGWlrNKIdUltUxOSbdE9Urmy', '657 Kub Avenue Apt. 168\nPort Daisha, MN 30529', '2246 Pollich Highway\nRippinmouth, LA 84445', 'ADM-00088', '2018-06-20', 'B', 'Science', '2025-2026', 'Padberg, Mayert and Becker School', 'Fredrick Hills', 'Engineer', '01535408804', 'father88@example.com', '7795367495871', 'Savanah Ledner IV', 'Teacher', '01545324113', 'mother88@example.com', '6398516719771', 'Wilhelm Brakus III', '01833295423', 'guardian88@example.com', '6430276213841', 'Sister', 1, 5, 6, '2025-12-24', NULL, 2025000088, 900088, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27', '127.0.0.1', 1, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27'),
(89, 'Norval', 'Schaefer', '2021-02-01', 'Female', 'AB-', 'Christian', 'Bangladeshi', '6328589170795', '01931304318', 'student89@example.com', '$2y$12$b1o.ruPTPn4rssD.XBcv0OpjYmDqay0F3PelW0WC4BVeig5I5YlVO', '9671 Keeling Forge\nWest Hope, SD 09784-4428', '9362 Cleve Brooks\nAnjalistad, CT 78725', 'ADM-00089', '2012-11-09', 'C', 'Science', '2025-2026', 'Kilback, Reichert and Bergstrom School', 'Marvin Quigley', 'Businessman', '01549350174', 'father89@example.com', '3836219783528', 'Mrs. Vesta Kub DDS', 'Nurse', '01369150097', 'mother89@example.com', '6720166675303', 'Noelia Marks', '01494292355', 'guardian89@example.com', '6848834135637', 'Sister', 1, 11, 10, '2025-12-24', NULL, 2025000089, 900089, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27', '127.0.0.1', 1, NULL, '2025-12-24 09:39:27', '2025-12-24 09:39:27'),
(90, 'Olaf', 'Metz', '1970-05-01', 'Female', 'B+', 'Hindu', 'Bangladeshi', '9620854928653', '01934355072', 'student90@example.com', '$2y$12$yRJqNr7PYaj7nXc3W9QMbOOfRFRdt2LrMj/uLN6siwJPDunPklLHm', '601 Dickens Flat\nBalistreriville, MA 36400', '406 Robel Park\nSouth Danaton, NY 46911', 'ADM-00090', '1998-01-20', 'B', 'Arts', '2025-2026', 'Flatley LLC School', 'Dr. Carmine Pfannerstill III', 'Businessman', '01782467795', 'father90@example.com', '3688290489781', 'Tyra Lehner', 'Housewife', '01430154147', 'mother90@example.com', '3415573225152', 'Donato DuBuque', '01433994432', 'guardian90@example.com', '1369624155505', 'Uncle', 1, 10, 2, '2025-12-24', NULL, 2025000090, 900090, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28', '127.0.0.1', 1, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28'),
(91, 'Tavares', 'O\'Reilly', '2010-05-27', 'Male', 'AB+', 'Christian', 'Bangladeshi', '9160101805936', '01905448637', 'student91@example.com', '$2y$12$b.YA.C1mRdfx.jC42lGivuMz23V.7Oo.4Auo0PyLRHK.jtoCO6Z6S', '232 Conn Greens\nMorarton, CA 75538', '66298 Marvin Greens\nEast Jennyfer, CA 60503-7691', 'ADM-00091', '1982-11-28', 'B', 'Arts', '2025-2026', 'Ullrich, Mante and Bins School', 'Cleve Baumbach Jr.', 'Farmer', '01792616934', 'father91@example.com', '5448733613284', 'Prof. Carlee Torp V', 'Nurse', '01570702250', 'mother91@example.com', '9689370023308', 'Miss Zelma Jaskolski PhD', '01572587692', 'guardian91@example.com', '1097747029726', 'Sister', 1, 8, 9, '2025-12-24', NULL, 2025000091, 900091, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28', '127.0.0.1', 1, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28'),
(92, 'Amely', 'Hoeger', '2009-11-16', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '9063544289380', '01723995924', 'student92@example.com', '$2y$12$6w7KDojxVg2RRBquQ.IPJuXSnbgQ8e8oeG7yLTmNEYRBenE9O.hkq', '54059 Constantin Stravenue Apt. 031\nWest Jarodbury, VT 86943', '313 Krajcik River\nKubberg, WI 30270', 'ADM-00092', '1999-05-24', 'C', 'Commerce', '2025-2026', 'Cremin-Mraz School', 'Maurice Ledner', 'Engineer', '01627468860', 'father92@example.com', '1144873525553', 'Norene Funk', 'Nurse', '01974996174', 'mother92@example.com', '3116955845898', 'Chandler Wiegand', '01572249553', 'guardian92@example.com', '6859666964808', 'Brother', 1, 10, 5, '2025-12-24', NULL, 2025000092, 900092, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28', '127.0.0.1', 1, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28'),
(93, 'Gisselle', 'Raynor', '2022-10-06', 'Male', 'A-', 'Other', 'Bangladeshi', '6512371830180', '01566881900', 'student93@example.com', '$2y$12$8nBMlpbVzybP1RvmPiObkOP6pC3tkrpHE7exa0n/9U/xu4ybxGBAS', '8338 Koepp Springs\nHildatown, AK 48566-0662', '949 Ericka Square\nEast Darren, KS 95419', 'ADM-00093', '2017-02-14', 'B', 'Science', '2025-2026', 'Beier-Lemke School', 'Ariel DuBuque DVM', 'Teacher', '01493102781', 'father93@example.com', '2328349774891', 'Prof. Jeanette Hyatt', 'Housewife', '01503836593', 'mother93@example.com', '7165140446797', 'Maribel Fritsch', '01822689460', 'guardian93@example.com', '7395207996944', 'Sister', 1, 11, 1, '2025-12-24', NULL, 2025000093, 900093, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28', '127.0.0.1', 1, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28'),
(94, 'Joe', 'White', '1970-11-26', 'Other', 'AB+', 'Other', 'Bangladeshi', '7087556433323', '01879995498', 'student94@example.com', '$2y$12$iYznirReuFn9KVAqtCs1ke0/jsaXh4NFjbPSuVn5epHxsl4Mkt/sK', '1979 Dovie Burg\nKihnview, KS 52913', '648 Shawn Tunnel Apt. 007\nWest Marjolaine, AK 77778-0444', 'ADM-00094', '2013-04-18', 'A', 'Arts', '2025-2026', 'Rice, Simonis and Gislason School', 'Lemuel Daugherty', 'Businessman', '01856820216', 'father94@example.com', '8697630659086', 'Ms. Vergie Koelpin', 'Doctor', '01505255605', 'mother94@example.com', '5079172433241', 'Allison Wehner', '01351675300', 'guardian94@example.com', '7089809918027', 'Brother', 1, 6, 6, '2025-12-24', NULL, 2025000094, 900094, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28', '127.0.0.1', 1, NULL, '2025-12-24 09:39:28', '2025-12-24 09:39:28'),
(95, 'Madge', 'Roberts', '2005-06-26', 'Other', 'A-', 'Hindu', 'Bangladeshi', '1188212496221', '01698916819', 'student95@example.com', '$2y$12$SZ1NunbOZE/GjMfPKayIWORvCW2yLg4e1ZdnsJmXje5cSA47XdeFa', '97118 Rosemary Vista\nWest Raphael, MT 70058-1700', '7258 Cydney Valleys Apt. 011\nSchadenbury, CT 97905-4569', 'ADM-00095', '2003-09-13', 'B', 'Arts', '2025-2026', 'Pfannerstill, McDermott and Labadie School', 'Joe Torphy', 'Businessman', '01379349082', 'father95@example.com', '5332705902307', 'Shannon Wisozk', 'Businesswoman', '01975462046', 'mother95@example.com', '5554811723447', 'Angie Langosh III', '01656973539', 'guardian95@example.com', '4806089490197', 'Brother', 1, 12, 10, '2025-12-24', NULL, 2025000095, 900095, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29', '127.0.0.1', 1, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29'),
(96, 'Harrison', 'Runolfsson', '2002-07-04', 'Male', 'O+', 'Islam', 'Bangladeshi', '3901072018073', '01469820247', 'student96@example.com', '$2y$12$OofX34wceDP/v6Ena0NERe3L/rDv4/DEeekIeS39tgXcYh/9djzn6', '78709 Casper Haven Suite 526\nEast Anselbury, SD 87282', '6255 Beahan Spring Suite 064\nKirstenstad, MS 43542-3630', 'ADM-00096', '1998-09-04', 'A', 'Science', '2025-2026', 'Dare, Schmidt and Cruickshank School', 'Darrion Luettgen', 'Teacher', '01582734789', 'father96@example.com', '7426499619383', 'Prof. Viva McLaughlin PhD', 'Teacher', '01951995273', 'mother96@example.com', '8953223837378', 'Prof. Eleonore Pfannerstill III', '01609424241', 'guardian96@example.com', '2771387861235', 'Brother', 1, 13, 4, '2025-12-24', NULL, 2025000096, 900096, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29', '127.0.0.1', 1, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29'),
(97, 'Sunny', 'Bogisich', '1982-01-28', 'Female', 'O+', 'Christian', 'Bangladeshi', '8505555396633', '01481624579', 'student97@example.com', '$2y$12$NteGqOoDC1oyNmxBcd8zke9qm5JbIHIcK/xW6nf/b1rK0H28z6LFC', '82152 Mante Road\nHirthebury, AR 07395', '26551 Thaddeus Falls\nMarleeville, MN 00357', 'ADM-00097', '1992-03-26', 'A', 'Science', '2025-2026', 'Crooks, Lemke and Buckridge School', 'Ashton Frami', 'Teacher', '01376491784', 'father97@example.com', '9241474626848', 'Ms. Peggie Marquardt IV', 'Teacher', '01669110137', 'mother97@example.com', '7774356339360', 'Dr. Wilfredo Kerluke DVM', '01846524225', 'guardian97@example.com', '7730327847987', 'Grandparent', 1, 9, 3, '2025-12-24', NULL, 2025000097, 900097, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29', '127.0.0.1', 1, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29'),
(98, 'Noah', 'Cartwright', '1978-06-03', 'Other', 'AB-', 'Islam', 'Bangladeshi', '0051807506295', '01922048721', 'student98@example.com', '$2y$12$hneIx7EGvLNdRDs0OWxG6O7hc8EZUN5CGmF67xLemneo5lVGqA4AS', '9610 Kuhic Way Apt. 579\nEast Bryceberg, CT 89562', '43226 Meagan Ramp\nIsabellaton, TN 19514', 'ADM-00098', '2020-07-21', 'A', 'Commerce', '2025-2026', 'O\'Hara-Ondricka School', 'Christophe Hickle', 'Businessman', '01722142257', 'father98@example.com', '5461028313799', 'Malinda Jast', 'Nurse', '01895050006', 'mother98@example.com', '3588354536281', 'Muhammad Hyatt', '01995957562', 'guardian98@example.com', '0071949536314', 'Grandparent', 1, 11, 5, '2025-12-24', NULL, 2025000098, 900098, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29', '127.0.0.1', 1, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29'),
(99, 'Elta', 'Weimann', '2008-01-16', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '3692607649015', '01643432098', 'student99@example.com', '$2y$12$JHcrMSQ3AhcmkOfqtDZSve9ziR2V6RhxVTJQstjIYy8nTIoxYisSG', '29068 Green Stravenue Suite 492\nNorth Juliantown, SD 35073-6011', '9481 Mohr Crossroad Apt. 203\nNew Marcuschester, IL 05856-6748', 'ADM-00099', '1984-12-17', 'A', 'Science', '2025-2026', 'Douglas-Crooks School', 'Miller Marks', 'Engineer', '01699157205', 'father99@example.com', '0955784960509', 'Anabelle Nitzsche', 'Doctor', '01695709032', 'mother99@example.com', '6690102978823', 'Dr. Camylle Brown', '01729654431', 'guardian99@example.com', '6220843117508', 'Uncle', 1, 11, 2, '2025-12-24', NULL, 2025000099, 900099, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29', '127.0.0.1', 1, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29'),
(100, 'Calista', 'Tremblay', '2016-06-08', 'Male', 'O+', 'Islam', 'Bangladeshi', '2997300726180', '01536767572', 'student100@example.com', '$2y$12$bpHBl3dESLiwJldatPz1COFEmDG4gmZl03xwpLT8Gs0QvYV42aIhC', '501 Wunsch Vista Suite 651\nLinwoodmouth, LA 49564-2738', '115 Lamar Place Suite 729\nLake Dorotheaville, OH 97679-2770', 'ADM-00100', '2022-06-20', 'A', 'Commerce', '2025-2026', 'Predovic-Klocko School', 'Benedict Rippin', 'Farmer', '01670106568', 'father100@example.com', '2566580569162', 'Miss Madisyn Walsh', 'Businesswoman', '01782321685', 'mother100@example.com', '2208734524653', 'Alden Runte', '01979722758', 'guardian100@example.com', '1213694035350', 'Aunt', 1, 7, 8, '2025-12-24', NULL, 2025000100, 900100, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29', '127.0.0.1', 1, NULL, '2025-12-24 09:39:29', '2025-12-24 09:39:29'),
(101, 'Conrad', 'Konopelski', '2008-03-03', 'Other', 'O+', 'Islam', 'Bangladeshi', '6591011479444', '01843008353', 'student101@example.com', '$2y$12$.ppUb/ZGw0Yyc5z6IWu5.O1Ix0qiNDIFAnXC4tpnM1jQ.QdTujcNa', '620 Koss Drive\nJastside, CO 09915-6837', '904 Upton Ford Apt. 474\nNew Vicentemouth, AZ 09975', 'ADM-00101', '2012-03-21', 'B', 'Commerce', '2025-2026', 'Goodwin Group School', 'Mr. Devyn Kautzer', 'Businessman', '01531655502', 'father101@example.com', '1070721036517', 'Creola Kreiger', 'Doctor', '01531917040', 'mother101@example.com', '0132927133241', 'Bradly Quitzon', '01342151095', 'guardian101@example.com', '9331855079409', 'Grandparent', 1, 7, 6, '2025-12-24', NULL, 2025000101, 900101, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30', '127.0.0.1', 1, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30'),
(102, 'Jason', 'Parisian', '2016-06-30', 'Female', 'O+', 'Islam', 'Bangladeshi', '2508545573774', '01780436293', 'student102@example.com', '$2y$12$Q.zfVqe1S/tbNKYXXbV4feEoIwkyuQK48S3g4fRhYUno7TfnkVlv.', '3159 Langworth Mountain\nKelsiefort, AK 68674', '3257 Hagenes Streets Suite 775\nNew Dejabury, NC 64322', 'ADM-00102', '1999-04-11', 'A', 'Arts', '2025-2026', 'Hegmann-O\'Reilly School', 'Mr. Christopher Green Jr.', 'Farmer', '01886323843', 'father102@example.com', '7400878984046', 'Ashley Sanford III', 'Housewife', '01731566929', 'mother102@example.com', '6628988529579', 'Jett Mills II', '01422365542', 'guardian102@example.com', '1352344181183', 'Sister', 1, 8, 8, '2025-12-24', NULL, 2025000102, 900102, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30', '127.0.0.1', 1, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30'),
(103, 'Annamarie', 'Gottlieb', '2019-06-24', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '0270609817726', '01422668716', 'student103@example.com', '$2y$12$RpqAk9EF.kMSutO/8TbqW.wfkEVhRG82ezSUsysIybn6c89QQvn7C', '413 Kira River Suite 782\nSouth Donavonborough, AL 97305-8467', '6170 Wintheiser Manors Suite 124\nNorth Kennedychester, HI 10148-6270', 'ADM-00103', '2017-05-13', 'C', 'Science', '2025-2026', 'Rolfson-Blick School', 'Lorenzo Crooks II', 'Engineer', '01918821649', 'father103@example.com', '9920059718428', 'Teresa Runolfsdottir', 'Nurse', '01501715714', 'mother103@example.com', '2962300230998', 'Mrs. Autumn Torp I', '01593846677', 'guardian103@example.com', '4922682296637', 'Sister', 1, 12, 1, '2025-12-24', NULL, 2025000103, 900103, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30', '127.0.0.1', 1, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30'),
(104, 'Alice', 'Pagac', '1996-09-14', 'Female', 'B-', 'Islam', 'Bangladeshi', '0057551965386', '01464870489', 'student104@example.com', '$2y$12$/EXn1DFGXk5FkzF95hXuruFk1MFgRnl5kGXCHqzwagyX2JAaWm/GO', '985 Koch Wall Suite 618\nNorth Alvis, TX 96008', '52150 Tromp Pass\nNorth Elissa, TX 11209-1505', 'ADM-00104', '2018-10-30', 'A', 'Science', '2025-2026', 'Corkery, Gerhold and Thompson School', 'Prof. Moises Crooks', 'Businessman', '01961120427', 'father104@example.com', '5205778585849', 'Kali Bayer', 'Businesswoman', '01683157952', 'mother104@example.com', '0261308525198', 'Miss Leda Kris', '01952415917', 'guardian104@example.com', '9991129200122', 'Aunt', 1, 9, 9, '2025-12-24', NULL, 2025000104, 900104, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30', '127.0.0.1', 1, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30'),
(105, 'Abe', 'Berge', '1972-11-25', 'Other', 'B-', 'Buddhist', 'Bangladeshi', '1645999250737', '01711036223', 'student105@example.com', '$2y$12$T5Nx5PViEPC7vBWZpxvzNeqmhUFa5eLKauTu56ukcoESh4U/F9bpW', '63426 Ernser Plaza\nPort Emmalee, NH 40501-3796', '3605 Hyatt Run Apt. 681\nRunolfssontown, AR 34597-6349', 'ADM-00105', '1986-03-11', 'C', 'Commerce', '2025-2026', 'Denesik LLC School', 'Llewellyn Brekke', 'Businessman', '01905828669', 'father105@example.com', '8571441064725', 'Anya Kihn III', 'Businesswoman', '01364394655', 'mother105@example.com', '3603612706439', 'Prof. Andres Bailey', '01372121516', 'guardian105@example.com', '9653550983567', 'Brother', 1, 12, 2, '2025-12-24', NULL, 2025000105, 900105, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30', '127.0.0.1', 1, NULL, '2025-12-24 09:39:30', '2025-12-24 09:39:30'),
(106, 'Roscoe', 'Wunsch', '1974-04-21', 'Male', 'AB+', 'Islam', 'Bangladeshi', '4360129075733', '01734545175', 'student106@example.com', '$2y$12$jSI8A.IBQIxpGafH.emg8OeLWRITJMfjMh9UxHWk6R7YUyu.7XARq', '82409 Hazel Views\nNorth Deondre, MA 63018', '73848 Langosh Cliff Suite 834\nJohnpaulview, SC 81766-4629', 'ADM-00106', '1990-11-23', 'A', 'Commerce', '2025-2026', 'Hane Inc School', 'Allen Bosco', 'Engineer', '01649788869', 'father106@example.com', '4657218327652', 'Miss Elza Ryan', 'Nurse', '01680570100', 'mother106@example.com', '5604674921684', 'Turner Prosacco', '01640020954', 'guardian106@example.com', '2293814789663', 'Brother', 1, 13, 7, '2025-12-24', NULL, 2025000106, 900106, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31', '127.0.0.1', 1, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31'),
(107, 'Rebeca', 'Predovic', '2016-03-14', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '4862223566470', '01571699060', 'student107@example.com', '$2y$12$PW487E5AojL4.Nxz5P39vuUBzVy4ewj47PzcHCUYNlf1UTbZhtyA2', '670 Monahan Crest\nPort Wilmerfort, AK 90360', '417 Icie Extension\nKelsieburgh, IN 01539-0943', 'ADM-00107', '2010-12-30', 'A', 'Commerce', '2025-2026', 'Kuvalis Group School', 'Willis Franecki', 'Farmer', '01956355547', 'father107@example.com', '1135823656506', 'Bailee Bartoletti', 'Businesswoman', '01824465996', 'mother107@example.com', '9258386882985', 'Hilton Mohr', '01663661567', 'guardian107@example.com', '6092290455253', 'Grandparent', 1, 13, 2, '2025-12-24', NULL, 2025000107, 900107, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31', '127.0.0.1', 1, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31'),
(108, 'Adell', 'Ondricka', '1988-03-16', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '6586623694157', '01324857228', 'student108@example.com', '$2y$12$JsvQEVdZacdFxusL/42hs.RtTqv6yS0A5ljiFsBrm3nBFY20YlB8G', '85369 Genoveva Meadow Suite 254\nEast Velda, MN 32435', '590 Christophe Turnpike Apt. 127\nSouth Myaview, VT 94447', 'ADM-00108', '1994-06-25', 'A', 'Science', '2025-2026', 'O\'Conner-Leffler School', 'Prof. Ari Kshlerin', 'Businessman', '01558580192', 'father108@example.com', '0517139689746', 'Miss Abigayle Collier', 'Housewife', '01879841865', 'mother108@example.com', '4066386632327', 'Wilburn Oberbrunner', '01800955233', 'guardian108@example.com', '5305269710338', 'Aunt', 1, 12, 5, '2025-12-24', NULL, 2025000108, 900108, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31', '127.0.0.1', 1, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31'),
(109, 'Giovani', 'Goyette', '2000-05-09', 'Female', 'B-', 'Islam', 'Bangladeshi', '8549643758965', '01909013256', 'student109@example.com', '$2y$12$7ODWxGsJE75AKmT2yNgyNOh6Pr78B1a9Uqgyq8LJN44jRZr7k/Jta', '481 Jacobs Vista\nHarleyfurt, TN 04241', '9058 Marks Prairie Apt. 816\nWest Sanfordmouth, IL 19607-8362', 'ADM-00109', '1978-01-12', 'B', 'Commerce', '2025-2026', 'Schmitt Ltd School', 'Gilberto Hansen', 'Engineer', '01883700168', 'father109@example.com', '6150764359093', 'Jazmyn Halvorson', 'Teacher', '01484565330', 'mother109@example.com', '4925189496978', 'Dr. Hilda Nitzsche I', '01861153180', 'guardian109@example.com', '0113959273202', 'Sister', 1, 9, 8, '2025-12-24', NULL, 2025000109, 900109, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31', '127.0.0.1', 1, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31'),
(110, 'Hiram', 'Schoen', '1989-02-14', 'Female', 'B-', 'Islam', 'Bangladeshi', '4112486167282', '01906625082', 'student110@example.com', '$2y$12$rS6Ybzj2BTI236s2FnrqQ.jMZtBNdygjEu8V79pGHs8W874gRp6.e', '14796 Raynor Key\nAdonisstad, DE 19813', '1293 Vincenzo Mall Apt. 118\nEast Opalfurt, VT 05693', 'ADM-00110', '1993-07-02', 'B', 'Science', '2025-2026', 'O\'Connell Group School', 'Dr. Reece Lang', 'Businessman', '01754733718', 'father110@example.com', '8276058450451', 'Kaela Carroll', 'Doctor', '01939662367', 'mother110@example.com', '2858912856500', 'Myriam Haag I', '01347976943', 'guardian110@example.com', '5395633466787', 'Grandparent', 1, 14, 2, '2025-12-24', NULL, 2025000110, 900110, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31', '127.0.0.1', 1, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31'),
(111, 'Herta', 'Swift', '1996-12-04', 'Female', 'AB+', 'Christian', 'Bangladeshi', '4163621813019', '01372663013', 'student111@example.com', '$2y$12$k383nRqaMfsBzC8ABLDOZ.37CNMqOYDlcqIi.3C15QNIjDFJN.Vnm', '44463 Kreiger Inlet Apt. 739\nBuckport, ND 88036-1207', '28667 Clint Center Suite 193\nLakinview, UT 97508', 'ADM-00111', '1974-03-05', 'A', 'Arts', '2025-2026', 'Mosciski PLC School', 'Adan Baumbach', 'Businessman', '01308131285', 'father111@example.com', '0106068224099', 'Ms. Zola Huel V', 'Businesswoman', '01361997462', 'mother111@example.com', '0542512293154', 'Dr. Carolanne Weber Jr.', '01329740705', 'guardian111@example.com', '5278517603442', 'Brother', 1, 13, 5, '2025-12-24', NULL, 2025000111, 900111, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31', '127.0.0.1', 1, NULL, '2025-12-24 09:39:31', '2025-12-24 09:39:31'),
(112, 'Kristian', 'Konopelski', '1977-03-17', 'Male', 'A-', 'Hindu', 'Bangladeshi', '4258050993166', '01777892752', 'student112@example.com', '$2y$12$gxGH/Lvwm4CaakiUkbjbgeeoZy8/d0zgeRz0m9Q.Tu0E4hqFShYXm', '692 Rempel Heights Apt. 111\nEast Avisshire, NJ 21109', '61609 Corene Brook Apt. 402\nEast Nikkochester, CT 99397-8620', 'ADM-00112', '2014-04-30', 'A', 'Commerce', '2025-2026', 'Rippin and Sons School', 'Conor Moore', 'Farmer', '01873704596', 'father112@example.com', '1054735621436', 'Carlotta Abshire', 'Doctor', '01352004253', 'mother112@example.com', '2528884528668', 'Turner Zulauf', '01604180838', 'guardian112@example.com', '8627111668318', 'Brother', 1, 8, 6, '2025-12-24', NULL, 2025000112, 900112, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32', '127.0.0.1', 1, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32'),
(113, 'Rebecca', 'Johnston', '2023-03-23', 'Male', 'AB+', 'Other', 'Bangladeshi', '5272538231574', '01747483721', 'student113@example.com', '$2y$12$FLiS6A0IBGPBItUGynpQae0v3PPgqPSSpkLUOBCUmzGhZ5UmOekXi', '2551 Jamarcus Glens Suite 048\nPort Kenya, MO 86823', '3275 Hansen Camp Apt. 898\nLionelborough, ME 13571', 'ADM-00113', '1995-03-31', 'B', 'Arts', '2025-2026', 'Ankunding and Sons School', 'Prof. Glen Rosenbaum', 'Businessman', '01611610645', 'father113@example.com', '0029407478619', 'Fabiola Feeney', 'Teacher', '01618118876', 'mother113@example.com', '9508859625690', 'Kayla Murphy', '01395819427', 'guardian113@example.com', '0147612075878', 'Uncle', 1, 14, 5, '2025-12-24', NULL, 2025000113, 900113, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32', '127.0.0.1', 1, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32'),
(114, 'Karen', 'Buckridge', '1973-10-04', 'Female', 'B+', 'Buddhist', 'Bangladeshi', '1664733096069', '01303165334', 'student114@example.com', '$2y$12$zRSXpyCzjkDkoFSCmoQpUO9cg5H24fWoL46tGnlghipVmq8gEoUQO', '8198 King Ford Suite 124\nLake Anthony, SD 73183-6153', '25739 Kris Circle Apt. 017\nNew Jeffery, CO 88363', 'ADM-00114', '1996-09-11', 'A', 'Arts', '2025-2026', 'Oberbrunner, Miller and Kilback School', 'Dr. Brook Abshire', 'Farmer', '01374101780', 'father114@example.com', '9424115014398', 'Emma Crona', 'Nurse', '01948383660', 'mother114@example.com', '7109932858356', 'Mr. Hiram Bogisich Sr.', '01992900256', 'guardian114@example.com', '1655721751057', 'Sister', 1, 15, 5, '2025-12-24', NULL, 2025000114, 900114, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32', '127.0.0.1', 1, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32'),
(115, 'Aaliyah', 'Glover', '2012-04-17', 'Other', 'A+', 'Christian', 'Bangladeshi', '1794635759195', '01684631723', 'student115@example.com', '$2y$12$pHFuVHPXMH9lN4xSuS6fPuKF6HO7DTwhVRgKwJ4tA00gmhhBYV5.u', '4312 Schimmel Key\nEast Kristin, MN 63786-1916', '590 Cruickshank Crest Suite 175\nLake Milo, PA 92272', 'ADM-00115', '1974-04-09', 'A', 'Arts', '2025-2026', 'Friesen, Cummerata and Schmidt School', 'Zander Krajcik', 'Businessman', '01658757953', 'father115@example.com', '8713896758304', 'Miss Hanna O\'Keefe I', 'Teacher', '01558810524', 'mother115@example.com', '0967472286498', 'Mariano Macejkovic I', '01745449452', 'guardian115@example.com', '0383023703674', 'Aunt', 1, 14, 4, '2025-12-24', NULL, 2025000115, 900115, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32', '127.0.0.1', 1, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `admission_no`, `admission_date`, `section`, `group`, `session_year`, `previous_school`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(116, 'Reba', 'Ebert', '2010-06-13', 'Male', 'B-', 'Hindu', 'Bangladeshi', '4260429397612', '01523599211', 'student116@example.com', '$2y$12$N7voVaZoKJKxmGSQP8beoOjboJzu3nViPBG7jUw6pugKHuh3J.Nyq', '4873 Marcel Ferry\nNew Marcelinoside, IN 92516', '793 Marisa Radial\nMayrachester, MD 46347-2527', 'ADM-00116', '2007-07-19', 'A', 'Arts', '2025-2026', 'Steuber-Wilkinson School', 'Dr. Arnold Rutherford Sr.', 'Engineer', '01667253916', 'father116@example.com', '1364108902639', 'Brionna Predovic', 'Nurse', '01988419140', 'mother116@example.com', '2976636007908', 'Joaquin Corwin', '01531986686', 'guardian116@example.com', '2928133443873', 'Grandparent', 1, 13, 1, '2025-12-24', NULL, 2025000116, 900116, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32', '127.0.0.1', 1, NULL, '2025-12-24 09:39:32', '2025-12-24 09:39:32'),
(117, 'Shany', 'Walter', '2002-05-31', 'Male', 'A+', 'Christian', 'Bangladeshi', '3219167507709', '01625339353', 'student117@example.com', '$2y$12$JXVDx/JkwjpKWQnUeW.iT.3rEgUJ31RTcnXiqFHN3ajia27566wHu', '108 Witting Mill\nJodyland, WI 42221-8710', '1103 Lucie Key\nDuanemouth, FL 14854', 'ADM-00117', '1971-03-26', 'B', 'Commerce', '2025-2026', 'Lesch Group School', 'Kennedi Kihn', 'Farmer', '01679230313', 'father117@example.com', '3903734503686', 'Janie O\'Kon I', 'Businesswoman', '01644165269', 'mother117@example.com', '9729099740700', 'Keira Weber', '01737802693', 'guardian117@example.com', '5633654205110', 'Brother', 1, 14, 7, '2025-12-24', NULL, 2025000117, 900117, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33', '127.0.0.1', 1, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33'),
(118, 'Arnold', 'Waters', '2019-06-24', 'Other', 'AB+', 'Islam', 'Bangladeshi', '6142283491145', '01991267630', 'student118@example.com', '$2y$12$MqPL1xskYstWvDPot5.Lx./fHgAsxueE6z.QvF6xcNMwPPlN0/TiS', '84010 Abigail Walk\nMadalynburgh, AZ 00030-6481', '285 Viviane Rest\nSouth Milanside, IL 45231-7061', 'ADM-00118', '2013-06-25', 'C', 'Arts', '2025-2026', 'Green-Predovic School', 'Rhett Balistreri', 'Farmer', '01852581164', 'father118@example.com', '6026397977913', 'Peggie Bogan', 'Doctor', '01880837921', 'mother118@example.com', '8953474326831', 'Prof. Chaz Hodkiewicz PhD', '01859852910', 'guardian118@example.com', '6345462171731', 'Sister', 1, 15, 2, '2025-12-24', NULL, 2025000118, 900118, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33', '127.0.0.1', 1, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33'),
(119, 'Marvin', 'Lockman', '1998-02-09', 'Female', 'A+', 'Other', 'Bangladeshi', '0538486980114', '01422792561', 'student119@example.com', '$2y$12$.Ccy052Y67kZq3RKM9siIuFU1c00UpZoANiU24jBNsMei.aIaAwEK', '30063 Charles Run\nHayleeview, AK 71483-0587', '20151 Eileen Avenue Apt. 562\nEast Leonie, OH 66017', 'ADM-00119', '1990-12-19', 'B', 'Science', '2025-2026', 'Mante and Sons School', 'Olin Schumm', 'Engineer', '01394499313', 'father119@example.com', '0748720323977', 'Dr. Willie Huels', 'Nurse', '01350012606', 'mother119@example.com', '2642693597327', 'Prof. Cedrick Stehr IV', '01736665591', 'guardian119@example.com', '4366510900396', 'Aunt', 1, 10, 9, '2025-12-24', NULL, 2025000119, 900119, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33', '127.0.0.1', 1, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33'),
(120, 'Ward', 'Greenholt', '2007-06-26', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '6406359478713', '01379460695', 'student120@example.com', '$2y$12$DTpDjWv/ECshebRj/nuOF.RVpjVhKSf0NwvjLkAtop.MAlWixU1MG', '3120 Rollin Ramp\nAndersonborough, WV 13290', '905 Satterfield Stravenue Apt. 789\nWest Lindsayshire, DE 33158', 'ADM-00120', '1989-03-20', 'A', 'Arts', '2025-2026', 'Schamberger-Jast School', 'Winfield Mosciski', 'Engineer', '01779770525', 'father120@example.com', '1918901861529', 'Lina Kshlerin', 'Businesswoman', '01888123875', 'mother120@example.com', '7295407724222', 'Jacquelyn Johns', '01778682389', 'guardian120@example.com', '6559857243062', 'Sister', 1, 16, 5, '2025-12-24', NULL, 2025000120, 900120, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33', '127.0.0.1', 1, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33'),
(121, 'Una', 'Quigley', '2019-05-13', 'Female', 'A+', 'Hindu', 'Bangladeshi', '7274828179182', '01536763350', 'student121@example.com', '$2y$12$EjCoiFqQDegpZ.U8Ky4zIOgdyArFDB19O2L1wWK0P31x88FkH9nl.', '70442 Hammes Summit Suite 230\nBeierchester, MS 35685', '32429 Glover Manors\nRosenbaumtown, VA 57647-9428', 'ADM-00121', '1998-06-25', 'A', 'Arts', '2025-2026', 'Cartwright LLC School', 'Jesus Ryan', 'Farmer', '01853907049', 'father121@example.com', '4114745241921', 'Daphne Wisoky I', 'Housewife', '01963584487', 'mother121@example.com', '9749976810145', 'Coty O\'Hara', '01841831790', 'guardian121@example.com', '8215328349520', 'Sister', 1, 14, 1, '2025-12-24', NULL, 2025000121, 900121, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33', '127.0.0.1', 1, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33'),
(122, 'Buford', 'Hoeger', '2006-04-09', 'Female', 'AB-', 'Islam', 'Bangladeshi', '2035496642026', '01507419147', 'student122@example.com', '$2y$12$Qef4J56IcTWIsxiHwlIyVeKgAwO7MyvpSxtfmj3853CzOMAZCk6aq', '1728 Wiegand Common Apt. 956\nWest Frida, AL 39403', '43974 Roger Forest Apt. 604\nNorth Francisco, TN 09733', 'ADM-00122', '1996-09-19', 'A', 'Science', '2025-2026', 'Streich-Wolff School', 'Prof. Edgar Morar II', 'Engineer', '01350799371', 'father122@example.com', '3632510652531', 'Dr. Amber Dietrich', 'Housewife', '01774955872', 'mother122@example.com', '2925982153139', 'Antonietta DuBuque', '01476625358', 'guardian122@example.com', '9598066597510', 'Sister', 1, 10, 3, '2025-12-24', NULL, 2025000122, 900122, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33', '127.0.0.1', 1, NULL, '2025-12-24 09:39:33', '2025-12-24 09:39:33'),
(123, 'Julien', 'Bergstrom', '1972-02-11', 'Female', 'B+', 'Christian', 'Bangladeshi', '1200568024733', '01635535127', 'student123@example.com', '$2y$12$xDnks28qN3hXTWc8iFN/VuwR4ZS1Uas1dq6sCfSIBN0Y5zDzaxCFO', '60191 Amie Shoal Apt. 555\nBonitamouth, ID 47435-7876', '129 Derick Shoals Suite 150\nLake Moriah, SC 89315', 'ADM-00123', '2017-08-04', 'C', 'Science', '2025-2026', 'Stiedemann Inc School', 'Dr. Delaney Stoltenberg Jr.', 'Teacher', '01606041388', 'father123@example.com', '5769395460416', 'Miss Mittie Beatty', 'Housewife', '01410790362', 'mother123@example.com', '5538793262000', 'Emmy Feil', '01739059016', 'guardian123@example.com', '1333182328669', 'Aunt', 1, 10, 8, '2025-12-24', NULL, 2025000123, 900123, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34', '127.0.0.1', 1, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34'),
(124, 'Abel', 'Hoeger', '2004-10-16', 'Male', 'A-', 'Islam', 'Bangladeshi', '6610671631207', '01338774517', 'student124@example.com', '$2y$12$rTH5VIBtTVRdobEHyfd1ge1qoQKmsXCLcALgRukPnsTnMD0POe.V6', '4867 Michale Corners\nKareembury, CA 85486', '468 Blaise Garden Suite 897\nReganview, NV 49216', 'ADM-00124', '1975-03-30', 'B', 'Science', '2025-2026', 'Pfeffer, Hilpert and West School', 'Brad Bosco', 'Teacher', '01358817835', 'father124@example.com', '8815476025943', 'Ms. Aurore Beatty', 'Housewife', '01384561120', 'mother124@example.com', '3449815601084', 'Marian Harber', '01776827498', 'guardian124@example.com', '4691563702592', 'Grandparent', 1, 11, 3, '2025-12-24', NULL, 2025000124, 900124, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34', '127.0.0.1', 1, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34'),
(125, 'Alfonso', 'Haley', '1980-03-09', 'Other', 'AB-', 'Other', 'Bangladeshi', '7105429466648', '01902582593', 'student125@example.com', '$2y$12$Ufb9RAJmh7BfBpfFWqSqm.YlcvOxWop296yhWhe4aR3th3qOAitfG', '419 Clemens Loop\nWest Orvalfort, CA 51281-9697', '947 Barrows Estate Suite 030\nVergieborough, DC 51083', 'ADM-00125', '2004-03-29', 'B', 'Arts', '2025-2026', 'Lockman-Harvey School', 'Jettie D\'Amore', 'Teacher', '01691921664', 'father125@example.com', '1901482532942', 'Fiona Turner', 'Teacher', '01786192038', 'mother125@example.com', '4238492152033', 'Orland Bartell MD', '01481642012', 'guardian125@example.com', '6477505568821', 'Brother', 1, 11, 8, '2025-12-24', NULL, 2025000125, 900125, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34', '127.0.0.1', 1, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34'),
(126, 'Broderick', 'Conn', '1980-12-18', 'Other', 'O+', 'Islam', 'Bangladeshi', '3268995231410', '01317961846', 'student126@example.com', '$2y$12$ngV.k8TbPWDdn.LQopBMEedh0khOZs1WcFONZvOqU.tGgayEuWEXC', '893 Fritsch Union\nPort Jacynthe, LA 22416', '20014 Bartholome Skyway\nZoilastad, MA 68432', 'ADM-00126', '2020-04-01', 'B', 'Science', '2025-2026', 'Harvey Inc School', 'Lawrence Torp MD', 'Engineer', '01637745471', 'father126@example.com', '3696467305924', 'Jakayla Dickinson', 'Doctor', '01785538385', 'mother126@example.com', '2849495532264', 'Drew Hills', '01468865052', 'guardian126@example.com', '2168944649864', 'Brother', 1, 17, 5, '2025-12-24', NULL, 2025000126, 900126, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34', '127.0.0.1', 1, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34'),
(127, 'Eldred', 'Pouros', '1992-03-25', 'Male', 'A+', 'Christian', 'Bangladeshi', '9855362743057', '01421225569', 'student127@example.com', '$2y$12$5uwqvzG3x3WhvukiB.lcrOGIj1aa1ciezZj7VnTq37pajL9aqAOn6', '4028 Alda Port\nNew Dayton, AL 65221', '6423 Davis Springs Suite 497\nConsidineberg, CO 79669', 'ADM-00127', '1980-04-26', 'B', 'Arts', '2025-2026', 'Rippin-Hackett School', 'Ryan Swaniawski', 'Doctor', '01636046495', 'father127@example.com', '6563746395938', 'Daphney Bins IV', 'Housewife', '01365607211', 'mother127@example.com', '6791381024079', 'Alyson Douglas II', '01575615524', 'guardian127@example.com', '5440571538285', 'Aunt', 1, 15, 7, '2025-12-24', NULL, 2025000127, 900127, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34', '127.0.0.1', 1, NULL, '2025-12-24 09:39:34', '2025-12-24 09:39:34'),
(128, 'Cristobal', 'O\'Hara', '1978-12-13', 'Other', 'A-', 'Islam', 'Bangladeshi', '8306893766139', '01629310079', 'student128@example.com', '$2y$12$Y1pBQ60KZ4JK9iG9I3AqPuMrzXaW4B7v.hzV/I/kAAqVSlQ5/yc1q', '6919 Molly Greens Apt. 889\nNew Raulchester, NV 25088', '971 Terry Manors\nNorth Onie, MI 57944', 'ADM-00128', '2020-05-19', 'A', 'Commerce', '2025-2026', 'Schinner-Pouros School', 'Alfredo Dickinson V', 'Doctor', '01676377096', 'father128@example.com', '3807596893740', 'Ms. Lina Bosco DVM', 'Nurse', '01481525352', 'mother128@example.com', '3375067529182', 'Prof. Rowan Dibbert', '01899840480', 'guardian128@example.com', '9963404468689', 'Sister', 1, 11, 9, '2025-12-24', NULL, 2025000128, 900128, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35', '127.0.0.1', 1, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35'),
(129, 'Marc', 'Armstrong', '1996-05-14', 'Female', 'B-', 'Christian', 'Bangladeshi', '8389855831593', '01679388239', 'student129@example.com', '$2y$12$9E07ICYEhRBLBFs28qLni.xf/oWHTWDzoC/dmR76maO5aOnakS.sq', '7758 Gaston Mountains Apt. 434\nDoyleside, SD 87705-2182', '828 Ratke Haven Apt. 843\nD\'Amoreborough, MI 50884-9964', 'ADM-00129', '2000-04-22', 'A', 'Arts', '2025-2026', 'Volkman Ltd School', 'Dr. Jett Schimmel', 'Businessman', '01439224961', 'father129@example.com', '4741805287855', 'Elisha Larkin', 'Housewife', '01952393698', 'mother129@example.com', '7068159843842', 'Mr. Dexter Howell', '01578191178', 'guardian129@example.com', '7280889443279', 'Aunt', 1, 16, 2, '2025-12-24', NULL, 2025000129, 900129, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35', '127.0.0.1', 1, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35'),
(130, 'Wilmer', 'Windler', '2022-01-01', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '0948816329011', '01660657353', 'student130@example.com', '$2y$12$TGSXNdFTss3Tvla.KAJ45O.jh83CpS9.UXZ/6IngLanl.scB81is.', '92779 Schmidt Inlet Apt. 536\nNew Royal, MN 53866-8634', '48279 Renner Light\nIsobelbury, AL 39218-0174', 'ADM-00130', '2010-10-17', 'A', 'Science', '2025-2026', 'Kub-Bednar School', 'Antonio Hessel', 'Doctor', '01431316064', 'father130@example.com', '6427168793910', 'Petra Schimmel', 'Businesswoman', '01482167860', 'mother130@example.com', '6063503693659', 'Dr. Shawna Huel I', '01665691149', 'guardian130@example.com', '0695217298455', 'Uncle', 1, 12, 8, '2025-12-24', NULL, 2025000130, 900130, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35', '127.0.0.1', 1, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35'),
(131, 'Mertie', 'Nienow', '2025-01-05', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '0339631641220', '01486906942', 'student131@example.com', '$2y$12$TsV0VO4sazmL7Tyig0QiS.ag6HCtir.HW/40HcfyR4nfVGIYoUpAe', '8963 Raegan Stream\nNew Myah, KY 67122-7205', '7375 Stokes Spurs Apt. 026\nNellaport, DE 16503', 'ADM-00131', '2002-03-26', 'B', 'Science', '2025-2026', 'Wiegand Group School', 'Brad Bernhard', 'Farmer', '01738114679', 'father131@example.com', '3756410089112', 'Mrs. Thea Terry', 'Teacher', '01518017762', 'mother131@example.com', '7870937530314', 'Dannie Smitham', '01590344249', 'guardian131@example.com', '6545280786758', 'Uncle', 1, 15, 4, '2025-12-24', NULL, 2025000131, 900131, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35', '127.0.0.1', 1, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35'),
(132, 'Nelda', 'Emmerich', '2005-12-25', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '5810190104599', '01537715114', 'student132@example.com', '$2y$12$C9fmTquba723F31eZ88l..9qh2WiZiH3DQM0vpyY6RHVtuF9m3L8.', '702 Kiera Ville Apt. 497\nNew Domingo, NE 43036-4528', '5465 Tromp Dale\nSouth Simoneland, LA 03300', 'ADM-00132', '1979-05-26', 'A', 'Arts', '2025-2026', 'Gerhold PLC School', 'Blake Bogisich', 'Engineer', '01916555792', 'father132@example.com', '2524236135985', 'Alia Lemke DVM', 'Nurse', '01560419845', 'mother132@example.com', '5792241025428', 'Monroe Tromp', '01724466783', 'guardian132@example.com', '3641250516999', 'Grandparent', 1, 13, 10, '2025-12-24', NULL, 2025000132, 900132, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35', '127.0.0.1', 1, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35'),
(133, 'Narciso', 'Hartmann', '1971-01-24', 'Female', 'O-', 'Hindu', 'Bangladeshi', '1380251062142', '01916387391', 'student133@example.com', '$2y$12$M921zxCxnMxcGDwT9kBPvu91HQR6HvRhNVZZ45KCJn9JX3IAzfRfq', '4875 Nitzsche Spurs Suite 511\nDoviefort, MT 24701', '15170 Kilback Lock\nPort Terrillport, IA 87740', 'ADM-00133', '2019-06-19', 'B', 'Science', '2025-2026', 'Mills, Blanda and Denesik School', 'Lucius Ratke V', 'Engineer', '01819985304', 'father133@example.com', '7036303874430', 'Lulu Kling', 'Teacher', '01689254014', 'mother133@example.com', '0110460018097', 'Gloria Williamson', '01387532953', 'guardian133@example.com', '2960762483502', 'Sister', 1, 14, 10, '2025-12-24', NULL, 2025000133, 900133, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35', '127.0.0.1', 1, NULL, '2025-12-24 09:39:35', '2025-12-24 09:39:35'),
(134, 'Mckenna', 'Feest', '1995-01-20', 'Male', 'A-', 'Christian', 'Bangladeshi', '4218893620414', '01987045262', 'student134@example.com', '$2y$12$TTRHe8g8/AHile4mIw72OeeTHlW0Z7ld/qeovn1hchO8BKKp2JIAK', '3335 Weber Junction Suite 659\nAprilton, MT 43261-3646', '5587 Malvina Land Apt. 535\nEast Clementinafurt, NM 90847-2831', 'ADM-00134', '1971-05-12', 'B', 'Arts', '2025-2026', 'Bartoletti-Eichmann School', 'Adam Pollich', 'Farmer', '01964769886', 'father134@example.com', '1416103890403', 'Yvette Satterfield', 'Nurse', '01396803955', 'mother134@example.com', '7479744473092', 'Loyal O\'Reilly III', '01752461519', 'guardian134@example.com', '7554478448363', 'Aunt', 1, 15, 10, '2025-12-24', NULL, 2025000134, 900134, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36', '127.0.0.1', 1, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36'),
(135, 'Freida', 'Kilback', '2024-02-20', 'Other', 'B+', 'Hindu', 'Bangladeshi', '1167180651972', '01423773638', 'student135@example.com', '$2y$12$OaisqebPiXsyW1AmXcpjz.HLMa7YDcDq8dH3o7UcEJqxBOdapwz1W', '5517 Constance Meadow Suite 239\nZboncakfort, AZ 13281', '712 Hintz Points Suite 023\nNew Kylaside, LA 73409-9088', 'ADM-00135', '2013-10-14', 'B', 'Science', '2025-2026', 'Corkery-Gislason School', 'Mr. Rhett D\'Amore Sr.', 'Doctor', '01975617680', 'father135@example.com', '5746075124018', 'Cassandra Huels', 'Teacher', '01641640683', 'mother135@example.com', '1924770833846', 'Delbert Yundt', '01501749756', 'guardian135@example.com', '0447564788874', 'Grandparent', 1, 13, 8, '2025-12-24', NULL, 2025000135, 900135, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36', '127.0.0.1', 1, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36'),
(136, 'Nestor', 'Treutel', '1999-02-05', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '4999994241891', '01673499642', 'student136@example.com', '$2y$12$lOVyKd6/X1vsbgTJPgvCzuhFWI.KOoHeje8Jtd73L6IsTVIz.gr5y', '161 Boehm Island\nNew Elvera, TN 55620-3578', '268 Lang Trail\nJenkinsfort, SD 61846-6390', 'ADM-00136', '1977-06-20', 'A', 'Arts', '2025-2026', 'Graham LLC School', 'Prof. Hector Medhurst III', 'Teacher', '01852380436', 'father136@example.com', '4750433948348', 'Ima Kovacek', 'Businesswoman', '01703746604', 'mother136@example.com', '9168167021921', 'Miss Angelita Sauer Jr.', '01876629262', 'guardian136@example.com', '5348352057793', 'Sister', 1, 16, 4, '2025-12-24', NULL, 2025000136, 900136, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36', '127.0.0.1', 1, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36'),
(137, 'Lysanne', 'Lakin', '1982-10-22', 'Female', 'B-', 'Hindu', 'Bangladeshi', '4064673239876', '01620449095', 'student137@example.com', '$2y$12$PtJxIhz7nzdEYMiNC51zG.vgCA/nM/CgZXcsdYoYozhiAE9DGRtSy', '92010 Buckridge Lakes\nPort Revaview, NM 52864-7923', '45454 Genoveva Street\nWest Payton, KY 54925-0913', 'ADM-00137', '1982-12-15', 'A', 'Arts', '2025-2026', 'Rice, Williamson and Wyman School', 'Louie Runolfsdottir II', 'Engineer', '01457044487', 'father137@example.com', '1355973290799', 'Cordia Hodkiewicz', 'Nurse', '01969318689', 'mother137@example.com', '4706006330121', 'Nelle Lebsack', '01836402504', 'guardian137@example.com', '9097332111492', 'Sister', 1, 16, 10, '2025-12-24', NULL, 2025000137, 900137, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36', '127.0.0.1', 1, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36'),
(138, 'Jerel', 'Crist', '2000-07-28', 'Other', 'B-', 'Hindu', 'Bangladeshi', '9125383846317', '01554476744', 'student138@example.com', '$2y$12$XOw9JIrwv.Rjt6lJp1oBw.20sZLc.5RtjPY6GSm5Xi7CzJrEFfv0m', '8624 Hartmann Cliff\nMosesfurt, NJ 44647', '3098 Stroman Forest\nTinaville, AZ 47659', 'ADM-00138', '1989-10-03', 'C', 'Science', '2025-2026', 'Cruickshank, Johnson and Watsica School', 'Prof. Robb Nikolaus DDS', 'Farmer', '01358649393', 'father138@example.com', '8469324418350', 'Verona Kub', 'Businesswoman', '01837571850', 'mother138@example.com', '7309026395481', 'Myah Rath', '01951236580', 'guardian138@example.com', '5764258791897', 'Aunt', 1, 12, 9, '2025-12-24', NULL, 2025000138, 900138, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36', '127.0.0.1', 1, NULL, '2025-12-24 09:39:36', '2025-12-24 09:39:36'),
(139, 'Myrtle', 'Gusikowski', '2014-09-26', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '1319450575179', '01695361124', 'student139@example.com', '$2y$12$N8UcNThmczuJ.i/.0l6K8upex9FZayBHIsz.SC2W3DIXfSGzqmvC6', '2359 Freddy Road\nWest Justyn, VT 92176', '36771 Lori Loaf\nHelmerbury, DC 41450-4106', 'ADM-00139', '2012-09-20', 'C', 'Arts', '2025-2026', 'McLaughlin, Ratke and Koepp School', 'Prof. Leo Homenick DVM', 'Engineer', '01611428260', 'father139@example.com', '2085178214409', 'Megane Collier DVM', 'Housewife', '01892945944', 'mother139@example.com', '0587711594569', 'Mrs. Bernice Gleason IV', '01957166117', 'guardian139@example.com', '0444853326796', 'Sister', 1, 15, 1, '2025-12-24', NULL, 2025000139, 900139, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37', '127.0.0.1', 1, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37'),
(140, 'Madilyn', 'Harvey', '1994-10-02', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '4491130739529', '01380174437', 'student140@example.com', '$2y$12$BTLL2EkFUyL/gXzvTkavNOaAwBiV6/Vs.hivhPp.wIZSXhc5QUGmq', '343 Romaguera Ramp\nGodfreyburgh, DC 47047-5591', '9113 Saige Islands\nTyraburgh, MA 56585-0849', 'ADM-00140', '2009-07-21', 'A', 'Arts', '2025-2026', 'Simonis-Romaguera School', 'Lucio Stiedemann', 'Engineer', '01718833786', 'father140@example.com', '2586834256766', 'Estell Torphy', 'Nurse', '01380111488', 'mother140@example.com', '4746818725249', 'Shayne Kulas', '01536683547', 'guardian140@example.com', '0054291433355', 'Aunt', 1, 17, 10, '2025-12-24', NULL, 2025000140, 900140, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37', '127.0.0.1', 1, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37'),
(141, 'Kamren', 'Renner', '1987-01-28', 'Male', 'A+', 'Islam', 'Bangladeshi', '7266477243868', '01995566106', 'student141@example.com', '$2y$12$yD1oQQjfSVJi6wH.92JvDeeEeItllqSZkKvAaY./6UI0XgvDdHCoq', '7746 Schaden Row Suite 555\nEast Brandonstad, IA 08039', '167 Oliver Forge Suite 672\nNew Sandrine, VA 92522', 'ADM-00141', '1983-12-25', 'B', 'Science', '2025-2026', 'Lemke-Witting School', 'Kurtis Schroeder', 'Farmer', '01757984582', 'father141@example.com', '1213332350889', 'Aylin Miller', 'Nurse', '01708026344', 'mother141@example.com', '6675812842995', 'Mr. Darien Cruickshank', '01310871196', 'guardian141@example.com', '8772420909377', 'Brother', 1, 17, 4, '2025-12-24', NULL, 2025000141, 900141, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37', '127.0.0.1', 1, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37'),
(142, 'Christy', 'Lang', '2003-07-04', 'Male', 'O+', 'Hindu', 'Bangladeshi', '6013078449222', '01789005795', 'student142@example.com', '$2y$12$jNjp9.TE1qB.wWVCihzVZuLTa71uB3HhKYuHSh3za1vBSg359feuW', '4814 Alba Views\nNorth Billie, IN 16541-8033', '87068 Alejandra Stream Apt. 101\nNorth Carolyne, VA 30240', 'ADM-00142', '1993-11-04', 'B', 'Commerce', '2025-2026', 'Hane LLC School', 'Mr. Ross Dickinson Jr.', 'Doctor', '01526305459', 'father142@example.com', '2359979745418', 'Penelope Vandervort', 'Nurse', '01483279748', 'mother142@example.com', '7051029473260', 'Lexus McGlynn', '01367172527', 'guardian142@example.com', '7872434872485', 'Sister', 1, 18, 5, '2025-12-24', NULL, 2025000142, 900142, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37', '127.0.0.1', 1, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37'),
(143, 'Nels', 'Schultz', '2001-03-29', 'Female', 'A+', 'Hindu', 'Bangladeshi', '8339728698758', '01352853609', 'student143@example.com', '$2y$12$J2Uopq.lePBpQXtgrCRDme003zainc70neFn4xBgTWXGXdo.3dsTG', '69031 Dach Forks Apt. 074\nBradlyfort, ID 27900-9844', '12152 Nichole Mountains\nJustinaville, NV 83343', 'ADM-00143', '1996-11-06', 'B', 'Science', '2025-2026', 'Brakus-Hauck School', 'Alfredo Shields', 'Farmer', '01934007871', 'father143@example.com', '9667636952814', 'Estefania Legros', 'Housewife', '01566535616', 'mother143@example.com', '2110363974243', 'Dayton Renner', '01807744201', 'guardian143@example.com', '0539881967006', 'Aunt', 1, 17, 2, '2025-12-24', NULL, 2025000143, 900143, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37', '127.0.0.1', 1, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37'),
(144, 'Davion', 'Yost', '1974-04-21', 'Male', 'AB+', 'Other', 'Bangladeshi', '2993241750204', '01375236987', 'student144@example.com', '$2y$12$HeiA6GrSfRgfCpSY7RXuDOezgTeRcsggK.vfCd/d.JoslOavmlMze', '6248 Bayer Circle\nJacobitown, CA 21285-2019', '8729 Hammes Squares\nGorczanyfurt, PA 25801', 'ADM-00144', '2025-08-14', 'C', 'Arts', '2025-2026', 'Bruen Group School', 'Milo Zboncak III', 'Teacher', '01768841831', 'father144@example.com', '1695990734019', 'Prof. Sasha Jenkins', 'Teacher', '01597136698', 'mother144@example.com', '3997442379300', 'Mae Huels', '01689933197', 'guardian144@example.com', '4127582001895', 'Brother', 1, 16, 7, '2025-12-24', NULL, 2025000144, 900144, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37', '127.0.0.1', 1, NULL, '2025-12-24 09:39:37', '2025-12-24 09:39:37'),
(145, 'Eino', 'Nienow', '2020-10-16', 'Male', 'AB-', 'Christian', 'Bangladeshi', '3113650512750', '01650195851', 'student145@example.com', '$2y$12$vQRKL7CQMRuH539Ab1wNe.75VePqIdMuwCTk7Oramzpm6h1dR2D5y', '69966 Dashawn Coves\nNorth Zora, SD 33290', '2825 Dejah Plaza Suite 548\nAlichester, KY 29898-7357', 'ADM-00145', '2019-01-15', 'B', 'Arts', '2025-2026', 'Kulas Inc School', 'Kyle Bechtelar', 'Engineer', '01803000346', 'father145@example.com', '4817125751606', 'Priscilla Bruen', 'Businesswoman', '01596410158', 'mother145@example.com', '1236841241915', 'Colt Wisozk', '01919437085', 'guardian145@example.com', '6310185346634', 'Grandparent', 1, 18, 2, '2025-12-24', NULL, 2025000145, 900145, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38', '127.0.0.1', 1, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38'),
(146, 'Maya', 'O\'Reilly', '2021-04-22', 'Female', 'B-', 'Hindu', 'Bangladeshi', '0058822816963', '01383350973', 'student146@example.com', '$2y$12$YF/m2m9RlXLA4RmExTg7Aut8kxftHok1Ndwr3EZlMnm7GeVxi4qBC', '5486 Quitzon View\nStantonside, IL 10801-4471', '811 Gussie Islands\nNew Chaimside, MA 49934', 'ADM-00146', '1995-04-09', 'C', 'Arts', '2025-2026', 'Spinka-Pfeffer School', 'Kaden Swift', 'Teacher', '01670214338', 'father146@example.com', '4039550369746', 'Dejah Rohan', 'Teacher', '01378923442', 'mother146@example.com', '5968117783187', 'Jalen Yost', '01384990252', 'guardian146@example.com', '3545542532637', 'Uncle', 1, 14, 8, '2025-12-24', NULL, 2025000146, 900146, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38', '127.0.0.1', 1, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38'),
(147, 'Janiya', 'Wilderman', '2001-08-02', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '0689810887337', '01944927029', 'student147@example.com', '$2y$12$HaccZFDK.5wwFS9X2dvLuulHkIqN2nOAxf6EGnaNjjutoUGkv20AO', '9338 Celestino Fork Suite 511\nMaechester, GA 17762-1848', '217 Grady Ranch Apt. 646\nJaydachester, TN 41459', 'ADM-00147', '2012-05-10', 'A', 'Science', '2025-2026', 'Kertzmann, Hammes and Vandervort School', 'Mr. Jamir Kerluke V', 'Engineer', '01844620452', 'father147@example.com', '1251930640877', 'Clementine Johnson', 'Housewife', '01749433507', 'mother147@example.com', '3133985624050', 'Lilliana Fritsch DVM', '01901256288', 'guardian147@example.com', '5352543993219', 'Grandparent', 1, 15, 8, '2025-12-24', NULL, 2025000147, 900147, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38', '127.0.0.1', 1, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38'),
(148, 'Amanda', 'Hand', '1984-09-20', 'Female', 'O-', 'Hindu', 'Bangladeshi', '9459797985467', '01796034686', 'student148@example.com', '$2y$12$Ped6XEB4vuhL/NOAO0BfmOL38sUSEiandG/9tPXd1B.COcRpg2I3.', '88633 Bobby Heights Suite 232\nLake Tiffany, AR 72889', '5211 Dina Passage\nCotyburgh, PA 86302', 'ADM-00148', '2001-05-04', 'C', 'Arts', '2025-2026', 'Greenfelder-Weissnat School', 'Garth Fay', 'Farmer', '01871221634', 'father148@example.com', '8018226792910', 'Kacie Dickens', 'Teacher', '01996511049', 'mother148@example.com', '4246879728789', 'Molly Gusikowski', '01813966274', 'guardian148@example.com', '0569814965780', 'Brother', 1, 12, 3, '2025-12-24', NULL, 2025000148, 900148, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38', '127.0.0.1', 1, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38'),
(149, 'Lou', 'Quigley', '1973-09-27', 'Female', 'AB+', 'Other', 'Bangladeshi', '1324661042653', '01970196694', 'student149@example.com', '$2y$12$PaL5bPibBU5UKecysXgKE.bQayR69CUCY58.JMYfJH27yTW1bLlzW', '13538 Wilford Ville\nStoltenbergland, DC 20599', '67620 Auer Roads\nGerlachtown, KS 73098', 'ADM-00149', '2020-04-30', 'B', 'Commerce', '2025-2026', 'Stark-McGlynn School', 'Jeramy Bernhard', 'Engineer', '01950930743', 'father149@example.com', '5315408132605', 'Letitia Carter', 'Doctor', '01991104216', 'mother149@example.com', '4459530186138', 'Adrain Bashirian', '01425874869', 'guardian149@example.com', '6709169976099', 'Aunt', 1, 13, 3, '2025-12-24', NULL, 2025000149, 900149, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38', '127.0.0.1', 1, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38'),
(150, 'Blaise', 'Nitzsche', '2019-06-24', 'Female', 'A-', 'Other', 'Bangladeshi', '4556791766545', '01462437824', 'student150@example.com', '$2y$12$Z9I5TVg/4ZrdQmRrw3OpgOL92Kj8PtRosxwokYERqDJBo93sRvUFC', '4100 Casper View\nJeremieton, DE 83208', '8397 Kris Drive\nImogeneshire, WY 69736-0714', 'ADM-00150', '2013-10-04', 'A', 'Science', '2025-2026', 'Bahringer Group School', 'Dusty Orn', 'Farmer', '01744403259', 'father150@example.com', '0781688345297', 'Leola Ratke DVM', 'Nurse', '01733904016', 'mother150@example.com', '1654669806792', 'Prof. Tessie Ruecker', '01536719556', 'guardian150@example.com', '5923759868354', 'Grandparent', 1, 18, 4, '2025-12-24', NULL, 2025000150, 900150, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38', '127.0.0.1', 1, NULL, '2025-12-24 09:39:38', '2025-12-24 09:39:38'),
(151, 'Lauretta', 'Blanda', '2015-03-24', 'Male', 'B+', 'Hindu', 'Bangladeshi', '1474611861750', '01506406182', 'student151@example.com', '$2y$12$gNxEYwLoIHwyPTx5Hk8z.OlQJYNFZ9NNxHO2wJj1RJ8GaVdcRgxI2', '50393 Labadie Forges Apt. 860\nLetastad, AZ 93757', '23300 Heidenreich Trace\nWolffhaven, NV 89212', 'ADM-00151', '2002-12-31', 'A', 'Commerce', '2025-2026', 'Prohaska, Russel and Zemlak School', 'Bud Schultz', 'Businessman', '01615274316', 'father151@example.com', '5645180247873', 'Anita Harvey', 'Businesswoman', '01751007435', 'mother151@example.com', '3550793093791', 'Prof. Okey Ondricka', '01373998606', 'guardian151@example.com', '4704616767195', 'Aunt', 1, 16, 1, '2025-12-24', NULL, 2025000151, 900151, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39', '127.0.0.1', 1, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39'),
(152, 'Jerrod', 'Swift', '2007-11-21', 'Other', 'O+', 'Other', 'Bangladeshi', '5191102172844', '01777089720', 'student152@example.com', '$2y$12$mIFDZ3nkdz9Mt12UssH7Vuwqh6Tn7Q5kBndGfiKPYGBymQmtuOfp.', '99572 Berenice Island\nLake Ilianaton, DC 50366-0884', '6336 Kertzmann Mission Apt. 270\nPort Paris, TX 13172-0194', 'ADM-00152', '2014-11-02', 'B', 'Commerce', '2025-2026', 'Johnston, Leannon and Emard School', 'Koby Rippin DDS', 'Engineer', '01805377365', 'father152@example.com', '8291870572996', 'Kelly Padberg', 'Businesswoman', '01376552287', 'mother152@example.com', '4628830245697', 'Giovani Murphy', '01965666845', 'guardian152@example.com', '3630059027446', 'Grandparent', 1, 9, 6, '2025-12-24', NULL, 2025000152, 900152, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39', '127.0.0.1', 1, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39'),
(153, 'Brittany', 'Greenfelder', '1976-05-09', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '4214459572062', '01874646509', 'student153@example.com', '$2y$12$UmX6h7i4ELxTM08Pk2Ks3e11aY7zpgqkoD.Whjb8VkPl9cy42anpG', '363 Simeon Islands\nNew Carolanneburgh, CT 80063', '33903 Larkin Burgs Apt. 691\nCronaport, AL 73002-4851', 'ADM-00153', '1991-11-23', 'A', 'Arts', '2025-2026', 'Ledner LLC School', 'Ahmed Krajcik', 'Farmer', '01496247608', 'father153@example.com', '9849885266542', 'Mrs. Trycia Jenkins PhD', 'Teacher', '01722439194', 'mother153@example.com', '4730695831471', 'Chance Schaefer', '01551239114', 'guardian153@example.com', '0327193714407', 'Aunt', 1, 13, 9, '2025-12-24', NULL, 2025000153, 900153, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39', '127.0.0.1', 1, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39'),
(154, 'Werner', 'Gulgowski', '1989-09-08', 'Male', 'B+', 'Hindu', 'Bangladeshi', '4878378690438', '01614936135', 'student154@example.com', '$2y$12$fnzpHJ/7CHOSN7aOzGrc..nYWedVmYuN3RcAV3fppo3fg3XML9gCa', '6097 Laney Terrace\nEast Preciousborough, UT 78121-3655', '59340 Weimann Meadow\nPort Humbertoshire, TN 89571', 'ADM-00154', '1991-05-30', 'C', 'Arts', '2025-2026', 'Monahan-Schulist School', 'Mr. Jeromy Huels MD', 'Businessman', '01394755291', 'father154@example.com', '6986997639909', 'Miss Wilhelmine Doyle', 'Teacher', '01661114765', 'mother154@example.com', '0660300219578', 'Mr. Donavon Brown MD', '01926514305', 'guardian154@example.com', '2223014510360', 'Uncle', 1, 17, 7, '2025-12-24', NULL, 2025000154, 900154, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39', '127.0.0.1', 1, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39'),
(155, 'Jeanne', 'Terry', '2008-04-01', 'Male', 'A+', 'Christian', 'Bangladeshi', '2488738831488', '01486656583', 'student155@example.com', '$2y$12$V/r43LPYe5v.TbDmWFWcSugoqk1KL/VvGSWNMalgupWgVd4upoDkq', '6803 Koelpin Road\nBatzside, MI 72280-5647', '132 Buckridge Place\nCortezfort, ME 71469-4394', 'ADM-00155', '1990-05-05', 'C', 'Commerce', '2025-2026', 'Roberts-Feest School', 'Jordon Dibbert', 'Businessman', '01310739633', 'father155@example.com', '6620526182052', 'Dr. Tressa Emmerich', 'Businesswoman', '01808188117', 'mother155@example.com', '4713594066779', 'Mr. Ellis Streich', '01927386966', 'guardian155@example.com', '7108203183692', 'Uncle', 1, 10, 6, '2025-12-24', NULL, 2025000155, 900155, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39', '127.0.0.1', 1, NULL, '2025-12-24 09:39:39', '2025-12-24 09:39:39'),
(156, 'Kianna', 'Vandervort', '2025-01-07', 'Male', 'O-', 'Islam', 'Bangladeshi', '2031306395902', '01632823136', 'student156@example.com', '$2y$12$Y2jmmxW1Me5Ekti1pIVK3OTjISOSlWCIVQi3z5OSA6gt9T7hrSuje', '47400 Raynor Dam Suite 645\nEast Arnoldtown, NV 38237', '4815 Jaskolski Point\nEast Rebafort, TX 09043', 'ADM-00156', '2024-03-10', 'A', 'Commerce', '2025-2026', 'Conroy-Collier School', 'Prof. Rudolph Bahringer IV', 'Businessman', '01575303233', 'father156@example.com', '3685859247241', 'Judy Schaefer', 'Nurse', '01694357300', 'mother156@example.com', '1964256904401', 'Ben Koss', '01872000300', 'guardian156@example.com', '5596566854315', 'Uncle', 1, 18, 10, '2025-12-24', NULL, 2025000156, 900156, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40', '127.0.0.1', 1, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40'),
(157, 'Norbert', 'Bode', '1979-05-09', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '5864352219116', '01758430529', 'student157@example.com', '$2y$12$jVyZdKlH/xthE9Enq336heyPVsg4rtgul6uIdaRiL.ZpfLphMTk1i', '367 Arnulfo Run\nNew Imanitown, LA 56602-8416', '9509 Arlo Ridges\nPort Terenceville, UT 09863', 'ADM-00157', '1979-08-17', 'C', 'Science', '2025-2026', 'Larkin, Abernathy and Muller School', 'Johnpaul Homenick I', 'Businessman', '01441083137', 'father157@example.com', '4871579567000', 'Susan Davis', 'Nurse', '01537703617', 'mother157@example.com', '5902182080329', 'Reina Schultz', '01875737280', 'guardian157@example.com', '5224683844295', 'Sister', 1, 19, 2, '2025-12-24', NULL, 2025000157, 900157, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40', '127.0.0.1', 1, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40'),
(158, 'Gardner', 'Borer', '2019-03-27', 'Female', 'O+', 'Buddhist', 'Bangladeshi', '0194806734878', '01655360918', 'student158@example.com', '$2y$12$nkSAz5TgvdcBWYmHArJukeFl9UxtfGa1nB9ElPtzF4Z/MBKO/8FUq', '673 Xavier Rapids\nNew Vern, CT 10697', '64722 Madaline Spur\nOberbrunnerberg, FL 91123-8275', 'ADM-00158', '1983-08-30', 'A', 'Commerce', '2025-2026', 'Glover Group School', 'Roel Swaniawski', 'Teacher', '01406357596', 'father158@example.com', '9759643036001', 'Prof. Daniela Herzog', 'Teacher', '01694888504', 'mother158@example.com', '4155709136788', 'Pierre Kozey', '01951719016', 'guardian158@example.com', '8148578534150', 'Aunt', 1, 19, 5, '2025-12-24', NULL, 2025000158, 900158, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40', '127.0.0.1', 1, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40'),
(159, 'Pete', 'Schowalter', '2003-09-20', 'Other', 'AB+', 'Other', 'Bangladeshi', '4243423029665', '01699277875', 'student159@example.com', '$2y$12$NRK6RXdTbhEhEdVLoNVH5eXhE4L3c6hgoqTwNI273DQAaNEHtHdLm', '883 Jody Road\nSouth Ransom, AL 28223', '78070 Reinger Station\nNorth Eric, AK 58205', 'ADM-00159', '1980-12-06', 'C', 'Arts', '2025-2026', 'Lehner, Haley and Lebsack School', 'Ole Hermann', 'Businessman', '01601204758', 'father159@example.com', '2041472039416', 'Ernestina Rath', 'Nurse', '01500997598', 'mother159@example.com', '7188925581171', 'Cody Gislason', '01883871801', 'guardian159@example.com', '8485271832694', 'Grandparent', 1, 16, 8, '2025-12-24', NULL, 2025000159, 900159, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40', '127.0.0.1', 1, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40'),
(160, 'Domingo', 'Farrell', '2001-02-10', 'Female', 'O+', 'Hindu', 'Bangladeshi', '7665146622956', '01688822756', 'student160@example.com', '$2y$12$2gfkFh/b25QyWzf5j1yPNelhm.E.8EJv3Kw1rRlqFcfTLFcaH7d6K', '236 Kathryn Inlet Apt. 634\nTurcottemouth, RI 59093-3486', '80889 Liam Drives\nNorth Kirkton, NY 55136-3114', 'ADM-00160', '1988-09-21', 'B', 'Commerce', '2025-2026', 'Prohaska-Ullrich School', 'Prof. Oran Ebert DVM', 'Engineer', '01305369346', 'father160@example.com', '7972092524523', 'Dr. Rosina Bergstrom', 'Nurse', '01302863581', 'mother160@example.com', '3745727068643', 'Jackie Parker', '01803027449', 'guardian160@example.com', '3743086519321', 'Aunt', 1, 14, 9, '2025-12-24', NULL, 2025000160, 900160, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40', '127.0.0.1', 1, NULL, '2025-12-24 09:39:40', '2025-12-24 09:39:40'),
(161, 'Eunice', 'Zboncak', '1989-10-20', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '5252835768656', '01403012449', 'student161@example.com', '$2y$12$PeqaJdGIDSZIU3IYBzizguwVaJdx9J3NNgCix9f1LOo95x496rfzG', '11523 Rutherford Union\nRettashire, DE 17593', '43685 Gibson Crescent Apt. 918\nLianaview, ID 37144-8638', 'ADM-00161', '2024-12-14', 'C', 'Science', '2025-2026', 'Green-Graham School', 'Prof. Ransom Herman', 'Farmer', '01760086022', 'father161@example.com', '4431893732789', 'Anahi Pfeffer', 'Nurse', '01817622468', 'mother161@example.com', '1194527418588', 'Joseph Kovacek DVM', '01911301409', 'guardian161@example.com', '2867229395140', 'Sister', 1, 15, 9, '2025-12-24', NULL, 2025000161, 900161, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41', '127.0.0.1', 1, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41'),
(162, 'Matilde', 'Mann', '2017-07-18', 'Other', 'O-', 'Hindu', 'Bangladeshi', '9758414279347', '01759210949', 'student162@example.com', '$2y$12$k8vK7qjaVlNTc6V/CT9aLuSbDZrKzhn21Q8gVjgjkpRrDZeHn8CIW', '63580 Brekke Crossing Apt. 273\nDestinystad, AR 61339-7171', '81484 Hadley Corners Suite 356\nMaybellchester, NH 64500', 'ADM-00162', '2010-11-10', 'B', 'Science', '2025-2026', 'Bruen LLC School', 'Rhiannon Hauck', 'Engineer', '01910870699', 'father162@example.com', '0117589191697', 'Lauretta West I', 'Teacher', '01761860324', 'mother162@example.com', '2197131579202', 'Damien Sawayn', '01346761092', 'guardian162@example.com', '2874357843099', 'Brother', 1, 19, 10, '2025-12-24', NULL, 2025000162, 900162, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41', '127.0.0.1', 1, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41'),
(163, 'Leanne', 'Gorczany', '2002-07-04', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '4203197536178', '01758894892', 'student163@example.com', '$2y$12$XcYjk458SoWhRK90STP58uVB5dhbf1xuZYZVFCTpTIW4kavMFk14K', '9945 Ben Gateway Suite 223\nEast Geovanniburgh, NC 11473', '95150 Hagenes Views\nBernieceborough, OR 99192', 'ADM-00163', '1990-11-21', 'C', 'Commerce', '2025-2026', 'Cremin-Crist School', 'Nicholaus Mosciski', 'Engineer', '01311347337', 'father163@example.com', '7997932794948', 'Eulah Leannon DDS', 'Teacher', '01456307687', 'mother163@example.com', '1437958395464', 'Ismael Adams', '01536065182', 'guardian163@example.com', '6577875740938', 'Grandparent', 1, 20, 5, '2025-12-24', NULL, 2025000163, 900163, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41', '127.0.0.1', 1, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41'),
(164, 'Aric', 'Denesik', '2022-09-29', 'Female', 'B+', 'Hindu', 'Bangladeshi', '4325694072097', '01831454164', 'student164@example.com', '$2y$12$f8.DxVKf63qAUXhtKZPwVODG40JHRpJ2hsWgwWxiDZdKvqxjG7hwW', '6915 Mante Lodge Suite 383\nPacochabury, UT 48819-2988', '2822 Amber Manor Apt. 798\nConsuelomouth, NC 16720', 'ADM-00164', '2015-10-19', 'A', 'Commerce', '2025-2026', 'Romaguera, O\'Hara and Parker School', 'Jarred Sanford PhD', 'Teacher', '01977184818', 'father164@example.com', '4328175050926', 'Gloria Howe', 'Teacher', '01879521736', 'mother164@example.com', '9022920229997', 'Fred O\'Conner', '01652594688', 'guardian164@example.com', '5584082909606', 'Uncle', 1, 17, 8, '2025-12-24', NULL, 2025000164, 900164, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41', '127.0.0.1', 1, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41'),
(165, 'Cayla', 'Pfeffer', '2020-01-14', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '1738223038094', '01911022708', 'student165@example.com', '$2y$12$HDKbq9ledM9GcLQCYuUzDeb/oo4x123tG0jS0jkJvW.L1hehrHa2G', '269 Conner Squares Apt. 852\nHalvorsonchester, NJ 58672-8966', '395 Conroy Springs\nNorth Lorenaborough, DE 87790-7533', 'ADM-00165', '1997-06-12', 'C', 'Arts', '2025-2026', 'Morissette PLC School', 'Gus Kuphal', 'Engineer', '01562098925', 'father165@example.com', '0400480070913', 'Dr. Sandrine Hamill', 'Housewife', '01661236723', 'mother165@example.com', '9874573405063', 'Citlalli Bosco', '01393788670', 'guardian165@example.com', '4397714718546', 'Brother', 1, 14, 3, '2025-12-24', NULL, 2025000165, 900165, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41', '127.0.0.1', 1, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41'),
(166, 'Ardith', 'Langworth', '2019-01-21', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '7884854900393', '01956791106', 'student166@example.com', '$2y$12$7zilrrVDo9mN/l33H4XXe.KuciJq9aBQUut4az8m.8DbzYdqxkkKy', '724 Reilly Port Suite 138\nEast Rafaela, WI 53790-0223', '617 Alison Brooks Suite 587\nMarieborough, MN 49079', 'ADM-00166', '2024-08-10', 'C', 'Science', '2025-2026', 'Koss-Langworth School', 'Prof. Robbie Bayer', 'Engineer', '01659964447', 'father166@example.com', '3142377780316', 'Ms. Dulce Heaney', 'Nurse', '01565649108', 'mother166@example.com', '9010719123121', 'Jannie Pacocha V', '01939052570', 'guardian166@example.com', '9771724918211', 'Sister', 1, 20, 10, '2025-12-24', NULL, 2025000166, 900166, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41', '127.0.0.1', 1, NULL, '2025-12-24 09:39:41', '2025-12-24 09:39:41'),
(167, 'Danielle', 'Abernathy', '2021-06-18', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '3851688246472', '01704549766', 'student167@example.com', '$2y$12$s8yvrx5eFxVax5QHkdxk5e5Q4elE0S4.Rm70UPWsj2SosTgxj3/nK', '2619 Weissnat Square Suite 048\nFramiburgh, SD 40277', '855 Armstrong Cliffs\nGaylordshire, FL 18596-0699', 'ADM-00167', '1982-05-29', 'A', 'Science', '2025-2026', 'Kerluke Group School', 'Mr. Jermain Nicolas', 'Businessman', '01837731629', 'father167@example.com', '8030612003893', 'Miss Dovie Balistreri', 'Doctor', '01578151470', 'mother167@example.com', '3523154015807', 'Ms. Amina Leffler', '01615012844', 'guardian167@example.com', '4559439003266', 'Sister', 1, 11, 6, '2025-12-24', NULL, 2025000167, 900167, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42', '127.0.0.1', 1, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42'),
(168, 'Sydney', 'Schumm', '2009-11-26', 'Other', 'O+', 'Christian', 'Bangladeshi', '8995312125306', '01866553419', 'student168@example.com', '$2y$12$GULeVTqDqM1/u6qGYpAQ.uS3xMqBMxFFBGIAuOdk9rFdC2N9Nd0UC', '51297 Sawayn Pines Apt. 418\nDulcemouth, WV 11682', '16137 Yessenia Mission Apt. 268\nTrompport, VA 08212', 'ADM-00168', '2011-12-08', 'A', 'Science', '2025-2026', 'Gleichner Group School', 'Kiley Frami', 'Farmer', '01936487118', 'father168@example.com', '3269048563620', 'Dr. Elnora Mosciski DVM', 'Nurse', '01819082616', 'mother168@example.com', '5448295474214', 'Miss Ivah Rau', '01410271917', 'guardian168@example.com', '7490616395289', 'Uncle', 1, 20, 2, '2025-12-24', NULL, 2025000168, 900168, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42', '127.0.0.1', 1, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42'),
(169, 'Ashleigh', 'Marvin', '1991-12-15', 'Male', 'O-', 'Christian', 'Bangladeshi', '7053751678641', '01878075659', 'student169@example.com', '$2y$12$myABmsr2/ztFN6jA/8zx8.o3iH.QTWWrKBtJYkmigQLpU2hJkrzXe', '59625 Russ Bypass\nMarcellemouth, NJ 81622', '50076 Carroll Oval Apt. 476\nPort Seamus, PA 15946', 'ADM-00169', '2021-01-20', 'B', 'Commerce', '2025-2026', 'Ebert, Jenkins and Gottlieb School', 'Elroy Little', 'Doctor', '01620948157', 'father169@example.com', '7976571525097', 'Ms. Yesenia Bashirian', 'Nurse', '01358115192', 'mother169@example.com', '1614445293428', 'Abigale DuBuque', '01838761825', 'guardian169@example.com', '7140106732772', 'Uncle', 1, 18, 8, '2025-12-24', NULL, 2025000169, 900169, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42', '127.0.0.1', 1, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42'),
(170, 'Gregorio', 'Ankunding', '1974-12-02', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '4401879833457', '01696903931', 'student170@example.com', '$2y$12$..pFMY3k1IIr4VpIahS7f.Y0rE2ZZSdqKlm7uMR4woqE3pM9ZWc02', '9457 Rolfson Crossroad Apt. 820\nNorth Yasmeenton, NE 10386', '577 Rice Land Apt. 324\nCroninstad, VT 79145', 'ADM-00170', '1979-11-13', 'C', 'Science', '2025-2026', 'Torp, Ebert and Stanton School', 'Wilford Hill', 'Farmer', '01869335325', 'father170@example.com', '4221898805484', 'Lessie Smitham', 'Businesswoman', '01741687130', 'mother170@example.com', '9192679639352', 'Peggie Donnelly', '01342690039', 'guardian170@example.com', '7282505912074', 'Sister', 1, 16, 9, '2025-12-24', NULL, 2025000170, 900170, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42', '127.0.0.1', 1, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42'),
(171, 'Genevieve', 'Carroll', '2001-10-12', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '6309065498036', '01459258487', 'student171@example.com', '$2y$12$G9w0MeBqzUUJGaCOszxSTOAZoUhzMiOLgjH7mGUfW6wbiaaA32Yae', '7624 Brendon Camp\nEast Viola, WY 57029', '16007 Jones Forges\nEast Kelley, DC 10721-3779', 'ADM-00171', '2023-04-29', 'C', 'Science', '2025-2026', 'Hartmann, Bednar and Torphy School', 'Mr. Reginald Littel', 'Farmer', '01463205533', 'father171@example.com', '9589702555886', 'Janet Bergnaum', 'Doctor', '01500218396', 'mother171@example.com', '9974392947160', 'Irma Schuppe IV', '01516865247', 'guardian171@example.com', '1978427051338', 'Grandparent', 1, 17, 1, '2025-12-24', NULL, 2025000171, 900171, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42', '127.0.0.1', 1, NULL, '2025-12-24 09:39:42', '2025-12-24 09:39:42'),
(172, 'Yvonne', 'Bradtke', '2001-02-05', 'Female', 'A+', 'Hindu', 'Bangladeshi', '6411720269410', '01912430354', 'student172@example.com', '$2y$12$xO6XOc9cbq8n7m0qMCXjfu6gZIZLaXeos1VCApanPfEpMM/l.q7nu', '7069 Isobel Circle Apt. 334\nAlyciastad, RI 46371', '165 Ruth Ferry Suite 736\nGladycestad, CO 85846-0467', 'ADM-00172', '2012-01-07', 'B', 'Commerce', '2025-2026', 'Dickinson, Hagenes and Carroll School', 'Prof. Mathew Moen', 'Farmer', '01672977035', 'father172@example.com', '6934523763816', 'Ethyl Rau', 'Businesswoman', '01463652023', 'mother172@example.com', '7533735109930', 'Sven Gerhold', '01391315530', 'guardian172@example.com', '9956718967406', 'Uncle', 1, 21, 10, '2025-12-24', NULL, 2025000172, 900172, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43', '127.0.0.1', 1, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `admission_no`, `admission_date`, `section`, `group`, `session_year`, `previous_school`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(173, 'Marcelo', 'Aufderhar', '2007-12-28', 'Male', 'B+', 'Other', 'Bangladeshi', '4597110886252', '01621244163', 'student173@example.com', '$2y$12$TlXBByvdc7d/MsWOokGvJ.M4dXqJ06sNdZ34QxM5eS4ZZ6GDAYX5K', '6580 Westley Corner Apt. 380\nAlexanderville, ME 05734-1160', '145 Robel Route\nSouth Geo, NY 71895-9795', 'ADM-00173', '1988-07-04', 'C', 'Arts', '2025-2026', 'Marks, Bayer and Waters School', 'Prof. John Kris', 'Engineer', '01963978601', 'father173@example.com', '0406584138521', 'Kiarra Corkery', 'Nurse', '01751676350', 'mother173@example.com', '0960919166149', 'Lourdes Tillman', '01631519774', 'guardian173@example.com', '6943419306898', 'Aunt', 1, 18, 1, '2025-12-24', NULL, 2025000173, 900173, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43', '127.0.0.1', 1, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43'),
(174, 'Torrance', 'Schowalter', '1986-11-24', 'Male', 'O-', 'Islam', 'Bangladeshi', '4487191807660', '01666566081', 'student174@example.com', '$2y$12$5d7mK4d7pcTNmYT8MnY7K.7.oT9kf7GxH.s2EFyGI9w0jY5kV9Gia', '2158 Legros Mission\nKochfort, SD 34859-3713', '390 Winston Plaza Apt. 770\nPort Keshaun, WI 11459', 'ADM-00174', '1992-08-11', 'B', 'Arts', '2025-2026', 'Yundt, Wintheiser and Hand School', 'Cristina Deckow', 'Engineer', '01395701622', 'father174@example.com', '6271143841030', 'Angeline Kautzer', 'Teacher', '01366537408', 'mother174@example.com', '2234262072248', 'Verlie Pfeffer DDS', '01519602045', 'guardian174@example.com', '5326007189293', 'Aunt', 1, 18, 7, '2025-12-24', NULL, 2025000174, 900174, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43', '127.0.0.1', 1, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43'),
(175, 'Jazmin', 'Braun', '1972-05-22', 'Female', 'B+', 'Other', 'Bangladeshi', '4341803778288', '01606023585', 'student175@example.com', '$2y$12$ZH/T4H48AhioAAKP4CYEUuZ7poD1YBQ2W1PCEQoZ0/4QcbEqm88EG', '58263 Reginald Valleys Suite 474\nEast Clarissashire, NE 82359', '90609 Adrain Courts Apt. 124\nGottliebchester, AL 80524-8356', 'ADM-00175', '1979-06-01', 'B', 'Arts', '2025-2026', 'Davis, Hills and Lubowitz School', 'Dr. Lucas Kulas MD', 'Businessman', '01753619918', 'father175@example.com', '5118609419234', 'Clementine Boyer', 'Nurse', '01776652525', 'mother175@example.com', '8868920521904', 'Ryder Wiza', '01925643214', 'guardian175@example.com', '9009810781805', 'Sister', 1, 22, 10, '2025-12-24', NULL, 2025000175, 900175, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43', '127.0.0.1', 1, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43'),
(176, 'Jamel', 'Christiansen', '1988-10-10', 'Female', 'B-', 'Other', 'Bangladeshi', '4901710994805', '01410027024', 'student176@example.com', '$2y$12$KZMRaQAZA6LD2uWPgeWx5.8IaFGVqIAKwcNVAtaVZLXO5p6P5/q1u', '518 Veum Estate Suite 596\nNicolasburgh, AL 36907', '3496 Samir Glen Apt. 511\nKingchester, WV 02837-8382', 'ADM-00176', '1984-05-18', 'A', 'Arts', '2025-2026', 'Bergnaum Group School', 'Prof. Brandt Runolfsson', 'Teacher', '01715957223', 'father176@example.com', '8081210810822', 'Amber Dach', 'Nurse', '01438178851', 'mother176@example.com', '3392129375359', 'Elizabeth Flatley Jr.', '01817137235', 'guardian176@example.com', '2498636260128', 'Brother', 1, 17, 9, '2025-12-24', NULL, 2025000176, 900176, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43', '127.0.0.1', 1, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43'),
(177, 'Olen', 'Lang', '1971-06-28', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '6068659638868', '01825553511', 'student177@example.com', '$2y$12$bmOH4GAhqMUg5yEgTAlrW.hbIvwIkOCxK2BuPzXont3sdjklbOu0y', '855 Aiden Stream\nSouth Hassieview, ME 13836', '54467 Huel Viaduct Suite 219\nHoweville, OK 20190', 'ADM-00177', '1974-03-28', 'C', 'Science', '2025-2026', 'Deckow LLC School', 'Ward Schowalter', 'Teacher', '01955568463', 'father177@example.com', '5667541470004', 'Prof. Ayana Feeney DVM', 'Nurse', '01311444398', 'mother177@example.com', '5089442925157', 'Prof. Shawn Grant V', '01688997893', 'guardian177@example.com', '3036183975195', 'Aunt', 1, 18, 9, '2025-12-24', NULL, 2025000177, 900177, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43', '127.0.0.1', 1, NULL, '2025-12-24 09:39:43', '2025-12-24 09:39:43'),
(178, 'Justina', 'Bergstrom', '1972-08-27', 'Female', 'O-', 'Islam', 'Bangladeshi', '2406341369407', '01408475036', 'student178@example.com', '$2y$12$HLJMZZSTqQyJhfDWpDFUDejCecKRloz3VQ93NI13jBu0pduMnptJu', '893 Everette Spring Apt. 200\nLake Carolanneshire, KS 27807-5474', '47299 Davin Freeway\nGunnerborough, PA 32643-3921', 'ADM-00178', '1978-09-25', 'B', 'Commerce', '2025-2026', 'Franecki-Feil School', 'Dr. Benton Schulist Jr.', 'Teacher', '01680290032', 'father178@example.com', '9424102967632', 'Frida Cummings MD', 'Teacher', '01958098622', 'mother178@example.com', '5922017881532', 'Ruthe Hansen IV', '01492588745', 'guardian178@example.com', '1230001268247', 'Uncle', 1, 19, 1, '2025-12-24', NULL, 2025000178, 900178, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44', '127.0.0.1', 1, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44'),
(179, 'Claudine', 'Mills', '1972-01-18', 'Male', 'B-', 'Islam', 'Bangladeshi', '7872561975438', '01688162937', 'student179@example.com', '$2y$12$eCthYWHcS1nyqPHPFYONAeJBzB7H1cYfhiJKdzEb6EMz0PbIaXm/K', '8617 Walsh Key Apt. 768\nPatsystad, NV 35658-8456', '61693 Bertram Circle Apt. 770\nWest America, OH 02308-7108', 'ADM-00179', '2013-07-11', 'A', 'Science', '2025-2026', 'Murphy-Christiansen School', 'Emmet Conroy II', 'Doctor', '01553406693', 'father179@example.com', '5580231039075', 'Loma Ritchie II', 'Doctor', '01542412255', 'mother179@example.com', '9234063796628', 'Garret Hermiston', '01491739848', 'guardian179@example.com', '3675996913028', 'Sister', 1, 19, 4, '2025-12-24', NULL, 2025000179, 900179, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44', '127.0.0.1', 1, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44'),
(180, 'Odell', 'Cremin', '1972-10-27', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '1815220190920', '01961571207', 'student180@example.com', '$2y$12$m8n9iRX9OsRjS3lCoHvDVOEs2Fp/3w3.AQn.X1bx7HPvZpcJPCGgS', '81177 Holly Springs Suite 124\nEast Oran, DC 36408', '1787 Thompson Harbors Suite 558\nWest Teresaview, DE 19447-9893', 'ADM-00180', '2004-11-11', 'C', 'Arts', '2025-2026', 'Rodriguez, Kessler and Mante School', 'Mr. Marquis Rosenbaum III', 'Teacher', '01510555963', 'father180@example.com', '2433677664556', 'Ashley Jacobi', 'Businesswoman', '01800677316', 'mother180@example.com', '9471339790700', 'Macy Effertz IV', '01374036242', 'guardian180@example.com', '7566812055524', 'Sister', 1, 15, 3, '2025-12-24', NULL, 2025000180, 900180, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44', '127.0.0.1', 1, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44'),
(181, 'Bertha', 'Lueilwitz', '1998-11-01', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '7649101930553', '01441246322', 'student181@example.com', '$2y$12$6pEOsBVwC.63udWdSylfOO0r5reoIce.30fIgi8KLZ9osCemEoO6W', '43279 Parker Circles Apt. 412\nNew Diamond, IA 08726', '422 Jennifer Spring Suite 482\nLake Raulfort, OH 67379-2388', 'ADM-00181', '1985-04-08', 'A', 'Arts', '2025-2026', 'D\'Amore Inc School', 'Weston Koch Jr.', 'Farmer', '01414594303', 'father181@example.com', '8394818372440', 'Janie Spinka', 'Housewife', '01817425535', 'mother181@example.com', '3925600273296', 'Lenna Runte', '01910360800', 'guardian181@example.com', '5390109024789', 'Uncle', 1, 19, 7, '2025-12-24', NULL, 2025000181, 900181, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44', '127.0.0.1', 1, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44'),
(182, 'Marisa', 'Hamill', '2025-05-31', 'Other', 'AB+', 'Islam', 'Bangladeshi', '8527407608987', '01843207745', 'student182@example.com', '$2y$12$6JzlrsjyggtQd1T/eQhYIeow9PqLX5oyV9T4wSClpxm2/RW8l9NE2', '7963 Natalie Bridge\nJoshuaview, MS 12895', '4775 Sofia Island\nSouth Ramona, WI 38707-1128', 'ADM-00182', '1995-04-01', 'A', 'Arts', '2025-2026', 'Wolff, McGlynn and Braun School', 'Prof. Beau Johns MD', 'Teacher', '01941226999', 'father182@example.com', '4733526176718', 'Edwina Johnson', 'Housewife', '01372254341', 'mother182@example.com', '3715467725534', 'Elian Lind', '01427147791', 'guardian182@example.com', '5388141152232', 'Brother', 1, 19, 8, '2025-12-24', NULL, 2025000182, 900182, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44', '127.0.0.1', 1, NULL, '2025-12-24 09:39:44', '2025-12-24 09:39:44'),
(183, 'Cordelia', 'Schroeder', '2002-01-21', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '9441418275549', '01816774857', 'student183@example.com', '$2y$12$r4Znxl8z6Y9rjqG8PHT8IeczJXbmQxLfwOdVX0rry8jMhhlnss/NG', '74904 Walter Pass Apt. 432\nLake Rodger, DE 95766', '7316 Claudine Camp\nEast Mistyfurt, CT 70278', 'ADM-00183', '1986-08-28', 'B', 'Arts', '2025-2026', 'Bogisich Ltd School', 'Kiley Predovic', 'Farmer', '01318403964', 'father183@example.com', '3668390966787', 'Miss Brandyn Gutkowski', 'Housewife', '01552800638', 'mother183@example.com', '2902618230729', 'Prof. Osvaldo Howe', '01929260786', 'guardian183@example.com', '9891265141331', 'Grandparent', 1, 16, 3, '2025-12-24', NULL, 2025000183, 900183, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45', '127.0.0.1', 1, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45'),
(184, 'Kelli', 'Cremin', '2000-02-20', 'Other', 'B-', 'Buddhist', 'Bangladeshi', '6531713085457', '01386482394', 'student184@example.com', '$2y$12$FNQ4dn8kbZV.YfG8aw7pD.Ls8urBa5KJkz5qQVfchatSp0hMrjnvK', '5732 Goldner Expressway Suite 303\nWolfhaven, AK 31627-4550', '75476 Amaya Square Suite 332\nNorth Desmond, OH 88323', 'ADM-00184', '1977-02-28', 'C', 'Commerce', '2025-2026', 'Lemke Inc School', 'Immanuel Hills', 'Businessman', '01561896930', 'father184@example.com', '0957956039954', 'Dr. Maddison Yundt', 'Businesswoman', '01688283036', 'mother184@example.com', '0668986661317', 'Prof. Jonathon VonRueden', '01963936683', 'guardian184@example.com', '1029543425749', 'Aunt', 1, 23, 10, '2025-12-24', NULL, 2025000184, 900184, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45', '127.0.0.1', 1, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45'),
(185, 'Ryley', 'Schroeder', '1971-08-13', 'Other', 'O+', 'Islam', 'Bangladeshi', '6760523365300', '01975084693', 'student185@example.com', '$2y$12$oBxOdiwB7MqEe8PXEXcjPepmW16FR7VVyZz5fEswa4EKpW.15jlx.', '2470 Conn Cliffs\nPort Marilou, OH 83143', '3175 Fay Trail\nWest Barney, AR 01275-8391', 'ADM-00185', '2007-12-03', 'A', 'Science', '2025-2026', 'Shields, Zulauf and Ankunding School', 'Tre Macejkovic', 'Businessman', '01817936087', 'father185@example.com', '1139906525103', 'Dr. Dominique Kihn V', 'Housewife', '01657047225', 'mother185@example.com', '8945617982766', 'Chauncey Waters Jr.', '01652831546', 'guardian185@example.com', '7482589295392', 'Aunt', 1, 20, 1, '2025-12-24', NULL, 2025000185, 900185, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45', '127.0.0.1', 1, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45'),
(186, 'Maeve', 'Fahey', '2013-04-26', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '8956543764584', '01609550048', 'student186@example.com', '$2y$12$QABcBARkJLh043dpClhYlumMc3/oDsSaKvoqgmDwrH7ra1Kw.cGJG', '454 O\'Conner Trafficway\nNew Chanel, NJ 93912', '26671 Gulgowski Parkways Apt. 435\nBruenport, MS 46508-8766', 'ADM-00186', '1980-01-24', 'B', 'Arts', '2025-2026', 'Aufderhar PLC School', 'Prof. Rodrick VonRueden', 'Doctor', '01949986345', 'father186@example.com', '7334578374287', 'Alysa Johnson III', 'Nurse', '01970036212', 'mother186@example.com', '4449055463529', 'Mercedes Buckridge', '01662981961', 'guardian186@example.com', '3522851173475', 'Uncle', 1, 21, 5, '2025-12-24', NULL, 2025000186, 900186, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45', '127.0.0.1', 1, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45'),
(187, 'Adela', 'Kessler', '1976-10-31', 'Other', 'AB-', 'Christian', 'Bangladeshi', '5593744280894', '01898940342', 'student187@example.com', '$2y$12$eW1UhEa6KI4.j5Go8YUIcOZxGUgWwrULGs/RoCNfRVMfRvkHDG7nS', '614 Yundt Plaza Suite 449\nHesselhaven, IN 58902-8004', '5096 Hammes Roads\nPort Tiaside, NE 78811-2901', 'ADM-00187', '1992-11-17', 'A', 'Commerce', '2025-2026', 'Dietrich-Kunze School', 'Sigmund Conroy', 'Engineer', '01423633773', 'father187@example.com', '9230506788148', 'Lorine Ortiz', 'Housewife', '01541430879', 'mother187@example.com', '2024353866315', 'Una Harber I', '01977714600', 'guardian187@example.com', '2931906462340', 'Sister', 1, 19, 9, '2025-12-24', NULL, 2025000187, 900187, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45', '127.0.0.1', 1, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45'),
(188, 'Josefina', 'Hills', '2018-10-10', 'Male', 'O+', 'Islam', 'Bangladeshi', '9996957491377', '01975608952', 'student188@example.com', '$2y$12$3N3TxGUilDqM6FFhUo.YhuUg4gUG2xDq3qPVv3Nk9b/wP.7uaYb1G', '6784 Garnett Villages\nWest Mellie, AR 24352-3856', '2777 Jakubowski Locks\nNew Bobbie, MN 15140', 'ADM-00188', '1971-11-29', 'B', 'Science', '2025-2026', 'Schmidt, Robel and Mueller School', 'Isaiah Wuckert', 'Farmer', '01361020171', 'father188@example.com', '0545938814615', 'Ocie Collins', 'Housewife', '01874094718', 'mother188@example.com', '7107331787701', 'Miss Baby Stehr MD', '01356552455', 'guardian188@example.com', '7527908978071', 'Grandparent', 1, 20, 4, '2025-12-24', NULL, 2025000188, 900188, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45', '127.0.0.1', 1, NULL, '2025-12-24 09:39:45', '2025-12-24 09:39:45'),
(189, 'Hortense', 'Bogan', '2016-06-15', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '1700769377302', '01727849628', 'student189@example.com', '$2y$12$O4MvGor83SLQKQYK6oxiWu2gQ0DT/654g0bhkfzbBLHP56fpghlyq', '4749 Leanna Greens Suite 290\nWest Dalton, NH 55813', '27664 Monahan Key Suite 742\nJanelleton, NC 29692', 'ADM-00189', '2025-05-14', 'A', 'Commerce', '2025-2026', 'Schmidt-Beahan School', 'Wallace Treutel', 'Doctor', '01928274260', 'father189@example.com', '7636170987965', 'Prof. Margaretta Frami PhD', 'Nurse', '01923107001', 'mother189@example.com', '4310041509677', 'Stanford Marvin DDS', '01492666912', 'guardian189@example.com', '8046248588376', 'Aunt', 1, 20, 9, '2025-12-24', NULL, 2025000189, 900189, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46', '127.0.0.1', 1, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46'),
(190, 'Irma', 'Wiegand', '1973-03-17', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '9537829284066', '01543793031', 'student190@example.com', '$2y$12$gcb5U/3jS9nTHZuuP.jBhu82KuK9zj5/eLz.P9GQAccSiNfcX/6rS', '74792 Schmitt Plaza\nNorth Nobleland, MT 68987', '93805 Lemuel Court Apt. 436\nLake Oma, TX 47998', 'ADM-00190', '1975-05-05', 'B', 'Science', '2025-2026', 'Cremin, O\'Keefe and Cummerata School', 'Grover Shanahan', 'Teacher', '01726247793', 'father190@example.com', '3093398434745', 'Angela Prosacco', 'Nurse', '01686914690', 'mother190@example.com', '6085723103289', 'Ms. Carlie Nitzsche', '01939208956', 'guardian190@example.com', '6279719171671', 'Uncle', 1, 12, 6, '2025-12-24', NULL, 2025000190, 900190, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46', '127.0.0.1', 1, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46'),
(191, 'Oceane', 'Berge', '1978-02-09', 'Other', 'AB-', 'Islam', 'Bangladeshi', '0289983923018', '01394767508', 'student191@example.com', '$2y$12$sqdzRvOUOJi./p.IZpO1hOhf5aEWIHTIyGlS/Zipt1w14cl4J1EvS', '68212 Dare Port\nRobertsfurt, ME 10975', '359 Towne Haven\nDaronchester, NC 39328-8488', 'ADM-00191', '2001-03-20', 'B', 'Science', '2025-2026', 'Hermiston, O\'Conner and Eichmann School', 'Dr. Ryley Balistreri', 'Businessman', '01989609224', 'father191@example.com', '5108623712249', 'Prof. Nichole Leannon II', 'Teacher', '01314944667', 'mother191@example.com', '9642380421778', 'Jordy Ankunding MD', '01488446576', 'guardian191@example.com', '1194413371325', 'Grandparent', 1, 13, 6, '2025-12-24', NULL, 2025000191, 900191, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46', '127.0.0.1', 1, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46'),
(192, 'Hailey', 'Corwin', '1997-05-27', 'Female', 'B+', 'Islam', 'Bangladeshi', '9544623809733', '01860488991', 'student192@example.com', '$2y$12$.Spd2ZJux6CUyDig3NWaue3Sn.tegY0WepXBB.TsCKflMwXVzGVcy', '1945 Casper Junctions Apt. 335\nSouth Joelmouth, CT 14038', '696 Johnson Trail Apt. 412\nNew Furman, ME 59439-2104', 'ADM-00192', '2001-12-09', 'C', 'Arts', '2025-2026', 'Bartell Inc School', 'Keagan Torphy Jr.', 'Businessman', '01674255763', 'father192@example.com', '2426324613437', 'Liana Beier Jr.', 'Doctor', '01524658915', 'mother192@example.com', '7044635111423', 'Sylvan Powlowski IV', '01402490069', 'guardian192@example.com', '1513207665241', 'Sister', 1, 20, 7, '2025-12-24', NULL, 2025000192, 900192, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46', '127.0.0.1', 1, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46'),
(193, 'Adolphus', 'Rippin', '2000-03-31', 'Male', 'B+', 'Christian', 'Bangladeshi', '9854147135251', '01805599579', 'student193@example.com', '$2y$12$LRQw31aBk/TRO7Wh1hKOj.s3KzyeV9zpX/87DcP4CFzCqXl7bF3Ky', '9569 Katheryn Motorway Apt. 238\nSchulistport, TX 07769-1605', '10349 Bergnaum Stravenue Suite 718\nWest Orvilleton, AK 61802', 'ADM-00193', '1998-03-11', 'A', 'Science', '2025-2026', 'Rowe Inc School', 'Mr. Fredy Watsica DDS', 'Engineer', '01343649009', 'father193@example.com', '2542603734835', 'Elva Hahn', 'Nurse', '01544686910', 'mother193@example.com', '8364186810820', 'Elmer Quitzon', '01516842552', 'guardian193@example.com', '7438362201328', 'Brother', 1, 24, 10, '2025-12-24', NULL, 2025000193, 900193, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46', '127.0.0.1', 1, NULL, '2025-12-24 09:39:46', '2025-12-24 09:39:46'),
(194, 'Christina', 'O\'Conner', '2024-03-21', 'Other', 'AB-', 'Islam', 'Bangladeshi', '2276084090242', '01735046903', 'student194@example.com', '$2y$12$SJs9rvRmdNiAtuf8XaScTePVXSKhIl6iIURHhL4rd0/JRILWI6W16', '9504 Hope Station\nNew Rosamond, ME 11828', '7512 Georgette Villages\nEichmannberg, WV 03283', 'ADM-00194', '1972-02-10', 'A', 'Arts', '2025-2026', 'Nikolaus-Hammes School', 'Mr. Jaycee Price', 'Farmer', '01540289303', 'father194@example.com', '3415494183435', 'Maybell Lindgren', 'Businesswoman', '01762060216', 'mother194@example.com', '1940494517954', 'Miss Oceane Kuhn', '01415293730', 'guardian194@example.com', '1529375212664', 'Grandparent', 1, 21, 9, '2025-12-24', NULL, 2025000194, 900194, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47', '127.0.0.1', 1, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47'),
(195, 'Samson', 'Mitchell', '1998-07-22', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '8313949028831', '01705038640', 'student195@example.com', '$2y$12$4Bo7QYlir/iS1KSpF7v3TOQXWeASdDzgyX.28gGBnxQ6ARJo8v5CC', '93319 Alexandrea Orchard Suite 383\nDevenfurt, NY 28830-4921', '9410 Morissette Mountain\nEltamouth, CT 32747-6623', 'ADM-00195', '1983-01-01', 'A', 'Arts', '2025-2026', 'Huel, Mitchell and Herzog School', 'Jovany Kulas V', 'Engineer', '01891832941', 'father195@example.com', '3849092588192', 'Mrs. Caitlyn Lesch', 'Housewife', '01458480018', 'mother195@example.com', '9682752581399', 'Prof. Vincenzo Moen', '01643721422', 'guardian195@example.com', '8748852875986', 'Brother', 1, 22, 5, '2025-12-24', NULL, 2025000195, 900195, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47', '127.0.0.1', 1, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47'),
(196, 'Hettie', 'Crona', '2019-05-10', 'Male', 'B-', 'Hindu', 'Bangladeshi', '0132334018219', '01633109513', 'student196@example.com', '$2y$12$lza9Z7myXarJsDzOdW53juVPP4rIyJ6ByEnj.yvGZH6gr5NG2qWZy', '2698 Hickle Flat\nNehaview, AK 74504', '25016 Adams Shores Suite 810\nChelsealand, AR 34332', 'ADM-00196', '2021-01-09', 'C', 'Arts', '2025-2026', 'Kutch-Schaden School', 'Micheal Kunze', 'Teacher', '01438539554', 'father196@example.com', '4864287105621', 'Era Kshlerin', 'Nurse', '01633383280', 'mother196@example.com', '7693270540436', 'Rosendo Prosacco', '01360412996', 'guardian196@example.com', '8304505646783', 'Brother', 1, 17, 3, '2025-12-24', NULL, 2025000196, 900196, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47', '127.0.0.1', 1, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47'),
(197, 'Freeda', 'Boyle', '2006-10-22', 'Female', 'O-', 'Other', 'Bangladeshi', '0385836048810', '01799264235', 'student197@example.com', '$2y$12$FVhzDiOXi65XKggk2oqAe.ewLMikr7AfxDCCGWUT2Myer6MAZcJq6', '4452 Durgan Rest\nSouth Jace, FL 13511-3891', '47882 Zena Path\nLake Alysa, AZ 60448', 'ADM-00197', '2025-10-15', 'C', 'Commerce', '2025-2026', 'Koepp-Hyatt School', 'Taurean Prohaska', 'Farmer', '01898021609', 'father197@example.com', '5149874888440', 'Keara Trantow', 'Nurse', '01820050708', 'mother197@example.com', '8979056452306', 'Silas Funk', '01407555151', 'guardian197@example.com', '3653439630840', 'Sister', 1, 25, 10, '2025-12-24', NULL, 2025000197, 900197, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47', '127.0.0.1', 1, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47'),
(198, 'Brown', 'Parisian', '1978-03-01', 'Female', 'O-', 'Other', 'Bangladeshi', '6981271697523', '01706951020', 'student198@example.com', '$2y$12$AH1nT0Cx0PWMk1rn.18zCuVRQ6.lmqH1qo1jQ2qfXxyEHnJqVdfe.', '49515 Ida Divide Suite 211\nWest Alexandrine, CO 55685', '8201 Wiley Pike Suite 314\nWest Laurianeville, WI 16444-6396', 'ADM-00198', '2007-05-27', 'B', 'Science', '2025-2026', 'Kassulke Group School', 'Vernon Strosin', 'Farmer', '01639531232', 'father198@example.com', '2615989311689', 'Catalina Pagac', 'Teacher', '01912005022', 'mother198@example.com', '4554263835209', 'Vida Torp', '01630439847', 'guardian198@example.com', '5589163322477', 'Uncle', 1, 14, 6, '2025-12-24', NULL, 2025000198, 900198, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47', '127.0.0.1', 1, NULL, '2025-12-24 09:39:47', '2025-12-24 09:39:47'),
(199, 'Gia', 'Schuster', '2020-10-07', 'Male', 'B+', 'Other', 'Bangladeshi', '8306229755302', '01979115781', 'student199@example.com', '$2y$12$.JZKHgmm7fyX3UP2RL192OJSQ0IuTEW2KACDfRVAA7bMtb52XaeJa', '443 Kira Loop Apt. 175\nEstellshire, WI 58613', '29361 Keara Parkway Suite 983\nPort Velva, MS 63753-0876', 'ADM-00199', '1990-05-20', 'C', 'Commerce', '2025-2026', 'Emmerich Inc School', 'Larry Windler', 'Engineer', '01870684020', 'father199@example.com', '4354097971047', 'Lesly Boyle', 'Businesswoman', '01918235048', 'mother199@example.com', '7055067534435', 'Freida Vandervort', '01854801917', 'guardian199@example.com', '1122751355520', 'Sister', 1, 26, 10, '2025-12-24', NULL, 2025000199, 900199, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48', '127.0.0.1', 1, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48'),
(200, 'Carson', 'Rath', '2006-02-04', 'Female', 'B-', 'Christian', 'Bangladeshi', '4361483475362', '01938151701', 'student200@example.com', '$2y$12$t5LZKRIyfVuXDZnWzy3adeTNQMCxjPFA0wFSB/sZ3UTj7PxBrZbk6', '496 Blanche Union Apt. 230\nNorth Orland, LA 09537-6016', '6981 Dannie Crossroad\nPort Bennettshire, CO 34277', 'ADM-00200', '1995-12-10', 'B', 'Science', '2025-2026', 'Volkman, Marvin and Torp School', 'Dr. Henry Little', 'Teacher', '01419739139', 'father200@example.com', '3716681271023', 'Myrna Fisher', 'Nurse', '01782045537', 'mother200@example.com', '1379228382740', 'Genesis Dickens Jr.', '01767758277', 'guardian200@example.com', '9113040486858', 'Brother', 1, 23, 5, '2025-12-24', NULL, 2025000200, 900200, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48', '127.0.0.1', 1, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48'),
(201, 'Elmer', 'Sanford', '2017-02-25', 'Other', 'B+', 'Islam', 'Bangladeshi', '8391837812349', '01359639768', 'student201@example.com', '$2y$12$TUoy7MR0en5VR/l4S9IudefyrxwfNLWu8U3df/NjOCtfc4k1BsYou', '16580 Precious Ridges Apt. 252\nHayesview, NH 74189-3459', '24275 Lowe Forest\nCollierton, MA 35272-0360', 'ADM-00201', '1984-02-13', 'B', 'Arts', '2025-2026', 'Luettgen, Flatley and Wisoky School', 'Allan Weissnat Jr.', 'Teacher', '01369288282', 'father201@example.com', '8410650126738', 'Ophelia Graham', 'Nurse', '01754163352', 'mother201@example.com', '2940150110587', 'Dr. Cassandra VonRueden', '01512070666', 'guardian201@example.com', '5877317018787', 'Grandparent', 1, 27, 10, '2025-12-24', NULL, 2025000201, 900201, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48', '127.0.0.1', 1, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48'),
(202, 'Cristian', 'Weissnat', '2013-01-08', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '3030271642597', '01841453501', 'student202@example.com', '$2y$12$yK3z1aqE6dng0AAdMmnp/uvuV/JqeJ64gpP33Mti7ka5.7qDCDVwS', '672 Hintz Glens Suite 624\nReillyshire, RI 80887-7732', '5860 Smith Wells\nPort Maiyamouth, SD 19568-1329', 'ADM-00202', '1973-03-28', 'A', 'Arts', '2025-2026', 'Kuhlman, Nienow and Conroy School', 'Prof. Jean Orn', 'Teacher', '01977537585', 'father202@example.com', '2109720248927', 'Carolyn Ritchie DDS', 'Doctor', '01815844479', 'mother202@example.com', '0990489418065', 'Lorna Dicki', '01767655247', 'guardian202@example.com', '2598285724709', 'Brother', 1, 15, 6, '2025-12-24', NULL, 2025000202, 900202, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48', '127.0.0.1', 1, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48'),
(203, 'Sofia', 'Cremin', '1996-12-10', 'Male', 'B-', 'Hindu', 'Bangladeshi', '1428380678303', '01740714807', 'student203@example.com', '$2y$12$1/gyA1aBnjg1LmQPqSlBpua/6orRFBngAUWdJfSwSZ8TDAXPx.DKC', '35085 Erna Keys\nDelilahland, OK 57438-4767', '9561 Eunice Points\nMarvinside, IN 48727-3479', 'ADM-00203', '2018-04-06', 'C', 'Commerce', '2025-2026', 'Kutch LLC School', 'Jermain Will MD', 'Businessman', '01381801956', 'father203@example.com', '2699139061981', 'Asha Murphy', 'Nurse', '01669474074', 'mother203@example.com', '7554846476149', 'Myrtle Shields', '01310975700', 'guardian203@example.com', '0443722599261', 'Sister', 1, 16, 6, '2025-12-24', NULL, 2025000203, 900203, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48', '127.0.0.1', 1, NULL, '2025-12-24 09:39:48', '2025-12-24 09:39:48'),
(204, 'Karlie', 'Willms', '1984-02-11', 'Other', 'A+', 'Christian', 'Bangladeshi', '5912948523543', '01717294720', 'student204@example.com', '$2y$12$H8vAkioAtmhdFGuUnbA.mO4i9b6BmfGh6izozz5K4ELd19GR9mHAy', '2492 Funk Greens\nNew Jaunita, AK 27393-4841', '91998 Dayton Heights\nShaunton, KS 80210', 'ADM-00204', '1995-07-09', 'A', 'Arts', '2025-2026', 'Satterfield PLC School', 'Rashawn Reichert', 'Doctor', '01448976199', 'father204@example.com', '3054232117488', 'Lorena Hammes', 'Nurse', '01825087934', 'mother204@example.com', '9119058546114', 'Fredrick Kling', '01819269257', 'guardian204@example.com', '8390376147836', 'Sister', 1, 24, 5, '2025-12-24', NULL, 2025000204, 900204, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49', '127.0.0.1', 1, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49'),
(205, 'Elmira', 'Boehm', '2010-03-17', 'Other', 'A-', 'Islam', 'Bangladeshi', '4234005159359', '01360447766', 'student205@example.com', '$2y$12$WQe1g39SdUbK2dBRSqzcKO1qByDXzDtdmlTAKkRZvUPJQOsUJUQXO', '140 Runolfsson Path Suite 365\nNew Janis, IN 11722', '949 Bahringer Shore Apt. 328\nLake Amely, AZ 26735-3596', 'ADM-00205', '1984-09-06', 'A', 'Commerce', '2025-2026', 'Barrows, Frami and D\'Amore School', 'Mr. Rudolph Carter DDS', 'Engineer', '01521177866', 'father205@example.com', '9516654537425', 'Icie Ankunding III', 'Nurse', '01562764403', 'mother205@example.com', '6112419477647', 'Darlene Gislason', '01666310136', 'guardian205@example.com', '5291152018025', 'Uncle', 1, 21, 7, '2025-12-24', NULL, 2025000205, 900205, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49', '127.0.0.1', 1, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49'),
(206, 'Ludie', 'Glover', '2010-03-09', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '6696419708302', '01794862656', 'student206@example.com', '$2y$12$aTbUST5zxRZYdcfrrlzi8eLk9iTjQmmKdSs3dvjIWD6UXx471aoRS', '865 Jane Mews Suite 713\nHudsonbury, MO 81683', '8121 Johnson Throughway Apt. 702\nNew Francis, MN 25050', 'ADM-00206', '1974-05-18', 'C', 'Commerce', '2025-2026', 'Lockman, Waters and Mraz School', 'Clifton Ernser', 'Farmer', '01408378405', 'father206@example.com', '9694524189316', 'Margaret Bogisich', 'Nurse', '01326388361', 'mother206@example.com', '6052681700500', 'Rahsaan O\'Keefe', '01805945862', 'guardian206@example.com', '7449827037805', 'Grandparent', 1, 17, 6, '2025-12-24', NULL, 2025000206, 900206, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49', '127.0.0.1', 1, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49'),
(207, 'Gretchen', 'Lueilwitz', '1980-11-22', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '3730396815318', '01749137127', 'student207@example.com', '$2y$12$V2QjwBy9idUkUaDgvVRDJ.jj9I1uWPlRrusNVG9f2YIl/SWiz2mRa', '5933 Ritchie Valleys\nNorth Joeburgh, OR 04892-9531', '95861 Wisoky Crest Suite 610\nNorth Mossie, AL 56619-9030', 'ADM-00207', '2020-03-27', 'A', 'Arts', '2025-2026', 'Leuschke, Hayes and Kirlin School', 'Prof. Ole Tremblay', 'Doctor', '01591314506', 'father207@example.com', '6048365482460', 'Ms. Lori Bode Sr.', 'Housewife', '01776525796', 'mother207@example.com', '0599140927809', 'Prof. Jaquelin Donnelly', '01623246028', 'guardian207@example.com', '9155994085774', 'Uncle', 1, 18, 6, '2025-12-24', NULL, 2025000207, 900207, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49', '127.0.0.1', 1, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49'),
(208, 'Bart', 'Kris', '2009-02-02', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '0786968377587', '01577752127', 'student208@example.com', '$2y$12$OltZ9gN3L1zfhzNqCwjQQ.LUum1XJuH0rqvuWfXIqTD/BsHGhGV4K', '27391 Ritchie Underpass Apt. 934\nMohammedfurt, VT 94079-1199', '534 Stoltenberg Haven\nJohnsonville, MD 42182-4121', 'ADM-00208', '2003-09-16', 'A', 'Commerce', '2025-2026', 'Mraz, Auer and Waters School', 'Ricardo Reinger', 'Doctor', '01816897881', 'father208@example.com', '6432395354168', 'Mona Pfeffer', 'Doctor', '01705043060', 'mother208@example.com', '0461438716556', 'Raymundo Goyette', '01981246120', 'guardian208@example.com', '4335429382989', 'Brother', 1, 21, 4, '2025-12-24', NULL, 2025000208, 900208, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49', '127.0.0.1', 1, NULL, '2025-12-24 09:39:49', '2025-12-24 09:39:49'),
(209, 'Rozella', 'Renner', '1996-02-10', 'Other', 'AB-', 'Christian', 'Bangladeshi', '6992614194815', '01421578233', 'student209@example.com', '$2y$12$aJt1U6yK04mnaYCqNYbRWOFahyUj0NwJ8RrhWz0wCfTVDnkHpeg46', '7128 Feest Trace Suite 816\nSouth Cullenfurt, IL 79418', '623 Mckenna Ford Apt. 483\nNew Chaunceyfurt, AK 32179-6594', 'ADM-00209', '2022-03-01', 'B', 'Science', '2025-2026', 'Marvin, Kreiger and Hegmann School', 'Mr. Murl Feest', 'Businessman', '01310240075', 'father209@example.com', '5689522647307', 'Ilene Breitenberg', 'Doctor', '01439503046', 'mother209@example.com', '8745953485579', 'Dr. Michael Wintheiser', '01662026729', 'guardian209@example.com', '2495677124392', 'Uncle', 1, 18, 3, '2025-12-24', NULL, 2025000209, 900209, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50', '127.0.0.1', 1, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50'),
(210, 'Marshall', 'Block', '2015-11-30', 'Male', 'B-', 'Other', 'Bangladeshi', '7560740145258', '01916187410', 'student210@example.com', '$2y$12$/BsF6kHbZaYVQ.DKpzaXHuBFSHsb3JHlq3tRFkzFKbPGgjKBWS51y', '1716 Makenna Way\nPort Ray, AL 42007-5918', '28414 Farrell Bridge Apt. 685\nBiankaland, MS 36195', 'ADM-00210', '1990-06-16', 'A', 'Arts', '2025-2026', 'Howell, Cruickshank and Luettgen School', 'Lew Willms', 'Engineer', '01726122408', 'father210@example.com', '1258001393699', 'Mrs. Eldora Luettgen III', 'Teacher', '01882011369', 'mother210@example.com', '4071948867303', 'Hiram Ondricka DDS', '01693887653', 'guardian210@example.com', '0807212144770', 'Uncle', 1, 19, 3, '2025-12-24', NULL, 2025000210, 900210, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50', '127.0.0.1', 1, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50'),
(211, 'Shanel', 'Gislason', '2020-10-25', 'Female', 'AB+', 'Other', 'Bangladeshi', '5466090134578', '01354251875', 'student211@example.com', '$2y$12$3lZFfq62O34g4NJlj0bbbO8QR56g.ssupXV9jt1ptgBqf0a.qYkUK', '496 Reichel Orchard Apt. 404\nProsaccoberg, NJ 90685-4475', '32046 Isaac Manors\nHillton, OH 57479', 'ADM-00211', '1984-05-11', 'B', 'Science', '2025-2026', 'Braun Inc School', 'Mr. Elliot Huels IV', 'Engineer', '01934684030', 'father211@example.com', '3817263796360', 'Nicole Muller DVM', 'Housewife', '01931045399', 'mother211@example.com', '9476868088068', 'Kacie Bosco', '01341411429', 'guardian211@example.com', '8462284213639', 'Aunt', 1, 21, 2, '2025-12-24', NULL, 2025000211, 900211, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50', '127.0.0.1', 1, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50'),
(212, 'Sophia', 'Farrell', '1996-10-26', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '4909052556428', '01696539387', 'student212@example.com', '$2y$12$0aN5wpjlvXOWXnrubysj8O3.o7NBzOSAURt6ShlZX/bsvP5hLY7XO', '727 Damion Islands\nPort Dell, IA 60659', '5335 Hulda Parkways\nPatienceville, WY 67212-3100', 'ADM-00212', '1986-11-27', 'A', 'Science', '2025-2026', 'Hackett-Cummings School', 'Albert Hudson', 'Engineer', '01931541882', 'father212@example.com', '0130602939648', 'Emilie Bins III', 'Businesswoman', '01967850586', 'mother212@example.com', '7337421994275', 'Cali McLaughlin', '01822177959', 'guardian212@example.com', '1699269194362', 'Brother', 1, 22, 7, '2025-12-24', NULL, 2025000212, 900212, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50', '127.0.0.1', 1, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50'),
(213, 'Christ', 'Jacobson', '2010-09-03', 'Female', 'O-', 'Hindu', 'Bangladeshi', '9142461724955', '01463717393', 'student213@example.com', '$2y$12$1U/5WqPTM1xaoJtzf85dCOHZlQOLwq3exKBiOiauBgnPOJnmpSlDG', '300 Aurore Lakes Suite 641\nLake Dora, MI 16658-1206', '1344 Gutkowski Port Apt. 813\nPort Eunice, AR 09527-6275', 'ADM-00213', '1994-11-09', 'A', 'Commerce', '2025-2026', 'Zemlak, Hahn and Willms School', 'Dillan Champlin', 'Doctor', '01760942309', 'father213@example.com', '6880775103128', 'Mrs. Maryse Smith', 'Doctor', '01373495135', 'mother213@example.com', '0300047424024', 'Lorna Lakin', '01756305822', 'guardian213@example.com', '0061410775895', 'Sister', 1, 20, 8, '2025-12-24', NULL, 2025000213, 900213, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50', '127.0.0.1', 1, NULL, '2025-12-24 09:39:50', '2025-12-24 09:39:50'),
(214, 'Flavio', 'Wisoky', '1973-03-14', 'Female', 'AB-', 'Christian', 'Bangladeshi', '6056355751519', '01378524743', 'student214@example.com', '$2y$12$2UoDqG.wrF50jFTOl1YSDe4mRItHBwvxRJ5uBAXJGQAyEtpxJdZfi', '545 Wyatt Plains Suite 852\nAntoninabury, FL 14050', '8637 Carlee Locks Suite 488\nKshlerinfort, HI 30465', 'ADM-00214', '1980-04-08', 'A', 'Arts', '2025-2026', 'Quitzon, Windler and Luettgen School', 'Harry Gutmann Sr.', 'Doctor', '01991109820', 'father214@example.com', '3636055558293', 'Dr. Georgianna Moore', 'Nurse', '01408293385', 'mother214@example.com', '8031914632010', 'Miss Therese Jerde V', '01511906219', 'guardian214@example.com', '3098430073350', 'Aunt', 1, 22, 9, '2025-12-24', NULL, 2025000214, 900214, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51', '127.0.0.1', 1, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51'),
(215, 'Blake', 'Price', '1974-11-28', 'Male', 'AB+', 'Islam', 'Bangladeshi', '9475970052919', '01454472080', 'student215@example.com', '$2y$12$.wqFOfJXB69qHoWpdgsXX.2cntM7Cne1.i53.sSLvDe4Tvf36PZiC', '7192 Smitham Locks\nBayerchester, OH 59835', '75358 Ward Heights\nRempelshire, CO 87800', 'ADM-00215', '1982-09-13', 'A', 'Commerce', '2025-2026', 'Lynch and Sons School', 'Micah Wolf', 'Engineer', '01522284737', 'father215@example.com', '0066805712254', 'Tatyana Hamill', 'Doctor', '01736640925', 'mother215@example.com', '5322767964165', 'Fred Smitham', '01777453135', 'guardian215@example.com', '7992618523213', 'Aunt', 1, 25, 5, '2025-12-24', NULL, 2025000215, 900215, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51', '127.0.0.1', 1, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51'),
(216, 'Nicholas', 'Padberg', '2024-01-20', 'Male', 'A-', 'Islam', 'Bangladeshi', '9544654235623', '01850212589', 'student216@example.com', '$2y$12$hQ1KemZWZzrFXQLpcBu54OMZfbLo6XX9St1CgweI4TGOwHTh18bqi', '483 Mayer Plains\nErynburgh, DC 77759', '43612 Adams Light Suite 616\nEast Jay, KY 90579-0753', 'ADM-00216', '2008-10-04', 'C', 'Arts', '2025-2026', 'Stracke-Abbott School', 'Prof. Jamie Miller DDS', 'Farmer', '01569209124', 'father216@example.com', '4449791390687', 'Maggie Powlowski', 'Nurse', '01509797768', 'mother216@example.com', '6848576934709', 'Lucienne Sawayn', '01985012214', 'guardian216@example.com', '0254492874386', 'Brother', 1, 26, 5, '2025-12-24', NULL, 2025000216, 900216, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51', '127.0.0.1', 1, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51'),
(217, 'Jonatan', 'McCullough', '2015-04-20', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '5916546209741', '01715366790', 'student217@example.com', '$2y$12$Gk55mBmmBFXRc8xHWtakE.NKai8vtYA9Ge.EyK.VMYlK6pBbwf212', '28098 Wilfredo Forges Suite 735\nWest Florian, SD 78535', '9670 Schuyler Curve\nSusannabury, NY 86710-3773', 'ADM-00217', '2004-01-17', 'A', 'Arts', '2025-2026', 'Gibson, Pollich and Hansen School', 'Jaylan Schuster DDS', 'Engineer', '01512214722', 'father217@example.com', '4792767768043', 'Elnora Koch', 'Teacher', '01516452616', 'mother217@example.com', '2928516772426', 'Phyllis Watsica', '01605903594', 'guardian217@example.com', '9035894477422', 'Aunt', 1, 21, 8, '2025-12-24', NULL, 2025000217, 900217, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51', '127.0.0.1', 1, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51'),
(218, 'Araceli', 'Jacobi', '1998-04-27', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '6908931226947', '01747203501', 'student218@example.com', '$2y$12$VBvainhyfQBTWAkTasWSO.GSPKY0KtKsDb6V1a07amB.TY5EFSryS', '9416 Ubaldo Streets Suite 478\nEast Presley, AL 67820-3445', '160 Abshire Street Suite 383\nStephenchester, OK 31542', 'ADM-00218', '1979-12-24', 'C', 'Arts', '2025-2026', 'Ernser-Bergnaum School', 'Andre Kassulke', 'Doctor', '01779273865', 'father218@example.com', '6137856968884', 'Marjory Bins', 'Housewife', '01411138413', 'mother218@example.com', '3409589329632', 'Dr. Susanna Walter MD', '01408160254', 'guardian218@example.com', '5239300648567', 'Aunt', 1, 28, 10, '2025-12-24', NULL, 2025000218, 900218, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51', '127.0.0.1', 1, NULL, '2025-12-24 09:39:51', '2025-12-24 09:39:51'),
(219, 'Herman', 'Mayer', '2003-06-07', 'Male', 'AB-', 'Other', 'Bangladeshi', '8234426349932', '01741720576', 'student219@example.com', '$2y$12$VALb8GxfaZk4vifso57wj.zVcvIeOQMexEhdTFAkGyB50nP1b6N0G', '45026 Braeden Glens Apt. 669\nPort Lavinabury, CT 13149-2055', '273 Bo Ranch Suite 525\nCielostad, MI 17441', 'ADM-00219', '1995-01-16', 'A', 'Science', '2025-2026', 'Mraz, Halvorson and Walsh School', 'Morton Lindgren', 'Engineer', '01744596774', 'father219@example.com', '7400559432542', 'Cynthia Stark', 'Businesswoman', '01856199112', 'mother219@example.com', '9490202784501', 'Conrad Schamberger', '01992008583', 'guardian219@example.com', '9700233757315', 'Sister', 1, 22, 2, '2025-12-24', NULL, 2025000219, 900219, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52', '127.0.0.1', 1, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52'),
(220, 'Samanta', 'Ritchie', '2024-04-06', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '5198775381039', '01813582207', 'student220@example.com', '$2y$12$hykGoSBU.aFn9feIhmuzTen46MI1iDFfjmmQeZl3ixXhf7F1Uf1k6', '97859 Dibbert Mission\nAbshireview, SD 33653-4548', '22731 Wiegand Locks\nNorth Candacemouth, MD 16707', 'ADM-00220', '1995-08-14', 'C', 'Arts', '2025-2026', 'Lueilwitz, Orn and Satterfield School', 'Torey Ziemann', 'Teacher', '01917230187', 'father220@example.com', '8825527899327', 'Pattie Balistreri', 'Doctor', '01891464138', 'mother220@example.com', '9162624714579', 'Dr. Lou Ferry I', '01392835608', 'guardian220@example.com', '2484228682048', 'Sister', 1, 20, 3, '2025-12-24', NULL, 2025000220, 900220, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52', '127.0.0.1', 1, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52'),
(221, 'Brendan', 'Crist', '2008-08-21', 'Male', 'O+', 'Hindu', 'Bangladeshi', '2802041096040', '01360274660', 'student221@example.com', '$2y$12$V0MG6JTRgytMDFQXLrFusu7C2RG.sNx6l8Z6DZLZdlIG1WHkGEOAG', '8997 Bosco Islands Apt. 891\nLake Bernadine, MI 33977', '26591 Gutmann Loop\nLake Amira, TX 97121', 'ADM-00221', '1986-09-10', 'A', 'Science', '2025-2026', 'Davis, Hansen and Aufderhar School', 'Raoul Davis', 'Engineer', '01890211792', 'father221@example.com', '2446279340460', 'Jaquelin Rodriguez II', 'Nurse', '01780676245', 'mother221@example.com', '4992410710085', 'Ricky DuBuque', '01320319298', 'guardian221@example.com', '9935032168619', 'Grandparent', 1, 23, 7, '2025-12-24', NULL, 2025000221, 900221, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52', '127.0.0.1', 1, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52'),
(222, 'Veronica', 'Cronin', '1970-12-04', 'Female', 'B+', 'Other', 'Bangladeshi', '6232780177823', '01447200761', 'student222@example.com', '$2y$12$itB4XNKM.GdZOjZl8BHzX.bb134Z4BWl.dtYl7aF5/Dxglzjad8xa', '5863 Maggio Crossroad\nAlecstad, OK 29042-8314', '864 Jenkins Creek\nMetaview, MA 23151', 'ADM-00222', '1991-08-14', 'C', 'Arts', '2025-2026', 'Cassin Ltd School', 'Dr. Rene Wisozk II', 'Doctor', '01802329885', 'father222@example.com', '9486095799649', 'Kyla Larkin Jr.', 'Businesswoman', '01776539893', 'mother222@example.com', '9287007794055', 'Weldon Mertz', '01865005999', 'guardian222@example.com', '9181459130619', 'Brother', 1, 27, 5, '2025-12-24', NULL, 2025000222, 900222, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52', '127.0.0.1', 1, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52'),
(223, 'Emerald', 'Swift', '1998-05-25', 'Female', 'B-', 'Hindu', 'Bangladeshi', '3716963941755', '01559526708', 'student223@example.com', '$2y$12$nNB4AC25Gh8AYJAJcOn6t.R0LK63vfAACkpnbvWcpjY27dKDbGM2G', '13581 Lisette Common\nDarehaven, TN 49304', '613 Weissnat Locks Apt. 910\nNew Brianaside, NH 68786-6842', 'ADM-00223', '2004-04-11', 'A', 'Commerce', '2025-2026', 'Mertz Ltd School', 'Anderson Upton', 'Teacher', '01741979853', 'father223@example.com', '2997492913504', 'Tiffany Homenick', 'Businesswoman', '01943946252', 'mother223@example.com', '4259123698384', 'Jaren King DDS', '01679346313', 'guardian223@example.com', '4106438963287', 'Aunt', 1, 21, 3, '2025-12-24', NULL, 2025000223, 900223, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52', '127.0.0.1', 1, NULL, '2025-12-24 09:39:52', '2025-12-24 09:39:52'),
(224, 'Jeremy', 'Wuckert', '2002-03-30', 'Male', 'B+', 'Christian', 'Bangladeshi', '4757104122571', '01758783671', 'student224@example.com', '$2y$12$0R4nmAEeZpvsoF.nbnM64u7iXDjRwOAYMsYBJVOiUxRLcspVy2NxC', '8274 Derrick Gateway Suite 249\nSouth Dominicstad, VA 45497-0999', '1983 Sasha Valleys Suite 682\nBrockport, HI 38832-6235', 'ADM-00224', '2011-07-06', 'C', 'Commerce', '2025-2026', 'Farrell PLC School', 'Rusty Zboncak III', 'Businessman', '01493116485', 'father224@example.com', '7732518266286', 'Miss Krystina Gleason IV', 'Housewife', '01979923828', 'mother224@example.com', '8001548384422', 'Dr. Jalyn Haley DVM', '01924557488', 'guardian224@example.com', '5035101205287', 'Aunt', 1, 29, 10, '2025-12-24', NULL, 2025000224, 900224, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53', '127.0.0.1', 1, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53'),
(225, 'Marilie', 'Cole', '1994-03-14', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '4590177041048', '01346296457', 'student225@example.com', '$2y$12$uVTFs62cLGm7affrK6JpieB8.CkGQDcwj4U0mEwtH7c03TF/Z8vrK', '454 Aimee Courts\nPort Cory, NV 67884-4110', '9461 Glover Route\nLefflerton, GA 88391-1983', 'ADM-00225', '1991-09-26', 'B', 'Arts', '2025-2026', 'Altenwerth-Walsh School', 'Stanley Hoppe', 'Doctor', '01592827612', 'father225@example.com', '3718043518500', 'Giovanna Borer', 'Housewife', '01942116888', 'mother225@example.com', '0608090537679', 'Humberto Schroeder', '01699235766', 'guardian225@example.com', '2133066222806', 'Brother', 1, 19, 6, '2025-12-24', NULL, 2025000225, 900225, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53', '127.0.0.1', 1, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53'),
(226, 'Dakota', 'Metz', '1997-08-25', 'Female', 'O-', 'Other', 'Bangladeshi', '4275048900595', '01755807078', 'student226@example.com', '$2y$12$edFnOzR/ydaDnDaz97O0Ke5ohylXPbRcqQ593Zi7ddQ3/RmqNm0lW', '704 Brad Inlet\nShieldshaven, NC 29877-8343', '53880 Block Islands Apt. 875\nPort Javon, WI 71405', 'ADM-00226', '1996-02-18', 'C', 'Science', '2025-2026', 'Hoeger, Hauck and Okuneva School', 'Prof. Lavon Gibson', 'Teacher', '01801076927', 'father226@example.com', '9739040573135', 'Cristal Romaguera PhD', 'Teacher', '01889050953', 'mother226@example.com', '3074166279764', 'Bernie Schumm III', '01502385878', 'guardian226@example.com', '6449741018559', 'Aunt', 1, 23, 9, '2025-12-24', NULL, 2025000226, 900226, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53', '127.0.0.1', 1, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53'),
(227, 'Stella', 'Sporer', '1998-01-10', 'Female', 'A-', 'Islam', 'Bangladeshi', '4800263765143', '01563097106', 'student227@example.com', '$2y$12$Biy76bZVSVHGumZeZ5qDcOh.GfpCDiaLdPLm59PSA.CLMxAYloExO', '189 Jacynthe Burgs Apt. 895\nKohlerport, AK 70084', '8480 Hartmann Drive Apt. 351\nKrischester, MS 01433-1285', 'ADM-00227', '1986-02-13', 'C', 'Arts', '2025-2026', 'Konopelski, Mann and Lindgren School', 'Nico Hill', 'Teacher', '01547902752', 'father227@example.com', '5734450878022', 'Prof. Sadie Abshire DDS', 'Housewife', '01910195973', 'mother227@example.com', '4018058017799', 'Dr. Jovanny Padberg II', '01675703448', 'guardian227@example.com', '2014257658734', 'Grandparent', 1, 24, 9, '2025-12-24', NULL, 2025000227, 900227, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53', '127.0.0.1', 1, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53'),
(228, 'Lesly', 'Schowalter', '2019-02-25', 'Male', 'AB-', 'Other', 'Bangladeshi', '9517076911703', '01833555198', 'student228@example.com', '$2y$12$SdYShG0ZAc5oOL.NFI/5C.mpw6YRBDjeSQ0I0wOf2itQUz5pIpo8K', '7150 Fisher Highway Apt. 487\nEast Myah, CT 57980', '1247 Kutch Rue\nPfannerstillberg, MI 27508-2460', 'ADM-00228', '2008-09-19', 'A', 'Arts', '2025-2026', 'Cronin-Kohler School', 'Darion Johnson V', 'Doctor', '01645906672', 'father228@example.com', '1725940962640', 'Alyson McCullough', 'Nurse', '01702579688', 'mother228@example.com', '7070067865740', 'Elnora Cassin', '01920440899', 'guardian228@example.com', '9226222996538', 'Grandparent', 1, 22, 8, '2025-12-24', NULL, 2025000228, 900228, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53', '127.0.0.1', 1, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53'),
(229, 'Asa', 'Kiehn', '2002-12-30', 'Other', 'B-', 'Other', 'Bangladeshi', '1182252893463', '01553826988', 'student229@example.com', '$2y$12$uoh9faasfrAmm4yUI1Qv/ODuRaoQmGL/jprvFz1Nv4j4mpfSoH3H6', '10984 Cecilia Flat\nWest Sisterport, MD 27875-4115', '17317 Kessler Wells Suite 174\nJamelfurt, MS 81969-1756', 'ADM-00229', '1979-10-03', 'A', 'Arts', '2025-2026', 'Renner, Kihn and O\'Hara School', 'Brooks Roberts', 'Teacher', '01670709964', 'father229@example.com', '4223711509684', 'Alison Douglas', 'Housewife', '01516389135', 'mother229@example.com', '2741299585021', 'Roel Weissnat', '01890095373', 'guardian229@example.com', '4607829238197', 'Uncle', 1, 20, 6, '2025-12-24', NULL, 2025000229, 900229, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53', '127.0.0.1', 1, NULL, '2025-12-24 09:39:53', '2025-12-24 09:39:53');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `admission_no`, `admission_date`, `section`, `group`, `session_year`, `previous_school`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(230, 'Rosemary', 'Hill', '1983-09-29', 'Other', 'O-', 'Islam', 'Bangladeshi', '0052977202627', '01718025722', 'student230@example.com', '$2y$12$OrTujmnAW4Cyx2p/j71KOuhAvVp/wTyC3m8cw7dOvu/9L7WBvVIN2', '318 Tianna Estates Suite 902\nAdanborough, VA 41378-6835', '430 Daron Road Apt. 598\nEast Savionfurt, ME 69900-9834', 'ADM-00230', '2005-02-13', 'A', 'Commerce', '2025-2026', 'Brown Inc School', 'Karson Wilderman', 'Teacher', '01438845513', 'father230@example.com', '8803672914530', 'Ms. Drew Johnson', 'Teacher', '01730735688', 'mother230@example.com', '8501513022643', 'Murphy Schiller', '01840874347', 'guardian230@example.com', '9992783410453', 'Grandparent', 1, 23, 2, '2025-12-24', NULL, 2025000230, 900230, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54', '127.0.0.1', 1, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54'),
(231, 'Edd', 'Hessel', '1979-03-16', 'Male', 'O+', 'Hindu', 'Bangladeshi', '4095400375899', '01450262383', 'student231@example.com', '$2y$12$BPej1Y6R2U8.m.lgyA.rTeNczKIU7y5f0ZgzUZrUFA38JqNZxEJS2', '93715 Lavern Brooks Apt. 389\nLemkeport, NJ 74155-0829', '753 Kelly Station\nHaucktown, MT 26763-1245', 'ADM-00231', '2005-06-15', 'A', 'Commerce', '2025-2026', 'Kilback PLC School', 'Dr. Laverne Green', 'Farmer', '01863279585', 'father231@example.com', '6670373008569', 'Delilah Smitham', 'Businesswoman', '01937063379', 'mother231@example.com', '4231279904324', 'Lorenz Baumbach Jr.', '01308432905', 'guardian231@example.com', '6094082542830', 'Uncle', 1, 28, 5, '2025-12-24', NULL, 2025000231, 900231, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54', '127.0.0.1', 1, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54'),
(232, 'Vito', 'Beier', '2009-07-21', 'Other', 'B+', 'Other', 'Bangladeshi', '8778239552530', '01357182826', 'student232@example.com', '$2y$12$ZbvvfDqoYzS9Z6O54tpQO.5R7zdaxQYxll8FCj9O8grGd0GerSJqq', '2559 Lacey Brooks Apt. 434\nSouth Wilfridmouth, MT 15152', '8860 Zboncak Turnpike Suite 398\nPort Fermin, UT 64624', 'ADM-00232', '1971-08-06', 'C', 'Arts', '2025-2026', 'Mills and Sons School', 'Napoleon Mills', 'Teacher', '01660928330', 'father232@example.com', '7449078001372', 'Cathy Schulist Jr.', 'Nurse', '01890190100', 'mother232@example.com', '6371159714050', 'Aiyana Casper', '01832132910', 'guardian232@example.com', '1844619238502', 'Sister', 1, 21, 1, '2025-12-24', NULL, 2025000232, 900232, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54', '127.0.0.1', 1, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54'),
(233, 'Luciano', 'O\'Conner', '1994-07-12', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '6127075948096', '01726712742', 'student233@example.com', '$2y$12$SmsfKJZaMNP7XXOjHULuc./B6C3IVE1YEJQMHC1KbzcpA5vdLUYHa', '69131 Kemmer Mills Suite 799\nWest Joshuah, SC 80892', '40595 Otto Drive Apt. 992\nSchultzfurt, ND 77567', 'ADM-00233', '2014-10-23', 'C', 'Arts', '2025-2026', 'Armstrong LLC School', 'Jocelyn Haag', 'Teacher', '01904954835', 'father233@example.com', '2279644602272', 'Nicole Haag', 'Teacher', '01800077590', 'mother233@example.com', '3570590395588', 'Sibyl Hamill', '01864209673', 'guardian233@example.com', '8292792950980', 'Grandparent', 1, 30, 10, '2025-12-24', NULL, 2025000233, 900233, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54', '127.0.0.1', 1, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54'),
(234, 'Bessie', 'Ritchie', '2005-11-22', 'Male', 'B-', 'Other', 'Bangladeshi', '3783457846181', '01612000338', 'student234@example.com', '$2y$12$m0ffbL2DY0wwIX70gZi/3OSdjiBx3La3Vs.sdZPBB39B95eiuUn7S', '294 Reynolds Rest Suite 299\nSouth Kingshire, AK 85203-6402', '6903 Angelo Bridge Apt. 576\nEast Madysonville, MT 32909', 'ADM-00234', '1984-01-31', 'B', 'Arts', '2025-2026', 'Rath Ltd School', 'Vernon Aufderhar', 'Engineer', '01301006915', 'father234@example.com', '9206401847267', 'Cassie Krajcik', 'Doctor', '01422567712', 'mother234@example.com', '0582744190135', 'Delia Osinski V', '01860480062', 'guardian234@example.com', '4633921334038', 'Uncle', 1, 22, 3, '2025-12-24', NULL, 2025000234, 900234, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54', '127.0.0.1', 1, NULL, '2025-12-24 09:39:54', '2025-12-24 09:39:54'),
(235, 'Yoshiko', 'Bode', '1988-03-22', 'Female', 'O+', 'Hindu', 'Bangladeshi', '9445183832855', '01576177328', 'student235@example.com', '$2y$12$qrblGXUg1xT3hLxMP6WOkewwTN7VjTArcuFZT6KGj4/12Iw0T8one', '2148 Bogisich Trafficway\nLake Aylinland, OH 09838', '4526 Mills Shoal Apt. 615\nAngusfurt, KY 24278-2419', 'ADM-00235', '2019-09-18', 'B', 'Arts', '2025-2026', 'Lowe and Sons School', 'Orlando Hyatt', 'Teacher', '01876892264', 'father235@example.com', '4087235037241', 'Abigale Pfeffer MD', 'Nurse', '01866822885', 'mother235@example.com', '5075978887290', 'Dr. Dejuan Oberbrunner', '01709512685', 'guardian235@example.com', '0613593797278', 'Sister', 1, 29, 5, '2025-12-24', NULL, 2025000235, 900235, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55', '127.0.0.1', 1, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55'),
(236, 'Rickie', 'Stracke', '1989-11-27', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '6849380047782', '01866235369', 'student236@example.com', '$2y$12$Jn.QgzjB7TwqbgoIF/dTr.rG6teXDzPR0u.1fj0hhv4D/pGXqM/eC', '24123 Cynthia Overpass Suite 205\nNew Leonorchester, AL 71819', '4392 Jordane River Suite 353\nNorth Frederick, NY 94106', 'ADM-00236', '2006-10-14', 'B', 'Commerce', '2025-2026', 'Rutherford-Waters School', 'Prof. Douglas Herman Sr.', 'Farmer', '01828081819', 'father236@example.com', '3198675431367', 'Clare Kertzmann', 'Nurse', '01333243616', 'mother236@example.com', '3807998085434', 'Mr. Pablo Prosacco', '01870206751', 'guardian236@example.com', '1738592390050', 'Uncle', 1, 31, 10, '2025-12-24', NULL, 2025000236, 900236, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55', '127.0.0.1', 1, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55'),
(237, 'Orlando', 'Steuber', '2010-08-12', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '3849985495179', '01457269801', 'student237@example.com', '$2y$12$lxtZ6.MK9cDyrJd/t9X3zeYOOJnV4KsWeZNhtED/oGBAE3ReP4p4W', '3830 Nikolaus Meadow\nBrendonstad, RI 33507-5077', '2118 Isabella Courts\nNolanberg, MS 46633-3752', 'ADM-00237', '2021-01-25', 'A', 'Science', '2025-2026', 'Zieme Group School', 'Prof. Antonio Sporer', 'Teacher', '01342322640', 'father237@example.com', '6408038779136', 'Miss Kaelyn Harvey', 'Doctor', '01438998195', 'mother237@example.com', '4339922249936', 'Stanford Davis', '01872997141', 'guardian237@example.com', '9098846286098', 'Grandparent', 1, 23, 8, '2025-12-24', NULL, 2025000237, 900237, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55', '127.0.0.1', 1, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55'),
(238, 'Weldon', 'Walker', '1989-05-01', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '4545113047000', '01714190301', 'student238@example.com', '$2y$12$eZSaEdgwzUbBTiSrESlL.OY/JAJEQMze4fKuyjSOfYhq58sX9bCie', '443 Ashlynn Plains\nLake Bell, IL 85972-6877', '45662 Sipes Fields Suite 652\nEduardoborough, IA 96228', 'ADM-00238', '1988-12-02', 'A', 'Science', '2025-2026', 'Lindgren-McCullough School', 'Louisa Leannon', 'Businessman', '01766509348', 'father238@example.com', '8375643929223', 'Lauryn Heaney', 'Doctor', '01602823605', 'mother238@example.com', '0641851092325', 'Mylene Kassulke', '01892434640', 'guardian238@example.com', '6303087385405', 'Grandparent', 1, 22, 4, '2025-12-24', NULL, 2025000238, 900238, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55', '127.0.0.1', 1, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55'),
(239, 'Eloisa', 'Glover', '1995-10-26', 'Male', 'O+', 'Islam', 'Bangladeshi', '7555641136014', '01721451794', 'student239@example.com', '$2y$12$xIlhjvEMwlvZT0.CG/T8Fuh92Wlds0frDDlEutWHimvVbUf/W1aZW', '21595 Magdalen Bridge Suite 348\nUptonberg, ID 55452', '17266 Forrest Dam Apt. 763\nPort Jermainville, AK 14611-3332', 'ADM-00239', '1979-01-17', 'A', 'Arts', '2025-2026', 'Purdy, Feeney and Flatley School', 'Noel Zulauf', 'Farmer', '01730903876', 'father239@example.com', '4404368036953', 'Prof. Elsie Hagenes', 'Doctor', '01908849944', 'mother239@example.com', '5157628795372', 'Hannah McClure', '01758419940', 'guardian239@example.com', '7865414105794', 'Grandparent', 1, 32, 10, '2025-12-24', NULL, 2025000239, 900239, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55', '127.0.0.1', 1, NULL, '2025-12-24 09:39:55', '2025-12-24 09:39:55'),
(240, 'Brent', 'Murphy', '1996-05-12', 'Other', 'B+', 'Buddhist', 'Bangladeshi', '1456288177532', '01491427785', 'student240@example.com', '$2y$12$ef8l3njtE5FXE1794VVgduYJpGdG/CncloxruIVgJqTtqEQGUDNs2', '52596 Hermiston Junctions Suite 410\nLake Melvina, WV 86932-7280', '93233 Christiansen Courts\nLake Augustineview, IN 33756-2516', 'ADM-00240', '1988-02-25', 'A', 'Commerce', '2025-2026', 'Hill LLC School', 'Charles Volkman Jr.', 'Farmer', '01496683719', 'father240@example.com', '5526207299416', 'Ms. Ollie Satterfield', 'Housewife', '01561155140', 'mother240@example.com', '9707130457743', 'Abbigail Bauch', '01588343760', 'guardian240@example.com', '2852622361810', 'Brother', 1, 30, 5, '2025-12-24', NULL, 2025000240, 900240, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56', '127.0.0.1', 1, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56'),
(241, 'Frederik', 'Stiedemann', '2010-09-19', 'Other', 'A-', 'Hindu', 'Bangladeshi', '3261441884584', '01826535868', 'student241@example.com', '$2y$12$/7XWF9wOaSfpTswjgZk6u.PduaRiGwdLjgH5/j6TB5l4Nmw3hDzwW', '6912 Stoltenberg Mountain\nKleinside, FL 47506-3817', '73976 Haley Port\nSouth Bria, RI 08879-5749', 'ADM-00241', '1972-01-17', 'B', 'Arts', '2025-2026', 'Blanda Group School', 'Armand Franecki', 'Doctor', '01793233606', 'father241@example.com', '8967056350667', 'Gwen Collier', 'Housewife', '01737788772', 'mother241@example.com', '6031815788997', 'Mr. Turner Labadie DDS', '01972047874', 'guardian241@example.com', '8792561119829', 'Grandparent', 1, 23, 3, '2025-12-24', NULL, 2025000241, 900241, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56', '127.0.0.1', 1, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56'),
(242, 'Elfrieda', 'Carroll', '2007-06-15', 'Female', 'B+', 'Other', 'Bangladeshi', '8250565514211', '01725629658', 'student242@example.com', '$2y$12$aCHA.1ko5H5AWg1NGrL3wuEGZU5gdrdyMqhK3gp43vbicaV8/u/Yq', '77470 Bartholome Route Suite 282\nShanonville, IN 79597', '458 Gibson Cove\nNew Thaddeusport, HI 95318-1513', 'ADM-00242', '1977-04-11', 'B', 'Science', '2025-2026', 'Harber, Boyle and Bogan School', 'Mr. Andres Von Jr.', 'Engineer', '01734097404', 'father242@example.com', '1084778765397', 'Albina Rice', 'Teacher', '01556425227', 'mother242@example.com', '8210506092707', 'Juliana Stanton', '01531206429', 'guardian242@example.com', '6435263090546', 'Uncle', 1, 31, 5, '2025-12-24', NULL, 2025000242, 900242, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56', '127.0.0.1', 1, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56'),
(243, 'Estel', 'Leuschke', '2020-04-16', 'Female', 'O+', 'Buddhist', 'Bangladeshi', '9551786892018', '01796704627', 'student243@example.com', '$2y$12$jJ4LCS9ACiohEHKQVDo86e9Jw/S7UI2OnArF4e6LiocIWzaj1wAa2', '215 Krystal Valley\nSouth Bettyeville, UT 88643', '53724 Runolfsdottir Curve\nJesston, NV 66155-0180', 'ADM-00243', '1988-07-15', 'B', 'Arts', '2025-2026', 'O\'Connell Ltd School', 'Nasir Mayer', 'Teacher', '01928661686', 'father243@example.com', '1728805226307', 'Juana Braun', 'Doctor', '01992668847', 'mother243@example.com', '7978147457907', 'Mrs. Alexandrine Koch Sr.', '01699522854', 'guardian243@example.com', '3811894759064', 'Grandparent', 1, 21, 6, '2025-12-24', NULL, 2025000243, 900243, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56', '127.0.0.1', 1, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56'),
(244, 'Madyson', 'Waters', '2019-07-18', 'Male', 'AB+', 'Islam', 'Bangladeshi', '0189493106262', '01386291972', 'student244@example.com', '$2y$12$e34BlcbftJpvtOmay2J1IuEdv3RfGAl2kBL6E0mgzWfZx44fGxwaO', '693 Steuber Circle Apt. 148\nBlickbury, SC 99221-0567', '627 Shanahan Trafficway Suite 583\nBernhardstad, NC 47441-4106', 'ADM-00244', '1983-09-23', 'A', 'Science', '2025-2026', 'Smith, Hills and Anderson School', 'Prof. Ahmad Kunde', 'Doctor', '01571414980', 'father244@example.com', '4789736435668', 'Rachel Ortiz', 'Teacher', '01896099757', 'mother244@example.com', '5142678249251', 'Murl Glover', '01695470196', 'guardian244@example.com', '5547873870581', 'Brother', 1, 25, 9, '2025-12-24', NULL, 2025000244, 900244, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56', '127.0.0.1', 1, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56'),
(245, 'Destiney', 'Kris', '1975-07-18', 'Female', 'A-', 'Other', 'Bangladeshi', '0004405157311', '01796839110', 'student245@example.com', '$2y$12$7S6tH29dYnVX0LH.SNflqeoLc1QkASKTKlJ4/QDm3/TJHK7H9Olty', '38954 Hildegard Dale\nNorth Darrenport, NV 19581', '9665 Nikolaus Pike\nLoisland, FL 21587', 'ADM-00245', '1998-08-14', 'A', 'Science', '2025-2026', 'Lowe LLC School', 'Gaetano Gerlach', 'Farmer', '01427692764', 'father245@example.com', '0390642930596', 'Felicita Schinner', 'Businesswoman', '01962073270', 'mother245@example.com', '4348863642930', 'Rigoberto Runolfsdottir', '01777090141', 'guardian245@example.com', '2461032409661', 'Uncle', 1, 24, 3, '2025-12-24', NULL, 2025000245, 900245, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56', '127.0.0.1', 1, NULL, '2025-12-24 09:39:56', '2025-12-24 09:39:56'),
(246, 'Raheem', 'Casper', '1988-02-02', 'Female', 'O-', 'Christian', 'Bangladeshi', '9624551015882', '01806822026', 'student246@example.com', '$2y$12$ej3wsa5Sb.si6SzQjdMxpOgHpp7QpOa5SSNOfabpBDfdyWoxYauVe', '26715 Stanton Light Suite 679\nJoannieborough, NV 03867', '9340 Trevion Burgs\nDaishatown, PA 23280-5054', 'ADM-00246', '1983-09-15', 'A', 'Arts', '2025-2026', 'Runte-Conroy School', 'Sammie Terry Sr.', 'Teacher', '01893195105', 'father246@example.com', '0575914800338', 'Kelsi Cartwright', 'Businesswoman', '01367453370', 'mother246@example.com', '3844956703086', 'Karley Tromp', '01458715445', 'guardian246@example.com', '7884966650973', 'Grandparent', 1, 24, 8, '2025-12-24', NULL, 2025000246, 900246, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57', '127.0.0.1', 1, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57'),
(247, 'Lucinda', 'Morissette', '1976-05-08', 'Other', 'AB-', 'Christian', 'Bangladeshi', '6733608333986', '01563793989', 'student247@example.com', '$2y$12$kd1Jce4AsHv0L/tkFJKTquosw9bHwDPIppCX70PhzePfXR/r7LS7O', '4882 Koelpin Island\nWeimannborough, VA 97921-8398', '56458 Jaclyn Orchard Apt. 595\nKatarinatown, AZ 22475', 'ADM-00247', '2000-11-18', 'C', 'Commerce', '2025-2026', 'Von Inc School', 'Norval Becker', 'Businessman', '01320425773', 'father247@example.com', '4239062845507', 'Bridget Kulas', 'Teacher', '01422618702', 'mother247@example.com', '9705774788758', 'Prof. Elwin Herzog IV', '01951678648', 'guardian247@example.com', '5763033661545', 'Brother', 1, 22, 1, '2025-12-24', NULL, 2025000247, 900247, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57', '127.0.0.1', 1, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57'),
(248, 'Cora', 'Christiansen', '1975-09-01', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '1506760008325', '01800720044', 'student248@example.com', '$2y$12$DcnYleiuMUT1Yu5R..DrPOHmH2QZoSEdlvYgh81bxj4Cn8LJZl1oa', '62808 Dickens Lodge\nCassinview, IA 90206', '183 Elfrieda Shoal Suite 358\nPort Fannieshire, MN 53529', 'ADM-00248', '2022-06-15', 'A', 'Commerce', '2025-2026', 'Ratke Ltd School', 'Nasir Yost', 'Teacher', '01796972813', 'father248@example.com', '5802391910495', 'Aurelia Parker', 'Doctor', '01321633730', 'mother248@example.com', '2180750643173', 'Jan Heller', '01930510926', 'guardian248@example.com', '8708757218678', 'Uncle', 1, 25, 8, '2025-12-24', NULL, 2025000248, 900248, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57', '127.0.0.1', 1, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57'),
(249, 'Dolores', 'Trantow', '1990-05-14', 'Female', 'AB+', 'Christian', 'Bangladeshi', '7134233683569', '01935226009', 'student249@example.com', '$2y$12$N76u.Jd2R5pFAHptoRKS9OpVKF9jECjMG94KNwLMyVu5zcuhITJOa', '4192 Desmond Rest\nEast Erickstad, KS 06016-2446', '44543 Bins Cove\nPort Luzburgh, ME 61338', 'ADM-00249', '1999-02-21', 'C', 'Arts', '2025-2026', 'Dickinson-Howe School', 'Prof. Hubert Breitenberg', 'Engineer', '01716918579', 'father249@example.com', '7426039663394', 'Prof. Lia Zemlak II', 'Doctor', '01307017187', 'mother249@example.com', '1739874294576', 'Mariane O\'Connell', '01667327284', 'guardian249@example.com', '1553671839594', 'Aunt', 1, 26, 9, '2025-12-24', NULL, 2025000249, 900249, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57', '127.0.0.1', 1, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57'),
(250, 'Yessenia', 'Hoeger', '1990-12-28', 'Male', 'A-', 'Christian', 'Bangladeshi', '7309129630563', '01969870680', 'student250@example.com', '$2y$12$Fog3qLeyVsoqCH6EqmKu4OYin3iacI8yvmtCx20YqQ9WYKzg2utom', '82359 Wisoky Flat\nStromanberg, AR 15577-3946', '348 Greenholt Valleys Suite 279\nPort Anais, FL 58390-2648', 'ADM-00250', '2008-12-13', 'B', 'Science', '2025-2026', 'Reynolds-Hagenes School', 'Ethan Dicki', 'Teacher', '01588492574', 'father250@example.com', '1131002068272', 'Daisha Legros', 'Doctor', '01524937343', 'mother250@example.com', '1410330914309', 'Thalia Marvin', '01650343169', 'guardian250@example.com', '7018520764406', 'Aunt', 1, 24, 2, '2025-12-24', NULL, 2025000250, 900250, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57', '127.0.0.1', 1, NULL, '2025-12-24 09:39:57', '2025-12-24 09:39:57'),
(251, 'Ray', 'Kuphal', '1977-11-07', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '8200305286761', '01657006885', 'student251@example.com', '$2y$12$7oLmuwO2PZHJw9d9LDufje9zTBqIDSBwOwJTdsEVzTh7MEpuNkLa6', '13696 Franecki Squares\nEfrentown, MS 28920-5254', '5978 Robin Mountain Apt. 598\nLake Rigoberto, WI 00846', 'ADM-00251', '2025-01-29', 'C', 'Arts', '2025-2026', 'Mills-Kovacek School', 'Mr. Bradford Hoeger MD', 'Businessman', '01401845665', 'father251@example.com', '8807648191113', 'Nelle Schmitt', 'Doctor', '01641980593', 'mother251@example.com', '2489541693671', 'Shaun Wintheiser', '01426230973', 'guardian251@example.com', '1437391365971', 'Grandparent', 1, 27, 9, '2025-12-24', NULL, 2025000251, 900251, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58', '127.0.0.1', 1, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58'),
(252, 'Arno', 'Pfeffer', '2017-02-09', 'Male', 'A+', 'Other', 'Bangladeshi', '8282668080603', '01767105506', 'student252@example.com', '$2y$12$0Va3g/nS7yYEwA9wTSIud.NMFHTNxdigebjvS4AgYTgq6PqSQ89JO', '884 Mueller Summit Apt. 550\nReynoldstown, WY 99435-1950', '121 Bo Station\nPort Kirstinside, ME 65241-5231', 'ADM-00252', '1973-12-30', 'B', 'Commerce', '2025-2026', 'Brakus LLC School', 'Sofia Breitenberg DVM', 'Engineer', '01434702452', 'father252@example.com', '6677095138160', 'Dr. Taya Schinner Jr.', 'Teacher', '01499474597', 'mother252@example.com', '4294839881960', 'Angeline Kunze II', '01894069290', 'guardian252@example.com', '4346248703866', 'Aunt', 1, 25, 3, '2025-12-24', NULL, 2025000252, 900252, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58', '127.0.0.1', 1, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58'),
(253, 'Roberto', 'Howell', '2004-08-27', 'Female', 'AB+', 'Islam', 'Bangladeshi', '1841037353228', '01794592512', 'student253@example.com', '$2y$12$L7lPeNZMyZ2xch.Aet8Q1OV3uQ9K4x9xKYirdQ3R2a9PTqKDV5V36', '91503 Runte Stravenue\nSouth Lester, AK 49205', '9731 Logan Trafficway Suite 890\nEast Conner, MN 50352-0289', 'ADM-00253', '2014-02-23', 'A', 'Commerce', '2025-2026', 'Nader Group School', 'Dr. Cornell Carroll', 'Doctor', '01849575622', 'father253@example.com', '2259347599975', 'Justina Kuhn', 'Teacher', '01761760853', 'mother253@example.com', '2362236918133', 'Prof. Collin O\'Kon Jr.', '01361079240', 'guardian253@example.com', '2275695745383', 'Uncle', 1, 26, 3, '2025-12-24', NULL, 2025000253, 900253, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58', '127.0.0.1', 1, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58'),
(254, 'Leatha', 'Schuppe', '1993-12-09', 'Female', 'A+', 'Hindu', 'Bangladeshi', '4122924964286', '01979833154', 'student254@example.com', '$2y$12$dIp9VT2gZdVpDHSKNJ89KuSnlFGneCKJiHw0etquhxu1Pa1VquWVO', '60511 Kariane Point Apt. 545\nJacobiton, AL 88248-7751', '5096 Abe Place Apt. 467\nWhitneychester, GA 82831-2459', 'ADM-00254', '2014-05-09', 'C', 'Arts', '2025-2026', 'Blick Group School', 'Dr. Dewayne Mueller Sr.', 'Businessman', '01835519110', 'father254@example.com', '1627796373533', 'Dr. Virginie Walter Jr.', 'Doctor', '01340943754', 'mother254@example.com', '8773398940981', 'Jarrett Gusikowski', '01607601082', 'guardian254@example.com', '7099154852203', 'Uncle', 1, 23, 4, '2025-12-24', NULL, 2025000254, 900254, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58', '127.0.0.1', 1, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58'),
(255, 'Darrel', 'Parisian', '1975-05-18', 'Male', 'O+', 'Christian', 'Bangladeshi', '8908020794037', '01882329735', 'student255@example.com', '$2y$12$8llnZN17/6WPaqAK69wOAObD.rnaPolvv7CsdpGDehc4yb0y.WAxa', '255 Langworth Club\nLake Shanon, MS 55977-7218', '42366 Bartholome Ports Apt. 298\nPort Darby, MI 07311', 'ADM-00255', '2006-08-23', 'C', 'Arts', '2025-2026', 'Kuvalis-Sauer School', 'Prof. Bernie Walsh II', 'Farmer', '01532765685', 'father255@example.com', '4656069447865', 'Laurence Kihn', 'Housewife', '01757147184', 'mother255@example.com', '6329730742766', 'Miss Gilda Koss PhD', '01804689585', 'guardian255@example.com', '9391028457378', 'Uncle', 1, 33, 10, '2025-12-24', NULL, 2025000255, 900255, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58', '127.0.0.1', 1, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58'),
(256, 'Karl', 'Davis', '1993-08-12', 'Other', 'O-', 'Christian', 'Bangladeshi', '9546585435036', '01352243537', 'student256@example.com', '$2y$12$666DxD9I8WWCQlxLkmzUde2xdcHr7aT/GmK7GpAqUB/zgT0Zrb5S2', '40247 Beier Estates\nNorth Alenatown, MO 49891-5621', '221 Ethel Junctions Suite 368\nSouth Laurelbury, RI 25904-8782', 'ADM-00256', '1978-06-03', 'A', 'Arts', '2025-2026', 'Kuvalis, Denesik and Kemmer School', 'Jeramie Walter', 'Farmer', '01785103673', 'father256@example.com', '5887209814435', 'Miss Wanda Gibson', 'Housewife', '01385948625', 'mother256@example.com', '0365813425849', 'Edison Klein', '01545391679', 'guardian256@example.com', '4546892807348', 'Grandparent', 1, 24, 4, '2025-12-24', NULL, 2025000256, 900256, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58', '127.0.0.1', 1, NULL, '2025-12-24 09:39:58', '2025-12-24 09:39:58'),
(257, 'Sydney', 'Schiller', '1996-03-10', 'Female', 'B-', 'Other', 'Bangladeshi', '7905108532454', '01506949245', 'student257@example.com', '$2y$12$l2.jDG4n3YywJM5JyXKig.pH0pDZqEX2RHdoiQ/9Q7fOxYDEHnS1q', '99134 Bartoletti Skyway\nAlexanneshire, WI 08546', '966 Jerde Port Suite 705\nNew Jessikaview, ID 77488', 'ADM-00257', '1985-01-11', 'A', 'Arts', '2025-2026', 'Jaskolski LLC School', 'Jovanny Luettgen', 'Engineer', '01959494204', 'father257@example.com', '4283489989592', 'Jazmyne Rowe', 'Nurse', '01671969181', 'mother257@example.com', '9455579871512', 'Marcella Feest', '01431058914', 'guardian257@example.com', '0032160336096', 'Uncle', 1, 27, 3, '2025-12-24', NULL, 2025000257, 900257, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59', '127.0.0.1', 1, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59'),
(258, 'Palma', 'Christiansen', '2021-04-24', 'Other', 'A-', 'Islam', 'Bangladeshi', '5216901398676', '01473003737', 'student258@example.com', '$2y$12$0cnKe.KOGT72bJaLnvsk2OuvhgRwjS372TduDw7TPyIehd2RNC0Ha', '30128 Gavin Route\nGrantville, IN 92896-7383', '5338 Erick Roads Apt. 877\nNorth Loraview, WA 34727', 'ADM-00258', '1992-06-22', 'C', 'Science', '2025-2026', 'Wuckert and Sons School', 'Mr. Pete Aufderhar', 'Farmer', '01527043509', 'father258@example.com', '1059927840597', 'Ova Thompson', 'Nurse', '01818563264', 'mother258@example.com', '6527815462719', 'Lavada Roob', '01557014425', 'guardian258@example.com', '0231512991032', 'Sister', 1, 26, 8, '2025-12-24', NULL, 2025000258, 900258, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59', '127.0.0.1', 1, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59'),
(259, 'Viva', 'Hand', '1980-03-21', 'Male', 'AB-', 'Islam', 'Bangladeshi', '9188423185564', '01378666062', 'student259@example.com', '$2y$12$HLICk92wQBJQLSSROXQ6COpf6sGbGzQ2.IWckAso5phSEmNgWES.6', '744 Milton Path\nSouth Jadyn, IN 85788', '381 McCullough Inlet\nLake Leifview, UT 39228-4835', 'ADM-00259', '2002-02-14', 'A', 'Arts', '2025-2026', 'Effertz, Botsford and Dickinson School', 'Dr. Nico Bahringer', 'Teacher', '01581045433', 'father259@example.com', '4269714956415', 'Prof. Laurie Medhurst Sr.', 'Teacher', '01763853200', 'mother259@example.com', '8947478498490', 'Shawna Mann', '01340856427', 'guardian259@example.com', '5356344324652', 'Uncle', 1, 34, 10, '2025-12-24', NULL, 2025000259, 900259, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59', '127.0.0.1', 1, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59'),
(260, 'Wilfred', 'Fay', '1988-10-25', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '2175874951625', '01536758546', 'student260@example.com', '$2y$12$ies5ZrAcvpMxvikS/uY/F.kKvCPAFLTBD3LgCMDStgqKf.Ek3S4nW', '50181 Audie Views\nLake Tyreeside, AR 60813', '23709 Kuhn Turnpike Suite 512\nWest Myah, FL 01447-2050', 'ADM-00260', '2019-12-07', 'B', 'Arts', '2025-2026', 'Ondricka, Breitenberg and Lockman School', 'Prof. Zackery Gutkowski Sr.', 'Engineer', '01668650296', 'father260@example.com', '5949847708870', 'Mrs. Noemie Witting DVM', 'Housewife', '01910178771', 'mother260@example.com', '1632934749657', 'Dayne Parker', '01451737957', 'guardian260@example.com', '5669622036679', 'Uncle', 1, 22, 6, '2025-12-24', NULL, 2025000260, 900260, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59', '127.0.0.1', 1, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59'),
(261, 'Maryjane', 'VonRueden', '1996-02-14', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '6789995513345', '01998769030', 'student261@example.com', '$2y$12$ITxSYb3XG8.4VIzF4tjeGeVvi2dXcYWC3cNWOW9Ntd7hiq/LCQU8i', '49147 Klocko Square\nNorth Georgiana, HI 58542', '767 Bernhard Courts\nWeberside, WY 12931-0311', 'ADM-00261', '2002-09-08', 'C', 'Commerce', '2025-2026', 'Stracke Inc School', 'Dr. Baron Koelpin', 'Engineer', '01371752709', 'father261@example.com', '3835123285695', 'Georgianna Rutherford', 'Teacher', '01895770752', 'mother261@example.com', '9980959379973', 'Yvette Wilderman V', '01389881567', 'guardian261@example.com', '7973423489514', 'Aunt', 1, 32, 5, '2025-12-24', NULL, 2025000261, 900261, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59', '127.0.0.1', 1, NULL, '2025-12-24 09:39:59', '2025-12-24 09:39:59'),
(262, 'Scot', 'Schneider', '1987-11-28', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '6767267135630', '01976539606', 'student262@example.com', '$2y$12$M.F7gZ1EGRk9aDM8OSlaE.PDdUfsP9h4rTLGLhgYmS/a4jmdKXg/y', '80283 Stefan Orchard Suite 297\nMaeganstad, AZ 02740-9346', '1921 Grimes Alley\nBartellland, AK 31641-3726', 'ADM-00262', '1986-12-22', 'A', 'Science', '2025-2026', 'Hammes Ltd School', 'Abner Greenholt DDS', 'Teacher', '01903290636', 'father262@example.com', '7610391188681', 'Aracely Pfeffer', 'Nurse', '01889663732', 'mother262@example.com', '8402361302349', 'Prof. Kareem Ruecker I', '01345015052', 'guardian262@example.com', '9353931270870', 'Brother', 1, 23, 1, '2025-12-24', NULL, 2025000262, 900262, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00', '127.0.0.1', 1, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00'),
(263, 'Branson', 'O\'Connell', '1978-10-06', 'Other', 'O-', 'Islam', 'Bangladeshi', '8656487156364', '01756039833', 'student263@example.com', '$2y$12$99vQM8J//uTmCtiQo8skn.w9YBMeai/ctWquSZJMgght/gqpNUoKG', '7712 Keeling Cliff\nHauckberg, NV 19921-3081', '48276 Rebecca Mission\nSouth Brooke, MS 37585-9570', 'ADM-00263', '2009-12-31', 'B', 'Commerce', '2025-2026', 'Hauck, Terry and Lindgren School', 'Raleigh Lebsack', 'Doctor', '01976383320', 'father263@example.com', '7334943530090', 'Miss Novella Jakubowski III', 'Housewife', '01432828180', 'mother263@example.com', '4980575790282', 'Easter Shanahan', '01678213834', 'guardian263@example.com', '3144891475321', 'Grandparent', 1, 25, 2, '2025-12-24', NULL, 2025000263, 900263, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00', '127.0.0.1', 1, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00'),
(264, 'Georgiana', 'Hermiston', '1982-12-02', 'Male', 'AB-', 'Other', 'Bangladeshi', '6118721224870', '01849285791', 'student264@example.com', '$2y$12$Y/foSQP4J1a6IdEe4K7fX.04JuwesBbAL/25HD3LE8drZhuI2bFPm', '744 Jeramie Circles\nNew Yvonne, WI 24538', '635 Welch Brook\nMitchellchester, MI 83440', 'ADM-00264', '2016-07-17', 'C', 'Arts', '2025-2026', 'Daugherty, Willms and Reichert School', 'Prof. Emmett Raynor DDS', 'Doctor', '01409744669', 'father264@example.com', '7897276802107', 'Dr. Carlee Mann PhD', 'Housewife', '01479304013', 'mother264@example.com', '1366275558955', 'Newton Littel', '01747596522', 'guardian264@example.com', '7011012501872', 'Aunt', 1, 33, 5, '2025-12-24', NULL, 2025000264, 900264, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00', '127.0.0.1', 1, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00'),
(265, 'Janessa', 'Rath', '2014-10-04', 'Male', 'AB+', 'Christian', 'Bangladeshi', '5604628322137', '01926346919', 'student265@example.com', '$2y$12$x74G81c4o6C2JcG4lLSbsOAS.qrov/lWKaeeNFOLan3ts07WuEznG', '22768 Fern Mountain Suite 590\nSouth Fidelport, IN 36029-3461', '21317 Bergnaum Lodge Suite 207\nWest Erickaside, DE 79227-2460', 'ADM-00265', '1979-03-18', 'C', 'Commerce', '2025-2026', 'Grady Inc School', 'Dr. Gilberto Wehner II', 'Farmer', '01306867933', 'father265@example.com', '6603168756593', 'Iva Hoppe DVM', 'Doctor', '01610908434', 'mother265@example.com', '9290531973069', 'Dayna Schimmel', '01399714522', 'guardian265@example.com', '3796106737710', 'Grandparent', 1, 34, 5, '2025-12-24', NULL, 2025000265, 900265, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00', '127.0.0.1', 1, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00'),
(266, 'Shaylee', 'Dietrich', '2000-10-29', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '6447145451995', '01997610245', 'student266@example.com', '$2y$12$AGbznDyZDftz63TwdcW6hOqfh0PEA4eZSveHt7/eolM6k8KK0ozGe', '1576 Mayer Alley\nNorth Josianne, MO 84361', '81416 Ledner Creek Apt. 945\nGislasonberg, TX 71829-4143', 'ADM-00266', '1994-11-27', 'C', 'Science', '2025-2026', 'Schmidt Group School', 'Prof. Carleton Carter IV', 'Businessman', '01417259584', 'father266@example.com', '1928481941663', 'Julie Crooks', 'Doctor', '01417903322', 'mother266@example.com', '4314711750229', 'Icie King', '01382505103', 'guardian266@example.com', '1507444926322', 'Uncle', 1, 25, 4, '2025-12-24', NULL, 2025000266, 900266, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00', '127.0.0.1', 1, NULL, '2025-12-24 09:40:00', '2025-12-24 09:40:00'),
(267, 'Kaylee', 'Lakin', '1994-02-16', 'Male', 'O-', 'Hindu', 'Bangladeshi', '2146655065610', '01677518255', 'student267@example.com', '$2y$12$fd2Yv8C.4O/t7us3ufb0KerTMDPkM0l3M6k8RFJhrThfLZAGWmaNS', '7951 Chanel Loaf Apt. 656\nAlisaview, TN 84869-0003', '93617 Leslie Ford Suite 870\nPorterview, WA 36413-2206', 'ADM-00267', '1996-07-27', 'A', 'Science', '2025-2026', 'Keeling-Moen School', 'Alexandro Auer', 'Farmer', '01641988423', 'father267@example.com', '7662754205167', 'Raegan Hayes PhD', 'Businesswoman', '01717847152', 'mother267@example.com', '9431401698610', 'Kim Crist MD', '01559616043', 'guardian267@example.com', '0120139829603', 'Sister', 1, 24, 1, '2025-12-24', NULL, 2025000267, 900267, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01', '127.0.0.1', 1, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01'),
(268, 'Ben', 'Sipes', '2004-02-15', 'Male', 'B-', 'Hindu', 'Bangladeshi', '6750156242172', '01529319509', 'student268@example.com', '$2y$12$K/B.fGwXaawzNmxVvq36KuwvlPi5ibAbKyNQGgbeMEbY6wThtVkYy', '109 David Crossing\nArdellaville, IN 50929-3951', '1785 Sporer Cliff Suite 565\nNigelstad, NM 81899-2910', 'ADM-00268', '1999-07-10', 'C', 'Arts', '2025-2026', 'Kulas PLC School', 'Florencio Jakubowski', 'Businessman', '01836263102', 'father268@example.com', '5426331269293', 'America Yundt', 'Housewife', '01800622334', 'mother268@example.com', '7727966725855', 'Mrs. Pearlie Koepp DDS', '01337456181', 'guardian268@example.com', '8088910897965', 'Brother', 1, 23, 6, '2025-12-24', NULL, 2025000268, 900268, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01', '127.0.0.1', 1, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01'),
(269, 'Raoul', 'Kertzmann', '1981-01-13', 'Female', 'B-', 'Other', 'Bangladeshi', '4681345547005', '01568936168', 'student269@example.com', '$2y$12$lQtDg.KQA17r6ZPReETtfO5C2QUZZUI7APPt8qNyX8kMjhqzNWAIW', '8509 Ward Mountain Suite 360\nLeschhaven, CA 28442-0393', '77516 Eunice Via Suite 853\nSouth Roxanneburgh, VT 44049', 'ADM-00269', '2000-05-26', 'A', 'Arts', '2025-2026', 'Olson Ltd School', 'Joel Christiansen', 'Teacher', '01881068944', 'father269@example.com', '6830307344492', 'Chelsie Cartwright', 'Doctor', '01603974190', 'mother269@example.com', '2605607951041', 'Miss Tess Schaden', '01355345033', 'guardian269@example.com', '3010611215278', 'Sister', 1, 28, 9, '2025-12-24', NULL, 2025000269, 900269, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01', '127.0.0.1', 1, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01'),
(270, 'Kennedy', 'Hyatt', '2018-07-02', 'Other', 'B-', 'Christian', 'Bangladeshi', '2361202925506', '01707938150', 'student270@example.com', '$2y$12$/IAHCusWC1SMPkWpBXRBt.R.mg.lgObpSEMjf4WeRX2Bok1pIcKeC', '1128 Golden Forge\nAimeemouth, KS 48383-4885', '53594 Gulgowski Circle Suite 480\nPort Colleenside, CO 26826-9888', 'ADM-00270', '1993-04-24', 'B', 'Commerce', '2025-2026', 'Hill Inc School', 'Uriel Leannon', 'Engineer', '01922170615', 'father270@example.com', '3827304729803', 'Myrtie Watsica', 'Doctor', '01331534237', 'mother270@example.com', '7206413984018', 'Mike Wunsch', '01794078048', 'guardian270@example.com', '8931385290997', 'Uncle', 1, 24, 7, '2025-12-24', NULL, 2025000270, 900270, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01', '127.0.0.1', 1, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01'),
(271, 'Richie', 'Kautzer', '2001-10-25', 'Other', 'B+', 'Hindu', 'Bangladeshi', '3145767981001', '01598441690', 'student271@example.com', '$2y$12$WENQJG7GMHmlQX.11c7Rdun9QEI3pYu.fBY5LwJ/fRL0wBluIKO4S', '63935 Orin Street Apt. 347\nRosieville, SD 43156', '32092 Gutkowski Viaduct\nEast Laverne, NE 21844-2196', 'ADM-00271', '1995-01-11', 'C', 'Science', '2025-2026', 'Skiles and Sons School', 'Antonio Collier', 'Teacher', '01344069466', 'father271@example.com', '5276381208246', 'Berniece Langworth', 'Teacher', '01806731518', 'mother271@example.com', '8616451844516', 'Dr. Max DuBuque', '01588753547', 'guardian271@example.com', '9175643725738', 'Brother', 1, 25, 7, '2025-12-24', NULL, 2025000271, 900271, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01', '127.0.0.1', 1, NULL, '2025-12-24 09:40:01', '2025-12-24 09:40:01'),
(272, 'Stanley', 'Upton', '1980-02-17', 'Other', 'O+', 'Islam', 'Bangladeshi', '3785143544322', '01785383001', 'student272@example.com', '$2y$12$zGQ6M/kDVRhFEx4AOR2Ho.vOOLzFV1BdD1KZWFF6GvJanbitTJigO', '76554 Retta Lock\nNew Iliana, IN 80437', '35677 Oral Shores\nWest Logan, MT 08127-6726', 'ADM-00272', '2002-05-26', 'B', 'Commerce', '2025-2026', 'Trantow-Feest School', 'Prof. Willard Nicolas V', 'Engineer', '01488596603', 'father272@example.com', '0621525378732', 'Prof. Helene Klocko', 'Doctor', '01899428049', 'mother272@example.com', '2220350285326', 'Merritt Corkery MD', '01602559042', 'guardian272@example.com', '7171052374277', 'Uncle', 1, 26, 2, '2025-12-24', NULL, 2025000272, 900272, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02', '127.0.0.1', 1, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02'),
(273, 'Stephon', 'Gutmann', '1999-02-14', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '2581308472553', '01577592254', 'student273@example.com', '$2y$12$jBSvcCFxH2mKLJKASqww7.DCkOzS4L2rVs9XGMWAXGJMG65T7Ovfe', '8381 Denis Streets\nEast Claudeside, MS 06135', '54015 Julianne Isle\nLake Delilahberg, AZ 04063-4104', 'ADM-00273', '1983-05-17', 'A', 'Commerce', '2025-2026', 'Haag, Hudson and Predovic School', 'Tom Ward', 'Farmer', '01389084545', 'father273@example.com', '0958037981183', 'Ottilie Mitchell', 'Nurse', '01403028427', 'mother273@example.com', '6256641419357', 'Jazmyne McClure', '01348019428', 'guardian273@example.com', '3881463707015', 'Grandparent', 1, 26, 4, '2025-12-24', NULL, 2025000273, 900273, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02', '127.0.0.1', 1, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02'),
(274, 'Esta', 'Heaney', '1997-08-16', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '6505329999454', '01315621665', 'student274@example.com', '$2y$12$uWi7/pjrX8AMjPlkC0.Viu8xtT/LlWi7cOK/zzcS57KnxjpONHdJa', '88851 Felicia Green Suite 508\nPort Lindseyburgh, KY 00504', '7605 Cronin Course\nNorth Wardland, HI 66216', 'ADM-00274', '2009-04-09', 'B', 'Commerce', '2025-2026', 'Ward Ltd School', 'Adan Pfannerstill', 'Doctor', '01414624326', 'father274@example.com', '0904161492465', 'Andreane Stanton', 'Doctor', '01802579962', 'mother274@example.com', '7122177262118', 'Bennie Greenholt', '01761059688', 'guardian274@example.com', '1775641001297', 'Sister', 1, 28, 3, '2025-12-24', NULL, 2025000274, 900274, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02', '127.0.0.1', 1, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02'),
(275, 'Garth', 'Wehner', '2025-08-14', 'Other', 'O-', 'Hindu', 'Bangladeshi', '5504154611045', '01592438520', 'student275@example.com', '$2y$12$iu18TUrg35lXRAaBbkNoSugRIpqAKdPs8XFlP5hIG03MlDBahHmdW', '636 Addison Point Suite 142\nDanielahaven, HI 72001', '636 Earline Junction\nBartolettistad, WY 66585-4457', 'ADM-00275', '2000-09-26', 'C', 'Science', '2025-2026', 'Reichel, Kris and Pouros School', 'Brannon Schoen', 'Engineer', '01917079263', 'father275@example.com', '6413606223937', 'Jakayla Kuvalis', 'Businesswoman', '01489702010', 'mother275@example.com', '7781974132503', 'Pansy Nikolaus', '01590377252', 'guardian275@example.com', '9718510576268', 'Sister', 1, 27, 4, '2025-12-24', NULL, 2025000275, 900275, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02', '127.0.0.1', 1, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02'),
(276, 'Herbert', 'Wolf', '2001-05-06', 'Other', 'O+', 'Christian', 'Bangladeshi', '9260530782021', '01367223786', 'student276@example.com', '$2y$12$VAWA6cjmTgGcepY7v3CXAOPK663k7hfArcgX0bXxGkGc4UvY6w05y', '515 Ondricka Meadows Suite 583\nNatfort, AZ 32882-7082', '541 Margarett Summit Apt. 936\nSchillerport, HI 86584', 'ADM-00276', '2023-04-11', 'A', 'Commerce', '2025-2026', 'Ortiz, Luettgen and Ratke School', 'Elroy Steuber Jr.', 'Farmer', '01773271440', 'father276@example.com', '6166993207432', 'Miss Alisha Cartwright DVM', 'Nurse', '01433372864', 'mother276@example.com', '6675683915444', 'Mr. Brant Little PhD', '01794335112', 'guardian276@example.com', '5520463021265', 'Aunt', 1, 35, 10, '2025-12-24', NULL, 2025000276, 900276, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02', '127.0.0.1', 1, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02'),
(277, 'Thora', 'Mann', '2001-01-30', 'Other', 'A+', 'Islam', 'Bangladeshi', '4355769446391', '01703958395', 'student277@example.com', '$2y$12$xtts18KLTVVlbvymA4xjuuljtkf6n55QMMgoHmEbewmW2XrzByuPa', '323 Anabelle Freeway\nNew Nella, CA 30847', '824 Gusikowski Course\nRosettastad, AK 15802', 'ADM-00277', '1972-05-25', 'B', 'Commerce', '2025-2026', 'Little, Kling and Murphy School', 'Diego Leffler', 'Farmer', '01375497555', 'father277@example.com', '2829993654687', 'Katarina Ruecker IV', 'Businesswoman', '01473982592', 'mother277@example.com', '0972460251102', 'Mr. Randi Satterfield DDS', '01827852858', 'guardian277@example.com', '8986570013064', 'Aunt', 1, 36, 10, '2025-12-24', NULL, 2025000277, 900277, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02', '127.0.0.1', 1, NULL, '2025-12-24 09:40:02', '2025-12-24 09:40:02'),
(278, 'Abdul', 'Keebler', '2016-04-14', 'Male', 'O+', 'Islam', 'Bangladeshi', '5992811002604', '01577717905', 'student278@example.com', '$2y$12$.uk/LbHUcCCAdZvSahzhqOwneCKndYCHbBQKcQF.hYVGzpLgdGWji', '355 Parisian Street Apt. 534\nCasimirport, UT 00942', '58597 Gerlach Mountain\nAnnamaeport, FL 23198-7295', 'ADM-00278', '1998-08-10', 'C', 'Commerce', '2025-2026', 'Bosco, Witting and Kovacek School', 'Roosevelt Pfeffer', 'Engineer', '01819822137', 'father278@example.com', '4894298659121', 'Fabiola Fisher', 'Nurse', '01332324201', 'mother278@example.com', '6414270444162', 'Arjun Gibson Sr.', '01935715085', 'guardian278@example.com', '2937151024555', 'Sister', 1, 28, 4, '2025-12-24', NULL, 2025000278, 900278, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03', '127.0.0.1', 1, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03'),
(279, 'Britney', 'Grimes', '2023-10-17', 'Female', 'O-', 'Hindu', 'Bangladeshi', '9106429015280', '01407705565', 'student279@example.com', '$2y$12$VNl0Zck73pkNpwxRrbS3H.0cyfKii0wzFUAcAGYMpQlT/FXzuOv9i', '4218 Watsica Locks\nSouth Shanelshire, NY 28031', '938 Kassulke Stream\nVioletteborough, WV 99525-5100', 'ADM-00279', '2005-05-10', 'A', 'Arts', '2025-2026', 'Legros-Toy School', 'Fritz Cremin', 'Teacher', '01698754489', 'father279@example.com', '9583353677840', 'Ettie Wintheiser', 'Doctor', '01459562275', 'mother279@example.com', '7641372050924', 'Nyah Gleichner', '01883174154', 'guardian279@example.com', '5074113640105', 'Sister', 1, 29, 9, '2025-12-24', NULL, 2025000279, 900279, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03', '127.0.0.1', 1, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03'),
(280, 'Angeline', 'Homenick', '2014-10-14', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '5994727951938', '01349540571', 'student280@example.com', '$2y$12$HjfPaVfe57ZyG.1KWiFfduISjbqbGI3AtKbGUVUHA8RheS9ec77.C', '7204 Immanuel Squares Apt. 949\nUrbanshire, OR 70940', '1789 Hillary Ferry\nNew Dannyview, DC 52063', 'ADM-00280', '2016-02-03', 'A', 'Arts', '2025-2026', 'O\'Conner-Jaskolski School', 'Reginald Schiller', 'Engineer', '01955300798', 'father280@example.com', '6245707869304', 'Annabell Windler', 'Teacher', '01712138913', 'mother280@example.com', '8353319276434', 'Ms. Dora Heller', '01373494893', 'guardian280@example.com', '3372880146947', 'Aunt', 1, 26, 7, '2025-12-24', NULL, 2025000280, 900280, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03', '127.0.0.1', 1, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03'),
(281, 'Leanna', 'Cruickshank', '2023-06-16', 'Female', 'B-', 'Christian', 'Bangladeshi', '5818746543849', '01336215542', 'student281@example.com', '$2y$12$FKUNngMvsGZ0HwfBHX.9He3RjzqsJ9YBlooHi4IHM/FyqHE0rYdii', '154 Stanton Fork Suite 501\nCarrieview, SC 37080', '878 Reichel Shoal Suite 390\nDickitown, ME 65185-6881', 'ADM-00281', '2024-07-14', 'A', 'Commerce', '2025-2026', 'Beahan-Predovic School', 'Frederick Goldner', 'Doctor', '01543024761', 'father281@example.com', '8144701060422', 'Dr. Claudia Miller', 'Doctor', '01766843068', 'mother281@example.com', '4050989630378', 'Adelle Kovacek', '01560402788', 'guardian281@example.com', '7134298574254', 'Uncle', 1, 35, 5, '2025-12-24', NULL, 2025000281, 900281, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03', '127.0.0.1', 1, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03'),
(282, 'Ward', 'Russel', '2012-04-02', 'Other', 'B+', 'Other', 'Bangladeshi', '4104997847301', '01305221785', 'student282@example.com', '$2y$12$eMjD4gYrwcHQMy68BKrqfu16RBu9lOjw.F0t/EZXDrxD0MpipyfJe', '2727 Amara Run\nHayesmouth, MD 00297', '807 Breanna Mill Apt. 120\nPort Winnifredville, LA 39479', 'ADM-00282', '1970-08-29', 'C', 'Commerce', '2025-2026', 'Jacobson, Klein and Adams School', 'Eriberto Nicolas', 'Businessman', '01540250310', 'father282@example.com', '7679255023512', 'Prof. Jody Schinner', 'Businesswoman', '01386563813', 'mother282@example.com', '5328599432201', 'Dr. Brent Bernier I', '01707500320', 'guardian282@example.com', '1106703270289', 'Aunt', 1, 36, 5, '2025-12-24', NULL, 2025000282, 900282, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03', '127.0.0.1', 1, NULL, '2025-12-24 09:40:03', '2025-12-24 09:40:03'),
(283, 'Mariano', 'Lindgren', '2009-03-02', 'Female', 'A+', 'Hindu', 'Bangladeshi', '7571807483426', '01722957500', 'student283@example.com', '$2y$12$frd7uXGzUClYorqU1lNdquMUQXIhYPRpCMS.7pCOAB.7oVbYc1cYe', '3278 Rodriguez Gardens\nWest Margueriteside, TN 85854-2618', '9996 Hoppe Shoals Suite 734\nHoracioville, OR 02173-5445', 'ADM-00283', '2010-02-22', 'A', 'Science', '2025-2026', 'Dickinson-Bruen School', 'Casimir Abbott DDS', 'Teacher', '01401418781', 'father283@example.com', '9946321257470', 'Florence Lakin', 'Nurse', '01472778169', 'mother283@example.com', '0462252996180', 'Prof. Dakota Gibson', '01661719399', 'guardian283@example.com', '0269926251998', 'Aunt', 1, 30, 9, '2025-12-24', NULL, 2025000283, 900283, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04', '127.0.0.1', 1, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04'),
(284, 'Nyah', 'Altenwerth', '2010-12-31', 'Male', 'A+', 'Christian', 'Bangladeshi', '1891877514857', '01604049752', 'student284@example.com', '$2y$12$j9fFGd81nM.qktbbAu2ZJuXZNV7luTmG5sWPLOCuKmKm5GAhAAski', '4451 Felipe Canyon\nLake Marcelleton, NJ 25771-5884', '868 Leonel Port Apt. 833\nPort Ronny, NJ 39111', 'ADM-00284', '1982-11-20', 'C', 'Commerce', '2025-2026', 'Hand-Rodriguez School', 'Prof. Alexandro Langworth Jr.', 'Businessman', '01389433382', 'father284@example.com', '1331408524257', 'Laurie Block II', 'Teacher', '01863397156', 'mother284@example.com', '5987109899853', 'Prof. Hadley Smith I', '01927402614', 'guardian284@example.com', '4130386962466', 'Aunt', 1, 27, 8, '2025-12-24', NULL, 2025000284, 900284, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04', '127.0.0.1', 1, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04'),
(285, 'Kayden', 'Nikolaus', '1982-03-14', 'Other', 'A-', 'Christian', 'Bangladeshi', '8926369731542', '01626771157', 'student285@example.com', '$2y$12$C64Pi4G/HKpzJSByAybht.i6xmFQDyQJEYAGZeWP1gFMf3cgnk9kK', '613 Lucienne Meadows\nLuettgenberg, AR 07414-8939', '6913 Zboncak Knoll\nNorth Alessiaborough, WA 13864-3223', 'ADM-00285', '2000-12-16', 'A', 'Arts', '2025-2026', 'Gutmann-Johns School', 'Roderick Mohr', 'Farmer', '01572381739', 'father285@example.com', '6105277698635', 'Ms. Krystel Pagac Jr.', 'Teacher', '01689558371', 'mother285@example.com', '7893633345670', 'Brenna Herman', '01398335652', 'guardian285@example.com', '1671492929983', 'Aunt', 1, 28, 8, '2025-12-24', NULL, 2025000285, 900285, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04', '127.0.0.1', 1, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04'),
(286, 'Johnson', 'Hagenes', '1986-06-10', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '4702213550956', '01773929532', 'student286@example.com', '$2y$12$a1T7nOy7TiKHxmiGT8abhuPUlqP7Edy/Gn1xZXTLoXXsq1W0aNYg2', '99615 Shanna Hill Apt. 049\nEulaliaburgh, GA 99423-0615', '28643 Jacinthe Hill\nWest Sisterburgh, AL 79217-0449', 'ADM-00286', '2022-05-02', 'B', 'Science', '2025-2026', 'Rowe-Cronin School', 'Jacinto Borer', 'Engineer', '01886010274', 'father286@example.com', '2085453228021', 'Dr. Meghan Stiedemann', 'Businesswoman', '01610844616', 'mother286@example.com', '0181131536710', 'Dion Gibson', '01389878974', 'guardian286@example.com', '2573806576778', 'Aunt', 1, 29, 3, '2025-12-24', NULL, 2025000286, 900286, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04', '127.0.0.1', 1, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `admission_no`, `admission_date`, `section`, `group`, `session_year`, `previous_school`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `remember_token`, `created_at`, `updated_at`) VALUES
(287, 'Markus', 'Barrows', '1998-04-15', 'Other', 'O-', 'Islam', 'Bangladeshi', '3537611874620', '01943761083', 'student287@example.com', '$2y$12$IvAPhgB7gf.y6wGm.t/ZFuMxB8MpDoKoe8.zfN4E2ZIDZYJawPl2q', '6783 Payton Isle\nPort Jazminchester, AK 80987-3956', '9295 Prohaska Plain\nUriahville, MN 80508-4590', 'ADM-00287', '1996-07-23', 'C', 'Science', '2025-2026', 'Weimann Group School', 'Dewayne Grant', 'Doctor', '01483333108', 'father287@example.com', '5979309621027', 'Linda Hackett V', 'Businesswoman', '01903635162', 'mother287@example.com', '3674119233846', 'Mossie Connelly', '01390322627', 'guardian287@example.com', '6218051885704', 'Brother', 1, 25, 1, '2025-12-24', NULL, 2025000287, 900287, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04', '127.0.0.1', 1, NULL, '2025-12-24 09:40:04', '2025-12-24 09:40:04'),
(288, 'Ryan', 'Haag', '2006-04-14', 'Male', 'B+', 'Islam', 'Bangladeshi', '0285395889026', '01357463003', 'student288@example.com', '$2y$12$750gHAzC4bwYOEcA83cUDeNZTXNYNErpB3OsrwxIbq6bfAoI7q20i', '245 Mattie Flats\nMillermouth, FL 69753', '2780 Janice Island Apt. 555\nWest Abbie, WI 34328', 'ADM-00288', '1992-02-14', 'C', 'Arts', '2025-2026', 'Torp-Ullrich School', 'Jeremie Nicolas', 'Engineer', '01701396522', 'father288@example.com', '7521170173684', 'Ms. Kitty Bins PhD', 'Nurse', '01860131779', 'mother288@example.com', '9090708247249', 'Mr. Thaddeus Graham', '01788157788', 'guardian288@example.com', '2790381808262', 'Sister', 1, 27, 2, '2025-12-24', NULL, 2025000288, 900288, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05', '127.0.0.1', 1, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05'),
(289, 'Noble', 'Hand', '1981-03-22', 'Female', 'B-', 'Islam', 'Bangladeshi', '8975032951856', '01302981688', 'student289@example.com', '$2y$12$QQJHmJO2Tgj2V3Bx8oniiePs7kcMpZ8Cry/3SP1Q4wBXNXK.ntJeG', '761 Jesse Vista Apt. 359\nEast Kiana, TX 26828', '283 Annette Unions Suite 616\nKlingburgh, LA 89013', 'ADM-00289', '2015-11-05', 'C', 'Commerce', '2025-2026', 'McKenzie-Nolan School', 'Kendall Hills MD', 'Businessman', '01932419895', 'father289@example.com', '6305373882942', 'Brielle Gulgowski I', 'Housewife', '01796006768', 'mother289@example.com', '5944416734237', 'Billy Cremin', '01377629999', 'guardian289@example.com', '8421536613721', 'Sister', 1, 28, 2, '2025-12-24', NULL, 2025000289, 900289, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05', '127.0.0.1', 1, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05'),
(290, 'Margaret', 'Casper', '1991-10-07', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '1931092745980', '01601886063', 'student290@example.com', '$2y$12$Nbq7yoz5GA/0VxUKp7b/IuMOnjX3O3zUlrwEcvKHceus4bbdFspd2', '6865 Blick Inlet\nPort Brockberg, HI 89891-7117', '323 Michael Ramp Suite 647\nSouth Marafurt, WI 18323', 'ADM-00290', '1992-07-06', 'A', 'Arts', '2025-2026', 'Pouros-Gusikowski School', 'Clair Trantow', 'Engineer', '01480412205', 'father290@example.com', '6050676091238', 'Juliana Mueller PhD', 'Businesswoman', '01388092512', 'mother290@example.com', '1397179020884', 'Noble Feeney', '01712631044', 'guardian290@example.com', '1695019370071', 'Uncle', 1, 30, 3, '2025-12-24', NULL, 2025000290, 900290, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05', '127.0.0.1', 1, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05'),
(291, 'Freida', 'Schowalter', '1975-08-17', 'Male', 'A-', 'Christian', 'Bangladeshi', '6980845403115', '01400037949', 'student291@example.com', '$2y$12$xnzFhKTIlYT9RsHb9lbbg.rynB9bFB1/qIIaCaSXdW4jZW6gstjme', '62711 Skiles Drives\nLake Kelley, ID 91949', '48930 Britney Shore Apt. 174\nTowneborough, TX 37582-9622', 'ADM-00291', '1991-07-04', 'C', 'Arts', '2025-2026', 'Sporer-Leffler School', 'Mr. Andre Bailey', 'Farmer', '01612047229', 'father291@example.com', '9587920117514', 'Claudine Carter', 'Housewife', '01636722734', 'mother291@example.com', '9127112891245', 'Urban Witting', '01577010089', 'guardian291@example.com', '9715236717609', 'Aunt', 1, 37, 5, '2025-12-24', NULL, 2025000291, 900291, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05', '127.0.0.1', 1, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05'),
(292, 'Maverick', 'Kuhic', '2019-04-15', 'Other', 'O+', 'Other', 'Bangladeshi', '3636997330036', '01417736149', 'student292@example.com', '$2y$12$f3Zec8hxqqL.Q..dh57Pq.ZM3TPKZk/lUD30pW5gedVc71mmpxJ5K', '697 Amaya Drive\nKulasland, ID 59260', '22703 Morris Branch Apt. 614\nNorth Rhettton, WV 84151', 'ADM-00292', '2007-11-23', 'C', 'Commerce', '2025-2026', 'Murray-Ritchie School', 'Mr. Giovani Gleichner Jr.', 'Doctor', '01482048609', 'father292@example.com', '6089431894345', 'Suzanne Swaniawski', 'Teacher', '01783707143', 'mother292@example.com', '9456368674084', 'Kip Hackett', '01549037460', 'guardian292@example.com', '7722309355896', 'Grandparent', 1, 24, 6, '2025-12-24', NULL, 2025000292, 900292, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05', '127.0.0.1', 1, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05'),
(293, 'Jed', 'Swift', '1971-05-23', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '6286828333210', '01567804537', 'student293@example.com', '$2y$12$FC06s902tpDCILlcLzu/fedSeUfAFO1MJE/Hoc0zNi577EiP/9.Zi', '8660 Windler Point\nSatterfieldmouth, SC 05155-7691', '6373 Stephania Fields\nSouth Larry, MO 61797', 'ADM-00293', '2021-11-23', 'A', 'Science', '2025-2026', 'McDermott, Dicki and Sawayn School', 'Dario Sanford III', 'Farmer', '01904225790', 'father293@example.com', '8852783440299', 'Shany Heller', 'Nurse', '01997001473', 'mother293@example.com', '1551782467720', 'Daisha Wintheiser Sr.', '01812959928', 'guardian293@example.com', '9756255454864', 'Brother', 1, 25, 6, '2025-12-24', NULL, 2025000293, 900293, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05', '127.0.0.1', 1, NULL, '2025-12-24 09:40:05', '2025-12-24 09:40:05'),
(294, 'Alan', 'Anderson', '1981-02-05', 'Male', 'A+', 'Christian', 'Bangladeshi', '6576965431341', '01872214922', 'student294@example.com', '$2y$12$DQoh1XJa8BYWA9dK7WbRHOr6iFwB1eG9LLXk2RmumHcCBXoEQXpna', '8836 Ramon Mews\nEast Reginald, IN 36410-3295', '2063 Stoltenberg Lakes Apt. 149\nHarveyhaven, CT 99867-3799', 'ADM-00294', '1970-03-21', 'B', 'Commerce', '2025-2026', 'White-Reynolds School', 'Dr. Arch Kerluke I', 'Farmer', '01460124783', 'father294@example.com', '4408814727688', 'Magali Hills', 'Businesswoman', '01990927217', 'mother294@example.com', '1600772294955', 'Mrs. Ollie Mante IV', '01847962799', 'guardian294@example.com', '2133768738730', 'Uncle', 1, 26, 6, '2025-12-24', NULL, 2025000294, 900294, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06', '127.0.0.1', 1, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06'),
(295, 'Taurean', 'West', '1990-08-18', 'Female', 'A-', 'Christian', 'Bangladeshi', '2656893946747', '01501655630', 'student295@example.com', '$2y$12$Gbw73AQLr0X4oZCGhPcKoush2.tUAcfkQzNIZECSYcOzsg5KmoCNK', '9428 Nitzsche Station\nNorth Horaciohaven, CO 56064-7428', '306 Valentin Crescent\nAhmadchester, UT 44513-9891', 'ADM-00295', '2006-02-24', 'C', 'Science', '2025-2026', 'Price, Fisher and Hill School', 'Shawn Haley DVM', 'Farmer', '01910457059', 'father295@example.com', '1146281634339', 'Caterina Connelly', 'Nurse', '01335531312', 'mother295@example.com', '7843084234084', 'Dr. Maida Borer II', '01557374676', 'guardian295@example.com', '7949709187595', 'Uncle', 1, 27, 7, '2025-12-24', NULL, 2025000295, 900295, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06', '127.0.0.1', 1, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06'),
(296, 'Daniella', 'Dibbert', '1979-11-01', 'Other', 'A+', 'Christian', 'Bangladeshi', '2961188532874', '01554070787', 'student296@example.com', '$2y$12$duuuNq13jKjxa/cEWgUPuex0G7.GM5av0Z8cBFC0CA4d2zV94/TcC', '87202 Providenci Gardens Apt. 369\nKemmerview, SD 92847-4882', '8549 Anais Passage\nSchmidtmouth, IN 54101-4159', 'ADM-00296', '1992-11-13', 'B', 'Science', '2025-2026', 'Kreiger-Gaylord School', 'Manuel Willms', 'Teacher', '01358448320', 'father296@example.com', '2047910802991', 'Eulah Monahan', 'Teacher', '01664843844', 'mother296@example.com', '3054833458511', 'Prof. Lawrence Rodriguez', '01925955831', 'guardian296@example.com', '6141194619962', 'Sister', 1, 28, 7, '2025-12-24', NULL, 2025000296, 900296, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06', '127.0.0.1', 1, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06'),
(297, 'Clark', 'Daugherty', '2005-05-02', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '2427096716789', '01766408549', 'student297@example.com', '$2y$12$xtH1KTfc0bEeygShaDU43OW1AyyzTMbCeijvUIhvIu8mO9VXzEdqS', '1990 Miller Island Apt. 901\nRosenbaumbury, NH 65610-8651', '11330 Gislason Hill\nNorth Albertland, VA 13172-8669', 'ADM-00297', '2008-05-15', 'B', 'Arts', '2025-2026', 'Murazik and Sons School', 'Issac Huels III', 'Doctor', '01907552030', 'father297@example.com', '9957340834494', 'Taryn Little', 'Businesswoman', '01613161273', 'mother297@example.com', '8796233379042', 'Jacquelyn Russel', '01641231184', 'guardian297@example.com', '7876346765889', 'Brother', 1, 31, 9, '2025-12-24', NULL, 2025000297, 900297, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06', '127.0.0.1', 1, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06'),
(298, 'Jewell', 'Lynch', '2009-02-20', 'Female', 'A-', 'Hindu', 'Bangladeshi', '6180537755419', '01947520232', 'student298@example.com', '$2y$12$H6VPotDwIXXQUu3CfjL1kOusMK5/OrLguS6JGTViS28NQ1O1UCvfu', '139 Jasen Stream\nHarberstad, NV 61577-1762', '71712 Hagenes Land\nWest Hannatown, OH 51552-4996', 'ADM-00298', '1972-07-10', 'C', 'Science', '2025-2026', 'Lakin-Ernser School', 'Rocky Cruickshank', 'Doctor', '01660818938', 'father298@example.com', '6681780557581', 'Lydia Dibbert', 'Teacher', '01624125577', 'mother298@example.com', '8584883760784', 'Miracle Roob', '01972963059', 'guardian298@example.com', '6105503578361', 'Aunt', 1, 29, 7, '2025-12-24', NULL, 2025000298, 900298, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06', '127.0.0.1', 1, NULL, '2025-12-24 09:40:06', '2025-12-24 09:40:06'),
(299, 'Eladio', 'Homenick', '1999-06-06', 'Male', 'A+', 'Islam', 'Bangladeshi', '6801566100171', '01948000145', 'student299@example.com', '$2y$12$m9IJXtEKruF3ReOIIO3IkOQC8i/e5wBmMqzw1ttXxSAFBiU4Ulmr2', '5323 Valentine Station Suite 104\nLake Grayson, AL 71461', '32147 Hills Port Apt. 102\nWest Alisha, ID 60485-5109', 'ADM-00299', '2010-09-04', 'B', 'Arts', '2025-2026', 'Monahan PLC School', 'Raheem Collins I', 'Teacher', '01505543708', 'father299@example.com', '0165915414584', 'Karianne McClure', 'Teacher', '01349390813', 'mother299@example.com', '0641341079994', 'Dr. Zelma Bode', '01848309684', 'guardian299@example.com', '0596468988581', 'Grandparent', 1, 26, 1, '2025-12-24', NULL, 2025000299, 900299, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:07', '2025-12-24 09:40:07', '127.0.0.1', 1, NULL, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(300, 'Harrison', 'Leuschke', '2003-01-22', 'Female', 'O-', 'Christian', 'Bangladeshi', '2033708028006', '01768328028', 'student300@example.com', '$2y$12$sLTlIBN/2FUPD8UDi9XOoO7wSt7fFvD.5qXRD7RfU/8NYWW1n7A3q', '1857 Dorian Dale\nEast Kaylinmouth, OR 78005', '78483 Garnet Ports Suite 750\nKohlermouth, PA 01458-4520', 'ADM-00300', '2008-10-02', 'B', 'Arts', '2025-2026', 'Carroll-Corkery School', 'Mateo O\'Hara', 'Farmer', '01598657445', 'father300@example.com', '9623695390075', 'Miss Cristal Hilpert MD', 'Teacher', '01345481204', 'mother300@example.com', '5739858103765', 'Monserrate Monahan', '01382116723', 'guardian300@example.com', '4416171750723', 'Brother', 1, 30, 7, '2025-12-24', NULL, 2025000300, 900300, NULL, NULL, NULL, NULL, NULL, '2025-12-24 09:40:07', '2025-12-24 09:40:07', '127.0.0.1', 1, NULL, '2025-12-24 09:40:07', '2025-12-24 09:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `group_id`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 1, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(2, 'English', 1, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(3, 'ICT', 1, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(4, 'Physical Education', 1, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(5, 'Physics', 2, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(6, 'Chemistry', 2, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(7, 'Biology', 2, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(8, 'Higher Mathematics', 2, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(9, 'Accounting', 3, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(10, 'Business Organization & Management', 3, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(11, 'Finance, Banking & Insurance', 3, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(12, 'Production Management & Marketing', 3, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(13, 'Logic', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(14, 'History', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(15, 'Civics', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(16, 'Economics', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(17, 'Islamic Studies', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(18, 'Sociology', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(19, 'Social Work', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(20, 'Geography', 4, 1, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(21, 'Bangla', 1, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(22, 'English', 1, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(23, 'ICT', 1, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(24, 'Physical Education', 1, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(25, 'Physics', 2, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(26, 'Chemistry', 2, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(27, 'Biology', 2, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(28, 'Higher Mathematics', 2, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(29, 'Accounting', 3, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(30, 'Business Organization & Management', 3, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(31, 'Finance, Banking & Insurance', 3, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(32, 'Production Management & Marketing', 3, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(33, 'Logic', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(34, 'History', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(35, 'Civics', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(36, 'Economics', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(37, 'Islamic Studies', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(38, 'Sociology', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(39, 'Social Work', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(40, 'Geography', 4, 2, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(41, 'Bangla', 1, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(42, 'English', 1, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(43, 'ICT', 1, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(44, 'Physical Education', 1, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(45, 'Physics', 2, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(46, 'Chemistry', 2, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(47, 'Biology', 2, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(48, 'Higher Mathematics', 2, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(49, 'Accounting', 3, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(50, 'Business Organization & Management', 3, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(51, 'Finance, Banking & Insurance', 3, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(52, 'Production Management & Marketing', 3, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(53, 'Logic', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(54, 'History', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(55, 'Civics', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(56, 'Economics', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(57, 'Islamic Studies', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(58, 'Sociology', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(59, 'Social Work', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(60, 'Geography', 4, 3, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(61, 'Bangla', 1, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(62, 'English', 1, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(63, 'ICT', 1, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(64, 'Physical Education', 1, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(65, 'Physics', 2, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(66, 'Chemistry', 2, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(67, 'Biology', 2, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(68, 'Higher Mathematics', 2, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(69, 'Accounting', 3, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(70, 'Business Organization & Management', 3, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(71, 'Finance, Banking & Insurance', 3, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(72, 'Production Management & Marketing', 3, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(73, 'Logic', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(74, 'History', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(75, 'Civics', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(76, 'Economics', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(77, 'Islamic Studies', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(78, 'Sociology', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(79, 'Social Work', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(80, 'Geography', 4, 4, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(81, 'Bangla', 1, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(82, 'English', 1, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(83, 'ICT', 1, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(84, 'Physical Education', 1, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(85, 'Physics', 2, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(86, 'Chemistry', 2, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(87, 'Biology', 2, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(88, 'Higher Mathematics', 2, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(89, 'Accounting', 3, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(90, 'Business Organization & Management', 3, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(91, 'Finance, Banking & Insurance', 3, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(92, 'Production Management & Marketing', 3, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(93, 'Logic', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(94, 'History', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(95, 'Civics', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(96, 'Economics', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(97, 'Islamic Studies', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(98, 'Sociology', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(99, 'Social Work', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07'),
(100, 'Geography', 4, 5, '2025-12-24 09:40:07', '2025-12-24 09:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_contact` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `guardian_relationship` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `father_photo` varchar(255) DEFAULT NULL,
  `mother_photo` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Admin',
  `status` int(11) NOT NULL DEFAULT 1,
  `remark` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `is_profile_completed` tinyint(1) NOT NULL DEFAULT 0,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `national_id`, `contact_number`, `email`, `password`, `designation`, `address`, `father_name`, `father_contact`, `mother_name`, `mother_contact`, `guardian_name`, `guardian_contact`, `guardian_relationship`, `photo`, `father_photo`, `mother_photo`, `role`, `status`, `remark`, `email_verified_at`, `last_login_at`, `last_login_ip`, `is_profile_completed`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Crystel', 'Cassin', '1971-08-16', 'Male', 'O+', '5293065612783', '01631805187', 'teacher0@example.com', '$2y$12$n3UKrwydN1mJJ3eZenrhv.oDd689MzPLeGq31OO2GourqRafZWUYu', 'Head of Department', '11928 Williamson Underpass Apt. 290\nPatrickfort, HI 89840-3693', 'Mr. Hobart Swift MD', '01415566575', 'Clemmie Kassulke', '01577381950', 'Dedrick Spencer', '01663986589', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:06', '2025-12-24 09:39:06', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:06', '2025-12-24 09:39:06'),
(2, 'Ferne', 'Wyman', '1969-02-04', 'Female', 'B-', '3828442200771', '01877543223', 'teacher1@example.com', '$2y$12$BXyZtBZKmLfCuNYnkOAlaO0psSziqWiyqIJsDqGkmU98nX5GTWvsq', 'Senior Teacher', '9372 Schroeder Fields\nEast Caryfort, TX 08908', 'Dr. Clifton Stroman', '01331747614', 'Sandrine Wolff', '01741085518', 'Ignatius Jaskolski', '01479073995', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:06', '2025-12-24 09:39:06', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:06', '2025-12-24 09:39:06'),
(3, 'Anderson', 'Kessler', '1998-07-11', 'Female', 'O+', '1967111606469', '01563595595', 'teacher2@example.com', '$2y$12$vE.CUdjmruObn1aNbrntWeAffdSCo28Q.S8BVgyW5LL5CMcrXak2S', 'Lecturer', '184 Mellie Motorway\nPort Krystina, GA 12901', 'Erick Hahn', '01415998573', 'Lavonne Carter', '01463552918', 'Mr. Arjun Goyette', '01485652658', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:06', '2025-12-24 09:39:06', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:06', '2025-12-24 09:39:06'),
(4, 'Cooper', 'Collier', '1991-05-01', 'Male', 'AB-', '8968595437379', '01559527149', 'teacher3@example.com', '$2y$12$5EM.7tR7SAqUd.RMLWp8J.QioMWrf3f4sFFLpeEPo3UMOrviqiqaa', 'Head of Department', '766 Madie Stream\nLake Patricia, AL 50781-5279', 'Dr. Broderick Wyman II', '01585824360', 'Penelope Sanford', '01702560218', 'Ryann Stark', '01902792892', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:07', '2025-12-24 09:39:07', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:07', '2025-12-24 09:39:07'),
(5, 'Andreanne', 'Haley', '1979-12-07', 'Female', 'AB+', '7285528854481', '01708999256', 'teacher4@example.com', '$2y$12$sJrj6Hwa4VUXvYBknfxKDu14q6GcLYjRgMEpCZO3Hdh.wJABGT7Se', 'Assistant Professor', '64510 Regan Ways\nKrystinafort, NJ 63241-3393', 'Mr. Alexys Renner IV', '01988934422', 'Ophelia Yundt', '01417997880', 'Heloise Bahringer MD', '01401238982', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:07', '2025-12-24 09:39:07', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:07', '2025-12-24 09:39:07'),
(6, 'Felicita', 'Bosco', '1966-10-09', 'Male', 'B+', '1640252160833', '01526973488', 'teacher5@example.com', '$2y$12$3iFE1NSJblq5XUaisXlycergtGI3s9R8KZ/teYl5V41d.FqnCRVYa', 'Senior Teacher', '3294 Jade Meadows Apt. 172\nWehnermouth, MO 62110', 'Unique Kovacek', '01878804232', 'Katrina Donnelly', '01630654867', 'Kip Mante IV', '01460861975', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:07', '2025-12-24 09:39:07', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:07', '2025-12-24 09:39:07'),
(7, 'Viviane', 'Hermann', '1968-02-21', 'Male', 'AB-', '1687032240376', '01337999629', 'teacher6@example.com', '$2y$12$sc6MgUcR7FDm7u7jIbdTkuFdk2.VbQ0Hj9z9zPyCKXhoF4KMLH0kW', 'Lecturer', '11056 Sadie Expressway Apt. 449\nSouth Caleville, UT 64826', 'Dr. Obie Kshlerin MD', '01563541345', 'Ms. Damaris Leffler PhD', '01641345433', 'Cruz Sipes MD', '01836809586', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:07', '2025-12-24 09:39:07', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:07', '2025-12-24 09:39:07'),
(8, 'Lynn', 'Ernser', '1998-05-08', 'Female', 'A-', '2169026951073', '01992571050', 'teacher7@example.com', '$2y$12$pDwzZo0lkSp81nDC9BFfwuMfVyNCWPLHDnQsrfjHv75sph4wcE5j6', 'Senior Teacher', '92436 Bailey Manors Suite 489\nGloverfort, WI 57571-0060', 'Garfield King PhD', '01686605586', 'Jazmin Schulist DDS', '01454837106', 'Enrico Wolf', '01946997634', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:07', '2025-12-24 09:39:07', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:07', '2025-12-24 09:39:07'),
(9, 'Mellie', 'Turner', '2000-10-27', 'Female', 'O-', '7856019139450', '01397808515', 'teacher8@example.com', '$2y$12$YPz715POiofp3tgY6AbwDe0aHk9BssSMw7vnpLM7M1r8OcU/lvu6.', 'Lecturer', '1478 Angeline Stravenue\nLake Hollis, NV 90045-7919', 'Jeffery Rosenbaum', '01698330327', 'Miss Vena Terry III', '01917337775', 'Marlee D\'Amore', '01631272808', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:07', '2025-12-24 09:39:07', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:07', '2025-12-24 09:39:07'),
(10, 'Clemmie', 'Schimmel', '1976-12-05', 'Male', 'AB+', '3988009388954', '01469506663', 'teacher9@example.com', '$2y$12$naXTLDUNx7CWEQ/l.8bAsOCjFUDkrUCxG3HLHBRhHazvQNRd7Oeb6', 'Head of Department', '7267 Hunter Way\nSouth Claireport, CO 02360-7674', 'Delbert Harris', '01916234206', 'Laurianne O\'Reilly', '01478049155', 'Prof. Bailey Bashirian', '01722892208', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:08', '2025-12-24 09:39:08', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:08', '2025-12-24 09:39:08'),
(11, 'Jasen', 'Dare', '1988-06-15', 'Female', 'A+', '6782908099048', '01946703983', 'teacher10@example.com', '$2y$12$928WelLlJcA22M959kNgaeDCbqJFvd7kA0PrmTyucLJ3CQKz7N7cK', 'Lecturer', '30532 Ara Vista\nWest Derickfort, KS 90029-4972', 'Arnoldo Tromp', '01737114079', 'Mrs. Elena Swaniawski Sr.', '01593510629', 'Destin Gutkowski', '01723892575', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:08', '2025-12-24 09:39:08', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:08', '2025-12-24 09:39:08'),
(12, 'Dante', 'Boyle', '1968-09-04', 'Male', 'B+', '2115836687371', '01876497221', 'teacher11@example.com', '$2y$12$aXrNfTMOODlx0MiLuXW29eBc.Dd.EEc/XYgvOCiOKb0g8EK0JQ16m', 'Senior Teacher', '7739 Anastasia Extension Apt. 015\nSouth Juneburgh, SC 27758', 'Marcelo Dibbert', '01688487363', 'Ms. Talia Johnston', '01991358883', 'Blanche Vandervort', '01589750017', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:08', '2025-12-24 09:39:08', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:08', '2025-12-24 09:39:08'),
(13, 'Celia', 'Shields', '1970-04-28', 'Female', 'AB+', '0951840196722', '01475535182', 'teacher12@example.com', '$2y$12$POp8uxfEmd0ngmHG06QEiuE1oJOzl9GUYX5rdi4.E.CtLY2FM0SEq', 'Head of Department', '6616 Darian Garden Suite 722\nPort Margaretmouth, DE 99628-7153', 'Greyson Gleichner', '01885422107', 'Abbie Schowalter III', '01450699931', 'Michele Kihn', '01686030923', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:08', '2025-12-24 09:39:08', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:08', '2025-12-24 09:39:08'),
(14, 'Sid', 'Raynor', '1999-09-28', 'Male', 'O-', '6669728850780', '01468189234', 'teacher13@example.com', '$2y$12$9CW14L1k98zJAqLcCKBSOuHs0gBqP1et3Ohqs5eLJAVDIm/crUhY6', 'Lecturer', '708 Jast Garden\nBlickport, TN 04669-4553', 'Jackson Carroll', '01426595890', 'Rebecca Schaden II', '01890594342', 'Bernard Hudson', '01673283293', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:08', '2025-12-24 09:39:08', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:08', '2025-12-24 09:39:08'),
(15, 'Abdiel', 'Mayer', '1976-06-06', 'Female', 'A+', '6548404693519', '01828062745', 'teacher14@example.com', '$2y$12$0lMesAKST./iw7KuGvrDUupBDTsVmfy0XCvUm5VfWxntRlNHCu/iS', 'Assistant Professor', '76523 Osvaldo Lake Apt. 198\nKoeppchester, CA 24060-1350', 'Dr. Torrey Yost', '01928779998', 'Zoie Klein', '01782928117', 'Brayan Gislason', '01432278969', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:09', '2025-12-24 09:39:09', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:09', '2025-12-24 09:39:09'),
(16, 'Norene', 'Schneider', '1981-04-29', 'Male', 'A-', '4453885510930', '01716591079', 'teacher15@example.com', '$2y$12$pSymhoQqPIC/WFpaJz2Zg.kKykL3mKRRJuYTSwY4BDkGh2upSPIKO', 'Senior Teacher', '6022 Kling Keys Suite 847\nLarsonborough, CA 09356-7269', 'Mr. Kendrick Barton', '01747645025', 'Rachel Ebert', '01677389559', 'Tod Satterfield', '01939616043', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:09', '2025-12-24 09:39:09', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:09', '2025-12-24 09:39:09'),
(17, 'Barton', 'Marks', '1986-08-05', 'Female', 'B+', '9288984282631', '01370970753', 'teacher16@example.com', '$2y$12$PsTaelZVxpe7ptRonyGT3OZfgY1swz5iGDqpQPlcBEvJ67jAn6q5e', 'Lecturer', '22351 Tomasa Lodge Apt. 752\nNorth Aryanna, NJ 33556-6519', 'Gus Pouros', '01731314438', 'Elinor Hill', '01399804586', 'Felix Treutel', '01847950366', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:09', '2025-12-24 09:39:09', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:09', '2025-12-24 09:39:09'),
(18, 'Kiel', 'Friesen', '1976-10-29', 'Male', 'AB-', '8701116322447', '01355073044', 'teacher17@example.com', '$2y$12$S9MBzK7zEITOJQlNH1k0fuMxXhWSlz7tHUoxT9jugaOjRebnNOtgq', 'Lecturer', '87206 Hintz Parkways Suite 463\nPort Venaberg, TN 10958-7888', 'Samson Rosenbaum', '01709022551', 'Jazmin Funk', '01526597201', 'Mervin McGlynn', '01730775975', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:09', '2025-12-24 09:39:09', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:09', '2025-12-24 09:39:09'),
(19, 'Jewell', 'White', '1996-11-13', 'Female', 'O+', '7816424608423', '01566724538', 'teacher18@example.com', '$2y$12$p9cZ1gInBzq/opqIDtg0ouk4SmqKgRU6LIgovSoftDV.kxqVaAJ.q', 'Lecturer', '948 Senger Plaza\nSchmittstad, OH 98600-9737', 'Roel Nikolaus', '01756916986', 'Dr. Leonie DuBuque Sr.', '01548599252', 'Danial Prohaska', '01751848808', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:09', '2025-12-24 09:39:09', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:09', '2025-12-24 09:39:09'),
(20, 'Amanda', 'Bednar', '2000-08-30', 'Male', 'B-', '2438723092489', '01923249671', 'teacher19@example.com', '$2y$12$IDqK4.eNGUuFRHZMG6UQo.lR1u5S7A3ZxN1DfN9WtVAguPpmnSWeS', 'Head of Department', '16838 Sandra Square\nNorth Abelardo, TN 47800', 'Francisco Langosh Jr.', '01859106416', 'Miss Yazmin Orn', '01700082716', 'Lea Schneider', '01369418193', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:09', '2025-12-24 09:39:09', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:09', '2025-12-24 09:39:09'),
(21, 'Reva', 'Emard', '1993-01-15', 'Female', 'O-', '8072422532518', '01338518930', 'teacher20@example.com', '$2y$12$18.I8VniegOfQK9wKcEGr.5LhEoyQWjBgEE3.kPbicfJjV8DsQwai', 'Senior Teacher', '431 Dylan Plains Suite 391\nGuidoborough, OH 53253-8220', 'Saul Harber', '01731549530', 'Lizzie Bruen', '01758088153', 'Prof. Elmore Boyer', '01711705715', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:10', '2025-12-24 09:39:10', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:10', '2025-12-24 09:39:10'),
(22, 'Derrick', 'Ankunding', '1968-06-05', 'Male', 'A+', '6958354778386', '01859872209', 'teacher21@example.com', '$2y$12$k4gCRuXr3WZYo3meVyGtd.avy.rOLkZE5TxHAAm4aqYKA2J5NXB7W', 'Senior Teacher', '55648 Rogahn Creek Suite 683\nRunteville, MO 69486', 'Fredrick Sanford', '01644914520', 'Yvette Mohr', '01735221594', 'Anahi Halvorson', '01357808488', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:10', '2025-12-24 09:39:10', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:10', '2025-12-24 09:39:10'),
(23, 'Andrew', 'Klocko', '2000-12-23', 'Male', 'B-', '6302902993259', '01914825704', 'teacher22@example.com', '$2y$12$U0HOAnxFSKA9RLm3pTcBhOF8sP9mUiip0Na0S8V3er7esZrj.cBc.', 'Head of Department', '7433 Gislason Burg\nNorth Baileyburgh, MA 16315', 'Antone Daugherty', '01563700384', 'Mina Hirthe', '01806821577', 'Dr. Logan Pfannerstill MD', '01315458139', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:10', '2025-12-24 09:39:10', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:10', '2025-12-24 09:39:10'),
(24, 'Matteo', 'Hilpert', '1980-07-27', 'Female', 'B+', '0871009307865', '01672572207', 'teacher23@example.com', '$2y$12$hy6iPJIUMxQ.T23KrI6RgOgLhgv6drWHBOZ766/4e8TkIb15qcTue', 'Head of Department', '233 Marquardt Crossing\nWest Lucienne, NJ 63453-3256', 'Kaden Hand DDS', '01448391006', 'Shany Fisher', '01565694898', 'Wilfrid Crona', '01700319528', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:10', '2025-12-24 09:39:10', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:10', '2025-12-24 09:39:10'),
(25, 'Clarissa', 'Corkery', '1992-02-08', 'Male', 'A+', '4928860739070', '01995311787', 'teacher24@example.com', '$2y$12$XvfwzmZR5fEMY9/s94J9qe8Z0FnGI4meF/R46a3ePRUFG2mjhY9/e', 'Head of Department', '18856 Pfeffer Islands Suite 977\nPort Irwinbury, TN 27476-3119', 'Bradly Kshlerin', '01643333014', 'Gerda McLaughlin', '01375451666', 'Dr. Reymundo Towne', '01586534834', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:10', '2025-12-24 09:39:10', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:10', '2025-12-24 09:39:10'),
(26, 'Adrienne', 'Bahringer', '1990-10-31', 'Male', 'O+', '7331962997004', '01540343199', 'teacher25@example.com', '$2y$12$hxe3QJAf1n7bw6OtldU9e.zStfNyWHNl59tCwzB5Y/ZHflovy0Ayi', 'Senior Teacher', '52769 Sipes Branch\nEast Delfina, MO 33897-4585', 'Chandler Douglas Sr.', '01728470879', 'Ms. Elinor Bailey IV', '01584866121', 'Mr. Roman Powlowski', '01761054808', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:11', '2025-12-24 09:39:11', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11'),
(27, 'Kiarra', 'Hoeger', '1989-09-13', 'Female', 'O-', '7454334411483', '01653810518', 'teacher26@example.com', '$2y$12$NIZvidp0sdvy2WGUjHr38OvlM8N5dBPkkpRu/l13lDFbquw7.llbS', 'Senior Teacher', '56316 Raina Mission Suite 784\nNorth Shanna, NJ 02531-7087', 'Mr. Jerel Hammes', '01513867205', 'Alysson Gulgowski Jr.', '01891355876', 'Dr. Elyssa Fritsch DDS', '01654796467', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:11', '2025-12-24 09:39:11', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11'),
(28, 'Randy', 'Block', '1997-09-13', 'Male', 'B+', '4750536491280', '01940125106', 'teacher27@example.com', '$2y$12$mSnAhu4YxdQlb5TUAnl6AuTgBEZ25Ayz.QNiC8..ONAXiX9KWYWWW', 'Lecturer', '34091 Alexane Grove\nHerzogmouth, NH 25920-8022', 'Sydney Jaskolski IV', '01686403375', 'Ms. Samara Morissette Sr.', '01855223088', 'Macie Blick', '01591562296', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:11', '2025-12-24 09:39:11', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11'),
(29, 'Angelina', 'Gleason', '1992-01-22', 'Male', 'B-', '8942331475814', '01503968665', 'teacher28@example.com', '$2y$12$WgWJ.9V9kqTf5IPlAUjCG.Xp0mdupPK4lj3WIHTaXdp0eKgv0sbDW', 'Assistant Professor', '6633 Madison Springs Apt. 360\nNew Lomastad, WY 90202-9557', 'Clark Parisian', '01685890023', 'Alayna Block', '01867705051', 'Mrs. Ludie Lynch DDS', '01627616800', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:11', '2025-12-24 09:39:11', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11'),
(30, 'Nona', 'Hintz', '1969-11-18', 'Male', 'A-', '8494375574936', '01893005223', 'teacher29@example.com', '$2y$12$Dwd0WYi50iQARaKgdMMgOeKhBTYWEK9AKbVvM.sUNmRFDeqVjb5b6', 'Assistant Professor', '239 Brannon Skyway Suite 708\nOkunevaville, ID 06572-7663', 'Billy Conn', '01959108725', 'Ashtyn Jaskolski', '01429580292', 'Elvie Cummerata', '01374509267', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 09:39:11', '2025-12-24 09:39:11', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 09:39:11', '2025-12-24 09:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendances_student_id_attendance_date_unique` (`student_id`,`attendance_date`),
  ADD KEY `attendances_class_id_foreign` (`class_id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_details_account_number_unique` (`account_number`);

--
-- Indexes for table `bank_transection_details`
--
ALTER TABLE `bank_transection_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_transection_details_bank_id_foreign` (`bank_id`),
  ADD KEY `bank_transection_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `class_schedules`
--
ALTER TABLE `class_schedules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_period_unique` (`class_id`,`day`,`period`),
  ADD UNIQUE KEY `teacher_period_unique` (`teacher_id`,`day`,`period`),
  ADD KEY `class_schedules_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_class_id_foreign` (`class_id`),
  ADD KEY `exams_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `exam_names`
--
ALTER TABLE `exam_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excategories`
--
ALTER TABLE `excategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_catid_foreign` (`catId`),
  ADD KEY `expenses_subcatid_foreign` (`subcatId`),
  ADD KEY `expenses_userid_foreign` (`userId`);

--
-- Indexes for table `exsubcategories`
--
ALTER TABLE `exsubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exsubcategories_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_payment_details`
--
ALTER TABLE `fee_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_payment_details_receipt_no_unique` (`receipt_no`),
  ADD UNIQUE KEY `fee_payment_details_invoice_no_unique` (`invoice_no`),
  ADD KEY `fee_payment_details_student_id_foreign` (`student_id`),
  ADD KEY `fee_payment_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `fee_payment_items`
--
ALTER TABLE `fee_payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_payment_items_fee_payment_id_foreign` (`fee_payment_id`),
  ADD KEY `fee_payment_items_student_id_foreign` (`student_id`),
  ADD KEY `fee_payment_items_fee_structure_id_foreign` (`fee_structure_id`);

--
-- Indexes for table `fee_structures`
--
ALTER TABLE `fee_structures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_structures_class_id_fee_cat_id_unique` (`class_id`,`fee_cat_id`),
  ADD KEY `fee_structures_fee_cat_id_foreign` (`fee_cat_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_category_id_foreign` (`category_id`),
  ADD KEY `incomes_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `incomes_user_id_foreign` (`user_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `income_categories_name_unique` (`name`);

--
-- Indexes for table `income_sub_categories`
--
ALTER TABLE `income_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_student_id_foreign` (`student_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_class_teacher_id_foreign` (`class_teacher_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_admission_no_unique` (`admission_no`),
  ADD UNIQUE KEY `students_b_reg_no_unique` (`b_reg_no`),
  ADD UNIQUE KEY `students_b_roll_no_unique` (`b_roll_no`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_subjects_student_id_subject_id_unique` (`student_id`,`subject_id`),
  ADD KEY `student_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_group_id_foreign` (`group_id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_national_id_unique` (`national_id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transection_details`
--
ALTER TABLE `bank_transection_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_schedules`
--
ALTER TABLE `class_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_names`
--
ALTER TABLE `exam_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `excategories`
--
ALTER TABLE `excategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exsubcategories`
--
ALTER TABLE `exsubcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_payment_details`
--
ALTER TABLE `fee_payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_payment_items`
--
ALTER TABLE `fee_payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_structures`
--
ALTER TABLE `fee_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `income_sub_categories`
--
ALTER TABLE `income_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `bank_transection_details`
--
ALTER TABLE `bank_transection_details`
  ADD CONSTRAINT `bank_transection_details_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `bank_details` (`id`),
  ADD CONSTRAINT `bank_transection_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `class_schedules`
--
ALTER TABLE `class_schedules`
  ADD CONSTRAINT `class_schedules_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `class_schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `class_schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_catid_foreign` FOREIGN KEY (`catId`) REFERENCES `excategories` (`id`),
  ADD CONSTRAINT `expenses_subcatid_foreign` FOREIGN KEY (`subcatId`) REFERENCES `exsubcategories` (`id`),
  ADD CONSTRAINT `expenses_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `exsubcategories`
--
ALTER TABLE `exsubcategories`
  ADD CONSTRAINT `exsubcategories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `excategories` (`id`);

--
-- Constraints for table `fee_payment_details`
--
ALTER TABLE `fee_payment_details`
  ADD CONSTRAINT `fee_payment_details_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `fee_payment_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `fee_payment_items`
--
ALTER TABLE `fee_payment_items`
  ADD CONSTRAINT `fee_payment_items_fee_payment_id_foreign` FOREIGN KEY (`fee_payment_id`) REFERENCES `fee_payment_details` (`id`),
  ADD CONSTRAINT `fee_payment_items_fee_structure_id_foreign` FOREIGN KEY (`fee_structure_id`) REFERENCES `fee_structures` (`id`),
  ADD CONSTRAINT `fee_payment_items_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `fee_structures`
--
ALTER TABLE `fee_structures`
  ADD CONSTRAINT `fee_structures_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `fee_structures_fee_cat_id_foreign` FOREIGN KEY (`fee_cat_id`) REFERENCES `fee_categories` (`id`);

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `income_categories` (`id`),
  ADD CONSTRAINT `incomes_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `income_sub_categories` (`id`),
  ADD CONSTRAINT `incomes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `income_sub_categories`
--
ALTER TABLE `income_sub_categories`
  ADD CONSTRAINT `income_sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `income_categories` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_class_teacher_id_foreign` FOREIGN KEY (`class_teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `subjects_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
