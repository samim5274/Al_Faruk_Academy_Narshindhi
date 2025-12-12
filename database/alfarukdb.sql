-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2025 at 07:34 AM
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

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `student_id`, `class_id`, `attendance_date`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:17', '2025-12-12 05:01:17'),
(2, 26, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:17', '2025-12-12 05:01:17'),
(3, 30, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:18', '2025-12-12 05:01:18'),
(4, 34, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:19', '2025-12-12 05:01:19'),
(5, 44, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:21', '2025-12-12 05:01:21'),
(6, 45, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:22', '2025-12-12 05:01:22'),
(7, 68, 1, '2025-12-12', 'Absent', 'N/A', '2025-12-12 05:01:23', '2025-12-12 05:01:23'),
(8, 73, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:25', '2025-12-12 05:01:25'),
(9, 76, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:26', '2025-12-12 05:01:26'),
(10, 90, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:27', '2025-12-12 05:01:27'),
(11, 91, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:28', '2025-12-12 05:01:28'),
(12, 130, 1, '2025-12-12', 'Absent', 'N/A', '2025-12-12 05:01:29', '2025-12-12 05:01:29'),
(13, 144, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:33', '2025-12-12 05:01:33'),
(14, 145, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:35', '2025-12-12 05:01:35'),
(15, 166, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:36', '2025-12-12 05:01:36'),
(16, 168, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:37', '2025-12-12 05:01:37'),
(17, 175, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:38', '2025-12-12 05:01:38'),
(18, 183, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:39', '2025-12-12 05:01:39'),
(19, 186, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:40', '2025-12-12 05:01:40'),
(20, 187, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:41', '2025-12-12 05:01:41'),
(21, 206, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:42', '2025-12-12 05:01:42'),
(22, 210, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:43', '2025-12-12 05:01:43'),
(23, 217, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:44', '2025-12-12 05:01:44'),
(24, 218, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:46', '2025-12-12 05:01:46'),
(25, 234, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:46', '2025-12-12 05:01:46'),
(26, 236, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:47', '2025-12-12 05:01:47'),
(27, 239, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:49', '2025-12-12 05:01:49'),
(28, 241, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:50', '2025-12-12 05:01:50'),
(29, 251, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:51', '2025-12-12 05:01:51'),
(30, 260, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:52', '2025-12-12 05:01:52'),
(31, 263, 1, '2025-12-12', 'Absent', 'N/A', '2025-12-12 05:01:53', '2025-12-12 05:01:53'),
(32, 265, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:55', '2025-12-12 05:01:55'),
(33, 270, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:56', '2025-12-12 05:01:56'),
(34, 294, 1, '2025-12-12', 'Present', 'N/A', '2025-12-12 05:01:57', '2025-12-12 05:01:57');

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

--
-- Dumping data for table `class_schedules`
--

INSERT INTO `class_schedules` (`id`, `class_id`, `period`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `day`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '08:00:00', '08:40:00', 1, 1, 'Saturday', '2025-12-12 05:03:25', '2025-12-12 05:03:25'),
(2, 1, 2, '08:40:00', '09:20:00', 2, 2, 'Saturday', '2025-12-12 05:03:25', '2025-12-12 05:03:25'),
(3, 1, 3, '09:20:00', '10:00:00', 3, 3, 'Saturday', '2025-12-12 05:03:25', '2025-12-12 05:03:25'),
(4, 1, 4, '10:20:00', '11:00:00', 4, 4, 'Saturday', '2025-12-12 05:03:25', '2025-12-12 05:03:25'),
(5, 1, 5, '11:00:00', '11:40:00', 5, 5, 'Saturday', '2025-12-12 05:03:25', '2025-12-12 05:03:25'),
(6, 2, 1, '08:00:00', '08:40:00', 2, 6, 'Saturday', '2025-12-12 05:04:19', '2025-12-12 05:04:19'),
(7, 2, 2, '08:40:00', '09:20:00', 3, 7, 'Saturday', '2025-12-12 05:04:19', '2025-12-12 05:04:19'),
(8, 2, 3, '09:20:00', '10:00:00', 4, 8, 'Saturday', '2025-12-12 05:04:19', '2025-12-12 05:04:19'),
(9, 2, 4, '10:20:00', '11:00:00', 5, 9, 'Saturday', '2025-12-12 05:04:19', '2025-12-12 05:04:19'),
(10, 2, 5, '11:00:00', '11:40:00', 6, 10, 'Saturday', '2025-12-12 05:04:19', '2025-12-12 05:04:19');

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

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `date`, `class_id`, `subject_id`, `max_marks`, `created_at`, `updated_at`) VALUES
(1, 'Midterm', '2025-12-13', 1, 1, 100, '2025-12-12 05:04:57', '2025-12-12 05:04:57'),
(2, 'Midterm', '2025-12-14', 1, 2, 100, '2025-12-12 05:05:05', '2025-12-12 05:05:05');

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

--
-- Dumping data for table `exam_names`
--

INSERT INTO `exam_names` (`id`, `exam_name`, `created_at`, `updated_at`) VALUES
(1, 'Midterm', '2025-12-12 05:04:39', '2025-12-12 05:04:39'),
(2, 'Final', '2025-12-12 05:04:44', '2025-12-12 05:04:44');

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
(1, 'Food', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(2, 'Transport', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(3, 'Shopping', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(4, 'Medical', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(5, 'Entertainment', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(6, 'Bills & Utilities', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(7, 'Education', '2025-12-12 05:28:20', '2025-12-12 05:28:20'),
(8, 'Others', '2025-12-12 05:28:20', '2025-12-12 05:28:20');

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

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `catId`, `subcatId`, `userId`, `title`, `date`, `amount`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Bazar', '2025-12-12', 1000.00, 'N/A', '2025-12-12 05:28:47', '2025-12-12 05:28:47'),
(2, 7, 27, 1, 'Annual Examination Notice 2025', '2025-12-12', 1000.00, 'N/A', '2025-12-12 05:29:11', '2025-12-12 05:29:11');

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
(1, 1, 'Breakfast', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(2, 1, 'Lunch', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(3, 1, 'Dinner', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(4, 1, 'Snacks', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(5, 1, 'Groceries', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(6, 2, 'Bus', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(7, 2, 'CNG', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(8, 2, 'Bike', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(9, 2, 'Train', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(10, 2, 'Ride Sharing', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(11, 3, 'Clothes', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(12, 3, 'Shoes', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(13, 3, 'Gadgets', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(14, 3, 'Cosmetics', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(15, 4, 'Medicine', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(16, 4, 'Doctor Fee', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(17, 4, 'Test/Reports', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(18, 5, 'Movies', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(19, 5, 'Games', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(20, 5, 'Tours', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(21, 5, 'Events', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(22, 6, 'Electricity', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(23, 6, 'Water', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(24, 6, 'Gas', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(25, 6, 'Internet', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(26, 6, 'Mobile Recharge', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(27, 7, 'Books', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(28, 7, 'Tuition Fee', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(29, 7, 'Stationery', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(30, 8, 'Donation', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(31, 8, 'Unexpected Cost', '2025-12-12 05:28:30', '2025-12-12 05:28:30'),
(32, 8, 'Miscellaneous', '2025-12-12 05:28:30', '2025-12-12 05:28:30');

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
(1, 'Tuition Fee', 'Regular fee for academic instruction and classes', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(2, 'Admission Fee', 'One-time fee for student enrollment', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(3, 'Exam Fee', 'Fee for conducting examinations', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(4, 'Library Fee', 'Charge for library access and maintenance', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(5, 'Laboratory Fee', 'Fee for science/computer lab usage', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(6, 'Sports Fee', 'Charge for sports activities and events', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(7, 'Transport Fee', 'Fee for school bus/transport facilities', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(8, 'Hostel Fee', 'Accommodation and meal charges in hostel', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(9, 'Development Fee', 'Fee for infrastructure and school development', '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(10, 'Activity Fee', 'Fee for extracurricular activities and events', '2025-12-12 04:59:42', '2025-12-12 04:59:42');

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

--
-- Dumping data for table `fee_payment_details`
--

INSERT INTO `fee_payment_details` (`id`, `student_id`, `user_id`, `total_amount`, `total_paid`, `total_discount`, `total_due`, `payment_date`, `month`, `year`, `payment_method`, `status`, `receipt_no`, `invoice_no`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 4420.00, 4420.00, 0.00, 0.00, '2025-12-12', '12', '2025', 'Cash', 'Paid', 'TNTIB4D27H', 'INV-24362', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(2, 4, 1, 850.00, 500.00, 50.00, 300.00, '2025-12-12', '12', '2025', 'Cash', 'Partial', 'C8TJG1C852', 'INV-69307', '2025-12-12 05:14:43', '2025-12-12 05:14:43');

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

--
-- Dumping data for table `fee_payment_items`
--

INSERT INTO `fee_payment_items` (`id`, `fee_payment_id`, `student_id`, `fee_structure_id`, `amount`, `paid`, `discount`, `due`, `payment_date`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 1200.00, 1200.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(2, 1, 4, 2, 750.00, 750.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(3, 1, 4, 4, 60.00, 60.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(4, 1, 4, 5, 60.00, 60.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(5, 1, 4, 7, 120.00, 120.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(6, 1, 4, 8, 2200.00, 2200.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(7, 1, 4, 10, 30.00, 30.00, 0.00, 0.00, '2025-12-12', '2025-12-12 05:11:14', '2025-12-12 05:11:14'),
(8, 2, 4, 3, 750.00, 441.18, 44.12, 264.70, '2025-12-12', '2025-12-12 05:14:43', '2025-12-12 05:14:43'),
(9, 2, 4, 6, 50.00, 29.41, 2.94, 17.65, '2025-12-12', '2025-12-12 05:14:43', '2025-12-12 05:14:43'),
(10, 2, 4, 9, 50.00, 29.41, 2.94, 17.65, '2025-12-12', '2025-12-12 05:14:43', '2025-12-12 05:14:43');

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

--
-- Dumping data for table `fee_structures`
--

INSERT INTO `fee_structures` (`id`, `class_id`, `fee_cat_id`, `amount`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 1200.00, '2026-01-12', '2025-12-12 05:07:20', '2025-12-12 05:07:20'),
(2, 10, 2, 750.00, '2026-01-12', '2025-12-12 05:07:30', '2025-12-12 05:07:30'),
(3, 10, 3, 750.00, '2026-01-12', '2025-12-12 05:07:36', '2025-12-12 05:07:36'),
(4, 10, 4, 60.00, '2026-01-12', '2025-12-12 05:07:44', '2025-12-12 05:07:44'),
(5, 10, 5, 60.00, '2026-01-12', '2025-12-12 05:07:51', '2025-12-12 05:07:51'),
(6, 10, 6, 50.00, '2026-01-12', '2025-12-12 05:08:01', '2025-12-12 05:08:01'),
(7, 10, 7, 120.00, '2026-01-12', '2025-12-12 05:08:12', '2025-12-12 05:08:12'),
(8, 10, 8, 2200.00, '2026-01-12', '2025-12-12 05:08:19', '2025-12-12 05:08:19'),
(9, 10, 9, 50.00, '2026-01-12', '2025-12-12 05:08:25', '2025-12-12 05:08:25'),
(10, 10, 10, 30.00, '2026-01-12', '2025-12-12 05:08:30', '2025-12-12 05:08:30'),
(11, 1, 1, 120.00, '2026-01-12', '2025-12-12 05:08:51', '2025-12-12 05:08:51'),
(12, 1, 2, 120.00, '2026-01-12', '2025-12-12 05:08:57', '2025-12-12 05:08:57'),
(13, 1, 3, 100.00, '2026-01-12', '2025-12-12 05:09:03', '2025-12-12 05:09:03'),
(14, 1, 6, 100.00, '2026-01-12', '2025-12-12 05:09:13', '2025-12-12 05:09:13'),
(15, 1, 7, 120.00, '2026-01-12', '2025-12-12 05:09:30', '2025-12-12 05:09:30'),
(16, 1, 8, 1500.00, '2026-01-12', '2025-12-12 05:09:38', '2025-12-12 05:09:38'),
(17, 1, 9, 50.00, '2026-01-12', '2025-12-12 05:09:43', '2025-12-12 05:09:43'),
(18, 1, 10, 20.00, '2026-01-12', '2025-12-12 05:09:49', '2025-12-12 05:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `marks_obtained` int(11) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `gpa` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `subject_id`, `exam_id`, `marks_obtained`, `grade`, `gpa`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 55, 'B', 3, 'N/A', '2025-12-12 05:06:09', '2025-12-12 05:06:09'),
(2, 26, 1, 1, 75, 'A', 4, 'N/A', '2025-12-12 05:06:12', '2025-12-12 05:06:12'),
(3, 30, 1, 1, 85, 'A+', 5, 'N/A', '2025-12-12 05:06:15', '2025-12-12 05:06:15'),
(4, 34, 1, 1, 33, 'D', 1, 'N/A', '2025-12-12 05:06:18', '2025-12-12 05:06:18'),
(5, 34, 2, 2, 100, 'A+', 5, 'N/A', '2025-12-12 05:06:28', '2025-12-12 05:06:28'),
(6, 30, 2, 2, 100, 'A+', 5, 'N/A', '2025-12-12 05:06:30', '2025-12-12 05:06:30'),
(7, 26, 2, 2, 100, 'A+', 5, 'N/A', '2025-12-12 05:06:32', '2025-12-12 05:06:32'),
(8, 3, 2, 2, 100, 'A+', 5, 'N/A', '2025-12-12 05:06:34', '2025-12-12 05:06:34');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_09_11_094326_create_teachers_table', 1),
(7, '2025_09_12_060130_create_rooms_table', 1),
(8, '2025_09_12_060131_create_students_table', 1),
(9, '2025_09_13_043442_create_attendances_table', 1),
(10, '2025_09_13_085225_create_subjects_table', 1),
(11, '2025_09_13_085234_create_exams_table', 1),
(12, '2025_09_13_085241_create_marks_table', 1),
(13, '2025_09_16_081917_create_student_subjects_table', 1),
(14, '2025_09_22_185426_create_fee_categories_table', 1),
(15, '2025_09_22_185444_create_fee_structures_table', 1),
(16, '2025_09_28_183808_create_exam_names_table', 1),
(17, '2025_10_03_153733_create_class_schedules_table', 1),
(18, '2025_12_06_164031_create_notices_table', 1),
(19, '2025_12_06_181454_create_excategories_table', 1),
(20, '2025_12_06_181520_create_exsubcategories_table', 1),
(21, '2025_12_06_181537_create_expenses_table', 1),
(22, '2025_12_12_103332_create_fee_payment_details_table', 1),
(23, '2025_12_12_103336_create_fee_payment_items_table', 1),
(24, '2025_12_12_104757_create_companies_table', 1);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juston', 'Cremin', '1973-03-14', 'Other', 'AB-', 'Christian', 'Bangladeshi', '1', '+1.518.419.2677', 'student2@example.com', '$2y$12$d1Z.wIPm/FU9ErrMBXi9XOkgNJ96V3j0ffhRU/pTlC1pzgqbbRl6G', '823 Zakary Square Apt. 981\nNew Travis, AZ 27042-8020', 'Suite 039', 'Jabari Bashirian DDS', 'Engineer', '(808) 734-8939', 'student2@example.com', '2', 'Amara O\'Reilly', 'Housewife', '1-859-325-6625', 'student3@example.com', '3', 'Tyra Connelly DVM', '+1 (385) 207-4505', 'student4@example.com', '4', 'Grandparent', 1, 1, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:44', '2025-12-12 04:58:44'),
(2, 'Pietro', 'Little', '1989-12-14', 'Female', 'B-', 'Other', 'Bangladeshi', '6', '+1-307-283-8807', 'student7@example.com', '$2y$12$zl/33sC26Vd5oix8OwT9/uvdan4/Fm/Etx6PHEbJEOFJxQHhe14Nq', '159 Senger Crescent Suite 126\nDuBuqueport, MN 25648', 'Suite 532', 'Mr. Alex Goldner III', 'Businessman', '341.814.7057', 'student7@example.com', '7', 'Savanna Reichert', 'Housewife', '+1-347-396-5025', 'student8@example.com', '8', 'Frederic Borer', '442.516.1302', 'student9@example.com', '9', 'Uncle', 1, 1, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:45', '2025-12-12 04:58:45'),
(3, 'Sheldon', 'Heathcote', '1974-11-11', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '11', '762.526.9235', 'student12@example.com', '$2y$12$PnfA7K.eycmc.al.SbGtIecy.IsD9CsZb8AMny1pnDIRXyG23ubwS', '27127 Toy Highway Suite 705\nChesleyberg, KS 49325-0884', 'Suite 522', 'Boris Hand', 'Businessman', '(731) 910-6528', 'student12@example.com', '12', 'Lilian Ebert', 'Doctor', '+16319048698', 'student13@example.com', '13', 'Amya Gulgowski', '(650) 313-3062', 'student14@example.com', '14', 'Grandparent', 1, 1, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:45', '2025-12-12 05:01:17'),
(4, 'Bailey', 'Reichel', '2013-04-03', 'Male', 'B-', 'Other', 'Bangladeshi', '16', '+1.680.956.1542', 'student17@example.com', '$2y$12$4SDP3lyKUd5VLdt0YjkEYevkEnhNV5WpUt6Ao2DOk6uR6hMQ9wNE2', '538 Marvin Lock Apt. 431\nLake Elizabethland, ND 05341-4582', 'Suite 372', 'Abdullah Bailey', 'Engineer', '816-788-3335', 'student17@example.com', '17', 'Lupe Lockman', 'Nurse', '+1-364-613-6771', 'student18@example.com', '18', 'Euna Kerluke', '+1-878-466-0223', 'student19@example.com', '19', 'Aunt', 1, 1, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:45', '2025-12-12 04:58:45'),
(5, 'Leanna', 'Corwin', '2014-12-16', 'Other', 'AB+', 'Islam', 'Bangladeshi', '21', '248.926.4117', 'student22@example.com', '$2y$12$At8.LsuO1AKcAcdT73H6SOvYHew9JIoBIpQYfV5O6VX0bu6QJLnri', '91126 General Shore\nEast Gladys, NM 22873-6125', 'Suite 908', 'Damian Medhurst', 'Farmer', '(479) 972-2207', 'student22@example.com', '22', 'Hanna Little', 'Nurse', '(813) 864-8293', 'student23@example.com', '23', 'Alberto Ledner', '+15852842124', 'student24@example.com', '24', 'Sister', 1, 1, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:45', '2025-12-12 04:58:45'),
(6, 'Clarabelle', 'Koss', '2005-04-06', 'Female', 'A-', 'Hindu', 'Bangladeshi', '26', '+1-772-461-5216', 'student27@example.com', '$2y$12$APmAvJRXyiFgsoU4kkvT1.URvN0en0YjJZ59UARhw2VOLADBDrm9.', '361 Batz Inlet Apt. 637\nPort Louvenia, NV 48616', 'Apt. 103', 'Mr. Dino Hyatt', 'Farmer', '(430) 754-4118', 'student27@example.com', '27', 'Kelly Simonis', 'Businesswoman', '820-885-9060', 'student28@example.com', '28', 'Dorthy Mitchell', '+1.276.494.7986', 'student29@example.com', '29', 'Brother', 1, 1, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:45', '2025-12-12 04:58:45'),
(7, 'Alexzander', 'Legros', '2024-08-20', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '31', '1-802-714-4654', 'student32@example.com', '$2y$12$8xNVFueGcel90ifbwxoWD.AlgyBtOhupYEDtGf9cf7xY5pV4VH2TK', '716 Lang Burg Suite 372\nStoltenbergview, UT 71968-5379', 'Suite 097', 'Morton Thompson PhD', 'Teacher', '+1.601.748.4750', 'student32@example.com', '32', 'Muriel Shields', 'Teacher', '385.797.0634', 'student33@example.com', '33', 'Rickie Leffler', '+1-409-275-2762', 'student34@example.com', '34', 'Sister', 1, 2, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:45', '2025-12-12 04:58:45'),
(8, 'Nova', 'Gleason', '2019-01-17', 'Male', 'AB+', 'Other', 'Bangladeshi', '36', '325.238.6378', 'student37@example.com', '$2y$12$PotH9WyNsnFuGx8fq.D7xOwFzKpFUAaWtoa1apHmrY00hkpaC5YFW', '2291 Layla Park\nJohnsfurt, NY 01236', 'Suite 636', 'Darian Kris', 'Businessman', '+1-341-422-2588', 'student37@example.com', '37', 'Margarette Graham', 'Businesswoman', '+1-423-915-9339', 'student38@example.com', '38', 'Prof. Missouri Muller', '(415) 837-5295', 'student39@example.com', '39', 'Brother', 1, 1, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:46', '2025-12-12 04:58:46'),
(9, 'Josianne', 'Johnson', '2015-05-01', 'Male', 'AB-', 'Other', 'Bangladeshi', '41', '(260) 707-3726', 'student42@example.com', '$2y$12$cVJC0Z.O0ht38mn4udQ/Yuzmthz1gmH/oQ7ap8HCQfP3cknpnV2Qm', '71668 Franecki Mountain\nSouth Hollieburgh, WY 95586-8105', 'Suite 343', 'Frederik Luettgen MD', 'Teacher', '1-303-284-1538', 'student42@example.com', '42', 'Retta Mueller', 'Teacher', '+1-283-650-2700', 'student43@example.com', '43', 'Llewellyn Hahn', '1-435-576-2302', 'student44@example.com', '44', 'Grandparent', 1, 2, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:46', '2025-12-12 04:58:46'),
(10, 'Davon', 'Cummerata', '1974-10-10', 'Female', 'A-', 'Christian', 'Bangladeshi', '46', '+1-580-623-2756', 'student47@example.com', '$2y$12$oKa.7Hjq3oslJtsUqX6BT.akOAXGi5Og9sHJBh5OwW7QoujWXJ2jW', '7571 Theo Centers\nSkileshaven, DE 65914-2199', 'Apt. 815', 'Vern Kreiger V', 'Businessman', '(843) 927-7195', 'student47@example.com', '47', 'Mrs. Alayna Torp II', 'Nurse', '+1-754-704-4920', 'student48@example.com', '48', 'Jermey Wiegand', '(364) 739-5128', 'student49@example.com', '49', 'Aunt', 1, 2, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:46', '2025-12-12 04:58:46'),
(11, 'Percy', 'Baumbach', '1991-08-25', 'Female', 'B-', 'Christian', 'Bangladeshi', '51', '+1 (704) 664-6990', 'student52@example.com', '$2y$12$H7hA0RJ9ErXlnpL9httxV.ClYs1vP2GE1TT1iBuLpf8aO.Rp7Ge4q', '65222 Kennedi Bridge Apt. 461\nLehnerberg, IA 41888', 'Apt. 490', 'Prof. Harry Littel Jr.', 'Doctor', '+1 (828) 218-5203', 'student52@example.com', '52', 'Ofelia McDermott', 'Nurse', '564-320-2215', 'student53@example.com', '53', 'Lucienne Wolff Jr.', '+1-309-567-4080', 'student54@example.com', '54', 'Uncle', 1, 1, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:46', '2025-12-12 04:58:46'),
(12, 'Johnathan', 'Langosh', '2022-11-02', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '56', '(903) 396-9161', 'student57@example.com', '$2y$12$p0PKMVc4sAYX9.BBjlLjvetR/RF6OnxGL353qyVI/gVn.JCWGjJYe', '13965 Turner Inlet\nLoriton, NM 58606', 'Apt. 302', 'Adrian Von', 'Engineer', '+17255892045', 'student57@example.com', '57', 'Clarabelle Denesik', 'Nurse', '+1.540.702.5674', 'student58@example.com', '58', 'Mrs. Sophie Heidenreich III', '(480) 777-1637', 'student59@example.com', '59', 'Sister', 1, 1, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:46', '2025-12-12 04:58:46'),
(13, 'Vern', 'Herman', '1993-03-30', 'Female', 'A+', 'Christian', 'Bangladeshi', '61', '336.873.9958', 'student62@example.com', '$2y$12$JHct/YmqXdsFtz3tEkUvNO.fGVTq6GaLhdg1WhWmzOfgfBpbaB.w2', '51644 Stiedemann Throughway\nNorth Aurelio, RI 06219', 'Suite 779', 'Jamal Wehner IV', 'Doctor', '716-318-0099', 'student62@example.com', '62', 'Josefa Hills', 'Housewife', '+1-308-250-8066', 'student63@example.com', '63', 'Miss Melyna Lubowitz I', '1-757-501-3828', 'student64@example.com', '64', 'Brother', 1, 2, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:47', '2025-12-12 04:58:47'),
(14, 'Valentina', 'Hammes', '2004-05-20', 'Other', 'A-', 'Other', 'Bangladeshi', '66', '1-360-957-5032', 'student67@example.com', '$2y$12$NqPAf8cLLxcZFKsObH9XEO6LkBRFvMZgLHJA0MEBEGkEhcwRaB8dq', '340 Daphnee Islands\nSwaniawskifort, VT 17331-9025', 'Apt. 352', 'Keyshawn Padberg', 'Doctor', '1-786-832-9889', 'student67@example.com', '67', 'Augustine Beatty', 'Doctor', '(352) 999-2378', 'student68@example.com', '68', 'Sheldon Anderson', '502-571-1808', 'student69@example.com', '69', 'Uncle', 1, 3, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:47', '2025-12-12 04:58:47'),
(15, 'Otilia', 'Lowe', '1971-09-02', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '71', '1-760-914-5638', 'student72@example.com', '$2y$12$CgrwbNkesxcFMEAz0WiRN.71.fjAlDMNCEigPdoBe88MimTojLiWq', '50981 Veum Land\nEast Jaquanburgh, ME 33976-1436', 'Suite 729', 'Dr. Chandler Hodkiewicz', 'Businessman', '1-805-753-3179', 'student72@example.com', '72', 'Prof. Oma Stracke II', 'Doctor', '+1-360-230-5219', 'student73@example.com', '73', 'Cicero Bradtke', '+1 (931) 842-0398', 'student74@example.com', '74', 'Aunt', 1, 2, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:47', '2025-12-12 04:58:47'),
(16, 'Maryjane', 'Roberts', '1983-05-02', 'Male', 'O+', 'Islam', 'Bangladeshi', '76', '+1.779.409.8113', 'student77@example.com', '$2y$12$EAD6kSaUSRVdlfxbV3rxUuw2Cu2O9MwCbx6ayQojh1wooCHkHhTrG', '5030 Kim Junction\nMazietown, AZ 20754-3761', 'Apt. 272', 'Harrison Wisozk', 'Engineer', '1-804-962-6981', 'student77@example.com', '77', 'Allison Price', 'Businesswoman', '(316) 736-5383', 'student78@example.com', '78', 'Mr. Solon Stehr', '+1.859.410.6765', 'student79@example.com', '79', 'Aunt', 1, 2, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:47', '2025-12-12 04:58:47'),
(17, 'Clementina', 'Connelly', '2024-03-22', 'Female', 'B-', 'Islam', 'Bangladeshi', '81', '+1.872.444.5586', 'student82@example.com', '$2y$12$hy4brDKUCUnywURG.BMtQ.Xw2YFeT9K1OtGp6b6sDTDPXwd2m9r36', '7918 Jakubowski Way Apt. 552\nCorwinland, WI 74595-1618', 'Apt. 747', 'George Weber', 'Farmer', '908.275.3093', 'student82@example.com', '82', 'Cortney Bergnaum', 'Teacher', '(669) 384-3909', 'student83@example.com', '83', 'Vernon Huel', '+1-270-566-2582', 'student84@example.com', '84', 'Grandparent', 1, 3, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:47', '2025-12-12 04:58:47'),
(18, 'Waylon', 'Kilback', '1979-05-16', 'Other', 'A-', 'Other', 'Bangladeshi', '86', '+1.224.599.0228', 'student87@example.com', '$2y$12$iQ9LhKJDNr6w6eE05ojIIO2H/jN4oi0sGYkfbhFWx73mmA2GL7zIy', '9834 Alexandrea Cliff\nSabinabury, IA 37740', 'Apt. 231', 'Talon Greenholt', 'Businessman', '+14199232744', 'student87@example.com', '87', 'Damaris Kovacek DVM', 'Housewife', '(601) 368-6717', 'student88@example.com', '88', 'Elsa Blick', '678-599-6040', 'student89@example.com', '89', 'Grandparent', 1, 4, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:48', '2025-12-12 04:58:48'),
(19, 'Ericka', 'McGlynn', '2020-09-04', 'Other', 'B-', 'Islam', 'Bangladeshi', '91', '1-832-768-8961', 'student92@example.com', '$2y$12$teXiWsBEmbXtS5Jdk1uoyuu./TzNWsCd..Urhr2L3v/Xe5uyYjYSi', '35143 Collier Spur Apt. 277\nNew Randalberg, UT 61648-3459', 'Apt. 261', 'Christ Douglas', 'Engineer', '+1.774.645.3016', 'student92@example.com', '92', 'Orie Koepp', 'Businesswoman', '765-343-8830', 'student93@example.com', '93', 'Dr. Terry Collins MD', '(240) 390-6595', 'student94@example.com', '94', 'Aunt', 1, 3, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:48', '2025-12-12 04:58:48'),
(20, 'Jermey', 'Maggio', '1989-12-28', 'Female', 'AB+', 'Christian', 'Bangladeshi', '96', '856-678-7578', 'student97@example.com', '$2y$12$RJHLcIBmJXz2dUHdgREwwOK4Jmmz8qmborAqM7PMTibhGcc8PuKyi', '62288 Fritsch Burg\nRussellchester, AK 89988', 'Suite 024', 'Judge Douglas', 'Farmer', '1-989-433-5655', 'student97@example.com', '97', 'Ms. Eula Macejkovic', 'Businesswoman', '(213) 807-6556', 'student98@example.com', '98', 'Prof. Liliane Ruecker', '+1 (423) 805-5681', 'student99@example.com', '99', 'Sister', 1, 3, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:48', '2025-12-12 04:58:48'),
(21, 'Cordie', 'Lowe', '2025-04-08', 'Female', 'AB+', 'Christian', 'Bangladeshi', '101', '980.580.0320', 'student102@example.com', '$2y$12$Tc8.G97H7e7i1h5jMphZ/uuKTPAbqTA7.8AHInLFEcGVi8h10skBu', '357 Kshlerin Knoll Suite 589\nLake Myrtieport, CT 38897-2952', 'Apt. 844', 'Monserrate Schaefer', 'Farmer', '+1-614-505-7854', 'student102@example.com', '102', 'Layla Hammes', 'Housewife', '240-719-8307', 'student103@example.com', '103', 'Dr. Edwardo Brakus', '305-382-5292', 'student104@example.com', '104', 'Uncle', 1, 2, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:48', '2025-12-12 04:58:48'),
(22, 'Kayden', 'Lind', '2023-01-31', 'Other', 'A-', 'Hindu', 'Bangladeshi', '106', '(754) 504-0333', 'student107@example.com', '$2y$12$6TxMtDTNTg2yTuZ7DobDpeb3bLvF9Kl8oiQD/257U3u/PCo/0DKK2', '24263 Berge Club\nShayneborough, LA 75980-6226', 'Apt. 955', 'Boyd Erdman', 'Businessman', '+1-213-639-7271', 'student107@example.com', '107', 'Delfina Boyle PhD', 'Doctor', '989.896.6737', 'student108@example.com', '108', 'Dr. Reinhold Wuckert DVM', '641.613.2183', 'student109@example.com', '109', 'Grandparent', 1, 1, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:48', '2025-12-12 04:58:48'),
(23, 'Madisyn', 'Lind', '1975-05-25', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '111', '325-888-5396', 'student112@example.com', '$2y$12$ZDggE/dbt.sOCIq4n/r2qODhlOOrjojaS2v1A6JI40IcTFYHbtiiG', '32412 Hayes Stravenue Apt. 864\nSouth Blakeside, KS 29218-0667', 'Apt. 922', 'Chadrick Lueilwitz', 'Businessman', '+1.747.570.0012', 'student112@example.com', '112', 'Katlyn Lebsack', 'Nurse', '858-732-0561', 'student113@example.com', '113', 'Leone Bauch', '667.955.4383', 'student114@example.com', '114', 'Grandparent', 1, 2, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:49', '2025-12-12 04:58:49'),
(24, 'Jammie', 'Wilderman', '1988-10-12', 'Other', 'B-', 'Buddhist', 'Bangladeshi', '116', '+1 (631) 969-7036', 'student117@example.com', '$2y$12$hCuMXrVMo3wboLPtovqr2.SUkt0EyFOZLiT9fu9D95SUwdPmItdbK', '1724 Noemie Causeway\nNorth Sistershire, NM 75639', 'Apt. 453', 'Jerrell Morissette', 'Farmer', '+1-231-666-8488', 'student117@example.com', '117', 'Willow Rempel', 'Teacher', '319-939-7700', 'student118@example.com', '118', 'Christine Daugherty', '1-678-334-2238', 'student119@example.com', '119', 'Aunt', 1, 3, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:49', '2025-12-12 04:58:49'),
(25, 'Elton', 'Carter', '2014-09-08', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '121', '+1-920-795-5243', 'student122@example.com', '$2y$12$U/jGh5EpqwEIQTSql.rBP.KejT4RvwECxiJKycoEN8TnyQSuetLPK', '61823 Alivia Branch Suite 609\nNorth Caroleville, NY 86854-1016', 'Apt. 329', 'Harrison Gleason', 'Farmer', '951.964.2477', 'student122@example.com', '122', 'Rachael Jakubowski', 'Teacher', '478-887-1212', 'student123@example.com', '123', 'Aubree Zieme', '1-248-382-7791', 'student124@example.com', '124', 'Grandparent', 1, 3, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:49', '2025-12-12 04:58:49'),
(26, 'Dan', 'Bashirian', '1981-02-16', 'Male', 'A+', 'Christian', 'Bangladeshi', '126', '+1.351.290.0096', 'student127@example.com', '$2y$12$5b9VQ1UE.AtzyBa7AuZcterqA2okRJRc83GXO6pGs/LqfVu0MosXC', '10074 Lueilwitz Springs\nLake Caseyberg, NJ 86430-9357', 'Suite 957', 'Prof. Kayden Leuschke', 'Engineer', '270.967.4112', 'student127@example.com', '127', 'Ms. Otha Schulist', 'Nurse', '970-674-7747', 'student128@example.com', '128', 'Lorenz Rohan', '1-636-562-0254', 'student129@example.com', '129', 'Grandparent', 1, 2, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:49', '2025-12-12 05:01:17'),
(27, 'Dante', 'Vandervort', '1989-08-26', 'Male', 'B+', 'Christian', 'Bangladeshi', '131', '623.399.9732', 'student132@example.com', '$2y$12$vVQBGBGTZcTgtDwCArSgQek9jrQNWo2txrJjzI8ECYo84WY8Yrg5G', '2854 Zoie Inlet Apt. 960\nElmirafurt, VT 94208', 'Suite 900', 'Jose Leffler', 'Teacher', '+1-585-352-0494', 'student132@example.com', '132', 'Delfina Brown', 'Housewife', '(551) 923-2232', 'student133@example.com', '133', 'Jennie Wolff', '1-662-367-0962', 'student134@example.com', '134', 'Sister', 1, 3, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:49', '2025-12-12 04:58:49'),
(28, 'Rollin', 'Parker', '1997-01-04', 'Other', 'A+', 'Hindu', 'Bangladeshi', '136', '1-915-320-3513', 'student137@example.com', '$2y$12$OivjMhfZ6g7hCJbyEgmE1OqG5T9YOfjlktjB1fDy65m6Eyxc99XZO', '835 Greta Summit\nLake Magaliport, ND 57506', 'Suite 372', 'Lucious Lindgren', 'Farmer', '740.274.6571', 'student137@example.com', '137', 'Ms. Brigitte Leuschke', 'Teacher', '+1-202-407-3180', 'student138@example.com', '138', 'Dr. Abel Dickens', '1-940-442-5852', 'student139@example.com', '139', 'Brother', 1, 4, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:50', '2025-12-12 04:58:50'),
(29, 'Jaida', 'Goyette', '1992-01-28', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '141', '+13254390975', 'student142@example.com', '$2y$12$G.P9Ro/uh7nkCrLwQW9wjusXslSvoRbPpgdYXf9y7uCxfUYoIaWN6', '24009 Glenna Plains Suite 102\nNorth Milofort, MO 35062', 'Apt. 874', 'Mr. Morton Funk', 'Teacher', '952.998.3916', 'student142@example.com', '142', 'May Schmitt MD', 'Businesswoman', '(516) 537-4840', 'student143@example.com', '143', 'Barton Hackett', '+1-323-870-2197', 'student144@example.com', '144', 'Aunt', 1, 4, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:50', '2025-12-12 04:58:50'),
(30, 'Tyrique', 'Raynor', '1993-01-15', 'Female', 'O-', 'Other', 'Bangladeshi', '146', '+1-901-848-8063', 'student147@example.com', '$2y$12$7JOgMGJHi8u8NPr1ZO5q3eIY5upKDfEgwsydA/3Kfnx6amWrixy0O', '3117 Kuhn Road\nAriborough, SD 89932-2883', 'Suite 366', 'Gerardo Treutel', 'Doctor', '+15089853492', 'student147@example.com', '147', 'Salma Gusikowski', 'Teacher', '+1-541-834-9932', 'student148@example.com', '148', 'Dr. Murray Lubowitz Jr.', '678-929-7785', 'student149@example.com', '149', 'Brother', 1, 3, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:50', '2025-12-12 05:01:18'),
(31, 'May', 'Feeney', '1973-11-28', 'Female', 'B+', 'Other', 'Bangladeshi', '151', '628-316-4453', 'student152@example.com', '$2y$12$OHKeB6nTEXiZVXwswOD5NubDYniymc6Xxg6R7sTel3yXNEpLTeQu.', '836 Braden Run Apt. 550\nHowardborough, OK 27637-1797', 'Suite 968', 'Brayan Bruen', 'Farmer', '650-514-5374', 'student152@example.com', '152', 'Assunta Murazik', 'Doctor', '+1.602.895.2708', 'student153@example.com', '153', 'Zella Bartell', '1-678-551-5318', 'student154@example.com', '154', 'Aunt', 1, 5, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:50', '2025-12-12 04:58:50'),
(32, 'Linnea', 'Ritchie', '1982-05-04', 'Female', 'A-', 'Other', 'Bangladeshi', '156', '+1-726-778-2344', 'student157@example.com', '$2y$12$XB/Te69ee1jFiMCg1WAv3eJttIkKimdtMAVnEyKkexaPtBJevs9/G', '177 Tito Island\nLake Carolineport, MA 39006', 'Apt. 749', 'Garnet Purdy', 'Engineer', '726.915.0419', 'student157@example.com', '157', 'Miss Celine Mayert', 'Housewife', '+1 (341) 800-7689', 'student158@example.com', '158', 'Prof. Adam Muller', '385-475-0709', 'student159@example.com', '159', 'Uncle', 1, 4, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:50', '2025-12-12 04:58:50'),
(33, 'Verdie', 'Gusikowski', '1975-07-18', 'Other', 'AB+', 'Islam', 'Bangladeshi', '161', '563-676-5080', 'student162@example.com', '$2y$12$YmDWMHZlVgRh1LHtyTdGre5kJBylpRPxSU5UsXKhSwZd6IY9qfwdi', '84291 Benny View Apt. 539\nWest Orie, IL 80645', 'Apt. 475', 'Lucio Bashirian V', 'Teacher', '850-634-7412', 'student162@example.com', '162', 'Melyssa Balistreri', 'Nurse', '+14584179870', 'student163@example.com', '163', 'Devin Smitham', '+1-845-534-4042', 'student164@example.com', '164', 'Aunt', 1, 2, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:51', '2025-12-12 04:58:51'),
(34, 'Alexandrine', 'Paucek', '2023-05-24', 'Female', 'O+', 'Hindu', 'Bangladeshi', '166', '+16288622088', 'student167@example.com', '$2y$12$pZ8VHpv3VEpPYJkpAqMoCuOoJAJ3GctznzjstAseg61cq63YSHzM6', '200 Kylie Flats Suite 335\nLake Orval, MT 67706', 'Apt. 224', 'Esteban Cartwright', 'Farmer', '931-870-5635', 'student167@example.com', '167', 'Stephanie Grimes', 'Nurse', '+1 (586) 243-2802', 'student168@example.com', '168', 'Elise Runolfsson', '(703) 670-6090', 'student169@example.com', '169', 'Brother', 1, 4, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:51', '2025-12-12 05:01:19'),
(35, 'Wava', 'Casper', '2022-09-22', 'Other', 'B-', 'Hindu', 'Bangladeshi', '171', '+1-909-526-7826', 'student172@example.com', '$2y$12$1SgOKFtiZsDqlITWiLwEh.w6gXvmh/mhoNRTYSkhtlLJdEbAMwKpK', '728 Gia Circle Apt. 060\nCarmineshire, CT 38571-6842', 'Suite 686', 'Prof. Destin Fay', 'Doctor', '+1 (308) 917-1601', 'student172@example.com', '172', 'Bettye Hoeger Sr.', 'Nurse', '626.515.9015', 'student173@example.com', '173', 'Jennie Konopelski', '931.522.4103', 'student174@example.com', '174', 'Uncle', 1, 6, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:51', '2025-12-12 04:58:51'),
(36, 'Jakob', 'Kilback', '1974-12-21', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '176', '+1-928-951-5504', 'student177@example.com', '$2y$12$FMsSaevNkNEwvNu7dNouseAhJBaoiH9FY1vHRPaWImtO9.G8KR4Dq', '26958 Archibald Mills\nSwiftfort, FL 79521-1171', 'Apt. 519', 'Lazaro Beier', 'Doctor', '+1.214.451.0669', 'student177@example.com', '177', 'Karen Konopelski DVM', 'Businesswoman', '+15742717011', 'student178@example.com', '178', 'Foster Kuhlman', '712.346.7661', 'student179@example.com', '179', 'Grandparent', 1, 5, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:51', '2025-12-12 04:58:51'),
(37, 'Mattie', 'Ebert', '1994-09-10', 'Male', 'A-', 'Christian', 'Bangladeshi', '181', '1-351-763-5132', 'student182@example.com', '$2y$12$kb02eFWuhul9abDZuNEhduPg9vVp63ms2X10p787RFN8BynFM5I2O', '417 Fay Lake\nCristalhaven, RI 12110', 'Apt. 165', 'Prof. Paolo Cummerata', 'Engineer', '720.749.0728', 'student182@example.com', '182', 'Prof. Jewel Gleason', 'Housewife', '+18728400980', 'student183@example.com', '183', 'Ms. Reta Gleason III', '(469) 763-5241', 'student184@example.com', '184', 'Aunt', 1, 6, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:51', '2025-12-12 04:58:51'),
(38, 'Tressa', 'Senger', '1971-03-09', 'Other', 'A+', 'Christian', 'Bangladeshi', '186', '469-213-3873', 'student187@example.com', '$2y$12$LsRKezPI6iWgB3WPPUkk6.O2Ub6pEM0j1zCog85dw4yacleqOty3W', '439 Giovanna Turnpike\nPort Luella, MS 43220-0181', 'Suite 083', 'Tyrell Keeling', 'Businessman', '1-360-291-5051', 'student187@example.com', '187', 'Pat Green I', 'Businesswoman', '229.971.0217', 'student188@example.com', '188', 'Berenice Dickinson Sr.', '+1.510.652.8654', 'student189@example.com', '189', 'Sister', 1, 5, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:52', '2025-12-12 04:58:52'),
(39, 'Elena', 'Rolfson', '2016-05-05', 'Male', 'B+', 'Hindu', 'Bangladeshi', '191', '(424) 247-2287', 'student192@example.com', '$2y$12$hA/VhhzRzcCiSZtfzKb0B.3RpsCgdCr92soV9BFONFqjsf8FwkDRS', '97249 Trantow Parkways\nLake Emma, VA 11563-1851', 'Apt. 062', 'Dr. Merle Farrell III', 'Teacher', '+1-239-307-6481', 'student192@example.com', '192', 'Prof. Verona Rosenbaum IV', 'Housewife', '+19164541503', 'student193@example.com', '193', 'Gregorio Heaney', '(223) 733-0741', 'student194@example.com', '194', 'Sister', 1, 3, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:52', '2025-12-12 04:58:52'),
(40, 'Reginald', 'Glover', '1973-10-17', 'Other', 'AB-', 'Christian', 'Bangladeshi', '196', '516-302-2983', 'student197@example.com', '$2y$12$LwUlAe0YcUui8kfrI2ry/ecEw2WKG2UQjg7s38.CrwLzXVvb8Bfya', '812 Rylee Stravenue\nOfeliatown, WI 41291-1493', 'Apt. 400', 'Dr. Bart Nader', 'Teacher', '+13413561243', 'student197@example.com', '197', 'Ms. Ivory Schultz', 'Doctor', '+1 (985) 229-1743', 'student198@example.com', '198', 'Leonardo Cummerata', '(689) 988-1391', 'student199@example.com', '199', 'Grandparent', 1, 4, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:52', '2025-12-12 04:58:52'),
(41, 'Saul', 'Krajcik', '1978-10-24', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '201', '+1-239-736-6591', 'student202@example.com', '$2y$12$4WGWjj.jt9IzE80gd8WhfO98HJGdZ5pv.8Iiufiw3GxfIBmnGxCzG', '25306 Hyatt Forge\nStephanyville, UT 35896', 'Apt. 813', 'Mr. Braulio Jacobi II', 'Engineer', '+14016392518', 'student202@example.com', '202', 'Mrs. Lorine Spinka PhD', 'Doctor', '+14134347565', 'student203@example.com', '203', 'Estrella Armstrong', '1-530-589-6341', 'student204@example.com', '204', 'Sister', 1, 6, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:52', '2025-12-12 04:58:52'),
(42, 'Kaylie', 'Kshlerin', '2013-05-25', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '206', '1-228-268-5449', 'student207@example.com', '$2y$12$IWR91Rf3bCYEt2VWSrKqnujsWdYpZrbmPPgmWKVA6VLc/JCj7HsGi', '14346 Boyle Ways Apt. 512\nDamariston, WA 84191', 'Suite 180', 'Travis Graham', 'Engineer', '(517) 253-6665', 'student207@example.com', '207', 'Alexandrea Wolf', 'Housewife', '947.948.6983', 'student208@example.com', '208', 'Dr. Sedrick Ward', '+1-423-684-6586', 'student209@example.com', '209', 'Brother', 1, 5, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:52', '2025-12-12 04:58:52'),
(43, 'Declan', 'Larson', '1998-02-23', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '211', '(530) 478-4112', 'student212@example.com', '$2y$12$e6Bpc3h7VhvTE1hZ/2qFbO5GQ7f5SY8hHbqoat73IXYCcB6DT86/S', '4758 Beier Mountain Apt. 779\nJacobiville, SC 55138', 'Apt. 292', 'Harmon Mills', 'Farmer', '608-467-0223', 'student212@example.com', '212', 'Myrtie Fadel', 'Housewife', '+1-913-895-1350', 'student213@example.com', '213', 'Mrs. Heaven Wolff', '+1 (424) 317-5123', 'student214@example.com', '214', 'Aunt', 1, 5, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:53', '2025-12-12 04:58:53'),
(44, 'Alexie', 'Purdy', '2017-02-05', 'Male', 'O-', 'Other', 'Bangladeshi', '216', '1-470-349-1853', 'student217@example.com', '$2y$12$SiAQVo8/SjpUBgkpgRoqTuqCtbf9XjOh.BSoDIZz/rg3joqlu9Waq', '169 Leora Manor Apt. 069\nNorth Sister, DE 12166-4540', 'Suite 812', 'Murl McKenzie', 'Doctor', '+1-865-448-4954', 'student217@example.com', '217', 'Prof. Casandra Satterfield', 'Housewife', '+15618274274', 'student218@example.com', '218', 'Mrs. Delphine Quigley I', '+1-864-344-7164', 'student219@example.com', '219', 'Sister', 1, 5, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:53', '2025-12-12 05:01:21'),
(45, 'Genoveva', 'Auer', '1972-01-06', 'Male', 'B-', 'Hindu', 'Bangladeshi', '221', '936-679-7524', 'student222@example.com', '$2y$12$frnpvYAsBRXHT0TpRHniK.Rz.AiGbpo4KCfhg82vYnyvbHLKZqSC6', '2474 Schinner Squares Suite 273\nSchimmeltown, MA 59727', 'Apt. 679', 'Prof. Arnaldo Hackett', 'Teacher', '+1-678-445-5748', 'student222@example.com', '222', 'Ashly Reilly', 'Housewife', '+1-980-398-1108', 'student223@example.com', '223', 'River Dickens', '+1 (540) 758-9344', 'student224@example.com', '224', 'Uncle', 1, 6, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:53', '2025-12-12 05:01:22'),
(46, 'Ken', 'Reichert', '1988-03-05', 'Male', 'B-', 'Other', 'Bangladeshi', '226', '1-480-385-0465', 'student227@example.com', '$2y$12$3eR6ibYjDLtS7Oq2890H.ebO1sDGToINCcpARpZ19s4T/9krC7bTa', '35261 Valentine Cliff Apt. 186\nWest Mozelle, WI 11374-9968', 'Apt. 112', 'Mr. Lowell Murray', 'Engineer', '+1-541-895-2494', 'student227@example.com', '227', 'Dr. Katrina Renner III', 'Teacher', '+1.878.485.5004', 'student228@example.com', '228', 'Francesco Williamson', '+1-785-655-3254', 'student229@example.com', '229', 'Sister', 1, 7, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:53', '2025-12-12 04:58:53'),
(47, 'Mary', 'Kuphal', '1973-02-10', 'Other', 'AB+', 'Other', 'Bangladeshi', '231', '1-828-537-6459', 'student232@example.com', '$2y$12$SxIWa17KN6KHthP60fLhFuj6qdgxpFMXs/yGKMOZEq4IKE2/qZRP.', '953 Stokes Mission Apt. 019\nWest Jacinthefort, KY 79211-2776', 'Apt. 680', 'Cody Schmitt', 'Engineer', '941.763.5582', 'student232@example.com', '232', 'Dr. Pearline Cronin I', 'Nurse', '210-257-4048', 'student233@example.com', '233', 'Dr. Emmitt Wyman DDS', '+1-336-443-3079', 'student234@example.com', '234', 'Brother', 1, 7, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:53', '2025-12-12 04:58:53'),
(48, 'Devin', 'Fritsch', '1996-06-30', 'Other', 'O-', 'Buddhist', 'Bangladeshi', '236', '215.784.9837', 'student237@example.com', '$2y$12$cewK2glB2XWPZI1N.6f8vezNRA4LOLhmznvF7Jw0X9KuDIP3qmawK', '5973 Keenan Shore Suite 824\nSouth Sarai, NY 34683-4021', 'Apt. 732', 'Travon Effertz', 'Farmer', '+1 (586) 322-6119', 'student237@example.com', '237', 'Yasmeen Heathcote', 'Housewife', '1-283-597-3833', 'student238@example.com', '238', 'Hershel O\'Connell PhD', '1-973-709-1238', 'student239@example.com', '239', 'Brother', 1, 4, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:54', '2025-12-12 04:58:54'),
(49, 'Edison', 'Bahringer', '1988-05-04', 'Male', 'O-', 'Islam', 'Bangladeshi', '241', '+1-820-288-3198', 'student242@example.com', '$2y$12$V/kRUtVgrd2vtNyCJUsi5uNZ75ojSYSEI8om64unsoCYXB.uVOMF2', '65041 Thompson Roads\nLake Brisaville, WI 04609', 'Suite 775', 'Prof. Joel Leuschke Sr.', 'Engineer', '+1-808-296-8962', 'student242@example.com', '242', 'Abbey Graham', 'Teacher', '(564) 898-9812', 'student243@example.com', '243', 'Elyse Yost', '(330) 947-2496', 'student244@example.com', '244', 'Sister', 1, 6, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:54', '2025-12-12 04:58:54'),
(50, 'Walter', 'Renner', '1977-11-04', 'Male', 'AB-', 'Buddhist', 'Bangladeshi', '246', '828-852-3383', 'student247@example.com', '$2y$12$AuiESAjojeWRBqRU7k.1jOtpiuqspgB.53/7QFer4Qw1ovNx0lTIa', '2922 Bradtke Port Suite 140\nEast Cody, HI 71064', 'Apt. 771', 'Prof. Zackery Predovic DDS', 'Doctor', '+1.409.226.4647', 'student247@example.com', '247', 'Dr. Cali Borer', 'Teacher', '1-563-329-6038', 'student248@example.com', '248', 'Meda Fay', '1-253-978-4756', 'student249@example.com', '249', 'Brother', 1, 7, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:54', '2025-12-12 04:58:54'),
(51, 'Damian', 'Kilback', '1979-06-21', 'Female', 'A+', 'Other', 'Bangladeshi', '251', '(223) 764-0002', 'student252@example.com', '$2y$12$TUO.4jgLmMOYCrgQ1Xf2V.zrlHMdCNgRtUKQMultf354TfAqrvTwW', '6074 Beier Gardens\nDarrionmouth, IL 97417-9723', 'Suite 761', 'Rigoberto Bailey', 'Farmer', '+1-805-657-4877', 'student252@example.com', '252', 'Lue Huel', 'Housewife', '1-385-509-7956', 'student253@example.com', '253', 'Prof. Kristina Swaniawski PhD', '(909) 363-1015', 'student254@example.com', '254', 'Aunt', 1, 8, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:54', '2025-12-12 04:58:54'),
(52, 'Callie', 'Sauer', '1980-09-25', 'Other', 'B-', 'Other', 'Bangladeshi', '256', '+1 (743) 474-7451', 'student257@example.com', '$2y$12$W7a6YJt.ZnjA2VEAYXtXP.nBFE0yIakf46NXEv5n5GramD8n859zS', '33193 Golden Fork Suite 105\nNorth Candidamouth, MO 07614-2549', 'Apt. 780', 'Madison Fahey DVM', 'Teacher', '+1-325-891-0272', 'student257@example.com', '257', 'Citlalli Schinner', 'Doctor', '+1.346.345.1908', 'student258@example.com', '258', 'Alana Hagenes', '+13308895165', 'student259@example.com', '259', 'Sister', 1, 9, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:54', '2025-12-12 04:58:54'),
(53, 'Dusty', 'Quitzon', '1996-01-23', 'Other', 'B-', 'Other', 'Bangladeshi', '261', '+1-480-722-8844', 'student262@example.com', '$2y$12$rSrhiBUEEcNbEWmVUoKY.OZDPQx2ZsHXM822GEcjXzRr9r7937XIu', '290 Elmore Forest Suite 528\nPort Aurelia, OR 65766', 'Suite 414', 'Deon Schuster', 'Doctor', '+1 (609) 719-5461', 'student262@example.com', '262', 'Lera Kerluke II', 'Housewife', '1-385-848-3062', 'student263@example.com', '263', 'Dr. Monty McClure IV', '(805) 883-2879', 'student264@example.com', '264', 'Uncle', 1, 8, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:55', '2025-12-12 04:58:55'),
(54, 'Lonzo', 'Ullrich', '2003-02-17', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '266', '(512) 747-9386', 'student267@example.com', '$2y$12$8m4/SxV6oGSds.z/QWHhEu18QWloN1EIPM415x3X5Rx6oS8dIKZqe', '996 Wilkinson Vista Apt. 494\nPort Micaela, MD 29762', 'Apt. 292', 'Ryley Ward', 'Doctor', '+1-689-957-3900', 'student267@example.com', '267', 'Mrs. Meda Purdy IV', 'Doctor', '+12542280574', 'student268@example.com', '268', 'Emerald Cormier', '534-990-4718', 'student269@example.com', '269', 'Brother', 1, 4, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:55', '2025-12-12 04:58:55'),
(55, 'Ervin', 'Aufderhar', '1988-09-21', 'Female', 'B-', 'Christian', 'Bangladeshi', '271', '+1.571.748.3992', 'student272@example.com', '$2y$12$SALmKxxu9QzzYUL9sgazT.Xx5nzY2.EHCp/qF7pyP/awib4HsbyyW', '5710 Catharine Stravenue\nEast Cordell, VT 33692-0424', 'Suite 139', 'Stevie Ratke', 'Doctor', '(715) 637-4290', 'student272@example.com', '272', 'Miss Hellen Williamson', 'Doctor', '463-586-4402', 'student273@example.com', '273', 'Pasquale Lemke', '(601) 693-8131', 'student274@example.com', '274', 'Brother', 1, 4, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:55', '2025-12-12 04:58:55'),
(56, 'Nathen', 'Bahringer', '2020-06-13', 'Male', 'AB+', 'Other', 'Bangladeshi', '276', '1-502-928-1423', 'student277@example.com', '$2y$12$JpDz1AsPYnqIfJhF8AdNReIOuTfDPcxpKf5ocB9mYo/jIXOUBU.FO', '34963 Stanton Locks\nRowlandfurt, WV 84765', 'Suite 670', 'Dr. Avery Carter', 'Doctor', '678.209.7964', 'student277@example.com', '277', 'Gerry Olson', 'Doctor', '+18159500479', 'student278@example.com', '278', 'Emilie Kemmer', '+1 (854) 829-3145', 'student279@example.com', '279', 'Sister', 1, 5, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:55', '2025-12-12 04:58:55'),
(57, 'Bell', 'Steuber', '1976-08-11', 'Female', 'B+', 'Hindu', 'Bangladeshi', '281', '972-487-4167', 'student282@example.com', '$2y$12$uW/rO/wyvAgL/6pSBpHZGusHeCTL8kf0buHO3vA3dJwEwDhMTKTmu', '5005 Edward Trail\nNew Monafort, KY 60397', 'Suite 498', 'Prof. Felton Kris PhD', 'Farmer', '+1 (701) 430-5346', 'student282@example.com', '282', 'Michelle Ward', 'Businesswoman', '1-640-247-5068', 'student283@example.com', '283', 'Johann Macejkovic', '(202) 987-5230', 'student284@example.com', '284', 'Brother', 1, 9, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:55', '2025-12-12 04:58:55'),
(58, 'Alexander', 'Thompson', '2019-03-07', 'Other', 'A+', 'Other', 'Bangladeshi', '286', '(731) 373-5474', 'student287@example.com', '$2y$12$U3r.Rj9mKlln/iHFvR5UTeMp3eejUUzbnGyiY2G78zTF7SY9YBeRK', '9129 Gilbert Wells Suite 467\nLake Laurieville, MS 13427-4024', 'Suite 446', 'Baron West Jr.', 'Teacher', '551.687.6272', 'student287@example.com', '287', 'Mrs. Shanon Larson', 'Housewife', '947.325.3512', 'student288@example.com', '288', 'Josue Reilly', '+19894820755', 'student289@example.com', '289', 'Sister', 1, 5, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:56', '2025-12-12 04:58:56'),
(59, 'Nasir', 'Barrows', '2017-04-24', 'Female', 'A+', 'Islam', 'Bangladeshi', '291', '334-340-1920', 'student292@example.com', '$2y$12$OtPLHd8U8.Alv1orbwMFUu/Q4sp98OtZNK1S0aArV2d4KwUKM1dkC', '1598 Weissnat Branch\nEast Albertmouth, MD 15087-7987', 'Apt. 664', 'Kayden Kris', 'Businessman', '+1-769-605-1551', 'student292@example.com', '292', 'Marietta Stamm', 'Nurse', '+1 (360) 266-8839', 'student293@example.com', '293', 'Bradley Windler', '+1-480-959-3648', 'student294@example.com', '294', 'Brother', 1, 6, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:56', '2025-12-12 04:58:56'),
(60, 'Kitty', 'Thompson', '1978-07-26', 'Male', 'A+', 'Islam', 'Bangladeshi', '296', '(364) 329-8129', 'student297@example.com', '$2y$12$er0xh4N3c/thcvD8qE9xPeHYsB.W8akcP6jGWYkvXWbmt5IctQzWm', '100 Ebert Row\nEast Melynaside, TX 21694-3736', 'Suite 284', 'Marcelino Kovacek', 'Teacher', '518.892.7707', 'student297@example.com', '297', 'Cynthia Bechtelar', 'Doctor', '(231) 515-1564', 'student298@example.com', '298', 'Mylene Feil', '734.417.5146', 'student299@example.com', '299', 'Sister', 1, 7, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:56', '2025-12-12 04:58:56'),
(61, 'Flavio', 'Heathcote', '2006-08-08', 'Female', 'O-', 'Christian', 'Bangladeshi', '301', '754-745-3821', 'student302@example.com', '$2y$12$n/2s2pA87lTqIrZ0YHXhv.5sNXRiFP1zDH6U14zXvvI9lDC2zPgYe', '122 Maye Freeway Apt. 187\nNorth Alexysside, FL 13575', 'Apt. 340', 'Kim Klein', 'Businessman', '424.753.7169', 'student302@example.com', '302', 'Prof. Elise Lubowitz MD', 'Nurse', '+18787765612', 'student303@example.com', '303', 'Orville Lakin', '+1-629-642-6320', 'student304@example.com', '304', 'Uncle', 1, 7, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:56', '2025-12-12 04:58:56'),
(62, 'Hailee', 'Kozey', '1998-03-29', 'Male', 'O+', 'Christian', 'Bangladeshi', '306', '1-425-935-4336', 'student307@example.com', '$2y$12$PzmwXI.bf69YlaWjD9G13.BAsk/W0WlGOHL4Gq.mp7qSMTQvdKAmm', '821 Jaden Square\nJoanatown, VA 01566', 'Suite 676', 'Bret Hudson I', 'Farmer', '(309) 799-0536', 'student307@example.com', '307', 'Roxanne Hickle', 'Businesswoman', '1-616-496-7409', 'student308@example.com', '308', 'Imelda Bogisich', '646-961-8710', 'student309@example.com', '309', 'Brother', 1, 5, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:56', '2025-12-12 04:58:56'),
(63, 'Elisa', 'Connelly', '2017-02-02', 'Female', 'A-', 'Islam', 'Bangladeshi', '311', '1-336-660-5004', 'student312@example.com', '$2y$12$x439LLfZzm/cm6zy7w80w.P/K7J0LmUBzG4aGA3eOOmBpq.RDzPQC', '2599 Dejon Curve\nLake Jeramy, IA 82171', 'Apt. 596', 'Gustave Gibson MD', 'Businessman', '(458) 239-3892', 'student312@example.com', '312', 'Dr. Delphia Smith II', 'Doctor', '+1-520-922-1405', 'student313@example.com', '313', 'Frederick Marquardt', '+1 (743) 416-5457', 'student314@example.com', '314', 'Grandparent', 1, 10, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:57', '2025-12-12 04:58:57'),
(64, 'Kendra', 'Dickinson', '2009-10-22', 'Male', 'B-', 'Hindu', 'Bangladeshi', '316', '570.524.1894', 'student317@example.com', '$2y$12$NpwkYbKnZW271ndGD46BvOMg85dxgmPCNNO2GMZ5FK4Mn9H/iiR2e', '33830 Carter Cliff\nLake Kiarra, TN 41427-7388', 'Suite 406', 'Dr. Junior Erdman IV', 'Doctor', '570.280.3177', 'student317@example.com', '317', 'Lavina Kunze', 'Businesswoman', '920-214-7672', 'student318@example.com', '318', 'Ali Keebler', '+1-430-865-8206', 'student319@example.com', '319', 'Brother', 1, 10, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:57', '2025-12-12 04:58:57'),
(65, 'Desiree', 'Heathcote', '1986-09-20', 'Female', 'O-', 'Other', 'Bangladeshi', '321', '+18322772674', 'student322@example.com', '$2y$12$yz8F.RL6zOw1BsJfIb/NQOPBPYche7Usma8RoUw.TUMstfbJMLaqi', '980 Tevin Pass Suite 244\nCaesarside, KS 87600-5169', 'Suite 957', 'Dr. Kevin Beer', 'Teacher', '+1-559-669-4062', 'student322@example.com', '322', 'Glenna Huel I', 'Teacher', '+1.220.426.3368', 'student323@example.com', '323', 'Mara Erdman', '1-847-470-3282', 'student324@example.com', '324', 'Aunt', 1, 6, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:57', '2025-12-12 04:58:57'),
(66, 'Joy', 'Ledner', '1972-03-14', 'Other', 'O+', 'Christian', 'Bangladeshi', '326', '+1-726-353-3862', 'student327@example.com', '$2y$12$TYz7KJdHJujAUoGTq1O8b.bXX7TRXGYFjFo9qzHJ5MfzDDJWWJOsu', '5084 Hodkiewicz Fort\nAbshiremouth, KY 00361-4381', 'Apt. 503', 'Otis Leuschke', 'Engineer', '(804) 789-4656', 'student327@example.com', '327', 'Eulalia Dickens', 'Doctor', '+1-559-858-7299', 'student328@example.com', '328', 'Andy Schmeler', '907.856.1636', 'student329@example.com', '329', 'Grandparent', 1, 8, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:57', '2025-12-12 04:58:57'),
(67, 'Otilia', 'Schuster', '1977-03-06', 'Other', 'B+', 'Other', 'Bangladeshi', '331', '+1 (984) 989-0412', 'student332@example.com', '$2y$12$Gvy7y2qCgSK.1j5d90l97eO1PoW.dvHWRPsTbbbyuE.oliNgrEsUm', '88232 Lindgren Circles Apt. 545\nNew Elbert, NC 57211-0987', 'Apt. 235', 'Randal Batz', 'Farmer', '+1-520-884-1585', 'student332@example.com', '332', 'Ms. Marianna Heaney IV', 'Nurse', '+1 (786) 926-9250', 'student333@example.com', '333', 'Thelma Goodwin Sr.', '+18178159371', 'student334@example.com', '334', 'Brother', 1, 9, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:57', '2025-12-12 04:58:57'),
(68, 'Elmira', 'Crona', '1985-01-08', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '336', '+1-743-572-7381', 'student337@example.com', '$2y$12$jc4q99yD.zuma43XHNRg3OppldbdUW6Kmvtjox9SxSDaTyVW00DOa', '8180 Rowe Parks\nKilbackville, MS 13270', 'Suite 338', 'Erik Farrell', 'Farmer', '1-223-559-8094', 'student337@example.com', '337', 'Prof. Alberta Fadel DVM', 'Doctor', '260-532-3962', 'student338@example.com', '338', 'Carroll Davis Jr.', '701-660-8765', 'student339@example.com', '339', 'Sister', 1, 7, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:58', '2025-12-12 05:01:23'),
(69, 'Liliane', 'Lebsack', '1972-07-14', 'Female', 'B-', 'Islam', 'Bangladeshi', '341', '+1.682.314.5657', 'student342@example.com', '$2y$12$WPdAWWgOwxbQw90maR7HgeBaO.EXDRsv02upKiJa5a6ItT55n2BGO', '3495 Eva Corner\nAnthonymouth, AK 39564', 'Suite 519', 'Mr. Fern Hilpert MD', 'Teacher', '986-445-5538', 'student342@example.com', '342', 'Prof. Herminia Fisher DDS', 'Doctor', '858.625.1843', 'student343@example.com', '343', 'Johanna Borer', '(563) 831-7753', 'student344@example.com', '344', 'Aunt', 1, 7, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:58', '2025-12-12 04:58:58'),
(70, 'Sidney', 'Gottlieb', '2012-11-20', 'Male', 'B+', 'Other', 'Bangladeshi', '346', '380.919.9674', 'student347@example.com', '$2y$12$IiSU3vbtCTAUORr0i/kJV.JJdNAXq7jVUTFHo5UBTP9AiSBp6KCiq', '9891 Evalyn Crest\nLake Vella, MI 00972-9915', 'Apt. 861', 'Adrian Mante', 'Businessman', '1-678-654-0096', 'student347@example.com', '347', 'Tania Cartwright', 'Teacher', '+17605991996', 'student348@example.com', '348', 'Charlene Cole I', '339.394.1895', 'student349@example.com', '349', 'Aunt', 1, 8, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:58', '2025-12-12 04:58:58'),
(71, 'Margie', 'Hudson', '2019-09-07', 'Female', 'B+', 'Christian', 'Bangladeshi', '351', '+1-629-318-7213', 'student352@example.com', '$2y$12$IeBrQK5YDWyNcEVFm09KeuMMoUq2sVNacBijTJ3UPH5oXkPK.aG3.', '8429 Emiliano Lake\nWest Keaton, DC 61397-2645', 'Apt. 093', 'Dr. Filiberto Wiza V', 'Engineer', '+1.360.845.0363', 'student352@example.com', '352', 'Anabelle Thompson Jr.', 'Doctor', '+1-458-404-0999', 'student353@example.com', '353', 'Darius Bins', '+1-231-556-5783', 'student354@example.com', '354', 'Sister', 1, 8, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:58', '2025-12-12 04:58:58'),
(72, 'Natalia', 'Bergnaum', '1971-08-03', 'Female', 'O+', 'Christian', 'Bangladeshi', '356', '+1.909.816.1321', 'student357@example.com', '$2y$12$zGP2EetpSFwhyEQSFUUBbOwQ59.cex23asbGzj/LNkL7BASVs/Y5.', '45373 Adaline Mountains Apt. 284\nWhitehaven, NV 69354-4756', 'Suite 596', 'Prof. Monserrate Daniel DDS', 'Teacher', '804-931-1841', 'student357@example.com', '357', 'Elena Runolfsdottir', 'Nurse', '980.355.0570', 'student358@example.com', '358', 'Mr. Clemens Kovacek', '+1-743-665-8966', 'student359@example.com', '359', 'Uncle', 1, 11, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:58', '2025-12-12 04:58:58'),
(73, 'Antonina', 'Turner', '2013-08-21', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '361', '+1-405-424-9816', 'student362@example.com', '$2y$12$Zqd4qHbvrdPvxHzXN0SNZuDm2iybrAdgSjOCwqoDxaDkR5mA2tTSW', '81749 Mann Throughway Suite 210\nWest Rickyborough, WA 26897', 'Apt. 210', 'Edison Koss', 'Farmer', '+1.564.366.9982', 'student362@example.com', '362', 'Nya Gutmann', 'Doctor', '281.820.0209', 'student363@example.com', '363', 'Carolanne Mosciski Sr.', '364.613.4812', 'student364@example.com', '364', 'Uncle', 1, 8, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:59', '2025-12-12 05:01:25'),
(74, 'Roberta', 'Paucek', '2017-12-09', 'Male', 'A+', 'Islam', 'Bangladeshi', '366', '+17403944449', 'student367@example.com', '$2y$12$ALpR9tdOlXk0FtGQctG5bOcEs9AnRkam9yDypIyq7ulU0US/0ZuLi', '706 Pfeffer Roads Suite 427\nGreysonville, CO 39164', 'Suite 696', 'Mr. Bud Connelly', 'Farmer', '+1-309-374-0809', 'student367@example.com', '367', 'Gretchen Stiedemann', 'Businesswoman', '1-614-588-0610', 'student368@example.com', '368', 'Boyd Wisoky DVM', '+1 (510) 467-4485', 'student369@example.com', '369', 'Sister', 1, 3, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:59', '2025-12-12 04:58:59'),
(75, 'Justyn', 'Stoltenberg', '2006-07-26', 'Female', 'AB+', 'Islam', 'Bangladeshi', '371', '+1-660-603-4149', 'student372@example.com', '$2y$12$qo0EMUgKXzsuCSpi7fjMteBKFyWdGK3ktajNkd96wAMHxm1d.tiHa', '3624 Domenick Ridge\nLourdesburgh, ME 23476', 'Suite 382', 'Branson Green', 'Farmer', '1-463-662-4341', 'student372@example.com', '372', 'Janessa Watsica PhD', 'Teacher', '+1 (404) 989-5377', 'student373@example.com', '373', 'Miss Bernice VonRueden', '+1-631-844-0674', 'student374@example.com', '374', 'Aunt', 1, 9, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:59', '2025-12-12 04:58:59'),
(76, 'Florine', 'Reilly', '1987-06-19', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '376', '+12127031266', 'student377@example.com', '$2y$12$Fgb3rXFl0FKdSKuJuH5HQ.WIwnTrSoEkAQd5Yyr9rDuIdDzoSazK.', '13352 Jimmie Orchard\nFerminhaven, IN 52149-1596', 'Apt. 749', 'Tyshawn Durgan II', 'Farmer', '+1.513.837.8805', 'student377@example.com', '377', 'Octavia Feil', 'Businesswoman', '743-454-0137', 'student378@example.com', '378', 'Otha Zieme', '(786) 205-1902', 'student379@example.com', '379', 'Aunt', 1, 9, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:59', '2025-12-12 05:01:26'),
(77, 'Dortha', 'Greenfelder', '1977-02-23', 'Female', 'AB+', 'Christian', 'Bangladeshi', '381', '612.816.2481', 'student382@example.com', '$2y$12$MCxok/C8v357ofVPUGF.SO8FHWHpKV9goernVaONJKruJrk3K/PPi', '871 Murazik Islands Suite 268\nPort Abdultown, AL 35286', 'Suite 230', 'Prof. Henri Friesen', 'Engineer', '1-703-319-0964', 'student382@example.com', '382', 'Prof. Aimee Will Jr.', 'Teacher', '(651) 989-4694', 'student383@example.com', '383', 'Prof. Ryan Gaylord', '1-314-645-4232', 'student384@example.com', '384', 'Aunt', 1, 10, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:58:59', '2025-12-12 04:58:59'),
(78, 'Valentin', 'Grant', '1975-05-02', 'Female', 'O-', 'Islam', 'Bangladeshi', '386', '(517) 332-9045', 'student387@example.com', '$2y$12$I9oO4OSJtX/nQZnDMUHtA.ere4IQCdCVVQe.NIzu2Zwy8nsjHyAE.', '36511 Sandra Terrace\nCarystad, FL 47939', 'Suite 034', 'Emerson Miller', 'Teacher', '520.232.3968', 'student387@example.com', '387', 'Stephanie Marks', 'Businesswoman', '+1.205.371.5008', 'student388@example.com', '388', 'Whitney Schiller', '1-517-501-5107', 'student389@example.com', '389', 'Brother', 1, 10, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:00', '2025-12-12 04:59:00');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(79, 'Jaylan', 'Feest', '1982-12-21', 'Other', 'O+', 'Islam', 'Bangladeshi', '391', '+1.650.885.7449', 'student392@example.com', '$2y$12$vXNq/q2mKEeQJkETLPjtBeseUuLrkSlcPAVgDDkljBO2eZfvAO5Ey', '91104 Jones Streets Suite 528\nSauerfort, IL 17727-1372', 'Suite 773', 'Jayde Hand', 'Engineer', '(718) 656-2649', 'student392@example.com', '392', 'Lela Kris', 'Businesswoman', '+14308420866', 'student393@example.com', '393', 'Jordane Dach', '636.429.8597', 'student394@example.com', '394', 'Brother', 1, 12, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:00', '2025-12-12 04:59:00'),
(80, 'Nicholas', 'Howe', '1977-01-18', 'Other', 'B+', 'Hindu', 'Bangladeshi', '396', '405.348.5606', 'student397@example.com', '$2y$12$S1ymJny5ORsnOUQ7Z9INnOEy26aoWwoTJHRt2FxQZ6vxioE2Vrd8m', '22172 Armstrong Trace\nNew Earleneton, OK 30747', 'Suite 832', 'Keenan Runolfsdottir IV', 'Businessman', '+1 (936) 965-6078', 'student397@example.com', '397', 'Nayeli Frami Jr.', 'Teacher', '908.367.6077', 'student398@example.com', '398', 'Roman Wehner', '1-920-779-6948', 'student399@example.com', '399', 'Aunt', 1, 6, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:00', '2025-12-12 04:59:00'),
(81, 'Delpha', 'Mueller', '1999-01-14', 'Male', 'AB+', 'Islam', 'Bangladeshi', '401', '678.533.6353', 'student402@example.com', '$2y$12$v4Fv4h0n9PxtzWL7NOaLruH/WNrTnfOG4ybUScZAivCw6LlKXilRO', '566 Kautzer Cliffs\nArelyland, ME 51070-4707', 'Suite 280', 'Ismael Stoltenberg', 'Farmer', '+15743123232', 'student402@example.com', '402', 'Rozella Heathcote II', 'Doctor', '(223) 272-2809', 'student403@example.com', '403', 'Prof. Kendall VonRueden', '754-826-3495', 'student404@example.com', '404', 'Brother', 1, 6, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:00', '2025-12-12 04:59:00'),
(82, 'Erica', 'Wolff', '1990-12-31', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '406', '(678) 264-8784', 'student407@example.com', '$2y$12$MVvVvIP0onbKNGiRM5QxN.sjr5ePQJKg6SqLdS/VPZTq1YmeJPPRi', '82622 Caterina View\nNew Enoch, AR 87635', 'Suite 311', 'Reynold Bernier Jr.', 'Doctor', '+1-626-677-8267', 'student407@example.com', '407', 'Isabelle Crist', 'Doctor', '+1-531-306-0343', 'student408@example.com', '408', 'Sammy Barton', '231.414.5740', 'student409@example.com', '409', 'Brother', 1, 11, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:00', '2025-12-12 04:59:00'),
(83, 'Berta', 'Wolf', '2021-10-02', 'Female', 'A+', 'Hindu', 'Bangladeshi', '411', '+1 (608) 571-6498', 'student412@example.com', '$2y$12$3Js9aJMsP5k1jRljJLXrauY9t5iilsNu.19zgtIvkxSwr0.WiqEpy', '90472 Otis Walk Apt. 777\nLake Bennie, IN 11189-3740', 'Apt. 335', 'Prof. Chaz Glover', 'Engineer', '(678) 664-0087', 'student412@example.com', '412', 'Mikayla Koch', 'Doctor', '469-723-0487', 'student413@example.com', '413', 'Ms. Zaria Auer IV', '+12249485566', 'student414@example.com', '414', 'Aunt', 1, 4, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:01', '2025-12-12 04:59:01'),
(84, 'Kevin', 'Lynch', '2003-07-15', 'Female', 'AB+', 'Islam', 'Bangladeshi', '416', '870.351.1149', 'student417@example.com', '$2y$12$IfpnxPMTQbFaeYsuUzxyv.K8iqMEmtzMZlSaLbJF9Q2Y5WGPznYwC', '785 Elliot Plains Suite 540\nKeelyhaven, NH 02968-2549', 'Apt. 584', 'Ryan Hintz Sr.', 'Teacher', '(283) 272-1610', 'student417@example.com', '417', 'Miss Shanie Bogisich', 'Housewife', '1-419-471-6260', 'student418@example.com', '418', 'Leslie Schimmel', '928-200-5629', 'student419@example.com', '419', 'Sister', 1, 12, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:01', '2025-12-12 04:59:01'),
(85, 'Kianna', 'Kunde', '2023-07-26', 'Other', 'B-', 'Buddhist', 'Bangladeshi', '421', '+1 (463) 693-5966', 'student422@example.com', '$2y$12$9D3JH6Uq4l38161zx5qHju7rbxOD.iUhRtBJse9MmGLFtlSZfyVCm', '8055 Isidro Rest Apt. 616\nCrystelshire, LA 10374-7809', 'Suite 850', 'Mr. Lester O\'Reilly V', 'Businessman', '+1.859.235.2181', 'student422@example.com', '422', 'Helena Kerluke Sr.', 'Housewife', '+19595587160', 'student423@example.com', '423', 'Joe Boyle', '1-678-270-9363', 'student424@example.com', '424', 'Brother', 1, 7, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:01', '2025-12-12 04:59:01'),
(86, 'Bruce', 'Collier', '2014-04-29', 'Other', 'A-', 'Islam', 'Bangladeshi', '426', '+1-984-648-5825', 'student427@example.com', '$2y$12$wys.6CSSmhcHIffL9jVHVOlz.cSy8.utbLeJwHQVF5Zp0mp9J91Ge', '8019 Altenwerth Motorway\nPort Francisco, CT 71592', 'Suite 236', 'Dr. Kole Jaskolski V', 'Engineer', '726.752.9928', 'student427@example.com', '427', 'Abbigail Ankunding', 'Nurse', '1-610-319-7922', 'student428@example.com', '428', 'Dr. Reginald Lowe', '(352) 222-7628', 'student429@example.com', '429', 'Grandparent', 1, 13, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:01', '2025-12-12 04:59:01'),
(87, 'Grayce', 'Gutmann', '2014-03-02', 'Other', 'A-', 'Hindu', 'Bangladeshi', '431', '848.557.4380', 'student432@example.com', '$2y$12$Y6Zxb9qqnJs/E3ze0OSC4OSg1Zp9Zmj1mz/YLylP6vxM/xDEK8IHu', '53970 Bergnaum Plain Apt. 067\nLake Janessa, NH 94076-6178', 'Apt. 230', 'Waldo Collier DDS', 'Farmer', '936-709-7342', 'student432@example.com', '432', 'Loma Powlowski', 'Housewife', '+1-423-217-3190', 'student433@example.com', '433', 'Prof. Shanon Gutkowski DVM', '+1-574-698-6559', 'student434@example.com', '434', 'Grandparent', 1, 5, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:01', '2025-12-12 04:59:01'),
(88, 'Maximilian', 'Fadel', '1981-08-12', 'Other', 'B-', 'Christian', 'Bangladeshi', '436', '+19074039275', 'student437@example.com', '$2y$12$wC7XST243/kq5r0UflYMmulSI8P.oKL8XQyH0W2C3RorI2f5bZAay', '1657 Connelly Villages\nCreminmouth, IN 41561-2075', 'Apt. 626', 'Antwan Ondricka', 'Engineer', '469.843.6547', 'student437@example.com', '437', 'Cynthia Rau', 'Doctor', '+1-330-466-5703', 'student438@example.com', '438', 'Velda Cummings', '1-641-612-9789', 'student439@example.com', '439', 'Brother', 1, 9, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:02', '2025-12-12 04:59:02'),
(89, 'Kayli', 'Little', '1974-07-12', 'Female', 'AB+', 'Other', 'Bangladeshi', '441', '+1.336.678.8309', 'student442@example.com', '$2y$12$/cv/iYp0499tadQu/z/lWOo4SKaC.ovvF8CTA1fCte3dNHGbgoWkG', '2001 Consuelo Trail Apt. 813\nSouth Okey, VT 42060', 'Apt. 973', 'Vito Hackett', 'Teacher', '+1-715-642-0818', 'student442@example.com', '442', 'Mrs. Lilian Wisozk', 'Housewife', '+18055633106', 'student443@example.com', '443', 'Jasmin Hirthe', '+1-878-681-9841', 'student444@example.com', '444', 'Aunt', 1, 10, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:02', '2025-12-12 04:59:02'),
(90, 'Rubie', 'Kreiger', '1972-01-18', 'Other', 'A+', 'Christian', 'Bangladeshi', '446', '(276) 397-6311', 'student447@example.com', '$2y$12$rQvuXe9NYbCRGr9d56ZOceTB20ajRVnVvKeNcLHx8CCneKQK6tluK', '88590 Wolf Prairie Suite 576\nWebsterfurt, DE 41814-5253', 'Suite 766', 'Leo Skiles', 'Businessman', '615-249-2212', 'student447@example.com', '447', 'Daija Lebsack', 'Housewife', '+1-857-400-5520', 'student448@example.com', '448', 'Karelle Ferry', '+1 (979) 596-5171', 'student449@example.com', '449', 'Aunt', 1, 10, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:02', '2025-12-12 05:01:27'),
(91, 'Kennedy', 'Kautzer', '2001-06-03', 'Male', 'A-', 'Other', 'Bangladeshi', '451', '+1 (515) 366-2329', 'student452@example.com', '$2y$12$W8/Qj1aXjOIDZDLdJiBbdOloxsim9PleYsmX19pOGWld/BkMVIfh.', '547 Hackett Grove\nAnnaliseton, AZ 43250', 'Suite 675', 'Prof. Efren Bogisich', 'Farmer', '+1-458-234-7322', 'student452@example.com', '452', 'Marisa Bechtelar', 'Businesswoman', '+1.949.809.9821', 'student453@example.com', '453', 'Karli White DDS', '1-504-679-0747', 'student454@example.com', '454', 'Aunt', 1, 11, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:02', '2025-12-12 05:01:28'),
(92, 'Ricardo', 'Durgan', '1989-03-21', 'Other', 'AB+', 'Christian', 'Bangladeshi', '456', '765.402.2507', 'student457@example.com', '$2y$12$Q/tdEvFby40tcIUaMpMadu6tfDq889T6oqKub6/NU/Pyn2nmyO5Na', '845 Doyle Way\nEast Antoinetteport, AZ 43882-5253', 'Apt. 973', 'Keith Denesik', 'Farmer', '1-806-595-9801', 'student457@example.com', '457', 'Shaylee Moen', 'Nurse', '1-985-428-5657', 'student458@example.com', '458', 'Leonardo Gaylord', '347-865-5264', 'student459@example.com', '459', 'Uncle', 1, 6, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:02', '2025-12-12 04:59:02'),
(93, 'Hellen', 'Little', '1992-03-20', 'Other', 'AB+', 'Islam', 'Bangladeshi', '461', '+1 (954) 364-1086', 'student462@example.com', '$2y$12$NDU6ge1Vh2aBPPfDuxTjy.PpdltGnsuxrib0QYJVk0c77qgLKhbxe', '59156 Marta Mall Apt. 888\nPort Katlynn, TX 31210-4287', 'Suite 076', 'Judd Adams', 'Teacher', '+1-559-886-0366', 'student462@example.com', '462', 'Charlotte Beer', 'Housewife', '1-856-479-8404', 'student463@example.com', '463', 'Yoshiko Tremblay', '(951) 969-5199', 'student464@example.com', '464', 'Brother', 1, 8, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:03', '2025-12-12 04:59:03'),
(94, 'Llewellyn', 'West', '1980-04-11', 'Male', 'O-', 'Other', 'Bangladeshi', '466', '+1-321-576-0696', 'student467@example.com', '$2y$12$MWD32tZeZMg0H2fIOeVtW.915RPf/EL2w/yoIIE1lW5b8vZxZu.s.', '70287 Greenfelder Expressway Suite 040\nStromanton, MO 87720-9464', 'Suite 201', 'Mr. Laurel Feil Jr.', 'Businessman', '+1-276-408-9608', 'student467@example.com', '467', 'Joanny Mraz', 'Nurse', '636.590.3611', 'student468@example.com', '468', 'Mr. Dante Sipes', '352.452.5301', 'student469@example.com', '469', 'Uncle', 1, 7, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:03', '2025-12-12 04:59:03'),
(95, 'Krystal', 'Schneider', '2019-02-09', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '471', '805.835.5237', 'student472@example.com', '$2y$12$qmOc5YkrWDt4B9Z.E7kJkeb1nermP1dqjHozASFsJ5eE4NYp4ggi2', '54009 Prohaska Burg Apt. 431\nTomshire, NY 65961', 'Suite 705', 'Marco Heathcote', 'Farmer', '440.451.0103', 'student472@example.com', '472', 'Bridget Stoltenberg', 'Businesswoman', '+1.351.779.7882', 'student473@example.com', '473', 'Ms. Mara Daugherty MD', '+1.332.595.8934', 'student474@example.com', '474', 'Aunt', 1, 8, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:03', '2025-12-12 04:59:03'),
(96, 'Ola', 'Roob', '2017-08-11', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '476', '+16062060175', 'student477@example.com', '$2y$12$4rrIWsev/UKD1RfWDEwAEuU/8ggBuJyOH1msz595SY4Owh5g8tOYu', '871 Hermann Gardens\nJerdemouth, ND 63428-7445', 'Suite 878', 'Miller Bogan Jr.', 'Businessman', '1-920-824-4180', 'student477@example.com', '477', 'Lysanne Kuvalis Jr.', 'Housewife', '+1.281.434.4172', 'student478@example.com', '478', 'Demario Borer', '341-742-4875', 'student479@example.com', '479', 'Brother', 1, 11, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:03', '2025-12-12 04:59:03'),
(97, 'Crawford', 'Mohr', '1980-03-11', 'Other', 'A-', 'Islam', 'Bangladeshi', '481', '(951) 213-1172', 'student482@example.com', '$2y$12$/89i.hEmlXXJuKRR0RKNPeugJlySPtZKrkoOBLjSvk765wsx119KW', '790 Doyle Lock\nHomenickhaven, CO 75964-5152', 'Apt. 862', 'Kevon Baumbach', 'Businessman', '+1-531-996-2741', 'student482@example.com', '482', 'Beulah Graham III', 'Doctor', '1-662-534-6914', 'student483@example.com', '483', 'Theresa Friesen', '1-681-414-3642', 'student484@example.com', '484', 'Uncle', 1, 9, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:03', '2025-12-12 04:59:03'),
(98, 'Glenda', 'Ritchie', '1977-05-24', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '486', '1-321-249-8925', 'student487@example.com', '$2y$12$NnQxuULSfovOD342.NIN1ONveEcRtMIjYu5x6Ouvq1OY09pIwJ2R6', '8251 Schuster Locks Apt. 919\nNew Chayatown, UT 46028', 'Suite 999', 'Esteban Welch', 'Teacher', '(701) 960-6678', 'student487@example.com', '487', 'Miss Lauryn Hirthe', 'Housewife', '(646) 624-9418', 'student488@example.com', '488', 'Prof. Florencio Gibson', '323.942.1583', 'student489@example.com', '489', 'Sister', 1, 8, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:04', '2025-12-12 04:59:04'),
(99, 'Curtis', 'Upton', '1992-10-24', 'Other', 'A-', 'Islam', 'Bangladeshi', '491', '+1.740.705.1769', 'student492@example.com', '$2y$12$h6WujP8g..P89YI.zxyfge3zzyt95QVVHgF5P9cpzuIvae6Ggeyfm', '879 Sanford Run\nHermannbury, MO 54568', 'Apt. 091', 'Raoul Heathcote', 'Teacher', '+1 (272) 209-5107', 'student492@example.com', '492', 'Prudence Walter', 'Nurse', '541-593-9611', 'student493@example.com', '493', 'Alexander Nolan', '+1 (858) 533-8253', 'student494@example.com', '494', 'Aunt', 1, 9, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:04', '2025-12-12 04:59:04'),
(100, 'Bulah', 'Bechtelar', '1981-05-16', 'Male', 'O-', 'Other', 'Bangladeshi', '496', '+1-781-902-6957', 'student497@example.com', '$2y$12$fKyMCbtbijcbsEHgCHxWduwFI91w7R.Y6ycfkPQy6hneZkpQsX7IS', '1137 Ramona Shores\nLefflershire, ND 06148-6287', 'Suite 296', 'Stewart VonRueden V', 'Engineer', '531-257-5820', 'student497@example.com', '497', 'Miss Lynn Runte III', 'Housewife', '+1 (559) 656-6735', 'student498@example.com', '498', 'Dr. Sidney Cremin', '+1.838.760.3043', 'student499@example.com', '499', 'Aunt', 1, 9, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:04', '2025-12-12 04:59:04'),
(101, 'Aimee', 'Reichel', '1970-09-09', 'Male', 'B-', 'Islam', 'Bangladeshi', '501', '+1.570.204.5432', 'student502@example.com', '$2y$12$ULdIGW9C5IJE/b/hzq6RLeC9GXA9R6hwKicHfPpyzCj3dcmmjNHj.', '2318 O\'Connell Stravenue\nWest Milton, OR 28208', 'Apt. 145', 'Mr. Braulio Leannon', 'Doctor', '678.774.7731', 'student502@example.com', '502', 'Miss Martina Kovacek DVM', 'Businesswoman', '+1-254-374-6630', 'student503@example.com', '503', 'Ms. Kyla Metz', '+1 (530) 720-8653', 'student504@example.com', '504', 'Aunt', 1, 10, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:04', '2025-12-12 04:59:04'),
(102, 'Antonio', 'O\'Keefe', '2021-08-17', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '506', '+1 (404) 240-9783', 'student507@example.com', '$2y$12$vrsfUdvnFhpOrVv2YvNWQeCv7ubQUVxF9jfmF.7JGleVxmJziXDX2', '462 Misael Spur Suite 420\nBauchside, CA 79437', 'Apt. 144', 'Randy Ledner', 'Engineer', '1-484-718-2509', 'student507@example.com', '507', 'Candice Predovic', 'Housewife', '972-504-2183', 'student508@example.com', '508', 'Dr. Kameron Boyer V', '(240) 951-1940', 'student509@example.com', '509', 'Uncle', 1, 11, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:04', '2025-12-12 04:59:04'),
(103, 'Onie', 'Bahringer', '2003-04-17', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '511', '+14585383957', 'student512@example.com', '$2y$12$3H99NDb3rrfWdk8TcxpV5Oue90GL2Z4p2mioZYmNnnqwdCLqnmohS', '9611 Kassulke Islands Apt. 698\nJanieville, OR 90238-0212', 'Apt. 609', 'Tyreek Beier', 'Teacher', '303.674.8809', 'student512@example.com', '512', 'Noelia Roob III', 'Teacher', '765-992-0608', 'student513@example.com', '513', 'Asia Williamson', '+1-563-390-9546', 'student514@example.com', '514', 'Grandparent', 1, 10, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:04', '2025-12-12 04:59:04'),
(104, 'Marley', 'Dickens', '1983-09-08', 'Other', 'A-', 'Other', 'Bangladeshi', '516', '626-229-5982', 'student517@example.com', '$2y$12$0pihHXsA9sLVh7TaLs9aN.WXekk7y9cde4WuU1saSWPjEX0ZskRly', '187 O\'Hara Junction Apt. 503\nEast Roel, IN 50561-4950', 'Suite 611', 'Nicholaus Eichmann', 'Farmer', '623-250-7893', 'student517@example.com', '517', 'Nona Conroy', 'Housewife', '+1-314-890-9787', 'student518@example.com', '518', 'Max Effertz', '747.623.2317', 'student519@example.com', '519', 'Brother', 1, 11, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:05', '2025-12-12 04:59:05'),
(105, 'Ruthie', 'Champlin', '1977-08-11', 'Other', 'A+', 'Islam', 'Bangladeshi', '521', '+1-539-226-8853', 'student522@example.com', '$2y$12$SEVf7yJtEUtX0sP.ZiX7su1yKvTGQ/Vd8C5nlGyM3r/aUd1vjHYia', '9693 Skiles Causeway Suite 937\nWeldonside, FL 49734-8023', 'Suite 207', 'Dr. Jerry Stark', 'Businessman', '1-561-596-0552', 'student522@example.com', '522', 'Luisa Hagenes V', 'Businesswoman', '(859) 233-1010', 'student523@example.com', '523', 'Lesly McDermott', '1-636-986-9378', 'student524@example.com', '524', 'Sister', 1, 14, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:05', '2025-12-12 04:59:05'),
(106, 'Jeanne', 'Rohan', '1989-06-15', 'Male', 'B+', 'Hindu', 'Bangladeshi', '526', '+1.512.305.9259', 'student527@example.com', '$2y$12$4QWyp0pCfyFmMTrki1IbS.0Rn3.udR0jOHiKsgcylZ6RacYW8fXei', '776 Jaime Street Suite 721\nSouth Teresaberg, RI 34685', 'Suite 218', 'Dr. Elian Swaniawski', 'Engineer', '740-429-9701', 'student527@example.com', '527', 'Miss Amara Bergstrom DVM', 'Housewife', '850.388.7039', 'student528@example.com', '528', 'Brandy Langworth', '430.328.1257', 'student529@example.com', '529', 'Brother', 1, 12, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:05', '2025-12-12 04:59:05'),
(107, 'Misael', 'Prosacco', '2006-02-03', 'Female', 'B+', 'Hindu', 'Bangladeshi', '531', '+1.817.776.8823', 'student532@example.com', '$2y$12$egi1JotpkdSAAjRa75X9uuGJIwHX8FXA86AFDhZfnDWvPNSo55GrS', '5183 Stanton Crossing Suite 027\nLake Ricoside, AZ 48484', 'Apt. 071', 'Julien Nikolaus', 'Doctor', '1-989-408-9387', 'student532@example.com', '532', 'Clemmie Bergstrom V', 'Businesswoman', '1-520-289-3537', 'student533@example.com', '533', 'Harmony Bernhard', '864-846-6339', 'student534@example.com', '534', 'Sister', 1, 12, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:05', '2025-12-12 04:59:05'),
(108, 'Lilliana', 'Blick', '1986-01-23', 'Female', 'AB-', 'Other', 'Bangladeshi', '536', '208.378.0616', 'student537@example.com', '$2y$12$wyqXaCMhDLr7wshcCEsmUunvEH4SFLMqM2oXdSEXcu9EkXxdTf6dm', '22264 Kamryn Keys Suite 938\nPort Lyla, KS 94572', 'Suite 869', 'Murphy Huels', 'Doctor', '+14638621506', 'student537@example.com', '537', 'Simone Williamson', 'Teacher', '510-794-2357', 'student538@example.com', '538', 'Isidro Miller', '254-514-7331', 'student539@example.com', '539', 'Sister', 1, 15, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:05', '2025-12-12 04:59:05'),
(109, 'Julianne', 'Harris', '1973-04-15', 'Other', 'B-', 'Islam', 'Bangladeshi', '541', '1-504-958-6546', 'student542@example.com', '$2y$12$biGmZjiGP5PR42xnKhlZWe.jvEITNhEPBvOqq2s7/s3BKahS7vPH.', '433 Bogisich Pines Suite 162\nLake Alayna, NC 70939', 'Apt. 188', 'Ramon Bauch', 'Farmer', '1-640-575-3923', 'student542@example.com', '542', 'Rosamond Lindgren', 'Businesswoman', '1-856-713-2764', 'student543@example.com', '543', 'Chet Hintz', '+1 (321) 274-6287', 'student544@example.com', '544', 'Brother', 1, 13, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:06', '2025-12-12 04:59:06'),
(110, 'Norberto', 'Pagac', '2016-02-04', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '546', '+1-520-707-0778', 'student547@example.com', '$2y$12$56qFh19xO39Bgh7skTBp2OdfkCE1u6RQsMCMoEKT5w4WW47hvKw4.', '340 Roob Heights Apt. 807\nPort Darrickberg, NE 89683-7329', 'Apt. 560', 'Glen Kunze', 'Teacher', '+1-309-590-8832', 'student547@example.com', '547', 'Heloise Ruecker', 'Housewife', '+1 (936) 207-4472', 'student548@example.com', '548', 'Mr. Carlo DuBuque', '+18286776206', 'student549@example.com', '549', 'Brother', 1, 11, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:06', '2025-12-12 04:59:06'),
(111, 'Sydni', 'Steuber', '1971-12-12', 'Male', 'AB+', 'Christian', 'Bangladeshi', '551', '210-871-7734', 'student552@example.com', '$2y$12$kglnMvvZ/0U.3AITFGcjqOibtG1lb4qXrCj6ZzJrcz9W5yMOBUGqG', '9968 Candida Avenue Apt. 892\nFunktown, DC 23694-7857', 'Suite 691', 'Kevon Kautzer', 'Engineer', '385.276.1608', 'student552@example.com', '552', 'Lilliana Kunde', 'Doctor', '380-562-3829', 'student553@example.com', '553', 'Nicole Runte', '224-953-0890', 'student554@example.com', '554', 'Sister', 1, 16, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:06', '2025-12-12 04:59:06'),
(112, 'Sandrine', 'Deckow', '1984-04-13', 'Other', 'O+', 'Islam', 'Bangladeshi', '556', '+1 (908) 671-0097', 'student557@example.com', '$2y$12$00YTBIEhEh2zdvWZqhpbV.jf9Z8TGdgWavcxgCrYpVC.iVkb8r8R6', '3699 Ursula Mount Apt. 062\nNew Pearl, TN 18328', 'Apt. 890', 'Olen Sawayn', 'Engineer', '551.756.7890', 'student557@example.com', '557', 'Aida Hickle IV', 'Doctor', '(251) 826-9888', 'student558@example.com', '558', 'Addie Ebert', '+1.936.872.0605', 'student559@example.com', '559', 'Grandparent', 1, 12, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:06', '2025-12-12 04:59:06'),
(113, 'Berenice', 'Ankunding', '2012-08-30', 'Female', 'O+', 'Hindu', 'Bangladeshi', '561', '+17123022719', 'student562@example.com', '$2y$12$mGh30EdbnCcTsnakPiEwcerteT/pJfBIYVhQEbEsX5IjYpUJp2b7a', '3876 Frami Roads\nCyrusville, MA 17846', 'Apt. 461', 'Prof. Claude Crona', 'Doctor', '479.674.8023', 'student562@example.com', '562', 'Dr. Dana Block', 'Doctor', '+1-980-687-7857', 'student563@example.com', '563', 'Jaylan Borer', '423.473.4702', 'student564@example.com', '564', 'Sister', 1, 13, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:06', '2025-12-12 04:59:06'),
(114, 'Lori', 'Braun', '1991-09-09', 'Female', 'A-', 'Christian', 'Bangladeshi', '566', '1-231-292-1232', 'student567@example.com', '$2y$12$RaqXKXvmCnwGkOT8vEjxUOH/dfpoUr9ezmBwAQDQM.5AV/M0cf/GS', '414 Stiedemann Ridge Apt. 128\nTillmanburgh, SD 93569-3600', 'Suite 021', 'Prof. Sean Boyle', 'Teacher', '1-985-478-1478', 'student567@example.com', '567', 'Della Dibbert', 'Doctor', '+1-585-616-8068', 'student568@example.com', '568', 'Kamryn Mohr PhD', '+1.478.914.4825', 'student569@example.com', '569', 'Grandparent', 1, 12, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:07', '2025-12-12 04:59:07'),
(115, 'Travis', 'Weissnat', '2013-05-14', 'Other', 'AB+', 'Christian', 'Bangladeshi', '571', '+1-518-406-6539', 'student572@example.com', '$2y$12$jC9DhvPIXVqo.iZQR5D8a.NM1zaR6sTOxGab2bPFaIWNWS5QT9z7i', '75156 Rosenbaum Divide Suite 983\nLake Sheabury, MO 07629', 'Apt. 917', 'Dr. Alford Rempel', 'Businessman', '540.227.0083', 'student572@example.com', '572', 'Katelyn Wisozk', 'Businesswoman', '1-760-203-8337', 'student573@example.com', '573', 'Jared Torphy', '689-715-8104', 'student574@example.com', '574', 'Grandparent', 1, 11, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:07', '2025-12-12 04:59:07'),
(116, 'Krystel', 'Barrows', '1991-01-27', 'Male', 'AB+', 'Islam', 'Bangladeshi', '576', '(629) 870-4717', 'student577@example.com', '$2y$12$MTHqy7LnYqwdOQBQmw6CzuTwgrG2ZWaNaXKiyqADjZa9hLHyTTE42', '5779 Evie Wall\nNew Abbie, CO 27351-1143', 'Suite 341', 'Dr. Gideon Kreiger', 'Teacher', '(940) 227-9284', 'student577@example.com', '577', 'Miss Ashleigh Balistreri', 'Doctor', '339-239-6292', 'student578@example.com', '578', 'Chris Padberg', '(432) 797-6837', 'student579@example.com', '579', 'Grandparent', 1, 13, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:07', '2025-12-12 04:59:07'),
(117, 'German', 'Berge', '1971-02-14', 'Female', 'AB-', 'Christian', 'Bangladeshi', '581', '1-810-881-3715', 'student582@example.com', '$2y$12$jqLSq9uW7hSwm0gUDqYgkuH5nLbim7Hrdaak7359whXIksruLAU2O', '346 Krystal Square Suite 014\nRusselburgh, AL 29302-6936', 'Apt. 488', 'Justus Swift', 'Doctor', '+1-432-414-8052', 'student582@example.com', '582', 'Mrs. Domenica Marvin', 'Doctor', '+1.719.860.2159', 'student583@example.com', '583', 'Ms. Dahlia Champlin IV', '1-517-435-0172', 'student584@example.com', '584', 'Brother', 1, 13, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:07', '2025-12-12 04:59:07'),
(118, 'Laila', 'Larkin', '1976-01-01', 'Male', 'AB-', 'Other', 'Bangladeshi', '586', '+1-281-829-8407', 'student587@example.com', '$2y$12$pyg6r890ziDm./dOBpYvl.dISCg.vO41lDDkeEJYj0foPwg0uL0ki', '37624 Murazik Forest Suite 823\nKovacekland, CT 28157-0685', 'Apt. 921', 'Kaleb Larkin', 'Doctor', '872.483.3580', 'student587@example.com', '587', 'Oceane Spencer', 'Doctor', '1-863-765-0333', 'student588@example.com', '588', 'Samantha Kuhic', '+1-267-302-3841', 'student589@example.com', '589', 'Grandparent', 1, 14, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:07', '2025-12-12 04:59:07'),
(119, 'Monserrate', 'Cronin', '2005-01-29', 'Other', 'O-', 'Buddhist', 'Bangladeshi', '591', '+1.267.236.8787', 'student592@example.com', '$2y$12$tFOwEiv/UGBTK4VFx/7PXuv2DYZJnIivhn8kn/CgzOCJfgiGTuNKC', '13573 Reilly Stream\nDellview, VA 03409', 'Apt. 930', 'Jeromy Muller', 'Teacher', '724-902-9573', 'student592@example.com', '592', 'Maegan Paucek', 'Doctor', '650.235.9926', 'student593@example.com', '593', 'Maxine Goldner', '+1.218.728.1206', 'student594@example.com', '594', 'Sister', 1, 14, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:08', '2025-12-12 04:59:08'),
(120, 'Hilda', 'Cummings', '1976-11-11', 'Male', 'O+', 'Islam', 'Bangladeshi', '596', '1-980-676-6243', 'student597@example.com', '$2y$12$KhUfodDeKJQ9ynpWPOPLYeiBo8TDhHsxCJYp3611Rl2xiqGRPa5MS', '39064 Reynolds Manor Suite 042\nJohathanberg, MA 26350', 'Apt. 257', 'Prof. Devonte Kuphal IV', 'Farmer', '774-737-8197', 'student597@example.com', '597', 'Alvina Okuneva', 'Nurse', '725.839.6627', 'student598@example.com', '598', 'Vida Powlowski', '847.520.3350', 'student599@example.com', '599', 'Uncle', 1, 7, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:08', '2025-12-12 04:59:08'),
(121, 'Glen', 'Walter', '2011-10-30', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '601', '1-323-541-8052', 'student602@example.com', '$2y$12$bLjSjAYSm0nMWa89.NWBKex1jvZi0vdkWR7Sn90TvBt3X93amApIK', '16512 Francis Brook\nEast Ruben, WV 75410-0970', 'Suite 413', 'Prof. Ike Frami DDS', 'Farmer', '1-770-223-5996', 'student602@example.com', '602', 'Elmira Robel', 'Housewife', '1-321-721-7342', 'student603@example.com', '603', 'Harmon Labadie MD', '1-726-568-6922', 'student604@example.com', '604', 'Brother', 1, 14, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:08', '2025-12-12 04:59:08'),
(122, 'Keven', 'Hermann', '1986-05-10', 'Other', 'O-', 'Hindu', 'Bangladeshi', '606', '973-355-3464', 'student607@example.com', '$2y$12$AK5sbzVSbNCTr7UJGRDuvuLvb.Kv90aE1gTFIyzqkTbPge3Hy65j.', '56354 Schinner Crossing\nNew Brendan, CT 32674-4091', 'Apt. 574', 'Deonte Kuhic', 'Businessman', '+1-769-846-0592', 'student607@example.com', '607', 'Amelia Weissnat', 'Teacher', '+19294587082', 'student608@example.com', '608', 'Dr. Geovanni Huels V', '530.544.9926', 'student609@example.com', '609', 'Sister', 1, 13, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:08', '2025-12-12 04:59:08'),
(123, 'Ryann', 'Stoltenberg', '1972-06-26', 'Female', 'O+', 'Hindu', 'Bangladeshi', '611', '413.508.4373', 'student612@example.com', '$2y$12$iPKQGOpscvXpNz71kqph2eFQM4FpJSQ10xE02gzyqaQPgHe/82MDC', '7289 Ernie Meadows\nMackside, TN 07050-8734', 'Suite 777', 'Jarrell Schaefer', 'Teacher', '628.821.1897', 'student612@example.com', '612', 'Autumn Shields V', 'Businesswoman', '1-276-600-8428', 'student613@example.com', '613', 'Chanel Barton', '+1.341.885.1010', 'student614@example.com', '614', 'Grandparent', 1, 15, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:08', '2025-12-12 04:59:08'),
(124, 'Britney', 'McGlynn', '2001-07-28', 'Male', 'AB+', 'Other', 'Bangladeshi', '616', '628-559-2046', 'student617@example.com', '$2y$12$HDEmpSCVvt80rt0V9L4FBemu2GoW6grzXFZAcbHoEMV5SnCVQ4a8S', '479 Gladyce Ridge Suite 898\nEast Eloy, OH 47132', 'Suite 623', 'Ward Lynch', 'Farmer', '937.540.6558', 'student617@example.com', '617', 'Blanca Torp', 'Nurse', '208.330.9978', 'student618@example.com', '618', 'Wilfred Parisian', '1-463-662-2395', 'student619@example.com', '619', 'Sister', 1, 15, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:09', '2025-12-12 04:59:09'),
(125, 'Isac', 'Shanahan', '2021-08-04', 'Other', 'O+', 'Hindu', 'Bangladeshi', '621', '808.286.7886', 'student622@example.com', '$2y$12$gg.RJFZxF48W8nnAx1xMMO.IZbW2vm8fm/1MY3vTsiXate.2sfyYq', '7541 Thomas Loop Apt. 477\nWest Hellen, CA 53082', 'Apt. 374', 'Johan Davis II', 'Farmer', '225.376.1972', 'student622@example.com', '622', 'Elena Frami', 'Doctor', '330.475.4482', 'student623@example.com', '623', 'Reba Terry Sr.', '838-359-0140', 'student624@example.com', '624', 'Aunt', 1, 10, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:09', '2025-12-12 04:59:09'),
(126, 'Violette', 'Nolan', '1975-12-14', 'Female', 'B+', 'Islam', 'Bangladeshi', '626', '838.937.2116', 'student627@example.com', '$2y$12$/JGPE93jAaPqO10a7U1M6e/w9/5AiM//aqqELLqGOAN4PKdLO0CIG', '4767 Camren Spurs\nKatheryntown, SD 92679-6830', 'Apt. 080', 'Angelo Wyman', 'Engineer', '+1-831-957-8528', 'student627@example.com', '627', 'Emmy West DVM', 'Nurse', '(754) 959-1570', 'student628@example.com', '628', 'Dr. Jerrold Cummings', '+16507759500', 'student629@example.com', '629', 'Sister', 1, 16, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:09', '2025-12-12 04:59:09'),
(127, 'Juliana', 'Mayert', '1982-03-07', 'Other', 'A+', 'Other', 'Bangladeshi', '631', '440-470-7742', 'student632@example.com', '$2y$12$K6t4OWn./ha3efFBM10b.uFCwtqy3CVw8yrgS1WW4lXdh7G7ziJVK', '2171 Mueller Points\nLake Jimmy, NY 81150-2543', 'Apt. 191', 'Prof. Lafayette Morissette IV', 'Engineer', '+18203621107', 'student632@example.com', '632', 'Antonietta Kutch', 'Businesswoman', '+17545646307', 'student633@example.com', '633', 'Damian Fahey DDS', '+12135962046', 'student634@example.com', '634', 'Uncle', 1, 16, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:09', '2025-12-12 04:59:09'),
(128, 'Kailey', 'Von', '2013-06-12', 'Female', 'AB+', 'Christian', 'Bangladeshi', '636', '713-995-0793', 'student637@example.com', '$2y$12$cTQfnqsJd1/XY9fJ0CyySeUFcldtwA5FuPIfpMi4rVmfYamF9wbO.', '40451 Reilly Valleys\nMullerview, LA 81986', 'Apt. 703', 'Maynard Quigley PhD', 'Teacher', '1-406-592-0497', 'student637@example.com', '637', 'Kiana Rohan', 'Housewife', '1-754-228-3272', 'student638@example.com', '638', 'Asia Howe DDS', '1-442-812-0051', 'student639@example.com', '639', 'Sister', 1, 14, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:09', '2025-12-12 04:59:09'),
(129, 'Jennifer', 'Hirthe', '1987-12-30', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '641', '(406) 495-7725', 'student642@example.com', '$2y$12$91hgz5XzTgccUaamQKIZhehHV2JFRrNUsAFZdInRwkH9EdqZHQC7G', '855 Jerde Forest\nEast Lizethville, WA 52829', 'Apt. 502', 'Demario Trantow DVM', 'Farmer', '1-785-612-6643', 'student642@example.com', '642', 'Annabel Bernhard', 'Doctor', '410-540-8494', 'student643@example.com', '643', 'Nickolas Volkman', '(678) 306-9484', 'student644@example.com', '644', 'Sister', 1, 15, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:09', '2025-12-12 04:59:09'),
(130, 'Paula', 'Rohan', '1987-11-10', 'Male', 'O-', 'Islam', 'Bangladeshi', '646', '919-496-5434', 'student647@example.com', '$2y$12$KORcjvgP5q4.KxkF0v.pvOBc8OPPDsKVBnxRIp5O4Bq3DhmdG1CPW', '58810 Zulauf Cape\nNew Mariettachester, AR 87565-5675', 'Suite 977', 'Prof. Rupert Olson V', 'Businessman', '540-942-2071', 'student647@example.com', '647', 'Eve Tillman', 'Housewife', '(240) 832-2075', 'student648@example.com', '648', 'Mrs. Beryl Schmidt IV', '+1 (765) 595-8902', 'student649@example.com', '649', 'Aunt', 1, 12, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:10', '2025-12-12 05:01:29'),
(131, 'Rick', 'Bosco', '2015-05-01', 'Female', 'A+', 'Hindu', 'Bangladeshi', '651', '+1-551-351-7577', 'student652@example.com', '$2y$12$qgSrVt9TzdvtB2jU6Lh.DO5Lw2XqhIhub4w2HyurD0uc/1eAhWajS', '8130 Rod Green\nGottliebshire, AK 68136', 'Suite 599', 'Mr. Kameron Lowe PhD', 'Businessman', '+1 (712) 436-0685', 'student652@example.com', '652', 'Prof. Kellie Renner I', 'Businesswoman', '(434) 687-6698', 'student653@example.com', '653', 'Cielo Beatty', '(484) 738-9518', 'student654@example.com', '654', 'Uncle', 1, 17, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:10', '2025-12-12 04:59:10'),
(132, 'Casimer', 'Hauck', '1974-09-06', 'Female', 'B-', 'Islam', 'Bangladeshi', '656', '859.457.2209', 'student657@example.com', '$2y$12$PvoE3n20fid.vcu2iR2dWuyQgtRHN03G7tVw2zt55tBRWcDdBKgY.', '985 Zetta Avenue Suite 413\nLake Sadie, IA 36851', 'Apt. 039', 'Sylvester Casper V', 'Engineer', '272.835.7277', 'student657@example.com', '657', 'Colleen Mueller PhD', 'Teacher', '+1 (458) 328-2541', 'student658@example.com', '658', 'Amely Gorczany', '(540) 864-5157', 'student659@example.com', '659', 'Grandparent', 1, 11, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:10', '2025-12-12 04:59:10'),
(133, 'Jeffry', 'Kub', '1971-12-01', 'Male', 'O-', 'Other', 'Bangladeshi', '661', '814-832-8225', 'student662@example.com', '$2y$12$FbYNiGsMlD/biZR0wJH8f.F.VcXbz3AbYEUtFK0spDNSRnEdmhXCO', '95542 Isaac Summit Suite 200\nLake Christianastad, WA 16888', 'Suite 512', 'Cristobal Kilback', 'Businessman', '(283) 605-6891', 'student662@example.com', '662', 'Ms. Clementina Pollich', 'Teacher', '1-740-681-8211', 'student663@example.com', '663', 'Mr. Neil Goodwin Sr.', '+1 (915) 670-9458', 'student664@example.com', '664', 'Uncle', 1, 12, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:10', '2025-12-12 04:59:10'),
(134, 'Rhoda', 'Harvey', '2010-03-14', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '666', '+1-272-817-6935', 'student667@example.com', '$2y$12$SYZdA4XlQoRKvfXcjtK0ZectUQx8/VOjZtssNxYvg0xArVOO24heG', '15501 Julia Shore\nPort Santiagoborough, TX 92735-7853', 'Apt. 720', 'Mr. Hilario Weimann', 'Teacher', '321.225.7442', 'student667@example.com', '667', 'Eldora Sanford III', 'Doctor', '754-734-7600', 'student668@example.com', '668', 'Nick Paucek', '+19854091927', 'student669@example.com', '669', 'Aunt', 1, 17, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:10', '2025-12-12 04:59:10'),
(135, 'Hertha', 'Leuschke', '1999-12-15', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '671', '1-234-301-5665', 'student672@example.com', '$2y$12$1ouyiphQ5Mrv5vMyjIkdrOHlU9cGovk7Xbff2EloGTHuY8Ga8GeTK', '70126 Marjorie Land\nEast Bud, WV 75338-1497', 'Suite 438', 'Dr. Jimmy Brown Sr.', 'Businessman', '+1-678-806-8057', 'student672@example.com', '672', 'Jacky Kulas', 'Nurse', '(423) 421-7098', 'student673@example.com', '673', 'Lonny Satterfield', '(325) 785-1190', 'student674@example.com', '674', 'Grandparent', 1, 13, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:11', '2025-12-12 04:59:11'),
(136, 'Amara', 'Huel', '1994-07-03', 'Male', 'A+', 'Islam', 'Bangladeshi', '676', '+12344487796', 'student677@example.com', '$2y$12$BDOuGPfqSODp/dF1xQzUX.yLnh8G/z.3lHCT/MQCq4H8Xan9Wgr8.', '2893 Roberts Harbors\nWest Leslie, NY 40203', 'Apt. 731', 'Johnathon Connelly', 'Engineer', '+1-430-491-3880', 'student677@example.com', '677', 'Leonora Considine', 'Doctor', '248-591-3313', 'student678@example.com', '678', 'Mr. Devante Haag DVM', '+1.985.998.5656', 'student679@example.com', '679', 'Grandparent', 1, 17, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:11', '2025-12-12 04:59:11'),
(137, 'Pink', 'Toy', '1982-06-13', 'Other', 'AB-', 'Hindu', 'Bangladeshi', '681', '810-342-4868', 'student682@example.com', '$2y$12$F6xntKSTS7d65nlq0MJTHeB1R0/PZn2R7Odviy7T4BzcDKH/csEwq', '70794 Lou Falls\nPort Hannaview, TN 08169', 'Suite 521', 'Maxwell Turner IV', 'Engineer', '1-469-982-9402', 'student682@example.com', '682', 'Lillian Parker', 'Teacher', '+18483759003', 'student683@example.com', '683', 'Kayleigh DuBuque', '214-927-6149', 'student684@example.com', '684', 'Uncle', 1, 14, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:11', '2025-12-12 04:59:11'),
(138, 'Kevin', 'Bednar', '1974-11-08', 'Female', 'B+', 'Hindu', 'Bangladeshi', '686', '435.831.8837', 'student687@example.com', '$2y$12$4p1GFsNd1DJnTiHj/kz/jueNYgb8UmxVhgzepOUaotLIEXl1CJ8we', '465 Rath Fall Suite 874\nKingberg, MO 29127', 'Suite 727', 'Ansel Harvey', 'Farmer', '+1-661-805-8025', 'student687@example.com', '687', 'Virginia Predovic Sr.', 'Doctor', '+1-239-904-3845', 'student688@example.com', '688', 'Alta Ziemann', '+18207072497', 'student689@example.com', '689', 'Grandparent', 1, 15, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:11', '2025-12-12 04:59:11'),
(139, 'Bart', 'Quitzon', '1995-07-05', 'Male', 'O+', 'Hindu', 'Bangladeshi', '691', '229.659.7754', 'student692@example.com', '$2y$12$3nz0bit6.cqdc.9eN1bS0ujSkoh3RmEAJpC36AVsc27z5mq.QzJfK', '534 Gail Stream Suite 715\nBechtelarside, FL 39143-8964', 'Apt. 758', 'Prof. Austyn Boehm Jr.', 'Teacher', '(669) 459-6674', 'student692@example.com', '692', 'Gabriella Predovic', 'Housewife', '1-539-700-7502', 'student693@example.com', '693', 'Shanel Dickinson III', '1-786-429-2176', 'student694@example.com', '694', 'Uncle', 1, 18, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:11', '2025-12-12 04:59:11'),
(140, 'Darrel', 'Schiller', '1977-06-02', 'Female', 'O+', 'Other', 'Bangladeshi', '696', '+1 (228) 707-9399', 'student697@example.com', '$2y$12$PSYUE9o6FMexfEEOOXfdqem03clu3zrDJXhD0Drlc1B7vteyGb6Zi', '37771 Lesly Trafficway Suite 426\nAdamsfurt, TN 48461-5350', 'Apt. 138', 'Prof. Efren Mante I', 'Farmer', '520.274.5558', 'student697@example.com', '697', 'Queenie Mueller', 'Nurse', '959.282.5607', 'student698@example.com', '698', 'Dexter Stamm', '+1.979.650.7325', 'student699@example.com', '699', 'Aunt', 1, 18, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:12', '2025-12-12 04:59:12'),
(141, 'Sammie', 'Hintz', '2014-03-22', 'Other', 'O+', 'Hindu', 'Bangladeshi', '701', '629.495.4663', 'student702@example.com', '$2y$12$u0B9jwR9KZYWoVyi5/z5cO63LVnUvt6COLoxpcf9B37onqHe.GDYC', '222 Jordyn Ports Apt. 091\nCruzfort, WA 04494', 'Suite 890', 'Samir Kunze', 'Doctor', '1-205-708-3410', 'student702@example.com', '702', 'Ms. Willow Bailey', 'Housewife', '+1.650.926.6596', 'student703@example.com', '703', 'Fletcher Schimmel', '+17868212626', 'student704@example.com', '704', 'Aunt', 1, 19, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:12', '2025-12-12 04:59:12'),
(142, 'Triston', 'Boyle', '1986-11-13', 'Other', 'AB+', 'Other', 'Bangladeshi', '706', '283-705-9553', 'student707@example.com', '$2y$12$ZkgpZ0ZRpmL1mQZnGH2PQuzV5B9N3Pd.Z3uNicwidlxdeWfQU0lsK', '3486 Considine Heights\nAugustfort, IN 88304', 'Suite 835', 'Leo Kautzer', 'Doctor', '1-432-723-6539', 'student707@example.com', '707', 'Crystal Lubowitz', 'Teacher', '+14588617704', 'student708@example.com', '708', 'Nellie Hirthe', '+1 (925) 342-7261', 'student709@example.com', '709', 'Aunt', 1, 16, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:12', '2025-12-12 04:59:12'),
(143, 'Mary', 'Hodkiewicz', '2017-09-17', 'Female', 'AB+', 'Islam', 'Bangladeshi', '711', '(804) 294-0330', 'student712@example.com', '$2y$12$aOkVAUlzohgCCJMM9X8vy.Gehq6rqoX9PQQkeyUeh/VchfNiUNYDa', '868 Feeney Trace Suite 900\nRosenbaumland, DC 38391-2493', 'Suite 031', 'Dr. Johnathan Bergnaum', 'Farmer', '(718) 850-8634', 'student712@example.com', '712', 'Amanda Bernier DVM', 'Businesswoman', '321-267-6728', 'student713@example.com', '713', 'Jaquelin Goyette', '+14174851510', 'student714@example.com', '714', 'Grandparent', 1, 20, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:12', '2025-12-12 04:59:12'),
(144, 'Myrna', 'Davis', '1971-05-26', 'Female', 'AB+', 'Christian', 'Bangladeshi', '716', '+1.843.706.0822', 'student717@example.com', '$2y$12$lAXwBSK2fV3LLAhNNDmy3eXjKHRu1W0Yn0uHjsjKMQebalve9nUL6', '719 Trantow Falls Apt. 221\nNew Fionaborough, ME 26752-0020', 'Suite 326', 'Frederic Hirthe', 'Engineer', '+1-283-820-7321', 'student717@example.com', '717', 'Miss Winnifred Hyatt', 'Nurse', '478.983.8584', 'student718@example.com', '718', 'Natasha Reichert', '541-879-0818', 'student719@example.com', '719', 'Uncle', 1, 13, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:12', '2025-12-12 05:01:33'),
(145, 'D\'angelo', 'Skiles', '2016-09-29', 'Other', 'B+', 'Hindu', 'Bangladeshi', '721', '+18284882317', 'student722@example.com', '$2y$12$qjMgmsRb/8ALJYBxCMwcp.gvmLwhPut3OQXKKD1FWI5TCEDxsnHEy', '3516 Jenkins Mall Suite 282\nNorth Kelleyview, AR 66184-2750', 'Apt. 668', 'Hiram Kihn', 'Teacher', '(801) 395-5320', 'student722@example.com', '722', 'Emmalee Lowe', 'Doctor', '+17404044233', 'student723@example.com', '723', 'Dr. Michael Simonis', '341.505.8581', 'student724@example.com', '724', 'Uncle', 1, 14, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:12', '2025-12-12 05:01:35'),
(146, 'Pauline', 'Hermann', '1989-11-04', 'Male', 'A+', 'Islam', 'Bangladeshi', '726', '540.494.7224', 'student727@example.com', '$2y$12$BbKnUVwIYD2ZBU2vSIfblOZ3PZT1mQH9GUitbjR2lQ1u.FxfAvWxC', '1841 Domingo Extension Apt. 509\nNew Laney, NH 06810', 'Suite 405', 'Willard Prohaska', 'Teacher', '(315) 761-2754', 'student727@example.com', '727', 'Rhea Runolfsson', 'Teacher', '260-781-4523', 'student728@example.com', '728', 'Miss Odessa Lemke', '(808) 324-1220', 'student729@example.com', '729', 'Grandparent', 1, 8, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:13', '2025-12-12 04:59:13'),
(147, 'Jayce', 'Bergnaum', '1986-07-20', 'Other', 'B-', 'Christian', 'Bangladeshi', '731', '213.929.6884', 'student732@example.com', '$2y$12$6mq8BOw1g7v8c7nxhpJKb.RvF.QoBedvPLqVo78ivm02w4Gh2g9He', '43225 Elissa Ferry Suite 707\nLake Olefurt, WI 75547', 'Suite 816', 'Immanuel Denesik', 'Farmer', '+1-530-708-4955', 'student732@example.com', '732', 'Kaitlin Altenwerth', 'Businesswoman', '1-629-525-4754', 'student733@example.com', '733', 'Earline Wiza', '+14804916916', 'student734@example.com', '734', 'Grandparent', 1, 18, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:13', '2025-12-12 04:59:13'),
(148, 'Robin', 'Jenkins', '2004-04-24', 'Other', 'AB+', 'Islam', 'Bangladeshi', '736', '279.873.0596', 'student737@example.com', '$2y$12$6EH8MlL6CQCA8QihQ5t.9uCyCIGWo6EzgTqjUyq1qhzi9ggKH/94e', '358 Schowalter Springs\nMertzborough, NC 81515-2422', 'Suite 135', 'Wilburn Stark', 'Businessman', '1-970-994-4680', 'student737@example.com', '737', 'Yolanda Denesik', 'Teacher', '413-992-7195', 'student738@example.com', '738', 'Leilani Considine', '+12816955316', 'student739@example.com', '739', 'Brother', 1, 17, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:13', '2025-12-12 04:59:13'),
(149, 'Letha', 'Effertz', '2017-07-31', 'Other', 'AB-', 'Buddhist', 'Bangladeshi', '741', '(239) 596-4791', 'student742@example.com', '$2y$12$1LaTfh5GwV4g/Ss7GNrnI.5lpbc4LsjFOFE3iCjZZ9pMD25t85W2G', '592 Nelda Plains Apt. 188\nNew Sierra, IL 40574-8663', 'Apt. 656', 'Cristopher Medhurst', 'Doctor', '267-700-0188', 'student742@example.com', '742', 'Prof. Kaci Runolfsson IV', 'Teacher', '(786) 766-6443', 'student743@example.com', '743', 'Wilfred Lowe', '747-377-2623', 'student744@example.com', '744', 'Sister', 1, 19, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:13', '2025-12-12 04:59:13'),
(150, 'Ethel', 'Graham', '1984-11-08', 'Male', 'AB-', 'Islam', 'Bangladeshi', '746', '1-610-890-5282', 'student747@example.com', '$2y$12$fXatnjoK6cDtlaa23n/eJu343VNJIPDrJ8/yJGfaHbAb09gNqWg2y', '49748 Percival Mountains Suite 382\nRozellamouth, CO 12635', 'Suite 560', 'Jarrell Schuster', 'Engineer', '423-282-0135', 'student747@example.com', '747', 'Danika Klein', 'Housewife', '770-621-2349', 'student748@example.com', '748', 'Dr. Dewitt Wiegand', '+15864511355', 'student749@example.com', '749', 'Grandparent', 1, 14, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:13', '2025-12-12 04:59:13'),
(151, 'Jimmy', 'Bruen', '2017-07-30', 'Male', 'AB-', 'Islam', 'Bangladeshi', '751', '+19852458744', 'student752@example.com', '$2y$12$6nbWYn99YNHQ6AnP7yyLquw8WYyNFqDtx.CIiLpYHnZ6fonfInb72', '523 Alicia Roads\nHammesberg, IA 03827', 'Apt. 914', 'Kian Smitham', 'Doctor', '(908) 941-8966', 'student752@example.com', '752', 'Gracie Will', 'Housewife', '(412) 745-8433', 'student753@example.com', '753', 'Miss Izabella Schulist Jr.', '1-314-645-0001', 'student754@example.com', '754', 'Grandparent', 1, 19, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:14', '2025-12-12 04:59:14'),
(152, 'Tess', 'Kreiger', '2014-05-08', 'Other', 'B+', 'Islam', 'Bangladeshi', '756', '1-248-821-1435', 'student757@example.com', '$2y$12$rrZxUcalonIFagIOAYRdEu9yVK9/czVH88w7kk2z7ktw7k6HZdhcK', '63878 Freeman Place Apt. 926\nWest Miguel, VT 98871-2443', 'Apt. 564', 'Trystan Stehr', 'Engineer', '+1 (681) 852-9243', 'student757@example.com', '757', 'River Lehner', 'Housewife', '1-618-825-7902', 'student758@example.com', '758', 'Elnora Ernser', '+1 (810) 398-4357', 'student759@example.com', '759', 'Aunt', 1, 15, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:14', '2025-12-12 04:59:14'),
(153, 'Angela', 'Baumbach', '1990-07-19', 'Male', 'AB-', 'Islam', 'Bangladeshi', '761', '+1-774-978-7049', 'student762@example.com', '$2y$12$TrwmpS2kxPUj1llkj2gkA.kl1d1n57bsKveR6bCVo6oQ3S9RxSsa.', '213 King Crossing\nManleychester, CA 18783-0191', 'Suite 493', 'Marcus Robel', 'Teacher', '218.479.8580', 'student762@example.com', '762', 'Lue Goodwin', 'Businesswoman', '+19515162305', 'student763@example.com', '763', 'David Huels', '+1-678-503-7524', 'student764@example.com', '764', 'Uncle', 1, 21, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:14', '2025-12-12 04:59:14'),
(154, 'Madison', 'Powlowski', '1998-04-28', 'Female', 'B-', 'Other', 'Bangladeshi', '766', '1-380-971-7344', 'student767@example.com', '$2y$12$xbvZEyfPaVtk7Ouu0rxL2e9TQtabwtw5xYjQrfaFtfR1KXB.jSUsO', '695 Will Square Suite 852\nKuhlmanburgh, OH 45347-8481', 'Suite 444', 'Dr. Cleve Lueilwitz DDS', 'Businessman', '+17156889916', 'student767@example.com', '767', 'Dr. Jaquelin Ullrich III', 'Businesswoman', '+1-820-689-1085', 'student768@example.com', '768', 'Rosalia Huel', '530-375-0025', 'student769@example.com', '769', 'Grandparent', 1, 15, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:14', '2025-12-12 04:59:14'),
(155, 'Madisyn', 'Collins', '1971-10-26', 'Male', 'O-', 'Other', 'Bangladeshi', '771', '+1-930-532-0241', 'student772@example.com', '$2y$12$m30jALNqshtqM1sQdyjJj.Je6PJQjf8C0/u.cVZkkASYb7LHPgZgy', '84489 Corkery Estates Apt. 343\nEast Deliachester, WI 63488', 'Apt. 808', 'Mr. Hollis Wiegand', 'Doctor', '+1-424-657-1703', 'student772@example.com', '772', 'Angie Sawayn', 'Nurse', '475.914.1730', 'student773@example.com', '773', 'Jennings Bruen', '(571) 534-1438', 'student774@example.com', '774', 'Grandparent', 1, 22, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:14', '2025-12-12 04:59:14'),
(156, 'Lester', 'Mertz', '2025-07-30', 'Female', 'B-', 'Other', 'Bangladeshi', '776', '+1-575-994-2425', 'student777@example.com', '$2y$12$NJU7prF3sGHneJ2wbviYSulka7a.7pPcCq0dcYHXPOxuTwCai50hC', '35740 Aniya Springs Suite 229\nBeierfort, RI 30043', 'Suite 475', 'Mr. Nikolas Stark DVM', 'Doctor', '+12078455265', 'student777@example.com', '777', 'Tess Wisoky', 'Housewife', '+1-269-939-5448', 'student778@example.com', '778', 'Prof. Johnny Gerhold', '773.338.2874', 'student779@example.com', '779', 'Grandparent', 1, 18, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:15', '2025-12-12 04:59:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(157, 'Curt', 'Barrows', '2023-12-11', 'Female', 'AB+', 'Other', 'Bangladeshi', '781', '+1-413-363-7072', 'student782@example.com', '$2y$12$jq9NBx6HTQCAlB320okQcOjFIxDUlhs9NJWcVuqhuz4v5/SoMRQEC', '65780 Daphney Vista\nRuntefurt, HI 25955', 'Apt. 003', 'Jedediah Wolf', 'Doctor', '+1.262.212.9229', 'student782@example.com', '782', 'Dr. Suzanne Schimmel DDS', 'Businesswoman', '(947) 335-7993', 'student783@example.com', '783', 'Arnaldo Schuster', '567-342-5370', 'student784@example.com', '784', 'Sister', 1, 23, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:15', '2025-12-12 04:59:15'),
(158, 'Abby', 'Morar', '1987-08-04', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '786', '+1 (239) 550-6120', 'student787@example.com', '$2y$12$i19tYzXRHx/Ms3Z/XjKk9e1kILM5fdsMfTCzFvp2jZnyqDJl6LeDW', '25070 Mertz Isle\nKadinburgh, UT 63508', 'Apt. 408', 'Alden Kerluke', 'Teacher', '(364) 631-7181', 'student787@example.com', '787', 'Kara Kunde', 'Businesswoman', '+1-346-760-4271', 'student788@example.com', '788', 'Rosie Leffler', '+1 (539) 952-2700', 'student789@example.com', '789', 'Uncle', 1, 9, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:15', '2025-12-12 04:59:15'),
(159, 'Ramon', 'Hamill', '1981-09-15', 'Female', 'AB+', 'Other', 'Bangladeshi', '791', '1-936-335-0907', 'student792@example.com', '$2y$12$NNsceBAi6DpMxEZDztHwouVyJ6Hi5IthuvHrCPj9Pyumpv5uVzR3a', '35293 Green Square\nMarksville, KY 25598', 'Suite 097', 'Deontae Boyer', 'Businessman', '+1-801-560-6780', 'student792@example.com', '792', 'Martina Rogahn', 'Businesswoman', '1-660-861-4263', 'student793@example.com', '793', 'Annamarie Tromp', '801.700.0841', 'student794@example.com', '794', 'Aunt', 1, 10, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:15', '2025-12-12 04:59:15'),
(160, 'Fabian', 'Considine', '1973-11-30', 'Female', 'O-', 'Christian', 'Bangladeshi', '796', '+1-352-359-6369', 'student797@example.com', '$2y$12$5h2BpflmPFHrwQrWMqnglOu55e63DuK/fZz41DaH25Y11Hp7./xUm', '58017 Ari Locks Apt. 283\nSouth Malikaburgh, UT 54456', 'Suite 886', 'Albert Grady', 'Engineer', '346-799-3232', 'student797@example.com', '797', 'Shawna Langworth', 'Housewife', '(352) 949-0127', 'student798@example.com', '798', 'Kattie Toy', '(505) 336-9918', 'student799@example.com', '799', 'Grandparent', 1, 16, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:15', '2025-12-12 04:59:15'),
(161, 'Jared', 'Anderson', '2006-11-29', 'Male', 'B-', 'Christian', 'Bangladeshi', '801', '225.736.7663', 'student802@example.com', '$2y$12$LGSbqMBV9sOyPuUhcztd1uvtBlmGEU8sJZhuLqadZp0IFqSSiK/G.', '873 McClure Dale Suite 611\nNew Bretside, HI 25573-9706', 'Suite 704', 'Darwin Abshire', 'Teacher', '+1-941-680-6378', 'student802@example.com', '802', 'Mrs. Catherine Streich II', 'Housewife', '870-837-7463', 'student803@example.com', '803', 'Magdalen Gislason', '330.732.6717', 'student804@example.com', '804', 'Aunt', 1, 12, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:16', '2025-12-12 04:59:16'),
(162, 'Gideon', 'Streich', '1984-02-14', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '806', '(747) 218-8731', 'student807@example.com', '$2y$12$YMArzAlxNc1GgwklF2NNwecYMB.E1BqXbPTFOnnvQHPnCNgEOUcpq', '72934 Donnelly Mountains\nNorth Jesus, MO 44203', 'Suite 943', 'Reynold Satterfield', 'Teacher', '(252) 279-5844', 'student807@example.com', '807', 'Dr. Mireya Marvin Sr.', 'Teacher', '458.292.0724', 'student808@example.com', '808', 'Marian Stamm', '+1.660.775.2288', 'student809@example.com', '809', 'Sister', 1, 16, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:16', '2025-12-12 04:59:16'),
(163, 'Ara', 'Abshire', '1989-06-24', 'Other', 'A-', 'Christian', 'Bangladeshi', '811', '(248) 271-0165', 'student812@example.com', '$2y$12$p8qRyJdAtcQDQxnAckE5FemimIOj6Z5Hgk8NrAKnj4FAeXKyqRA4y', '461 Hans Terrace Apt. 700\nNorth Betty, CA 08382', 'Apt. 531', 'Mr. Jasen Miller', 'Engineer', '612.556.1359', 'student812@example.com', '812', 'Ardith Baumbach', 'Teacher', '323.653.0181', 'student813@example.com', '813', 'Keegan Lesch', '(719) 207-6251', 'student814@example.com', '814', 'Brother', 1, 20, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:16', '2025-12-12 04:59:16'),
(164, 'Edwin', 'McCullough', '1978-09-12', 'Female', 'A-', 'Christian', 'Bangladeshi', '816', '978.256.9252', 'student817@example.com', '$2y$12$ILNHxfK8P9Pq2YQlCwl9s.vg08CO5lTlwH40K7A5Th7inmhv0Fkhm', '1719 Bins Forks Apt. 934\nKelsiview, IN 11099-4713', 'Suite 585', 'Edd Reilly', 'Teacher', '717.269.3184', 'student817@example.com', '817', 'Cierra Reichel', 'Businesswoman', '(602) 949-8428', 'student818@example.com', '818', 'Candido Kuhn', '540-696-7768', 'student819@example.com', '819', 'Sister', 1, 17, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:16', '2025-12-12 04:59:16'),
(165, 'Angelica', 'Okuneva', '1986-01-18', 'Other', 'A+', 'Hindu', 'Bangladeshi', '821', '240-385-8095', 'student822@example.com', '$2y$12$HrYnfP8zH59AWnbnAnAvbOU9KoEwFhxpC7nkQQOJboMDIBObCJJIC', '5273 Borer Flats\nSouth Wilmafort, NC 84591-0101', 'Suite 317', 'Forrest Conroy I', 'Farmer', '(817) 913-3328', 'student822@example.com', '822', 'Keara Johns', 'Housewife', '+1 (689) 353-1772', 'student823@example.com', '823', 'Kaya Rutherford', '+1-984-334-3959', 'student824@example.com', '824', 'Uncle', 1, 24, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:16', '2025-12-12 04:59:16'),
(166, 'Janie', 'Ryan', '1972-09-14', 'Female', 'O-', 'Christian', 'Bangladeshi', '826', '(430) 266-6312', 'student827@example.com', '$2y$12$/Dc/72K5nDBMpAkh.zSYKOa7Y4fXMEhyYv8HEo51i.krdx8xPafza', '800 Nettie Junctions\nGleichnermouth, OK 48532', 'Apt. 241', 'Dr. Maximilian Marks', 'Farmer', '872-456-9293', 'student827@example.com', '827', 'Wanda O\'Kon', 'Doctor', '1-949-636-0602', 'student828@example.com', '828', 'Dr. Angelica Little', '(631) 624-2937', 'student829@example.com', '829', 'Brother', 1, 15, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:16', '2025-12-12 05:01:36'),
(167, 'Oceane', 'Nikolaus', '2022-01-09', 'Other', 'O-', 'Islam', 'Bangladeshi', '831', '312.372.4123', 'student832@example.com', '$2y$12$i5gdLfSRimLETtIHpT7QAuOD4ccce31YwRJUor6ftZqax3OpPOZIO', '8775 Glover Trafficway Apt. 188\nMarkschester, DC 58538-7927', 'Suite 927', 'Gordon Bruen', 'Doctor', '1-603-912-8011', 'student832@example.com', '832', 'Kailyn Bartoletti', 'Nurse', '559-993-4282', 'student833@example.com', '833', 'Ike Beatty', '(559) 894-3926', 'student834@example.com', '834', 'Grandparent', 1, 17, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:17', '2025-12-12 04:59:17'),
(168, 'Lucienne', 'Hamill', '2012-04-14', 'Female', 'O+', 'Hindu', 'Bangladeshi', '836', '1-628-881-2887', 'student837@example.com', '$2y$12$A0C2l/xWmy2.H3Aqe0lAxOPxo//UHgImSZg/XwBbfktik6LzN9Uiu', '7557 Telly Inlet\nNettieshire, MT 48065', 'Apt. 964', 'Paris Cronin', 'Farmer', '1-757-858-7302', 'student837@example.com', '837', 'Reta Funk', 'Businesswoman', '+12604883092', 'student838@example.com', '838', 'Adalberto Schuster DVM', '631.701.1185', 'student839@example.com', '839', 'Uncle', 1, 16, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:17', '2025-12-12 05:01:37'),
(169, 'Audra', 'Cummings', '2021-08-06', 'Other', 'A-', 'Hindu', 'Bangladeshi', '841', '1-661-406-1708', 'student842@example.com', '$2y$12$bmdsrQCyBDtBN921W5j8te6wGBOcR9L1xAfZl2N2ZILgrbXAjsBZK', '19803 DuBuque Brooks\nSouth Karianne, ND 11004', 'Suite 600', 'Kennith Pfeffer', 'Businessman', '+1-641-925-5346', 'student842@example.com', '842', 'Nelle Auer', 'Businesswoman', '+1-757-269-4119', 'student843@example.com', '843', 'Bart Frami', '(415) 296-5176', 'student844@example.com', '844', 'Sister', 1, 25, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:17', '2025-12-12 04:59:17'),
(170, 'Elenora', 'Windler', '2007-05-26', 'Other', 'A-', 'Christian', 'Bangladeshi', '846', '283.756.7442', 'student847@example.com', '$2y$12$oe5h5uLRDmYCq14409KBBuzKlkJL8aRQJBOufsL8LVIDuve6nc5m6', '6135 Efren Skyway Suite 647\nPort Lane, SD 35369', 'Apt. 634', 'Jasper Hamill', 'Farmer', '661-767-9871', 'student847@example.com', '847', 'Ashleigh Hegmann', 'Housewife', '530-894-4161', 'student848@example.com', '848', 'Ransom Rolfson', '+1 (469) 346-9678', 'student849@example.com', '849', 'Sister', 1, 19, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:17', '2025-12-12 04:59:17'),
(171, 'Alvina', 'Leffler', '1996-11-21', 'Female', 'O+', 'Other', 'Bangladeshi', '851', '281-251-7005', 'student852@example.com', '$2y$12$pvhWV1XWErQR9dQX00s3LOkAUEkX7Zk80jRb1NZNZzgDjsUJXnFQu', '808 Kiel Common\nWest Jordon, HI 78781', 'Apt. 838', 'Gardner Bailey', 'Farmer', '+1-865-372-8228', 'student852@example.com', '852', 'Dr. Gisselle Hintz III', 'Doctor', '870.327.5743', 'student853@example.com', '853', 'Ms. Vivian Ankunding III', '+1-401-866-8365', 'student854@example.com', '854', 'Brother', 1, 16, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:17', '2025-12-12 04:59:17'),
(172, 'Danika', 'Dicki', '2020-02-25', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '856', '+19498840884', 'student857@example.com', '$2y$12$N5UVS.4T7bCO8DjbLT.Z2OP4KKZ5k5xQMqLOGNU2VPh8b/COBF1ra', '97976 Iva Light Suite 906\nNew Yazmin, WY 19099', 'Apt. 950', 'Luther Harvey', 'Businessman', '+16513133692', 'student857@example.com', '857', 'Nola Russel', 'Businesswoman', '(469) 549-3490', 'student858@example.com', '858', 'Sheila Heathcote', '+1 (864) 674-0456', 'student859@example.com', '859', 'Aunt', 1, 26, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:18', '2025-12-12 04:59:18'),
(173, 'Roslyn', 'Watsica', '1973-05-08', 'Female', 'AB-', 'Other', 'Bangladeshi', '861', '1-562-544-7730', 'student862@example.com', '$2y$12$XJ7zD//nzMO5cDvkBovEVeiEDcbMTlnKXD6JQsE8lqX4cwhyewdQC', '422 Caden Drive Apt. 255\nPort Delmerstad, CA 00832-5411', 'Suite 062', 'Glennie Hahn', 'Businessman', '501-421-4101', 'student862@example.com', '862', 'Ms. Celine Howe', 'Teacher', '+1-401-910-3252', 'student863@example.com', '863', 'Nikki Borer', '+1-559-368-9027', 'student864@example.com', '864', 'Aunt', 1, 11, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:18', '2025-12-12 04:59:18'),
(174, 'Clemens', 'Gottlieb', '1991-01-27', 'Female', 'B-', 'Islam', 'Bangladeshi', '866', '1-612-854-8960', 'student867@example.com', '$2y$12$RIFMFLiKdo0QPuI2MgF8NOXpKcKmq3O6pXd2pNuPvkY8B2/5jcyFm', '6254 Joana Glen\nNorth Madysonstad, AL 92591', 'Suite 203', 'Frank Maggio', 'Engineer', '+1 (765) 766-4130', 'student867@example.com', '867', 'Mrs. Yvette Bradtke IV', 'Nurse', '+1-580-960-9408', 'student868@example.com', '868', 'Prof. Dean Hauck', '+1-424-479-0559', 'student869@example.com', '869', 'Uncle', 1, 13, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:18', '2025-12-12 04:59:18'),
(175, 'Gunnar', 'Blick', '2021-08-27', 'Female', 'B+', 'Hindu', 'Bangladeshi', '871', '916.221.4229', 'student872@example.com', '$2y$12$/OOEqFi9Zqh5mnQDsER4yeswRUwbw12Uc5y/oFTUUCzjeXCPU1MWC', '6917 Dock Prairie\nSawaynbury, VT 96462', 'Suite 451', 'Harry Collier MD', 'Farmer', '906.669.0662', 'student872@example.com', '872', 'Sarah Leuschke', 'Housewife', '(770) 758-1568', 'student873@example.com', '873', 'Samir Dach DDS', '(706) 566-9816', 'student874@example.com', '874', 'Grandparent', 1, 17, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:18', '2025-12-12 05:01:38'),
(176, 'Mckenna', 'Harber', '1989-08-25', 'Other', 'AB+', 'Other', 'Bangladeshi', '876', '832.790.8059', 'student877@example.com', '$2y$12$sJprXvnwk.xxkIUS29b3huiwoBEjQisXOfVaS3CzOJUtRCN.b1cuS', '30776 Haven Pass\nWisozkberg, MA 69998', 'Apt. 089', 'Tevin Turner', 'Doctor', '(458) 216-1248', 'student877@example.com', '877', 'Natalie Cruickshank DDS', 'Teacher', '+1-772-658-4248', 'student878@example.com', '878', 'Karli Beatty', '+1-386-577-2611', 'student879@example.com', '879', 'Brother', 1, 18, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:18', '2025-12-12 04:59:18'),
(177, 'Stephon', 'Kuvalis', '1998-03-30', 'Other', 'O-', 'Christian', 'Bangladeshi', '881', '+1 (216) 836-7568', 'student882@example.com', '$2y$12$BcjVax0ggPlXUTzhElI0Luqu6xpdXPOaplu4lESzn56aPomXC8wRu', '85050 Hane Turnpike Suite 905\nKulasville, WV 91823', 'Suite 929', 'Travis Christiansen I', 'Doctor', '(850) 426-7183', 'student882@example.com', '882', 'Ms. Felicita Considine', 'Nurse', '(409) 572-6156', 'student883@example.com', '883', 'Norwood Kihn', '(725) 838-0299', 'student884@example.com', '884', 'Aunt', 1, 19, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:18', '2025-12-12 04:59:18'),
(178, 'Samson', 'Schinner', '2006-09-17', 'Male', 'A-', 'Other', 'Bangladeshi', '886', '+12728802383', 'student887@example.com', '$2y$12$dUkN1wq5DERQmH.GwNmZh.Cz0o1RMEkO3KUgjIle6wHvRxr/nxbM6', '356 King Greens Suite 290\nWest Emeliebury, PA 18349-0659', 'Apt. 447', 'Johathan Rolfson', 'Farmer', '1-386-613-6942', 'student887@example.com', '887', 'Myrtle Schultz', 'Teacher', '(425) 207-9995', 'student888@example.com', '888', 'Prof. Kamryn Shanahan', '1-878-503-9465', 'student889@example.com', '889', 'Grandparent', 1, 18, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:19', '2025-12-12 04:59:19'),
(179, 'Oren', 'Lockman', '1993-07-12', 'Other', 'B-', 'Christian', 'Bangladeshi', '891', '1-445-763-8742', 'student892@example.com', '$2y$12$6g.gE4vET9CwJapEOxo17O8dpIzeaeFAEtzMZFD17J/3RwxQ6aEry', '1149 Stracke Corners Apt. 946\nLake Julieland, DC 18485-1254', 'Suite 109', 'Ignacio Pollich', 'Doctor', '+1-210-543-3123', 'student892@example.com', '892', 'Mrs. Kianna Johns I', 'Nurse', '845.554.7808', 'student893@example.com', '893', 'Carmen Cole', '310.481.9532', 'student894@example.com', '894', 'Aunt', 1, 12, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:19', '2025-12-12 04:59:19'),
(180, 'Nigel', 'Rippin', '2016-01-09', 'Female', 'AB+', 'Islam', 'Bangladeshi', '896', '+1 (585) 718-9966', 'student897@example.com', '$2y$12$28uW9QARNTrrG8kJeCpQG.HKrrc9gUJYp/HJmQJc8JEKp8qCmpOm2', '8689 Ratke Ranch\nWeissnatfurt, GA 55557', 'Suite 283', 'Dr. Jimmie Abernathy DVM', 'Businessman', '331-872-9589', 'student897@example.com', '897', 'Mrs. Lori Hand', 'Housewife', '+1-463-689-0620', 'student898@example.com', '898', 'Napoleon Kuphal PhD', '+1-458-768-9281', 'student899@example.com', '899', 'Sister', 1, 20, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:19', '2025-12-12 04:59:19'),
(181, 'Ericka', 'Johnson', '1990-04-19', 'Other', 'O+', 'Hindu', 'Bangladeshi', '901', '+1-512-937-8818', 'student902@example.com', '$2y$12$VF4IA1JwEnSZvB5xSpm8meiboPKqDLyCEA9kfLHkgo7nJojEhEYRm', '221 Bart Lake Suite 056\nGislasonmouth, MA 24428-6060', 'Apt. 426', 'Kaleigh Emmerich', 'Businessman', '+1-254-360-2956', 'student902@example.com', '902', 'Princess Jacobson', 'Nurse', '970.902.8375', 'student903@example.com', '903', 'Kasandra Jakubowski', '770.215.7470', 'student904@example.com', '904', 'Aunt', 1, 17, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:19', '2025-12-12 04:59:19'),
(182, 'Jayden', 'Blick', '2002-07-31', 'Male', 'A-', 'Islam', 'Bangladeshi', '906', '+1-248-997-1882', 'student907@example.com', '$2y$12$uMmh8blR.kjh1MZhy9c1zOV5DhSp7h/qT.OVAlT5.OJl9bWS8Yw/q', '230 Daphne Road\nNew Winonahaven, TN 68386', 'Suite 126', 'Marvin Konopelski', 'Businessman', '551-690-7319', 'student907@example.com', '907', 'Maci Lynch III', 'Housewife', '+1 (857) 888-4912', 'student908@example.com', '908', 'Caleb Howe', '1-820-550-1196', 'student909@example.com', '909', 'Uncle', 1, 18, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:19', '2025-12-12 04:59:19'),
(183, 'Yasmeen', 'Beer', '1984-03-22', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '911', '+18455143691', 'student912@example.com', '$2y$12$24m9s.wnBmG0TfxxGXBfueMKJ6WS7tIXStfL0LB.zYoZnZKZoJgs2', '69933 Micheal River\nElinormouth, WY 44874-6899', 'Suite 373', 'Hubert Beier', 'Doctor', '+1-774-589-2462', 'student912@example.com', '912', 'Dr. Sabryna Walker IV', 'Nurse', '+1 (260) 768-6570', 'student913@example.com', '913', 'Prof. Paul Zemlak IV', '316-238-0552', 'student914@example.com', '914', 'Brother', 1, 18, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:20', '2025-12-12 05:01:39'),
(184, 'Laron', 'Roberts', '1991-01-13', 'Other', 'AB+', 'Other', 'Bangladeshi', '916', '+1-283-871-5133', 'student917@example.com', '$2y$12$TdufxTqnmQGfjsiOzgGn6eeZpr8.C8lFwbgcoj6YZ89.PBL6j9yJC', '2741 Bednar Lodge\nNorth Ole, VT 15158', 'Suite 472', 'Howard Fahey', 'Doctor', '240-835-1316', 'student917@example.com', '917', 'Miss Lizeth Waelchi', 'Businesswoman', '+18329245156', 'student918@example.com', '918', 'Virginia Leannon', '573.502.4128', 'student919@example.com', '919', 'Brother', 1, 21, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:20', '2025-12-12 04:59:20'),
(185, 'Katheryn', 'Kiehn', '2018-01-14', 'Female', 'A-', 'Other', 'Bangladeshi', '921', '1-773-351-2125', 'student922@example.com', '$2y$12$vpZ1k6Iv3fyNKTk3yARlXetWTXuvQIWXRY0L6Ld44J67.WXXFg4VW', '579 Kautzer Mall Apt. 604\nLawsonside, MN 63931', 'Apt. 869', 'Wilfredo Abshire', 'Engineer', '+17069768269', 'student922@example.com', '922', 'Bianka Kris', 'Businesswoman', '(754) 759-5243', 'student923@example.com', '923', 'Prof. Laila Braun Jr.', '1-248-604-5090', 'student924@example.com', '924', 'Brother', 1, 21, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:20', '2025-12-12 04:59:20'),
(186, 'Nia', 'Vandervort', '2003-01-14', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '926', '+1 (442) 893-3114', 'student927@example.com', '$2y$12$eVTewzoK/QnU4HrtXSl4hOCSs5Se6n2EmknAObQ9rCOE9H7WQ0g0a', '3063 Walter Dale\nWest Jayceechester, OH 89472-0101', 'Apt. 927', 'Issac Prohaska', 'Businessman', '(920) 412-4633', 'student927@example.com', '927', 'Prof. Emily Skiles', 'Doctor', '920.779.4249', 'student928@example.com', '928', 'Dr. Ettie Dooley', '+1-346-526-4516', 'student929@example.com', '929', 'Brother', 1, 19, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:20', '2025-12-12 05:01:40'),
(187, 'Gladys', 'Spencer', '2021-06-20', 'Male', 'A-', 'Hindu', 'Bangladeshi', '931', '+1-631-646-1702', 'student932@example.com', '$2y$12$V278C96PkV4CHlxOfzHio.Zn2gBby0tTkAbgEWDt58uKL.uscZLG6', '957 Aufderhar Islands\nKassulkemouth, MD 41157', 'Suite 372', 'Leonardo Bradtke III', 'Doctor', '+19562859522', 'student932@example.com', '932', 'Aryanna Willms', 'Businesswoman', '+1-252-940-3993', 'student933@example.com', '933', 'Erica Swift', '+1-931-502-0339', 'student934@example.com', '934', 'Uncle', 1, 20, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:20', '2025-12-12 05:01:41'),
(188, 'Celia', 'Kuvalis', '2018-04-01', 'Female', 'A-', 'Hindu', 'Bangladeshi', '936', '(657) 660-1800', 'student937@example.com', '$2y$12$XxviJ.D.iTY6EE2XFiRqdelXqJ7PQtIkdGl7XlZ1TbdSChu2QGMoe', '35518 Weimann Rapid Suite 717\nNashfort, MS 68219', 'Suite 850', 'Cedrick Emmerich', 'Doctor', '872-708-5046', 'student937@example.com', '937', 'Miss Rebecca Heaney I', 'Doctor', '254.694.3806', 'student938@example.com', '938', 'Michaela Nikolaus', '1-765-424-7733', 'student939@example.com', '939', 'Uncle', 1, 20, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:21', '2025-12-12 04:59:21'),
(189, 'Piper', 'Parisian', '1995-01-17', 'Other', 'A-', 'Islam', 'Bangladeshi', '941', '1-678-588-8814', 'student942@example.com', '$2y$12$ZJEjUuuQwtH16Cj3h5JGcu/JoN1Nl13XVtZICbq/dOiXsqgZyZ5Hi', '591 Hills Lodge Suite 907\nPort Bulah, WA 03921', 'Suite 978', 'Reggie Fritsch', 'Businessman', '+1.480.262.8212', 'student942@example.com', '942', 'Dr. Gregoria Labadie II', 'Teacher', '1-564-598-8505', 'student943@example.com', '943', 'Mckenzie Cartwright', '+1-443-663-8570', 'student944@example.com', '944', 'Sister', 1, 19, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:21', '2025-12-12 04:59:21'),
(190, 'Xavier', 'Erdman', '1983-10-10', 'Male', 'B-', 'Other', 'Bangladeshi', '946', '424-214-2043', 'student947@example.com', '$2y$12$u2a7QWSOldel05fplkw/aef8GANgJQ8tg9BQkSArZyDHgmaWJwRsS', '50539 Block Mission Apt. 410\nLake Roderickberg, MN 64959-7208', 'Apt. 412', 'Rahul Kunde V', 'Doctor', '+1.972.510.9726', 'student947@example.com', '947', 'Zoie Grant', 'Doctor', '+1.830.928.2400', 'student948@example.com', '948', 'Betsy Fadel', '+1-253-533-8274', 'student949@example.com', '949', 'Grandparent', 1, 14, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:21', '2025-12-12 04:59:21'),
(191, 'Lulu', 'Yost', '1986-01-18', 'Male', 'B+', 'Christian', 'Bangladeshi', '951', '+13217487398', 'student952@example.com', '$2y$12$LfvhUlwuZhaEvZUPX1NkSuCu1nhIM6MScYTmMGVhSLFnEDv7Y1wiy', '792 Koch Landing\nLillianaport, PA 85279-3420', 'Apt. 031', 'Dr. Miles Watsica PhD', 'Engineer', '906-768-3772', 'student952@example.com', '952', 'Ms. Kari Hills', 'Businesswoman', '+1-223-226-7717', 'student953@example.com', '953', 'Fritz Dooley', '1-517-564-7072', 'student954@example.com', '954', 'Aunt', 1, 21, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:21', '2025-12-12 04:59:21'),
(192, 'Ceasar', 'McLaughlin', '2025-09-22', 'Female', 'B-', 'Hindu', 'Bangladeshi', '956', '+15594551106', 'student957@example.com', '$2y$12$QpJK/PhMQs/n9CyFRCJXdOy6oQDDR68EqY3J1D0POSnE4yTNLvmFi', '9910 Benedict Extensions\nEast Simeon, OR 28932-8974', 'Suite 996', 'Prof. Larue Crooks', 'Businessman', '+1-320-852-5618', 'student957@example.com', '957', 'Abbigail Casper', 'Teacher', '1-208-633-6052', 'student958@example.com', '958', 'Ludie Bradtke', '+1-832-840-8055', 'student959@example.com', '959', 'Brother', 1, 20, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:21', '2025-12-12 04:59:21'),
(193, 'Eriberto', 'Runolfsdottir', '1972-01-25', 'Other', 'A+', 'Other', 'Bangladeshi', '961', '+1 (660) 888-9310', 'student962@example.com', '$2y$12$J4gFOkr28INexjRPJ3H7GOr1AAQhJOr0u4Vk5x61upBSmGVG7GWJC', '279 Derick Camp Apt. 068\nNorth Heaven, WY 15556', 'Suite 397', 'Felix Dickinson', 'Engineer', '+1-551-461-7492', 'student962@example.com', '962', 'Flossie Torp MD', 'Teacher', '+15592408606', 'student963@example.com', '963', 'Macy Heller Sr.', '+1 (870) 404-0346', 'student964@example.com', '964', 'Brother', 1, 13, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:21', '2025-12-12 04:59:21'),
(194, 'Leslie', 'Metz', '2016-01-13', 'Other', 'AB+', 'Other', 'Bangladeshi', '966', '1-704-256-6346', 'student967@example.com', '$2y$12$WsWitivVUWwLeL6Wu0F8MeHwTsEU45zv7RW9sm2UjNgBMqMTzO14.', '967 Hessel Mountains Suite 327\nEast Emmett, IL 78852', 'Apt. 788', 'Dr. Amari Franecki', 'Doctor', '(217) 843-0244', 'student967@example.com', '967', 'Prof. Bert Jacobi V', 'Nurse', '(417) 700-8249', 'student968@example.com', '968', 'Bernice Langosh', '+1-727-905-2022', 'student969@example.com', '969', 'Aunt', 1, 21, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:22', '2025-12-12 04:59:22'),
(195, 'Giovani', 'Daniel', '1978-08-13', 'Female', 'AB-', 'Islam', 'Bangladeshi', '971', '(574) 555-3868', 'student972@example.com', '$2y$12$/CJOCol/uHanL86o99JQcuChm/HuCskDX0nZ.95BRmdu7rRvfurRu', '7088 Dach Tunnel\nEast Tatum, CA 00980', 'Suite 110', 'Levi Greenfelder I', 'Engineer', '+14797440615', 'student972@example.com', '972', 'Asia Renner', 'Teacher', '+1-719-582-9339', 'student973@example.com', '973', 'Waino Labadie', '626.695.2157', 'student974@example.com', '974', 'Aunt', 1, 20, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:22', '2025-12-12 04:59:22'),
(196, 'Aurelio', 'Feil', '2024-04-23', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '976', '+1 (458) 636-1837', 'student977@example.com', '$2y$12$Fu5VX0B.h5d4RPLspaGUoOF3.nvBJVaFUpwJp6SEsZqwkJQXkBJ3O', '7079 Cummings Fields\nArmanitown, NM 95610', 'Apt. 634', 'Mr. Moshe Koss IV', 'Doctor', '1-541-681-3636', 'student977@example.com', '977', 'Marlen Jones II', 'Businesswoman', '+1.386.973.5687', 'student978@example.com', '978', 'Prof. Edward Marks', '352-536-8577', 'student979@example.com', '979', 'Brother', 1, 15, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:22', '2025-12-12 04:59:22'),
(197, 'Akeem', 'Kessler', '2005-03-28', 'Male', 'O+', 'Islam', 'Bangladeshi', '981', '219-359-6994', 'student982@example.com', '$2y$12$SaRBbi3HeqTaTs4ndEB.7uEfJRQu.0DxQP3ayJdz639SSqyS.2sYi', '422 Gutmann Rapids Apt. 141\nBrekkeville, OK 87612', 'Suite 193', 'Prof. Emory Runolfsson', 'Doctor', '(830) 418-9715', 'student982@example.com', '982', 'Prof. Odie Sanford', 'Housewife', '+1-680-651-7166', 'student983@example.com', '983', 'Prof. Emerson Crona', '(914) 308-9791', 'student984@example.com', '984', 'Sister', 1, 16, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:22', '2025-12-12 04:59:22'),
(198, 'Meta', 'Kuphal', '2015-03-06', 'Male', 'A-', 'Other', 'Bangladeshi', '986', '831-682-2943', 'student987@example.com', '$2y$12$ldT4gjQMybgkFcBqhvFwZejiBSbEl9cNABoGol7Zqjg30BiN0cAGy', '3628 Glover Shoals Suite 085\nTiffanyberg, PA 72219', 'Suite 373', 'Americo McDermott', 'Businessman', '414.425.1600', 'student987@example.com', '987', 'Deja Armstrong', 'Doctor', '520-480-5556', 'student988@example.com', '988', 'Elenor Senger', '908.358.4233', 'student989@example.com', '989', 'Aunt', 1, 17, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:22', '2025-12-12 04:59:22'),
(199, 'Karolann', 'Daugherty', '1999-01-15', 'Female', 'O+', 'Hindu', 'Bangladeshi', '991', '678.720.8618', 'student992@example.com', '$2y$12$3rx64qVgqn3Xvd2q4GJguew3R4/yejXNsgVTVySRUDomMX5u4kB1y', '361 Mitchell Crossing Suite 157\nMcCulloughbury, TN 93911-6021', 'Suite 034', 'Gay Hyatt', 'Doctor', '551.531.0631', 'student992@example.com', '992', 'Bethany Bauch Sr.', 'Doctor', '714.218.9742', 'student993@example.com', '993', 'Mr. Adolphus Vandervort II', '+1-269-717-9750', 'student994@example.com', '994', 'Aunt', 1, 27, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:23', '2025-12-12 04:59:23'),
(200, 'Malachi', 'Cummings', '2012-02-22', 'Other', 'A-', 'Other', 'Bangladeshi', '996', '+12484577986', 'student997@example.com', '$2y$12$SFqN28Lee6z.oWnWtSSk6.ZFWScoabylkXJpfsVOBQapFxfb0WH0q', '60183 Stan Vista\nWolfmouth, RI 42315', 'Suite 777', 'Oran Corwin', 'Teacher', '+15865356632', 'student997@example.com', '997', 'Rossie Conn', 'Housewife', '352-888-9818', 'student998@example.com', '998', 'Dr. Kailyn Bauch', '+1-331-293-4924', 'student999@example.com', '999', 'Aunt', 1, 22, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:23', '2025-12-12 04:59:23'),
(201, 'Nasir', 'Hartmann', '1982-03-13', 'Female', 'A+', 'Hindu', 'Bangladeshi', '1001', '956-850-6735', 'student1002@example.com', '$2y$12$epVFQWxBk5mthIygNFcSCeMyDlWb/R1RqvDNCOhbqCM3jSNan2c7u', '76757 Feil Club\nHanefurt, MD 97259-5808', 'Apt. 190', 'Luther Koss DVM', 'Farmer', '1-630-251-0191', 'student1002@example.com', '1002', 'Eugenia Bechtelar', 'Housewife', '531.364.2430', 'student1003@example.com', '1003', 'Camryn Connelly', '+1-478-378-5882', 'student1004@example.com', '1004', 'Brother', 1, 28, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:23', '2025-12-12 04:59:23'),
(202, 'Jeff', 'Lebsack', '1990-04-02', 'Female', 'AB+', 'Islam', 'Bangladeshi', '1006', '+1 (620) 529-5917', 'student1007@example.com', '$2y$12$woPN3jHtEGHjbVG7n5crLey0BvHtbQHs1PCNFNWDMaHbNuDzYgcCm', '13072 Clovis Way\nElfriedaport, NE 13179', 'Suite 076', 'Arne Ondricka', 'Doctor', '1-269-510-2795', 'student1007@example.com', '1007', 'Kaela Walker', 'Teacher', '+1.772.335.8275', 'student1008@example.com', '1008', 'Mrs. Estelle Feil', '1-551-232-8739', 'student1009@example.com', '1009', 'Brother', 1, 14, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:23', '2025-12-12 04:59:23'),
(203, 'Jordon', 'Witting', '2010-05-01', 'Female', 'A+', 'Other', 'Bangladeshi', '1011', '1-747-460-1749', 'student1012@example.com', '$2y$12$0ivqT.2TGDJTrm.is/rW5eGT50axm33mxp2YBW.3/IPLxXLYErNdi', '723 Vicenta Springs\nCartwrightton, AZ 58040', 'Apt. 005', 'Carmelo Rogahn', 'Businessman', '1-551-447-6948', 'student1012@example.com', '1012', 'Dr. Clotilde Ledner PhD', 'Nurse', '814-578-6141', 'student1013@example.com', '1013', 'Prof. Trevor Walter', '484.507.1321', 'student1014@example.com', '1014', 'Sister', 1, 22, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:23', '2025-12-12 04:59:23'),
(204, 'Lorena', 'Johnson', '1978-01-04', 'Other', 'O-', 'Christian', 'Bangladeshi', '1016', '720.563.2525', 'student1017@example.com', '$2y$12$3uPqEQhQM2ORox9seXlOFei6mI6YIrbPbn8OCZUUSnHfO.iEhrl1m', '4610 Funk Fork\nWest Terrence, VT 91412-3139', 'Apt. 938', 'Raphael Schultz', 'Businessman', '+1-330-299-1097', 'student1017@example.com', '1017', 'Judy Kub DVM', 'Doctor', '225-551-4724', 'student1018@example.com', '1018', 'Brad Pagac', '952.861.2313', 'student1019@example.com', '1019', 'Brother', 1, 22, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:23', '2025-12-12 04:59:23'),
(205, 'Maximillian', 'Hudson', '2000-10-23', 'Other', 'B-', 'Islam', 'Bangladeshi', '1021', '1-951-899-0588', 'student1022@example.com', '$2y$12$zW2XNWKt3rhVlKnsQj9Z8.TL7gcfwln76pYqIvvxLe2whK7qHAoVm', '86343 Trantow Extensions\nRennerside, ND 20492', 'Suite 539', 'Lowell Franecki', 'Engineer', '573-495-4331', 'student1022@example.com', '1022', 'Aleen Kuhlman', 'Businesswoman', '757-399-3146', 'student1023@example.com', '1023', 'Jett Thiel', '252-774-3246', 'student1024@example.com', '1024', 'Uncle', 1, 21, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:24', '2025-12-12 04:59:24'),
(206, 'Yvonne', 'Batz', '1993-04-15', 'Male', 'AB+', 'Islam', 'Bangladeshi', '1026', '+1-516-640-7425', 'student1027@example.com', '$2y$12$8Pms6bO2ZN6jSdjpyaIzzenm99jx0Cue20ZkMHJzZHv.sPz4uU93W', '39817 Tatum Ridges\nLoyceburgh, MA 42840', 'Suite 618', 'Prof. Mariano Hoeger', 'Businessman', '854-640-0598', 'student1027@example.com', '1027', 'Alene Wilderman DVM', 'Nurse', '+14438906232', 'student1028@example.com', '1028', 'Dr. Maye Kihn MD', '(248) 762-7152', 'student1029@example.com', '1029', 'Brother', 1, 21, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:24', '2025-12-12 05:01:42'),
(207, 'Emmanuelle', 'Reichel', '2006-04-02', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '1031', '+1.224.379.2604', 'student1032@example.com', '$2y$12$jwMLvICKA.3DwNVeazVT1u4cR0g8moN4ZyhKYY/aOXrr9LR9GH4vK', '427 Frieda Tunnel Suite 777\nBertrandside, NJ 90631-6320', 'Apt. 308', 'Dwight Cole', 'Doctor', '1-941-705-6234', 'student1032@example.com', '1032', 'Aurelia Runolfsson', 'Teacher', '512-444-8839', 'student1033@example.com', '1033', 'Monte Balistreri MD', '1-575-586-8287', 'student1034@example.com', '1034', 'Brother', 1, 18, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:24', '2025-12-12 04:59:24'),
(208, 'Aletha', 'Spinka', '1990-06-22', 'Other', 'O+', 'Christian', 'Bangladeshi', '1036', '513-902-7254', 'student1037@example.com', '$2y$12$NFk9nVJDlYETrN1i8.67pekunYyIpBVD7VNUC2yrewo6d1Q.sMukS', '718 Granville Wall\nSchuppehaven, HI 35401', 'Apt. 711', 'Tyree Ankunding', 'Engineer', '+1-352-978-8840', 'student1037@example.com', '1037', 'Mrs. Aiyana Wunsch I', 'Nurse', '+1-307-357-7849', 'student1038@example.com', '1038', 'Mozelle Gibson', '517-429-9373', 'student1039@example.com', '1039', 'Brother', 1, 23, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:24', '2025-12-12 04:59:24'),
(209, 'Kallie', 'O\'Reilly', '1970-10-10', 'Female', 'O+', 'Buddhist', 'Bangladeshi', '1041', '+1 (276) 632-7477', 'student1042@example.com', '$2y$12$3k.RuQ/3.CiHTchsrOQ3N.HorrRecLhn.o1.bGwgyZLrshYuqcFGO', '911 Jacynthe Hollow\nLake Kristian, MI 89747-6809', 'Apt. 131', 'Donny Brown', 'Businessman', '+1-341-949-5746', 'student1042@example.com', '1042', 'Ms. Edwina Marks I', 'Doctor', '1-832-661-5287', 'student1043@example.com', '1043', 'Milford Erdman Sr.', '239-230-6290', 'student1044@example.com', '1044', 'Aunt', 1, 19, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:24', '2025-12-12 04:59:24'),
(210, 'Connie', 'Fay', '2015-05-27', 'Other', 'A+', 'Islam', 'Bangladeshi', '1046', '352-526-1496', 'student1047@example.com', '$2y$12$2VTsLHavRSO1Kx9W0O4We.jShf9iSukOqWz54TDAPFoy0Dq5Ptw2q', '834 Angel Bridge Suite 740\nSashastad, NY 47146', 'Suite 156', 'Dallas Stanton', 'Doctor', '1-484-877-3437', 'student1047@example.com', '1047', 'Miracle Romaguera IV', 'Teacher', '+1.949.358.8306', 'student1048@example.com', '1048', 'Aric Huel DDS', '+1-662-621-9364', 'student1049@example.com', '1049', 'Brother', 1, 22, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:25', '2025-12-12 05:01:43'),
(211, 'Cory', 'Feil', '1993-12-19', 'Other', 'O-', 'Christian', 'Bangladeshi', '1051', '949.782.1182', 'student1052@example.com', '$2y$12$dHrLYegfmZydiqD5np.pbeFqtTY9ffw3mXLtVPPOZUkDOzdTVluYu', '245 Ilene Extension\nNew Kattieville, MI 43734-8633', 'Suite 481', 'Dr. Filiberto Koepp DVM', 'Teacher', '845.214.8380', 'student1052@example.com', '1052', 'Verda Towne', 'Teacher', '+1 (689) 274-6435', 'student1053@example.com', '1053', 'Oswald Greenfelder', '708.375.2947', 'student1054@example.com', '1054', 'Sister', 1, 22, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:25', '2025-12-12 04:59:25'),
(212, 'Greg', 'Wisozk', '2025-01-08', 'Male', 'A+', 'Other', 'Bangladeshi', '1056', '+14086658995', 'student1057@example.com', '$2y$12$2eRiho.GMF6B/MKS0I4RpePjthxuyYY3p5SuubIWGPew8nBV6pEbO', '2953 Abbott Road\nHowellshire, AL 21850', 'Apt. 843', 'Ariel Wintheiser DVM', 'Teacher', '231.580.3931', 'student1057@example.com', '1057', 'Nettie Lebsack', 'Businesswoman', '1-651-932-7584', 'student1058@example.com', '1058', 'Carmela Leuschke', '+1.248.918.2810', 'student1059@example.com', '1059', 'Grandparent', 1, 23, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:25', '2025-12-12 04:59:25'),
(213, 'Marilie', 'Purdy', '1971-07-30', 'Female', 'A+', 'Hindu', 'Bangladeshi', '1061', '+1-269-255-7133', 'student1062@example.com', '$2y$12$SeCI.YEsQdMirQvlkwOz0.WvB9nx7ttp2uOP3O2MqJ0EuusuVfsfm', '742 Valentina Ramp Suite 458\nNikostad, OH 22118-7385', 'Suite 273', 'Benedict Glover', 'Teacher', '1-507-369-5545', 'student1062@example.com', '1062', 'Natasha Jast DDS', 'Businesswoman', '+1-231-234-5280', 'student1063@example.com', '1063', 'Izaiah Kertzmann', '1-662-521-8309', 'student1064@example.com', '1064', 'Sister', 1, 15, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:25', '2025-12-12 04:59:25'),
(214, 'Ezra', 'Swaniawski', '1991-05-17', 'Male', 'AB+', 'Islam', 'Bangladeshi', '1066', '640.777.7091', 'student1067@example.com', '$2y$12$cyUEntZVBJ4rtVJ9xlRjbOI1gR5hwz7FjDluwwnVuyKZdTApDC38W', '25661 Keebler Viaduct\nWest Carmel, SD 44462', 'Apt. 917', 'Prof. Brain Daugherty I', 'Farmer', '838.727.0817', 'student1067@example.com', '1067', 'Amelie Hill', 'Businesswoman', '1-845-573-0325', 'student1068@example.com', '1068', 'Jett Fahey', '660-650-7465', 'student1069@example.com', '1069', 'Brother', 1, 20, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:25', '2025-12-12 04:59:25'),
(215, 'Jordyn', 'Bergstrom', '1975-03-13', 'Other', 'B+', 'Other', 'Bangladeshi', '1071', '+1 (504) 630-2633', 'student1072@example.com', '$2y$12$dxzRQMbs7uGw3iNyZ1kw3e5afj4Ho2O35Mn.lJ7Xgsl3e5mMluAXG', '240 Lyric Plains Apt. 988\nVladimirland, WY 22958-5079', 'Apt. 482', 'Felipe Conroy Jr.', 'Doctor', '+1-980-837-4463', 'student1072@example.com', '1072', 'Dr. Syble Moen', 'Doctor', '(707) 390-7390', 'student1073@example.com', '1073', 'Dr. Gardner O\'Connell PhD', '+1 (269) 277-1873', 'student1074@example.com', '1074', 'Sister', 1, 23, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:26', '2025-12-12 04:59:26'),
(216, 'Kaylie', 'Ortiz', '2012-04-04', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '1076', '+16082561629', 'student1077@example.com', '$2y$12$DlQhR0qfGHzQ82gV6s8gfe/rhskp9Dj.VDzQ/yPTWZSYrw6aCjEl.', '4370 Walsh Points Suite 882\nLake Rocioshire, ME 66597', 'Suite 442', 'Mr. Gerardo Hand DDS', 'Farmer', '574.349.6984', 'student1077@example.com', '1077', 'Dr. Minnie Kub', 'Doctor', '754-601-3497', 'student1078@example.com', '1078', 'Carolina Haag', '1-734-415-5046', 'student1079@example.com', '1079', 'Aunt', 1, 24, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:26', '2025-12-12 04:59:26'),
(217, 'Evie', 'Bailey', '2006-02-27', 'Other', 'AB-', 'Buddhist', 'Bangladeshi', '1081', '229.339.8559', 'student1082@example.com', '$2y$12$x3ZoB8eEXDGAqPgvXr2bGuY7LJrilAzylwmWUiiYGIbX7ReX.kcMS', '11251 Elsie Heights Suite 137\nCorkeryview, UT 72043-1352', 'Suite 453', 'Edd Torphy', 'Engineer', '940.207.7343', 'student1082@example.com', '1082', 'Aurelia Green', 'Housewife', '607.524.3092', 'student1083@example.com', '1083', 'Mr. Monty Baumbach I', '239-642-5906', 'student1084@example.com', '1084', 'Sister', 1, 23, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:26', '2025-12-12 05:01:44'),
(218, 'Stanley', 'Bartell', '1988-05-11', 'Female', 'O-', 'Hindu', 'Bangladeshi', '1086', '(859) 571-2051', 'student1087@example.com', '$2y$12$4Urs713284jZAOdsf34.kOWEZAI62gKR1DP6vt2Yxm3Rpfran7E2y', '45982 Marielle Inlet Apt. 869\nBraulioville, ID 90649-7185', 'Suite 648', 'Emmet Harber', 'Teacher', '1-734-749-2312', 'student1087@example.com', '1087', 'Adeline Bailey', 'Teacher', '1-714-235-7852', 'student1088@example.com', '1088', 'Uriah Marquardt', '1-856-377-5293', 'student1089@example.com', '1089', 'Sister', 1, 24, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:26', '2025-12-12 05:01:46'),
(219, 'Pinkie', 'Haag', '2020-09-12', 'Other', 'O+', 'Hindu', 'Bangladeshi', '1091', '+1 (606) 333-1427', 'student1092@example.com', '$2y$12$rTeXkEmnxF9zB3FE7arsYubWtcjaKq42m2Bcez4lyyJ9DJS7xfJcK', '4951 Florida Mount Suite 285\nHomenickchester, KY 57805', 'Suite 699', 'Garret Flatley', 'Doctor', '469.310.6356', 'student1092@example.com', '1092', 'Madeline Lockman I', 'Businesswoman', '(717) 412-5807', 'student1093@example.com', '1093', 'Miss Zoila Koelpin V', '(920) 818-2957', 'student1094@example.com', '1094', 'Uncle', 1, 22, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:26', '2025-12-12 04:59:26'),
(220, 'Ray', 'Feest', '2020-08-31', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '1096', '1-820-860-0042', 'student1097@example.com', '$2y$12$UGV4qJpuGKCqgT4QkBARxePGz63SQzXUGcxilBo24CngcgF59cU5W', '40428 Wunsch Unions\nEast Ferneside, OR 41849-1376', 'Suite 183', 'Gust Deckow', 'Farmer', '+1-832-673-8559', 'student1097@example.com', '1097', 'Elnora Harvey', 'Businesswoman', '860-545-1804', 'student1098@example.com', '1098', 'Mrs. Yasmeen Crona', '442.991.2686', 'student1099@example.com', '1099', 'Aunt', 1, 16, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:26', '2025-12-12 04:59:26'),
(221, 'Kiel', 'Adams', '1986-05-12', 'Other', 'O+', 'Islam', 'Bangladeshi', '1101', '704-690-5654', 'student1102@example.com', '$2y$12$oVlZrDnSMADrzmlvgbmk7OjEY7nhDc.6WnbI1Nbzi6afzgKlSpPPe', '5805 Berta Avenue\nWest Davonport, AK 51305-2618', 'Apt. 891', 'Lincoln Auer III', 'Doctor', '+1 (848) 974-1699', 'student1102@example.com', '1102', 'Ms. Jadyn Barton', 'Housewife', '618-671-3563', 'student1103@example.com', '1103', 'Dianna Tillman', '+1-843-364-5666', 'student1104@example.com', '1104', 'Grandparent', 1, 29, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:27', '2025-12-12 04:59:27'),
(222, 'Adelle', 'Gleason', '2025-09-08', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '1106', '+1 (616) 418-7855', 'student1107@example.com', '$2y$12$/ezslZkqKPyMziOV0VdHu.QCsKm6LHJMT0tLL8PSU/pF/BLsOH4n.', '2552 Gabe Row Apt. 568\nKobyhaven, NJ 60201', 'Apt. 780', 'Jerod Lehner', 'Businessman', '+18319428335', 'student1107@example.com', '1107', 'Rosalyn Rolfson', 'Doctor', '+19705550001', 'student1108@example.com', '1108', 'Mayra Reinger', '534.421.3704', 'student1109@example.com', '1109', 'Grandparent', 1, 24, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:27', '2025-12-12 04:59:27'),
(223, 'Lucile', 'Kertzmann', '1977-08-06', 'Other', 'AB+', 'Islam', 'Bangladeshi', '1111', '+1-203-926-3285', 'student1112@example.com', '$2y$12$AtASVlVfkEgkm7BT.WhRROzTHvGJzp5SRGj0vPWuywI.72N374GMW', '6587 Adolfo Estates\nLake Arvidfort, NH 68363-1486', 'Suite 839', 'Mr. Kayden Hodkiewicz PhD', 'Farmer', '(319) 999-9743', 'student1112@example.com', '1112', 'Dr. Anabelle Feest', 'Housewife', '571-430-8650', 'student1113@example.com', '1113', 'Dr. Augusta Kub', '774.304.9958', 'student1114@example.com', '1114', 'Grandparent', 1, 17, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:27', '2025-12-12 04:59:27'),
(224, 'Maxime', 'Deckow', '1991-05-19', 'Female', 'O+', 'Christian', 'Bangladeshi', '1116', '+1 (352) 475-5376', 'student1117@example.com', '$2y$12$QiyTnbE/nIj2d0enOP6tsOSf7eHA9MTvepjIqmaTWafCMj73rhxtK', '66849 Goyette Ridge\nLloydside, AZ 90548', 'Suite 510', 'Mr. Dawson Boyer PhD', 'Teacher', '+1 (820) 397-3409', 'student1117@example.com', '1117', 'Rubye Heathcote', 'Teacher', '301.592.6589', 'student1118@example.com', '1118', 'Israel Rau', '347.642.9714', 'student1119@example.com', '1119', 'Aunt', 1, 23, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:27', '2025-12-12 04:59:27'),
(225, 'Johan', 'Johnson', '1979-07-25', 'Female', 'A-', 'Islam', 'Bangladeshi', '1121', '323.259.3048', 'student1122@example.com', '$2y$12$v9ftRt6rqKSYv4QvIYjQ2OHjZh8KcoKyH3xov7OQdnhS3m6fU674e', '38518 Douglas Rapid\nBlandaborough, NH 67187', 'Apt. 765', 'Colton Friesen', 'Farmer', '(586) 589-7951', 'student1122@example.com', '1122', 'Trudie Haag Sr.', 'Nurse', '+1 (539) 599-9763', 'student1123@example.com', '1123', 'Amber Larson', '1-575-299-9496', 'student1124@example.com', '1124', 'Uncle', 1, 23, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:27', '2025-12-12 04:59:27'),
(226, 'Westley', 'Howell', '1988-06-25', 'Other', 'A+', 'Other', 'Bangladeshi', '1126', '+1-901-940-8933', 'student1127@example.com', '$2y$12$hB/smdu1FPUrwj3RTWcRLulLLIIsze1YRjszpxUAYa.WrPSI9Rc9i', '697 Upton Track\nNew Art, CT 47899', 'Apt. 654', 'Prof. Alford Botsford', 'Engineer', '1-650-417-6998', 'student1127@example.com', '1127', 'Alicia Bednar', 'Nurse', '956.234.9597', 'student1128@example.com', '1128', 'Alfreda Klein IV', '(830) 912-0678', 'student1129@example.com', '1129', 'Grandparent', 1, 24, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:28', '2025-12-12 04:59:28'),
(227, 'Amos', 'Little', '2014-08-23', 'Other', 'A-', 'Christian', 'Bangladeshi', '1131', '+13077963923', 'student1132@example.com', '$2y$12$ffENsFjpyB1Z7mD7kHUq.O46lsnUkEQM4fS.R9QR2/u6aQbFmchgC', '291 Hugh Viaduct\nNew Abigayle, CO 58046-7682', 'Suite 770', 'Prof. Jayson Schumm', 'Teacher', '937-333-2213', 'student1132@example.com', '1132', 'Mara Gottlieb', 'Teacher', '1-551-648-4130', 'student1133@example.com', '1133', 'Luz Gislason', '719.620.1090', 'student1134@example.com', '1134', 'Brother', 1, 30, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:28', '2025-12-12 04:59:28'),
(228, 'Holden', 'Adams', '2021-04-17', 'Male', 'B+', 'Other', 'Bangladeshi', '1136', '+1 (561) 459-4487', 'student1137@example.com', '$2y$12$G7EQ5ZFyRzflhgnHCTNpUeAiOuJyQId83TIzAhQJ7nHGB2xyKrNGy', '97995 Flatley Pine Apt. 406\nWeissnatfort, ME 49495', 'Apt. 159', 'Dave Cartwright III', 'Engineer', '+1.640.652.5059', 'student1137@example.com', '1137', 'Cathryn Spinka', 'Doctor', '+16202061075', 'student1138@example.com', '1138', 'Mr. Herbert Gottlieb', '+1 (320) 817-9801', 'student1139@example.com', '1139', 'Grandparent', 1, 24, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:28', '2025-12-12 04:59:28'),
(229, 'Marlen', 'Bahringer', '1995-05-17', 'Male', 'B-', 'Hindu', 'Bangladeshi', '1141', '908-922-3594', 'student1142@example.com', '$2y$12$S6iYfAWVHOZS1r//8Bf7QuGeIf8h8s8N1mx6vvlIBIxlTN5/OMeCq', '2131 Adam Forest Suite 965\nPort Deshaunhaven, CA 98204', 'Apt. 976', 'Prof. Herminio Walsh', 'Engineer', '917-476-1783', 'student1142@example.com', '1142', 'Roselyn Boyer Jr.', 'Teacher', '859.226.0928', 'student1143@example.com', '1143', 'Malcolm Waelchi', '+1-463-326-6807', 'student1144@example.com', '1144', 'Sister', 1, 18, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:28', '2025-12-12 04:59:28'),
(230, 'Sean', 'Denesik', '2011-09-10', 'Female', 'AB+', 'Other', 'Bangladeshi', '1146', '+16186178342', 'student1147@example.com', '$2y$12$1EFswC4gZCcb97qmMiUrQOBvDSKhu3wQzNq87nCDH2gY5xtom7Ki2', '23700 Heaney Hill\nDomenicamouth, OR 10550', 'Apt. 357', 'Ward Hills', 'Businessman', '+14238002651', 'student1147@example.com', '1147', 'Miss Shyann Homenick', 'Teacher', '+1 (854) 374-3297', 'student1148@example.com', '1148', 'Lizzie Treutel', '231-975-8050', 'student1149@example.com', '1149', 'Brother', 1, 25, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:28', '2025-12-12 04:59:28'),
(231, 'Amelia', 'Hintz', '1995-04-11', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '1151', '+1.629.602.9521', 'student1152@example.com', '$2y$12$87Ncivbd6GAPwl8Ux.H2te1Nr8CAIaPKEfoGzo.fxQstVMjIFxP7i', '10536 Juanita Spring Apt. 525\nEast Otto, SD 75828', 'Apt. 483', 'Weldon Harber', 'Businessman', '432-240-4237', 'student1152@example.com', '1152', 'Ms. Caterina Ullrich', 'Teacher', '463-610-7357', 'student1153@example.com', '1153', 'Letitia Runolfsson', '715-661-1908', 'student1154@example.com', '1154', 'Aunt', 1, 26, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:29', '2025-12-12 04:59:29'),
(232, 'William', 'Christiansen', '2016-12-23', 'Male', 'O+', 'Christian', 'Bangladeshi', '1156', '+1-934-337-3314', 'student1157@example.com', '$2y$12$Rkn/fVOq2hagihP.pmKWp.h2fc9ibEHZ/wz0sy5wM7s0dNHhTn9SK', '5366 Hailee Cove Apt. 742\nMakenzieview, CT 75670-5475', 'Suite 754', 'Jayme Mayer', 'Doctor', '+1-937-996-8648', 'student1157@example.com', '1157', 'Lenora Mayert', 'Doctor', '+1.843.379.4088', 'student1158@example.com', '1158', 'Maynard Langworth', '1-360-480-4766', 'student1159@example.com', '1159', 'Grandparent', 1, 21, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:29', '2025-12-12 04:59:29'),
(233, 'Cyrus', 'Cummerata', '1997-10-01', 'Male', 'B+', 'Other', 'Bangladeshi', '1161', '+1-941-671-3664', 'student1162@example.com', '$2y$12$mRssiHhLG0BUiCApDZkg9efqBHvldVMet51n3yWQcvTbdGPM4aLW2', '68370 Blick Light Apt. 214\nSouth Orlandfort, MT 36174', 'Apt. 415', 'Dr. Andre Stiedemann', 'Teacher', '626-503-1615', 'student1162@example.com', '1162', 'Suzanne Witting', 'Nurse', '1-551-542-5430', 'student1163@example.com', '1163', 'Mrs. Reta Jast PhD', '+1.269.434.0604', 'student1164@example.com', '1164', 'Grandparent', 1, 25, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:29', '2025-12-12 04:59:29'),
(234, 'Joan', 'Jenkins', '1993-05-14', 'Female', 'A-', 'Other', 'Bangladeshi', '1166', '(812) 487-4888', 'student1167@example.com', '$2y$12$S4mspjVAct/72u35RIopRuRyJ13ddedsp0yP58vCAWmcSh/86eesm', '718 Reichert Course\nNorth Mya, HI 38048', 'Suite 602', 'Cooper Feest', 'Businessman', '678-403-9564', 'student1167@example.com', '1167', 'Reta Roob', 'Nurse', '417-888-8467', 'student1168@example.com', '1168', 'Nick Swaniawski', '+1-757-866-9135', 'student1169@example.com', '1169', 'Aunt', 1, 25, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:29', '2025-12-12 05:01:46');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(235, 'Leanna', 'Crooks', '2005-02-01', 'Other', 'B+', 'Hindu', 'Bangladeshi', '1171', '(534) 858-7425', 'student1172@example.com', '$2y$12$Z9112uSCQq2IGtjxusfwFeKPX.inZrjRCZ70DbXIK/vtsOtF/szfm', '289 Guido Track Apt. 873\nPort Bettie, DE 85104', 'Apt. 651', 'Prof. Angel Runolfsdottir I', 'Teacher', '(620) 479-3893', 'student1172@example.com', '1172', 'Mrs. Kyra Spencer', 'Businesswoman', '+1-212-768-8642', 'student1173@example.com', '1173', 'Prof. Beaulah Denesik IV', '+1 (404) 455-5317', 'student1174@example.com', '1174', 'Uncle', 1, 25, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:29', '2025-12-12 04:59:29'),
(236, 'Efren', 'Legros', '2000-05-17', 'Female', 'A-', 'Other', 'Bangladeshi', '1176', '315-873-5923', 'student1177@example.com', '$2y$12$q1exqBC.01QPBwSkd82.T.LbO7h8Trc8HOjNBMGBYXaLrOJxDUsSG', '483 Ada Meadows\nClairehaven, SC 84181-5311', 'Apt. 737', 'Prof. Dino Cartwright', 'Farmer', '+1-928-847-0947', 'student1177@example.com', '1177', 'Juana Rice', 'Doctor', '(941) 796-0443', 'student1178@example.com', '1178', 'Erica Hagenes', '307-456-7952', 'student1179@example.com', '1179', 'Uncle', 1, 26, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:30', '2025-12-12 05:01:47'),
(237, 'Mason', 'Cormier', '1978-05-30', 'Other', 'A+', 'Other', 'Bangladeshi', '1181', '240.841.0699', 'student1182@example.com', '$2y$12$9.P0aWy1wFro6OY6TEfigebNp86eGz8GR.IymBBzdRfculpC8pITy', '987 Bauch Pass\nLake Wendell, GA 51940', 'Apt. 327', 'Carey Ryan', 'Businessman', '(551) 938-7365', 'student1182@example.com', '1182', 'Dr. Adriana Harvey', 'Nurse', '701-239-6054', 'student1183@example.com', '1183', 'Dr. Monica McGlynn MD', '+1.478.357.5040', 'student1184@example.com', '1184', 'Grandparent', 1, 19, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:30', '2025-12-12 04:59:30'),
(238, 'Ressie', 'Zieme', '1980-10-24', 'Male', 'B+', 'Christian', 'Bangladeshi', '1186', '+1-740-360-0323', 'student1187@example.com', '$2y$12$d8/xg7K19yAnAnn5ltPlBufGII3wO/H58PiBgDki0zY9ovHJo/o1a', '468 Rau Crest\nMargarettfort, SC 04689', 'Apt. 892', 'Eladio Berge Sr.', 'Teacher', '+1-802-694-7928', 'student1187@example.com', '1187', 'Dr. Jessyca Lynch Sr.', 'Housewife', '567-983-0474', 'student1188@example.com', '1188', 'Braeden Leuschke DVM', '(872) 453-2743', 'student1189@example.com', '1189', 'Brother', 1, 19, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:30', '2025-12-12 04:59:30'),
(239, 'April', 'Goldner', '2002-01-16', 'Male', 'O-', 'Islam', 'Bangladeshi', '1191', '1-205-350-2570', 'student1192@example.com', '$2y$12$MkdWaapD24icMl3dCppDiOMRfiVvyoiMfplzlLQmBreIiksQb2wJ6', '50371 Mckayla Courts\nLake Evangeline, MT 99681-5550', 'Suite 379', 'Darrick Carter', 'Businessman', '1-737-777-9765', 'student1192@example.com', '1192', 'Rubie Harris', 'Doctor', '339-257-4427', 'student1193@example.com', '1193', 'Dr. Zane Dietrich', '1-478-681-2980', 'student1194@example.com', '1194', 'Grandparent', 1, 27, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:30', '2025-12-12 05:01:49'),
(240, 'Estefania', 'Yundt', '2011-12-25', 'Male', 'AB+', 'Christian', 'Bangladeshi', '1196', '+13014472448', 'student1197@example.com', '$2y$12$F16APPsHBz4B9HKdXQwyxOcdJnWO38lgASKBNrqTCsXmi89BwKH5a', '729 Von Causeway Apt. 014\nHoegerton, FL 62839-1754', 'Apt. 860', 'Dr. Wilmer Kautzer DDS', 'Teacher', '+1-872-815-3680', 'student1197@example.com', '1197', 'Ms. Francisca Feest I', 'Housewife', '1-281-439-4827', 'student1198@example.com', '1198', 'Mrs. Reanna Johns Sr.', '279-635-0573', 'student1199@example.com', '1199', 'Aunt', 1, 22, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:30', '2025-12-12 04:59:30'),
(241, 'Hardy', 'Huels', '1976-03-31', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '1201', '1-832-626-9770', 'student1202@example.com', '$2y$12$Qj7N8EFvqsB/mmibQQ09Ju9t4Y3r23hzdKKNGvoxt7wcq5iCZs7r6', '257 Kirlin Groves Suite 559\nLueilwitzland, FL 38195-3955', 'Suite 644', 'Oren Lueilwitz', 'Teacher', '616.867.4768', 'student1202@example.com', '1202', 'Ms. Lois Quitzon DVM', 'Nurse', '820.298.8218', 'student1203@example.com', '1203', 'Alyson Maggio III', '726.375.6183', 'student1204@example.com', '1204', 'Brother', 1, 28, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:30', '2025-12-12 05:01:50'),
(242, 'Stephen', 'Denesik', '2020-08-24', 'Other', 'B-', 'Christian', 'Bangladeshi', '1206', '(458) 567-8830', 'student1207@example.com', '$2y$12$xw9FTLN2/5d1Qu3fmhhmjOheThjtl0rVwDaMRILvJZtkq8P2OL53y', '4704 Aylin Point\nNew Holden, GA 43186', 'Apt. 441', 'Candido Auer DDS', 'Doctor', '+17623938367', 'student1207@example.com', '1207', 'Samara Wiza', 'Nurse', '+1 (762) 233-8548', 'student1208@example.com', '1208', 'Everett Koch', '+19363498636', 'student1209@example.com', '1209', 'Sister', 1, 24, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:31', '2025-12-12 04:59:31'),
(243, 'Emilio', 'Heller', '2006-09-20', 'Other', 'AB-', 'Hindu', 'Bangladeshi', '1211', '478-954-9950', 'student1212@example.com', '$2y$12$/C0ttYf6kbon3cxDNi.iPuc/N9/qrHOQBfPNFLwqTr9hfay7LAC3W', '4035 Yolanda Flats Suite 387\nRatkemouth, NC 89700-4447', 'Apt. 203', 'Prof. Florian Bechtelar', 'Businessman', '+1 (510) 705-0582', 'student1212@example.com', '1212', 'Prof. Rebeca Morissette', 'Nurse', '415-968-5701', 'student1213@example.com', '1213', 'Kristofer Pollich', '352.795.6455', 'student1214@example.com', '1214', 'Aunt', 1, 20, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:31', '2025-12-12 04:59:31'),
(244, 'Mattie', 'Koch', '1985-02-23', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '1216', '1-818-896-1344', 'student1217@example.com', '$2y$12$fDn4r/W.yvWI2a3/Wsg/2.C7Tf5UY78ii6qBslMKTS2b4Q8nAdAAu', '63916 Okuneva Roads\nWest Troy, CO 22238', 'Apt. 100', 'Richard Ortiz', 'Doctor', '1-251-501-6993', 'student1217@example.com', '1217', 'Clarissa Rogahn', 'Housewife', '+13413149426', 'student1218@example.com', '1218', 'Mrs. Ruthe Schroeder', '619.360.4883', 'student1219@example.com', '1219', 'Sister', 1, 25, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:31', '2025-12-12 04:59:31'),
(245, 'Chloe', 'Metz', '1980-03-20', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '1221', '+1.678.552.0768', 'student1222@example.com', '$2y$12$UIvjM7c9aZOY/z7/YWrM3eM9YqOk4SLIAx8vAQVSAEt0HBiEfjo7O', '7303 Crona Summit Apt. 997\nWest Destiny, NM 78183-4823', 'Apt. 005', 'Prof. Carol Greenfelder V', 'Farmer', '360.982.9179', 'student1222@example.com', '1222', 'Prof. Kenyatta Sipes', 'Doctor', '+17576707255', 'student1223@example.com', '1223', 'Mrs. Roberta Schultz', '662.980.8870', 'student1224@example.com', '1224', 'Aunt', 1, 26, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:31', '2025-12-12 04:59:31'),
(246, 'Donald', 'Kuhn', '2000-03-03', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '1226', '520.628.2009', 'student1227@example.com', '$2y$12$yreamLzDwRizsF/u.PlsQutLgr7vPUy/nsuS01wazf9E5sB.lM3Uu', '985 Gottlieb Ville Suite 553\nSouth Malinda, TX 19836', 'Suite 081', 'Jett Beahan', 'Teacher', '+18309069123', 'student1227@example.com', '1227', 'Gregoria Hirthe', 'Nurse', '+1-838-940-2125', 'student1228@example.com', '1228', 'Janice Conroy', '+1.936.719.5208', 'student1229@example.com', '1229', 'Sister', 1, 26, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:31', '2025-12-12 04:59:31'),
(247, 'Foster', 'Hessel', '2009-10-23', 'Male', 'A-', 'Hindu', 'Bangladeshi', '1231', '1-763-896-1519', 'student1232@example.com', '$2y$12$1LQnMTwsW7jCoVF2SAcI4.krbxmJkzsEsChSIldAl7qNbmQ2uFvne', '5137 Hyatt Crossroad\nRomagueraville, HI 84180-0908', 'Apt. 613', 'Dr. Ephraim Gusikowski Jr.', 'Farmer', '+1-603-737-2493', 'student1232@example.com', '1232', 'Prof. Nella Emard', 'Housewife', '+16418445658', 'student1233@example.com', '1233', 'Loren Jakubowski', '734.248.8622', 'student1234@example.com', '1234', 'Aunt', 1, 27, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:32', '2025-12-12 04:59:32'),
(248, 'Aisha', 'Stroman', '2001-10-31', 'Female', 'O+', 'Christian', 'Bangladeshi', '1236', '+12515266092', 'student1237@example.com', '$2y$12$HncN7gssKFBltMyucOk04Oz.ifs.QDt0UtiS3OuxckfvH66WyyRAW', '981 O\'Conner Orchard\nSawaynview, CT 09997-2201', 'Suite 095', 'Taylor DuBuque', 'Doctor', '1-484-999-6110', 'student1237@example.com', '1237', 'Wendy Windler MD', 'Housewife', '+1 (913) 631-5108', 'student1238@example.com', '1238', 'Prof. Vella Glover', '1-931-714-0748', 'student1239@example.com', '1239', 'Aunt', 1, 26, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:32', '2025-12-12 04:59:32'),
(249, 'Sasha', 'Ernser', '1990-11-23', 'Female', 'O-', 'Islam', 'Bangladeshi', '1241', '1-630-721-5726', 'student1242@example.com', '$2y$12$xOJzFpXuiPaQ31vpcPFl6uzONPMadJQYnRbT1rz87q19Dso3HUdyO', '55352 Volkman Road\nMacejkovichaven, ND 82158', 'Suite 470', 'Brooks Swift', 'Businessman', '918.873.8188', 'student1242@example.com', '1242', 'Baby McKenzie', 'Housewife', '843.402.1997', 'student1243@example.com', '1243', 'Alec Satterfield', '+1 (732) 243-6833', 'student1244@example.com', '1244', 'Aunt', 1, 23, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:32', '2025-12-12 04:59:32'),
(250, 'Jacinthe', 'Smitham', '1988-05-04', 'Male', 'O-', 'Other', 'Bangladeshi', '1246', '1-908-386-9234', 'student1247@example.com', '$2y$12$LN/g6LqtPWrhS8xYd1VAnO08RPBweip4y/s1f15ee0ZJTEukPG7R.', '8074 Susan Rapids Apt. 301\nWest Nelda, CO 59051-3060', 'Apt. 980', 'Oren Hammes PhD', 'Doctor', '351-459-4679', 'student1247@example.com', '1247', 'Eliza Carroll DDS', 'Nurse', '+13128629820', 'student1248@example.com', '1248', 'Izabella Klocko', '+1-330-509-0067', 'student1249@example.com', '1249', 'Sister', 1, 21, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:32', '2025-12-12 04:59:32'),
(251, 'Audrey', 'Kling', '1987-06-21', 'Other', 'A-', 'Christian', 'Bangladeshi', '1251', '682-326-0654', 'student1252@example.com', '$2y$12$PfI22h2ux6tRyu1d/84Lyecxm.T377iTwoluV/RANHBDLhiehzieG', '971 Hansen Locks\nNew Jeweltown, MS 26057-6077', 'Apt. 328', 'Prof. Abdiel Schroeder Sr.', 'Businessman', '+1-323-963-4510', 'student1252@example.com', '1252', 'Eulah McDermott PhD', 'Teacher', '+1.907.465.6612', 'student1253@example.com', '1253', 'Alison Pagac', '+1-407-315-2022', 'student1254@example.com', '1254', 'Brother', 1, 29, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:32', '2025-12-12 05:01:51'),
(252, 'Amber', 'Block', '2005-10-04', 'Male', 'A-', 'Christian', 'Bangladeshi', '1256', '320.675.4704', 'student1257@example.com', '$2y$12$DbWKilAfg4wi4.GhfFW/punEZC.Ci13FOdv2Da2YNk6CH2DcYXiPO', '424 Luettgen Street Suite 920\nSouth Cletusmouth, VA 49231-5285', 'Apt. 440', 'Saul VonRueden', 'Teacher', '+1-205-382-0170', 'student1257@example.com', '1257', 'Delfina Sawayn', 'Teacher', '240-357-7484', 'student1258@example.com', '1258', 'Prof. Chesley McClure', '(586) 210-7868', 'student1259@example.com', '1259', 'Grandparent', 1, 27, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:33', '2025-12-12 04:59:33'),
(253, 'Mekhi', 'Langosh', '2019-04-04', 'Male', 'B+', 'Hindu', 'Bangladeshi', '1261', '+1.856.335.0346', 'student1262@example.com', '$2y$12$lObLdM/fJMQk6dhuAqRzaOsO.PQrSKclO7pKbvK5lK9ubce3C2Thu', '56582 Desmond Court\nRoobview, KS 09107', 'Suite 452', 'Shayne Flatley', 'Farmer', '320-292-4439', 'student1262@example.com', '1262', 'Josephine Upton', 'Businesswoman', '1-910-855-3612', 'student1263@example.com', '1263', 'Dannie Kreiger III', '848-702-7493', 'student1264@example.com', '1264', 'Uncle', 1, 27, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:33', '2025-12-12 04:59:33'),
(254, 'Dortha', 'Williamson', '1993-06-16', 'Female', 'B+', 'Islam', 'Bangladeshi', '1266', '+1.740.821.2966', 'student1267@example.com', '$2y$12$tMHzrL2XZlG5fEjSKF2icO5Ub9kZLTtQCdQibIZa40.goS2JmMMzu', '630 Talon Corners Apt. 771\nZanderberg, GA 30669', 'Apt. 644', 'Jordyn Welch', 'Doctor', '+1-281-324-4218', 'student1267@example.com', '1267', 'Grace Lemke', 'Housewife', '971-433-8712', 'student1268@example.com', '1268', 'Dr. Jazmyn Swaniawski PhD', '1-484-612-4608', 'student1269@example.com', '1269', 'Brother', 1, 22, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:33', '2025-12-12 04:59:33'),
(255, 'Zachariah', 'Baumbach', '2011-11-17', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '1271', '573.995.8949', 'student1272@example.com', '$2y$12$tOrshjeR3gRfnBcrNEhFlO85be76AfIB.IudIPPrH/7ibHrBSKIQC', '72827 Araceli Village Apt. 101\nKirlinfort, KY 67311-7445', 'Suite 067', 'Crawford Kerluke', 'Businessman', '505-457-2101', 'student1272@example.com', '1272', 'Ms. Vada Beahan V', 'Nurse', '720.784.5653', 'student1273@example.com', '1273', 'Calista White', '+1 (689) 250-6913', 'student1274@example.com', '1274', 'Uncle', 1, 28, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:33', '2025-12-12 04:59:33'),
(256, 'Ward', 'Quigley', '2010-07-04', 'Other', 'A-', 'Other', 'Bangladeshi', '1276', '+1 (718) 589-4809', 'student1277@example.com', '$2y$12$v8EGt52ZF7AyquEcIVMVLuY/nWsk42aMk2tqtnpBIxs1cLyO/cXXm', '104 Stokes Crescent\nRoweshire, RI 43904', 'Suite 577', 'Steve Hauck Sr.', 'Businessman', '(267) 837-6782', 'student1277@example.com', '1277', 'Dr. Sadie Gorczany MD', 'Businesswoman', '361-479-9492', 'student1278@example.com', '1278', 'Autumn Rath', '763.925.9329', 'student1279@example.com', '1279', 'Aunt', 1, 23, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:33', '2025-12-12 04:59:33'),
(257, 'Ward', 'DuBuque', '2003-04-21', 'Female', 'B+', 'Hindu', 'Bangladeshi', '1281', '+12344778547', 'student1282@example.com', '$2y$12$4J9opfloxmGVwLlkx4Jwde4kexYDfP1LnpAHc6oBAOthaW1bICpjK', '348 Schmidt Hollow\nNorth Richard, AK 10776', 'Apt. 509', 'Mr. Bruce Ritchie', 'Teacher', '+1-785-241-5571', 'student1282@example.com', '1282', 'Susie Beier', 'Doctor', '(817) 969-3133', 'student1283@example.com', '1283', 'Dr. Alejandra Williamson', '623-901-7009', 'student1284@example.com', '1284', 'Aunt', 1, 24, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:33', '2025-12-12 04:59:33'),
(258, 'Bret', 'Moore', '2016-06-15', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '1286', '+1 (878) 924-5053', 'student1287@example.com', '$2y$12$OClLtuQ0xd8K.ib3prg27ukWOZQZpmoOeLAa5IK1H1DtVkuGkFyTy', '451 Schmeler Locks\nSierraview, AZ 13148', 'Apt. 045', 'Dr. Harmon Dare', 'Businessman', '1-517-669-1000', 'student1287@example.com', '1287', 'Prof. Jada Prohaska', 'Housewife', '586-819-0773', 'student1288@example.com', '1288', 'Rubie Gleason', '570.781.1249', 'student1289@example.com', '1289', 'Brother', 1, 25, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:34', '2025-12-12 04:59:34'),
(259, 'Verda', 'Legros', '2021-11-12', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '1291', '1-781-727-7134', 'student1292@example.com', '$2y$12$57w4WuzefPvy9xsjM6ANjuONjnCpuNVb4/Iz52tXRhuzwBRP.uOLC', '637 Trudie Passage\nDemarcohaven, AL 38508-4084', 'Suite 894', 'Dr. Rodolfo Balistreri', 'Teacher', '(302) 435-5780', 'student1292@example.com', '1292', 'Dr. Dominique Bauch IV', 'Businesswoman', '971-389-5024', 'student1293@example.com', '1293', 'Enrico Howe II', '1-925-872-4383', 'student1294@example.com', '1294', 'Aunt', 1, 26, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:34', '2025-12-12 04:59:34'),
(260, 'Prince', 'Feeney', '1975-10-06', 'Other', 'O+', 'Christian', 'Bangladeshi', '1296', '1-412-770-7181', 'student1297@example.com', '$2y$12$d7YOawfAzqJ/lot3TJpuxudPmGld7CR7MxQvssBvadPbfediqdGkm', '81597 Trevor Plaza Apt. 559\nLake Rudy, IN 12961-8855', 'Suite 446', 'Tracey Bruen', 'Teacher', '1-517-419-7533', 'student1297@example.com', '1297', 'Aliyah Champlin', 'Nurse', '1-361-637-2799', 'student1298@example.com', '1298', 'Ms. Marilie Kshlerin I', '1-743-333-6137', 'student1299@example.com', '1299', 'Grandparent', 1, 30, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:34', '2025-12-12 05:01:52'),
(261, 'Syble', 'Gaylord', '2001-04-21', 'Male', 'A+', 'Christian', 'Bangladeshi', '1301', '346.723.1060', 'student1302@example.com', '$2y$12$YLzjCQv4ejj6dxKIbNnv/O58rzBfiavpFSpVW4P7F.kktab20iW7K', '30610 Bartell Plains Suite 304\nLake Luigi, WA 92742-1282', 'Apt. 620', 'Arely Hauck', 'Businessman', '+1.320.296.8024', 'student1302@example.com', '1302', 'Elisha Batz', 'Nurse', '629.780.4087', 'student1303@example.com', '1303', 'Blanche Oberbrunner', '640.802.8230', 'student1304@example.com', '1304', 'Grandparent', 1, 28, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:34', '2025-12-12 04:59:34'),
(262, 'Russ', 'Lesch', '1986-05-27', 'Female', 'O+', 'Christian', 'Bangladeshi', '1306', '1-469-553-4225', 'student1307@example.com', '$2y$12$V43Qfo8wjEk9TSOJAuA9guHfH1wuvx0RdnWK91wteQGyy.45Fuisq', '3551 Germaine Garden\nLake Paris, SD 02680-1077', 'Suite 932', 'Rahul Runolfsdottir', 'Businessman', '+1-385-593-6522', 'student1307@example.com', '1307', 'Thea Cruickshank', 'Businesswoman', '910.858.2680', 'student1308@example.com', '1308', 'Kimberly Heller', '+1.479.381.8492', 'student1309@example.com', '1309', 'Uncle', 1, 28, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:34', '2025-12-12 04:59:34'),
(263, 'Nicolette', 'Paucek', '1977-07-08', 'Female', 'B-', 'Christian', 'Bangladeshi', '1311', '1-414-959-8313', 'student1312@example.com', '$2y$12$Q4ceYfUDpyPONlmPOI.Jp.ajyxO72LtdhWeJvcMEOaG8ccNHMw2gq', '57370 Hane Pike\nNaderfort, OR 47027', 'Suite 694', 'Prof. Obie Marks', 'Doctor', '272.864.3323', 'student1312@example.com', '1312', 'Wendy Marquardt', 'Nurse', '469.549.1858', 'student1313@example.com', '1313', 'Dr. Wallace Legros', '1-662-769-9853', 'student1314@example.com', '1314', 'Grandparent', 1, 31, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:35', '2025-12-12 05:01:53'),
(264, 'Korey', 'Schimmel', '1997-09-25', 'Other', 'B+', 'Buddhist', 'Bangladeshi', '1316', '(346) 466-0413', 'student1317@example.com', '$2y$12$b7hna0BphXMELKfpj1rg1eMQLT.nPLpTceogEidpBQqi6/xJO7xtq', '4119 Scot Unions Suite 101\nWest Rogersstad, WV 85727-9577', 'Suite 432', 'Edward Feil', 'Teacher', '+1-605-653-6230', 'student1317@example.com', '1317', 'Lonie Harber', 'Housewife', '585-475-6539', 'student1318@example.com', '1318', 'Stephen Blanda', '480-474-2673', 'student1319@example.com', '1319', 'Grandparent', 1, 25, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:35', '2025-12-12 04:59:35'),
(265, 'Meaghan', 'Jenkins', '1998-06-20', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '1321', '215.813.5457', 'student1322@example.com', '$2y$12$CqlEwTyyb6vOPenIAhiu9Ok34PUef8whK3YwKWdMUdSJTKKYoA/sG', '37934 Autumn Wall Apt. 438\nFavianmouth, MT 32562', 'Suite 577', 'Prof. Hyman Kertzmann', 'Doctor', '+1-984-573-9281', 'student1322@example.com', '1322', 'Ms. Savannah Nader', 'Doctor', '+1.689.955.3087', 'student1323@example.com', '1323', 'Brown Muller', '+16296374811', 'student1324@example.com', '1324', 'Uncle', 1, 32, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:35', '2025-12-12 05:01:55'),
(266, 'Lisa', 'Haag', '2025-05-03', 'Other', 'O+', 'Other', 'Bangladeshi', '1326', '1-914-742-3676', 'student1327@example.com', '$2y$12$U5CWk.a6YW70S2dRygPBT.m/6XonoqerjBZQGhrktOWzqZ43aRYHu', '90553 Lind Gateway\nBrookfort, ME 73436', 'Apt. 622', 'Irving Mann', 'Teacher', '754.983.3421', 'student1327@example.com', '1327', 'Abbie Huel', 'Nurse', '(272) 358-9020', 'student1328@example.com', '1328', 'Nasir Strosin', '+1.580.677.9824', 'student1329@example.com', '1329', 'Uncle', 1, 29, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:35', '2025-12-12 04:59:35'),
(267, 'Maci', 'Heaney', '2016-03-01', 'Male', 'A+', 'Islam', 'Bangladeshi', '1331', '+1-539-254-5923', 'student1332@example.com', '$2y$12$FMm8nzfK.4l5aafoku6NOejlJKaIUnMDFrS9nhv.pWEBCN9bGslS6', '7748 Alejandrin Ford Apt. 534\nNew Antonio, AK 61348-7329', 'Apt. 593', 'Stevie Simonis PhD', 'Teacher', '806-627-6585', 'student1332@example.com', '1332', 'Prof. Bella Schulist', 'Doctor', '+1-432-329-9471', 'student1333@example.com', '1333', 'Vivien Langworth IV', '980-433-1446', 'student1334@example.com', '1334', 'Sister', 1, 27, 6, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:35', '2025-12-12 04:59:35'),
(268, 'Maiya', 'Towne', '1980-10-03', 'Male', 'AB+', 'Islam', 'Bangladeshi', '1336', '+1-234-616-8340', 'student1337@example.com', '$2y$12$lsk2zPsLvGSMEd4VrrDzdO4D0mdY/1f0erZX.6/wBsMDEWHnuypxG', '97919 Considine Mall\nPort Abdullah, KY 61205-2959', 'Suite 664', 'Derek McGlynn', 'Businessman', '507-374-4959', 'student1337@example.com', '1337', 'Miss Adeline Murazik V', 'Doctor', '478-914-9015', 'student1338@example.com', '1338', 'Eino Eichmann DVM', '1-213-348-4099', 'student1339@example.com', '1339', 'Uncle', 1, 29, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:36', '2025-12-12 04:59:36'),
(269, 'Jeffrey', 'Rowe', '1975-01-24', 'Male', 'A+', 'Christian', 'Bangladeshi', '1341', '+1-229-771-6928', 'student1342@example.com', '$2y$12$AKWTGP3M6DUFzph0hBRLEOdTP8WG4STZIpGeiLAz9sHFY5bEQeHxC', '2605 Brakus Islands Apt. 182\nNorth Kailey, GA 53737', 'Apt. 406', 'Isidro Torphy IV', 'Doctor', '+15419531441', 'student1342@example.com', '1342', 'Pascale Kulas', 'Doctor', '920-430-2228', 'student1343@example.com', '1343', 'Ms. Madelynn Bergnaum I', '+1 (601) 455-8160', 'student1344@example.com', '1344', 'Brother', 1, 31, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:36', '2025-12-12 04:59:36'),
(270, 'Lyla', 'Nienow', '1996-06-17', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '1346', '+1.281.229.0535', 'student1347@example.com', '$2y$12$bdZtbPyBDFTv7teBmmr1RuivTJ./WJgvg/NxIfhf9Ej3A8wsDmN2i', '698 Bradford Springs\nNorth Prudence, AZ 71806-4912', 'Suite 517', 'Florencio Sanford', 'Farmer', '+13478152328', 'student1347@example.com', '1347', 'Frances Keeling V', 'Doctor', '1-830-289-4819', 'student1348@example.com', '1348', 'Dr. Amanda Kozey PhD', '1-281-844-9964', 'student1349@example.com', '1349', 'Brother', 1, 33, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:36', '2025-12-12 05:01:56'),
(271, 'Jared', 'Barton', '2015-03-30', 'Other', 'AB-', 'Christian', 'Bangladeshi', '1351', '954-561-6187', 'student1352@example.com', '$2y$12$Q4sa/QQtktyDBFGBCjGXTOpGCJZn1JEY25eVB4tP.Vwn32IDG/2US', '33760 Fritsch Summit\nEast Mittiefurt, VA 72957-4686', 'Suite 243', 'Scotty Kutch', 'Engineer', '+13859695999', 'student1352@example.com', '1352', 'Augusta McKenzie', 'Nurse', '912-992-5652', 'student1353@example.com', '1353', 'Anastacio Hayes III', '+1-507-577-9730', 'student1354@example.com', '1354', 'Aunt', 1, 30, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:36', '2025-12-12 04:59:36'),
(272, 'Lorna', 'Bergstrom', '2006-02-24', 'Other', 'AB+', 'Other', 'Bangladeshi', '1356', '+1.315.320.9510', 'student1357@example.com', '$2y$12$RR5gXtJPwkRfygESTwPexea/9DvEbjMVCUc4/leYB4U9FjrGRnmde', '34395 Huels Dale Suite 593\nNorth Francesbury, CT 41380', 'Apt. 630', 'Eladio Franecki II', 'Businessman', '+19383320948', 'student1357@example.com', '1357', 'Brenna Koch', 'Businesswoman', '+1.754.528.9199', 'student1358@example.com', '1358', 'Milan Stiedemann V', '+1-585-406-3530', 'student1359@example.com', '1359', 'Aunt', 1, 31, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:36', '2025-12-12 04:59:36'),
(273, 'Deondre', 'Bernier', '1974-05-17', 'Other', 'B+', 'Islam', 'Bangladeshi', '1361', '+1.563.665.9989', 'student1362@example.com', '$2y$12$mrPT20nF8qDkSst..Jo3Les83FZoZmfPgrRbiPlejHMtkobQA6.BW', '873 Wendy Ferry\nHowechester, AL 01746-9593', 'Suite 710', 'Blaze Haley', 'Doctor', '1-540-497-0554', 'student1362@example.com', '1362', 'Brittany Bruen PhD', 'Teacher', '574.955.4075', 'student1363@example.com', '1363', 'Jacky Steuber', '+1-210-749-1123', 'student1364@example.com', '1364', 'Aunt', 1, 26, 10, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:36', '2025-12-12 04:59:36'),
(274, 'Amara', 'Rath', '1976-09-22', 'Male', 'AB-', 'Other', 'Bangladeshi', '1366', '254.330.3633', 'student1367@example.com', '$2y$12$rRo0Z379syqDIWGp/7aOsuo2qnEHh867xtmrDfdRk4CTXQfeBVNzu', '92300 Homenick Course Apt. 690\nNorth Kobyton, WV 62458', 'Suite 714', 'Nathan Kozey DDS', 'Doctor', '(928) 914-4032', 'student1367@example.com', '1367', 'Marian Kiehn', 'Nurse', '+1.972.233.7293', 'student1368@example.com', '1368', 'Albert Kulas', '1-719-698-8289', 'student1369@example.com', '1369', 'Sister', 1, 32, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:37', '2025-12-12 04:59:37'),
(275, 'Conrad', 'Ruecker', '2020-03-13', 'Male', 'A+', 'Christian', 'Bangladeshi', '1371', '1-475-257-1443', 'student1372@example.com', '$2y$12$j51gWaxHetnSIzqSwIL6zepHrutttifnhR99c1kfFdjteotuijqbS', '9693 Emory Path Apt. 447\nPort Effieland, IA 31121-6777', 'Apt. 088', 'Scot Wilkinson', 'Engineer', '(231) 388-8110', 'student1372@example.com', '1372', 'Cordie Kuphal', 'Nurse', '+1-347-642-8283', 'student1373@example.com', '1373', 'Kenneth Wisoky PhD', '+1.857.333.2390', 'student1374@example.com', '1374', 'Aunt', 1, 30, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:37', '2025-12-12 04:59:37'),
(276, 'Alexandre', 'Grimes', '1980-04-13', 'Male', 'A+', 'Hindu', 'Bangladeshi', '1376', '(707) 502-9037', 'student1377@example.com', '$2y$12$pAidTCu4EZ8UM8XCqv6hP.hWS6sw6QiAt4MZZZ3FkE5tPQPjOX1Me', '11082 Pagac Loop\nWuckertmouth, AK 48700', 'Suite 297', 'Vaughn Labadie', 'Businessman', '361-920-5393', 'student1377@example.com', '1377', 'Mrs. Jessica Nolan DDS', 'Businesswoman', '860.986.4364', 'student1378@example.com', '1378', 'Miss Virginie Torphy', '716.844.7842', 'student1379@example.com', '1379', 'Aunt', 1, 20, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:37', '2025-12-12 04:59:37'),
(277, 'Elisabeth', 'Brakus', '2013-06-27', 'Male', 'A+', 'Islam', 'Bangladeshi', '1381', '(737) 545-7175', 'student1382@example.com', '$2y$12$k81j4enhxVuC82JP6O8kyeSKZqZ2Apj8LZk5IO1tXg87OpiJOHm7a', '804 Rodger Parkways Apt. 500\nAudieside, NH 65998-6204', 'Apt. 728', 'Cary Lemke', 'Teacher', '1-570-267-7142', 'student1382@example.com', '1382', 'Aleen Balistreri', 'Doctor', '1-843-281-0039', 'student1383@example.com', '1383', 'Ola Kunde', '+16197028867', 'student1384@example.com', '1384', 'Uncle', 1, 33, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:37', '2025-12-12 04:59:37'),
(278, 'Amya', 'Hagenes', '1992-10-19', 'Male', 'B-', 'Other', 'Bangladeshi', '1386', '870-935-3625', 'student1387@example.com', '$2y$12$/lPhyyuiO8WXrwC3nwVANuhgemF2WYUKaFbWEtOAr2sUymYEpsk1S', '944 Bethel Loaf Suite 094\nNew Jonathan, GA 43503', 'Suite 358', 'Sammie Fay', 'Teacher', '1-863-515-2145', 'student1387@example.com', '1387', 'Else Hyatt IV', 'Housewife', '(424) 763-9989', 'student1388@example.com', '1388', 'Abby Kihn', '(248) 259-5004', 'student1389@example.com', '1389', 'Sister', 1, 32, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:37', '2025-12-12 04:59:37'),
(279, 'Fay', 'Shields', '2016-10-07', 'Male', 'B+', 'Other', 'Bangladeshi', '1391', '332-878-0997', 'student1392@example.com', '$2y$12$M3Mbai5dCQC2XojuPORC3.2HA2AXIUuAzqEcl0zTOOJ2MDUOjiAj2', '513 Katarina Lock Apt. 907\nJettiemouth, MS 37548-5063', 'Apt. 315', 'Mr. Leonel Mann DVM', 'Engineer', '(726) 846-0910', 'student1392@example.com', '1392', 'Miss Cortney Gleason Jr.', 'Nurse', '341-513-5450', 'student1393@example.com', '1393', 'Annette Mertz', '(660) 616-5002', 'student1394@example.com', '1394', 'Grandparent', 1, 27, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:38', '2025-12-12 04:59:38'),
(280, 'Royce', 'Watsica', '2005-09-02', 'Other', 'B+', 'Hindu', 'Bangladeshi', '1396', '(786) 818-5771', 'student1397@example.com', '$2y$12$bOr7B/SUWM15Rb5EGy4S8Oc7kqFPaOItqnDmxSO15ZR4Sts7C4jJ2', '830 Bauch Streets\nWest Enola, TX 18955', 'Suite 525', 'Gussie Little', 'Farmer', '628.966.1321', 'student1397@example.com', '1397', 'Ena Hodkiewicz', 'Teacher', '+1 (364) 834-2454', 'student1398@example.com', '1398', 'Jalyn Hamill', '(681) 720-4287', 'student1399@example.com', '1399', 'Uncle', 1, 28, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:38', '2025-12-12 04:59:38'),
(281, 'Jacynthe', 'Spinka', '1977-06-24', 'Male', 'A+', 'Hindu', 'Bangladeshi', '1401', '+14848960464', 'student1402@example.com', '$2y$12$99u.jSC.alhU5/xRB85VS.ixUoY3wnLm8p7DgBP6RbzqCqOQwF1Ju', '41323 Simonis Unions\nNitzscheside, SD 92165', 'Apt. 194', 'Gabe Bahringer', 'Engineer', '+1.878.945.5299', 'student1402@example.com', '1402', 'Miss Sharon Gulgowski DDS', 'Teacher', '424.204.0282', 'student1403@example.com', '1403', 'Giovani Moen', '+1.612.687.9757', 'student1404@example.com', '1404', 'Brother', 1, 21, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:38', '2025-12-12 04:59:38'),
(282, 'Teresa', 'Vandervort', '2000-01-29', 'Male', 'A+', 'Hindu', 'Bangladeshi', '1406', '702.898.3612', 'student1407@example.com', '$2y$12$w8/t5S0rpd05ohT3XedMkul9hOP0wv/A67IYJddaPRDLUkogyqAAy', '90676 Kohler Ports\nNorth Frances, UT 01127', 'Suite 831', 'Isaiah Dibbert', 'Doctor', '(347) 236-3867', 'student1407@example.com', '1407', 'Cayla Lowe III', 'Businesswoman', '+1-364-969-3615', 'student1408@example.com', '1408', 'Antwan Blanda', '1-615-892-7951', 'student1409@example.com', '1409', 'Brother', 1, 34, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:38', '2025-12-12 04:59:38'),
(283, 'Janae', 'Hagenes', '2024-02-08', 'Male', 'O+', 'Islam', 'Bangladeshi', '1411', '+1 (210) 755-4845', 'student1412@example.com', '$2y$12$/ewsTaN.PUyHeh9otIvYsOzTDFYwIx3nVsNkFC2tCBQPuSknWG66S', '9877 Kutch Square\nMosheborough, MN 48545', 'Suite 210', 'Mr. Gonzalo Rohan', 'Doctor', '731.259.1854', 'student1412@example.com', '1412', 'Brigitte Thiel', 'Doctor', '(435) 701-7343', 'student1413@example.com', '1413', 'Bettye Durgan Jr.', '910.743.3728', 'student1414@example.com', '1414', 'Aunt', 1, 35, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:38', '2025-12-12 04:59:38'),
(284, 'Cameron', 'Gottlieb', '2018-10-14', 'Female', 'O+', 'Buddhist', 'Bangladeshi', '1416', '+1 (254) 637-7080', 'student1417@example.com', '$2y$12$QWJTZxaEuab3YkLfu/2Igeyh5VkGUcbVTKd4LYbhTmv91DWhzxI2a', '555 Altenwerth Locks Apt. 443\nNorth Courtneyton, KS 26534-6799', 'Suite 772', 'Eldon Nader', 'Businessman', '443-485-8099', 'student1417@example.com', '1417', 'Miss Mayra Green DDS', 'Nurse', '603-677-6628', 'student1418@example.com', '1418', 'Brennan Bergnaum', '1-820-232-7692', 'student1419@example.com', '1419', 'Brother', 1, 24, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:38', '2025-12-12 04:59:38'),
(285, 'Willard', 'Hane', '2020-12-31', 'Male', 'A-', 'Islam', 'Bangladeshi', '1421', '425.469.0685', 'student1422@example.com', '$2y$12$idBDCaCQJrJcdX6KB2oCPe9iXOhXyAsvMimki3mPS7cqIt.ODPSW6', '5499 Trantow Island\nCristianberg, KS 36026-6868', 'Suite 451', 'Dagmar Hirthe', 'Engineer', '1-781-482-4800', 'student1422@example.com', '1422', 'Pearl Gislason', 'Nurse', '1-928-851-9609', 'student1423@example.com', '1423', 'Mr. Bartholome Hilpert DVM', '954-998-9033', 'student1424@example.com', '1424', 'Brother', 1, 31, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:39', '2025-12-12 04:59:39'),
(286, 'Katarina', 'Batz', '2019-02-12', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '1426', '1-740-824-5025', 'student1427@example.com', '$2y$12$rKW6BnY/qEqlDEF/kZbrYOEe2BK4EzDkgJ52U6qx8dVmC7i.KwVp.', '73504 Nienow Vista Apt. 881\nNew Martin, ID 75518-9640', 'Suite 173', 'Jeramy Heaney', 'Farmer', '908.812.1959', 'student1427@example.com', '1427', 'Prof. Kaci Sanford', 'Teacher', '903-985-8357', 'student1428@example.com', '1428', 'Mervin Champlin III', '(870) 852-3643', 'student1429@example.com', '1429', 'Uncle', 1, 33, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:39', '2025-12-12 04:59:39'),
(287, 'Kristin', 'Cassin', '1977-10-04', 'Male', 'AB+', 'Islam', 'Bangladeshi', '1431', '+1-805-293-6406', 'student1432@example.com', '$2y$12$DKECYHeM3esWxoYz5PUDU.jWCkba1EL3P6Y982YYhoAhxxRTrXAqK', '1236 Davin Lodge Apt. 725\nSouth Chad, ID 82785', 'Apt. 636', 'Samson Kutch', 'Engineer', '(646) 739-9804', 'student1432@example.com', '1432', 'Dr. Giovanna Reilly I', 'Businesswoman', '385.591.4089', 'student1433@example.com', '1433', 'Gaston Nitzsche', '(847) 692-4642', 'student1434@example.com', '1434', 'Brother', 1, 22, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:39', '2025-12-12 04:59:39'),
(288, 'Dortha', 'DuBuque', '2003-04-09', 'Other', 'A-', 'Christian', 'Bangladeshi', '1436', '223.318.0782', 'student1437@example.com', '$2y$12$73AnTFyaW9XQQR9zL6h7/OovRPr1ZLGp8fgDBV6Wxrm7fsHEf/QMS', '18366 Terry Lodge\nSouth Kyle, NJ 94382-2844', 'Suite 349', 'Adrian Feest II', 'Doctor', '+1.915.958.5896', 'student1437@example.com', '1437', 'Dr. Vernice Kuvalis', 'Housewife', '+1.331.477.3126', 'student1438@example.com', '1438', 'Tyson Boyle', '681.868.0728', 'student1439@example.com', '1439', 'Aunt', 1, 29, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:39', '2025-12-12 04:59:39'),
(289, 'Daron', 'Rolfson', '2004-03-05', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '1441', '+1 (201) 838-6378', 'student1442@example.com', '$2y$12$STISXj2HFYGY5xovtF.UNuwTwpZkvesdOAfxogC0FHWw5OUad.SCK', '2444 Skiles Fort\nLake Ruth, TX 05860-5636', 'Apt. 381', 'Odell Littel DVM', 'Doctor', '562-505-5758', 'student1442@example.com', '1442', 'Kathleen Wehner', 'Nurse', '+1-580-247-0754', 'student1443@example.com', '1443', 'Alexanne Hayes', '539-878-3135', 'student1444@example.com', '1444', 'Grandparent', 1, 25, 5, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:39', '2025-12-12 04:59:39'),
(290, 'Eda', 'Kuhic', '1995-01-23', 'Male', 'AB-', 'Islam', 'Bangladeshi', '1446', '586.862.2766', 'student1447@example.com', '$2y$12$OO.jGIVVDmlYYQMNKRwBa.hYDacIENNypvgM04pnmdTwgDEIsB/rS', '8276 Senger River Apt. 486\nHicklebury, OR 79173', 'Suite 302', 'Prof. Jerald Stracke II', 'Businessman', '+1.541.945.1750', 'student1447@example.com', '1447', 'Emmanuelle Becker', 'Housewife', '757-928-0677', 'student1448@example.com', '1448', 'Ms. Cassandra Pfannerstill', '+1.432.258.8483', 'student1449@example.com', '1449', 'Uncle', 1, 23, 4, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:40', '2025-12-12 04:59:40'),
(291, 'Bianka', 'Hamill', '2016-01-13', 'Other', 'B-', 'Other', 'Bangladeshi', '1451', '+1 (272) 367-8644', 'student1452@example.com', '$2y$12$w0RziywF9ScC75q7Q5U8BuJaqhp7JSEvdUgacX1OQGukppM8TjSwu', '57626 Amina Roads\nCaitlyntown, AZ 92094', 'Suite 084', 'Lavern Hoeger', 'Doctor', '+1-607-559-8661', 'student1452@example.com', '1452', 'Yessenia Cole II', 'Teacher', '(541) 953-8454', 'student1453@example.com', '1453', 'Hulda Koelpin', '484-237-0591', 'student1454@example.com', '1454', 'Aunt', 1, 36, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:40', '2025-12-12 04:59:40'),
(292, 'Amos', 'Okuneva', '2021-09-24', 'Other', 'AB+', 'Islam', 'Bangladeshi', '1456', '847-202-7838', 'student1457@example.com', '$2y$12$N/lHlnqCKbz0BlP9lTU3yOyVUwFIWRYGTmdvy6kpdzfs7XIJ8JKFG', '8023 Purdy Circles\nBodeburgh, LA 78552-1740', 'Apt. 894', 'Imani Kautzer', 'Doctor', '1-650-394-2980', 'student1457@example.com', '1457', 'Kattie Parker', 'Nurse', '+1-385-226-6285', 'student1458@example.com', '1458', 'Christelle Zulauf', '+17193295422', 'student1459@example.com', '1459', 'Brother', 1, 37, 2, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:40', '2025-12-12 04:59:40'),
(293, 'Christa', 'Stehr', '1986-04-28', 'Male', 'B-', 'Christian', 'Bangladeshi', '1461', '1-276-377-4491', 'student1462@example.com', '$2y$12$DCqhhjYTR6.K3PvCMZE4iuEPMAoIS2qMPwl4T6rqzTVfeFlE9RHZe', '61339 Leffler Throughway Suite 671\nTyresefort, MI 74599-6130', 'Apt. 691', 'Milan Huels', 'Doctor', '+17577465236', 'student1462@example.com', '1462', 'Daphney Stroman', 'Businesswoman', '+1-281-249-5430', 'student1463@example.com', '1463', 'Nathan Jakubowski', '732-284-8784', 'student1464@example.com', '1464', 'Aunt', 1, 29, 8, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:40', '2025-12-12 04:59:40'),
(294, 'Marina', 'Pacocha', '1973-02-04', 'Male', 'AB-', 'Buddhist', 'Bangladeshi', '1466', '+1-458-409-0908', 'student1467@example.com', '$2y$12$70eBS0rUCMC2HfIzjHRFjelgaDQAPJe7Tl1U9EeSd20nbTaaI83ES', '948 Terry River\nPort Marianna, RI 41913', 'Suite 784', 'Mr. Otto Champlin Jr.', 'Engineer', '+1-313-576-2382', 'student1467@example.com', '1467', 'Mrs. Cassidy Boyer', 'Doctor', '913.868.1070', 'student1468@example.com', '1468', 'Jimmie Bechtelar', '+1-352-716-3895', 'student1469@example.com', '1469', 'Aunt', 1, 34, 1, '2025-12-13', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:40', '2025-12-12 05:01:57'),
(295, 'Avery', 'Stark', '2000-11-16', 'Male', 'B-', 'Other', 'Bangladeshi', '1471', '+1-351-282-3774', 'student1472@example.com', '$2y$12$/xjHzSjOjlMbjIfFYL72O.76wupXgsgOtxcGAR8fteu4ijCDThl1W', '8465 Andrew Lakes Suite 449\nSouth Rosemarymouth, VA 58144-0869', 'Apt. 028', 'Pierre Cassin', 'Businessman', '+1-423-773-1556', 'student1472@example.com', '1472', 'Mandy Tremblay DVM', 'Housewife', '1-276-656-0082', 'student1473@example.com', '1473', 'Dr. Jammie D\'Amore', '(856) 233-0117', 'student1474@example.com', '1474', 'Grandparent', 1, 32, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:41', '2025-12-12 04:59:41'),
(296, 'Solon', 'McDermott', '1970-07-02', 'Other', 'AB+', 'Christian', 'Bangladeshi', '1476', '+1 (323) 988-3091', 'student1477@example.com', '$2y$12$uTwdt1JezgC7r/SmRflcJemhZexhBvo9biUBD0gWKLAnDhrIDqv0e', '89789 Aufderhar Field\nWest Tommie, MT 72466-2435', 'Apt. 887', 'Cristopher Hermann', 'Engineer', '1-954-454-4584', 'student1477@example.com', '1477', 'Miss Eden Cormier', 'Nurse', '+1-626-718-0898', 'student1478@example.com', '1478', 'Price Fisher', '(727) 659-1427', 'student1479@example.com', '1479', 'Brother', 1, 33, 3, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:41', '2025-12-12 04:59:41'),
(297, 'Saul', 'Mosciski', '2013-11-19', 'Female', 'A+', 'Christian', 'Bangladeshi', '1481', '(630) 567-4693', 'student1482@example.com', '$2y$12$9AR/SxiieTNC1WvixX5wpeVsnb69ZwUVZNxdpS2VIAyAB55Y6xXfC', '730 Baumbach Mission\nHamillborough, WV 67883', 'Apt. 311', 'Aiden Schaefer', 'Businessman', '325.857.9312', 'student1482@example.com', '1482', 'Baby Heidenreich III', 'Businesswoman', '419.894.0322', 'student1483@example.com', '1483', 'Alvera Ritchie', '727.867.8909', 'student1484@example.com', '1484', 'Brother', 1, 30, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:41', '2025-12-12 04:59:41'),
(298, 'Alexis', 'Hintz', '2013-09-03', 'Other', 'A-', 'Other', 'Bangladeshi', '1486', '+1-309-855-1663', 'student1487@example.com', '$2y$12$pg2.vW7Eh3fps1CGh0MYlORqNmtx6D.6f4YQxnZYoe88xb9LeTYee', '275 Yasmine Orchard\nHyattfurt, OR 98300-4038', 'Suite 561', 'Tony Okuneva', 'Doctor', '+1-321-745-2201', 'student1487@example.com', '1487', 'Alvena Considine I', 'Doctor', '+1-657-912-0819', 'student1488@example.com', '1488', 'Katelin Padberg', '+1.715.246.2181', 'student1489@example.com', '1489', 'Grandparent', 1, 31, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:41', '2025-12-12 04:59:41'),
(299, 'Odie', 'Tillman', '1987-04-10', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '1491', '510-843-0290', 'student1492@example.com', '$2y$12$vdLb9JMO6aUdJE3Z2IaVueTd.s4mgnvpfckj0k8UgA0Vwjk/oMSlC', '32873 Metz Key\nJudsonside, WI 27560', 'Suite 152', 'Dangelo Gaylord', 'Businessman', '1-585-212-7705', 'student1492@example.com', '1492', 'Madelynn Schaefer', 'Doctor', '+1.541.447.1098', 'student1493@example.com', '1493', 'Jocelyn Murphy', '(332) 507-1396', 'student1494@example.com', '1494', 'Sister', 1, 34, 7, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:41', '2025-12-12 04:59:41'),
(300, 'Tate', 'Schimmel', '1990-10-14', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '1496', '617.436.9009', 'student1497@example.com', '$2y$12$TdNp0b/K8u30GSEWEoWfxOQ6S0B.O/iNhHa.iLqtVHTYQdJAPl.Kq', '27643 Lysanne Lake Suite 790\nLake Camron, KS 40802', 'Suite 463', 'Dr. Webster Schumm', 'Teacher', '(605) 640-9305', 'student1497@example.com', '1497', 'Fleta Tillman', 'Teacher', '(283) 358-9776', 'student1498@example.com', '1498', 'Ms. Magnolia Sipes MD', '(405) 860-8278', 'student1499@example.com', '1499', 'Uncle', 1, 32, 9, '2025-12-12', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-12 04:59:41', '2025-12-12 04:59:41');

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

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(2, 3, 1, '2025-12-12 05:05:26', '2025-12-12 05:05:26'),
(3, 3, 3, '2025-12-12 05:05:26', '2025-12-12 05:05:26'),
(4, 3, 5, '2025-12-12 05:05:27', '2025-12-12 05:05:27'),
(5, 3, 2, '2025-12-12 05:05:29', '2025-12-12 05:05:29'),
(6, 3, 4, '2025-12-12 05:05:30', '2025-12-12 05:05:30'),
(7, 26, 1, '2025-12-12 05:05:38', '2025-12-12 05:05:38'),
(8, 26, 3, '2025-12-12 05:05:39', '2025-12-12 05:05:39'),
(9, 26, 5, '2025-12-12 05:05:40', '2025-12-12 05:05:40'),
(10, 26, 4, '2025-12-12 05:05:41', '2025-12-12 05:05:41'),
(11, 26, 2, '2025-12-12 05:05:42', '2025-12-12 05:05:42'),
(12, 30, 1, '2025-12-12 05:05:46', '2025-12-12 05:05:46'),
(13, 30, 3, '2025-12-12 05:05:47', '2025-12-12 05:05:47'),
(14, 30, 5, '2025-12-12 05:05:48', '2025-12-12 05:05:48'),
(15, 30, 2, '2025-12-12 05:05:49', '2025-12-12 05:05:49'),
(16, 30, 4, '2025-12-12 05:05:50', '2025-12-12 05:05:50'),
(17, 34, 1, '2025-12-12 05:05:53', '2025-12-12 05:05:53'),
(18, 34, 3, '2025-12-12 05:05:55', '2025-12-12 05:05:55'),
(19, 34, 5, '2025-12-12 05:05:56', '2025-12-12 05:05:56'),
(20, 34, 2, '2025-12-12 05:05:57', '2025-12-12 05:05:57'),
(21, 34, 4, '2025-12-12 05:05:58', '2025-12-12 05:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 1, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(2, 'English', 1, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(3, 'Mathematics', 1, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(4, 'General Knowledge', 1, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(5, 'Religion', 1, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(6, 'Bangla', 2, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(7, 'English', 2, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(8, 'Mathematics', 2, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(9, 'General Knowledge', 2, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(10, 'Religion', 2, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(11, 'Bangla', 3, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(12, 'English', 3, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(13, 'Mathematics', 3, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(14, 'Elementary Science', 3, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(15, 'General Knowledge', 3, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(16, 'Religion', 3, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(17, 'Bangla', 4, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(18, 'English', 4, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(19, 'Mathematics', 4, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(20, 'Elementary Science', 4, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(21, 'General Knowledge', 4, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(22, 'Religion', 4, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(23, 'Bangla', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(24, 'English', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(25, 'Mathematics', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(26, 'Bangladesh and Global Studies', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(27, 'Science', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(28, 'Religion', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(29, 'Arts and Crafts', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(30, 'Physical Education', 5, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(31, 'Bangla', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(32, 'English', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(33, 'Mathematics', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(34, 'Science', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(35, 'Bangladesh and Global Studies', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(36, 'Religion', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(37, 'Arts and Crafts', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(38, 'Physical Education', 6, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(39, 'Bangla', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(40, 'English', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(41, 'Mathematics', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(42, 'Science', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(43, 'Bangladesh and Global Studies', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(44, 'Religion', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(45, 'Arts and Crafts', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(46, 'Physical Education', 7, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(47, 'Bangla', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(48, 'English', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(49, 'Mathematics', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(50, 'Science', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(51, 'Bangladesh and Global Studies', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(52, 'Religion', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(53, 'Arts and Crafts', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(54, 'Physical Education', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(55, 'ICT', 8, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(56, 'Bangla', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(57, 'English', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(58, 'Mathematics', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(59, 'Bangladesh and Global Studies', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(60, 'Religion', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(61, 'ICT', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(62, 'Physical Education', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(63, 'Physics', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(64, 'Chemistry', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(65, 'Biology', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(66, 'Higher Mathematics', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(67, 'Accounting', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(68, 'Business Entrepreneurship', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(69, 'Finance & Banking', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(70, 'History of Bangladesh & World Civilization', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(71, 'Civics & Citizenship', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(72, 'Geography & Environment', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(73, 'Economics', 9, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(74, 'Bangla', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(75, 'English', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(76, 'Mathematics', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(77, 'Bangladesh and Global Studies', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(78, 'Religion', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(79, 'ICT', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(80, 'Physical Education', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(81, 'Physics', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(82, 'Chemistry', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(83, 'Biology', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(84, 'Higher Mathematics', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(85, 'Accounting', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(86, 'Business Entrepreneurship', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(87, 'Finance & Banking', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(88, 'History of Bangladesh & World Civilization', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(89, 'Civics & Citizenship', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(90, 'Geography & Environment', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42'),
(91, 'Economics', 10, '2025-12-12 04:59:42', '2025-12-12 04:59:42');

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
  `status` int(11) NOT NULL DEFAULT 1,
  `remark` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `national_id`, `contact_number`, `email`, `password`, `designation`, `address`, `father_name`, `father_contact`, `mother_name`, `mother_contact`, `guardian_name`, `guardian_contact`, `guardian_relationship`, `photo`, `father_photo`, `mother_photo`, `status`, `remark`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jovani', 'Stamm', '1981-02-16', 'Other', 'A-', '0', '(678) 763-2576', 'teacher1@example.com', '$2y$12$.DSnIbu0uAEp2K6Nr04Z/.jMdUY4vZepBJXMe5JEL5ZyA/xuvZ.TC', 'Assistant Professor', '960 Dillan Mountains\nKayceeside, ID 91154', 'Kelley Hills', '(949) 963-5034', 'Kaci Bogan', '(878) 866-0562', 'Raina Klocko', '1-531-995-5695', 'Grandparent', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:41', '2025-12-12 04:58:41'),
(2, 'Mittie', 'Hermiston', '1975-02-28', 'Male', 'AB+', '2', '+1-678-334-2244', 'teacher2@example.com', '$2y$12$8jiqoeQn52kawoeQqi/FUO7PkjyqK7/F0XR3gTxamze6fbJwcJwGW', 'Head of Department', '61822 Guillermo Spring\nPort Tyrell, NC 37144-9503', 'Prof. Leon Huel DDS', '848.305.9642', 'Jacquelyn Denesik PhD', '(469) 930-6433', 'Dr. Jalen Runte', '1-254-479-7969', 'Sister', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:42', '2025-12-12 04:58:42'),
(3, 'Camille', 'Kirlin', '1976-10-18', 'Female', 'A-', '4', '239.227.5962', 'teacher3@example.com', '$2y$12$11Yt/.uhD/aO3pC8PNI4jO5ln1IGm.9FCRLc3JYjLufM9xXasRiK2', 'Head of Department', '235 Lorna Park\nJaylinshire, MT 20527', 'Mohammed Cruickshank', '+1 (321) 226-9568', 'Dejah Kessler', '(570) 697-2384', 'Prof. Kraig Kiehn PhD', '346.994.9106', 'Grandparent', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:42', '2025-12-12 04:58:42'),
(4, 'Johathan', 'Mraz', '1985-12-20', 'Female', 'B-', '6', '+1 (346) 238-2660', 'teacher4@example.com', '$2y$12$TRXelps5WEvfj6FCmh6e8eWmqchwZrfCDonIJVHI0QeDz7s7DJloa', 'Head of Department', '4074 Ebert Falls Suite 762\nSouth Trevorchester, UT 95299', 'Tatum Hagenes', '256.205.3142', 'Margarita Greenholt II', '(213) 436-8088', 'Cielo Runolfsdottir', '(757) 650-5361', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:42', '2025-12-12 04:58:42'),
(5, 'Adell', 'Wuckert', '1979-01-21', 'Female', 'B-', '8', '+1 (629) 314-1680', 'teacher5@example.com', '$2y$12$6O0MnBH/3T438Nx1Y7MPIOgZPdw/0ZC5AiKw.hNWZUbcCsmR/WUNW', 'Head of Department', '52291 Barbara Rapids Apt. 667\nRautown, ND 40801', 'Tatum Howell MD', '+1-860-857-4102', 'Adrianna Schumm', '+15343732346', 'Prof. Queen Boyle DDS', '916-233-8341', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:42', '2025-12-12 04:58:42'),
(6, 'Adela', 'Mayer', '1970-07-16', 'Female', 'B+', '10', '682-871-5831', 'teacher6@example.com', '$2y$12$xFEM0Q5g/1J8v93Xj.HcZu764Y.9DYWO43rWxepMsOYh8bSPDN9Zm', 'Head of Department', '28375 Gia Estates Suite 009\nStanshire, ME 11632-3728', 'Adelbert Murazik', '302-482-3109', 'Prof. Guadalupe Gottlieb DVM', '1-657-368-0309', 'Mr. Abel Ratke', '503.320.0351', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:42', '2025-12-12 04:58:42'),
(7, 'Elwyn', 'Rosenbaum', '1984-05-30', 'Female', 'A-', '12', '+1-352-981-7351', 'teacher7@example.com', '$2y$12$EbLUl3XjVoOUAgOrXSoouu93ByVT/GiqcCkX1.5Dt2bhiy13GpugW', 'Senior Teacher', '1477 Marina Loaf Apt. 863\nAimeechester, AL 77227', 'Okey Kunde MD', '+1.463.581.9487', 'Euna Mitchell', '1-458-577-0624', 'Maxine Rice III', '(858) 239-6594', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:43', '2025-12-12 04:58:43'),
(8, 'Elna', 'Welch', '1979-11-11', 'Other', 'A+', '14', '925-503-8234', 'teacher8@example.com', '$2y$12$vpvjUruUU2yMxWCp5av/cOuULdmiLwUHXTGVXD.4yjJGMBnj8PBDG', 'Lecturer', '60916 Friesen Junctions Apt. 975\nSchmittchester, OR 14800', 'Elian Dach', '1-757-360-5914', 'Amalia Kirlin II', '(469) 475-8002', 'Dudley Greenfelder Jr.', '1-423-619-5729', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:43', '2025-12-12 04:58:43'),
(9, 'Reed', 'Cormier', '1983-01-21', 'Male', 'O-', '16', '+18563342441', 'teacher9@example.com', '$2y$12$/QKn9DHP6Bgr4ztL7nOogO9om9DQqXjA0Hn7tnciZwh6tT5.e75WG', 'Lecturer', '2965 Feest Island\nEast Kevon, KS 22968-1416', 'Tyrese Mitchell I', '954-478-8646', 'Pattie Turner', '1-308-914-4173', 'Sammie Lockman V', '503-360-9867', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:43', '2025-12-12 04:58:43'),
(10, 'Kylee', 'Cormier', '1987-09-09', 'Other', 'A-', '18', '(520) 348-4486', 'teacher10@example.com', '$2y$12$Kd96b9W8NkeqdXZeyILcwOxLEnBfV9r2zJhqwFisDD.EFkfKATAUa', 'Lecturer', '201 Corine Spurs Apt. 288\nErnserberg, ME 88797', 'Dr. Ramon Zboncak Jr.', '+1 (423) 706-8543', 'Lexi Ankunding IV', '1-740-597-6202', 'Mrs. Sophia Mante', '283.332.3327', 'Grandparent', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:43', '2025-12-12 04:58:43'),
(11, 'Sidney', 'Jaskolski', '1982-02-20', 'Male', 'A+', '20', '726.609.5724', 'teacher11@example.com', '$2y$12$t2O2cw1IpP5ykVdZY3q2gOh9ctzSYO.PfCznANI2jOPDhNhwsI8tq', 'Head of Department', '820 Champlin Fork\nBinsberg, CT 74700-5184', 'Kayden Eichmann', '305-860-0088', 'Prof. Kattie Becker', '(304) 642-4975', 'Krista Pacocha', '1-864-451-3775', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:43', '2025-12-12 04:58:43'),
(12, 'Nels', 'Lakin', '1982-05-08', 'Male', 'A+', '22', '239-383-7706', 'teacher12@example.com', '$2y$12$GJilkLEiItE/mfhS03v05OWvyNrdbrILT1bu2jSkhasx8G0AyZyOu', 'Head of Department', '5344 Kertzmann Ferry Suite 165\nRaphaelfurt, CO 45652', 'Einar Doyle', '+1-910-479-8399', 'Dejah Hauck', '+12799504000', 'Howard White', '1-845-501-1988', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:44', '2025-12-12 04:58:44'),
(13, 'Alvah', 'Kiehn', '1986-06-27', 'Female', 'A+', '24', '(445) 368-8300', 'teacher13@example.com', '$2y$12$yd8gFFx2uJZdp8n2IiBGiOHMzQVosEYO49cDjPm1b.S4815O96tKi', 'Head of Department', '862 Rau Springs\nKossburgh, IL 49392-3680', 'Brown DuBuque', '484.336.5588', 'Miss Elinor Borer I', '1-385-847-1125', 'Prof. Hal Turcotte PhD', '(574) 921-7555', 'Grandparent', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:44', '2025-12-12 04:58:44'),
(14, 'Hazle', 'Brakus', '1982-09-15', 'Male', 'O+', '26', '1-830-915-9847', 'teacher14@example.com', '$2y$12$.1myIuFeKJuWfW/GCMeOF.OGuN2Q1rfdrH4fgAxGGCXHVb2nmv9ma', 'Lecturer', '748 Senger Mountain\nNew Melodyhaven, ID 73873', 'Dr. Monroe Fadel', '1-651-831-1002', 'Carmen Herzog', '386-983-5153', 'Dr. Ellie Hagenes I', '405-471-7956', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:44', '2025-12-12 04:58:44'),
(15, 'Emmett', 'Beatty', '1985-07-24', 'Female', 'AB-', '28', '+1 (860) 246-6777', 'teacher15@example.com', '$2y$12$w9PbFWHhq3LP/gkXlv.VUeQ.GqQalQrsrAp4JUr8zmzynltsSHXKC', 'Assistant Professor', '198 Alvera Lake Suite 208\nHerzogburgh, TN 85850', 'Keagan Rempel', '+1-609-606-6904', 'Adrienne Koelpin DVM', '870.989.8913', 'Pedro Beer', '+1.323.458.7556', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-12 04:58:44', '2025-12-12 04:58:44');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `class_schedules`
--
ALTER TABLE `class_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_names`
--
ALTER TABLE `exam_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `excategories`
--
ALTER TABLE `excategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_payment_items`
--
ALTER TABLE `fee_payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_structures`
--
ALTER TABLE `fee_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
