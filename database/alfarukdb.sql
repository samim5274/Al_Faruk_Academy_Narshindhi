-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2025 at 07:38 AM
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
(1, 10, 1, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:37', '2025-12-24 11:32:37'),
(2, 16, 1, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:38', '2025-12-24 11:32:38'),
(3, 14, 1, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:39', '2025-12-24 11:32:39'),
(4, 45, 1, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:40', '2025-12-24 11:32:40'),
(5, 47, 1, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:32:41', '2025-12-24 11:32:41'),
(6, 12, 2, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:45', '2025-12-24 11:32:45'),
(7, 13, 2, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:45', '2025-12-24 11:32:45'),
(8, 15, 2, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:32:47', '2025-12-24 11:32:47'),
(9, 23, 2, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:48', '2025-12-24 11:32:48'),
(10, 34, 2, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:50', '2025-12-24 11:32:50'),
(11, 41, 2, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:51', '2025-12-24 11:32:51'),
(12, 18, 3, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:54', '2025-12-24 11:32:54'),
(13, 27, 3, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:55', '2025-12-24 11:32:55'),
(14, 37, 3, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:56', '2025-12-24 11:32:56'),
(15, 43, 3, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:32:57', '2025-12-24 11:32:57'),
(16, 5, 4, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:32:59', '2025-12-24 11:32:59'),
(17, 19, 4, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:00', '2025-12-24 11:33:00'),
(18, 21, 4, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:01', '2025-12-24 11:33:01'),
(19, 30, 4, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:03', '2025-12-24 11:33:03'),
(20, 46, 4, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:33:04', '2025-12-24 11:33:04'),
(21, 48, 4, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:05', '2025-12-24 11:33:05'),
(22, 6, 5, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:10', '2025-12-24 11:33:10'),
(23, 35, 5, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:11', '2025-12-24 11:33:11'),
(24, 39, 5, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:13', '2025-12-24 11:33:13'),
(25, 1, 6, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:16', '2025-12-24 11:33:16'),
(26, 3, 6, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:17', '2025-12-24 11:33:17'),
(27, 11, 6, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:18', '2025-12-24 11:33:18'),
(28, 22, 6, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:20', '2025-12-24 11:33:20'),
(29, 28, 6, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:20', '2025-12-24 11:33:20'),
(30, 32, 6, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:33:21', '2025-12-24 11:33:21'),
(31, 44, 6, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:33:23', '2025-12-24 11:33:23'),
(32, 7, 7, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:26', '2025-12-24 11:33:26'),
(33, 17, 7, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:27', '2025-12-24 11:33:27'),
(34, 40, 7, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:28', '2025-12-24 11:33:28'),
(35, 42, 7, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:29', '2025-12-24 11:33:29'),
(36, 49, 7, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:33:31', '2025-12-24 11:33:31'),
(37, 4, 8, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:34', '2025-12-24 11:33:34'),
(38, 31, 8, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:35', '2025-12-24 11:33:35'),
(39, 38, 8, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:37', '2025-12-24 11:33:37'),
(40, 2, 9, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:40', '2025-12-24 11:33:40'),
(41, 9, 9, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:41', '2025-12-24 11:33:41'),
(42, 25, 9, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:42', '2025-12-24 11:33:42'),
(43, 29, 9, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:44', '2025-12-24 11:33:44'),
(44, 33, 9, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:45', '2025-12-24 11:33:45'),
(45, 36, 9, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:33:46', '2025-12-24 11:33:46'),
(46, 50, 9, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:48', '2025-12-24 11:33:48'),
(47, 8, 10, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:51', '2025-12-24 11:33:51'),
(48, 20, 10, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:52', '2025-12-24 11:33:52'),
(49, 24, 10, '2025-12-24', 'Absent', 'N/A', '2025-12-24 11:33:53', '2025-12-24 11:33:53'),
(50, 26, 10, '2025-12-24', 'Present', 'N/A', '2025-12-24 11:33:55', '2025-12-24 11:33:55');

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

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_name`, `branch_name`, `account_name`, `account_number`, `routing_number`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Dutch Bangla Bank PLC', 'Uttara', 'Shamim', 'DBBL2134567890', '54654498', NULL, '2025-12-24 12:01:44', '2025-12-24 12:01:44'),
(2, 'Islamic Bank PLC', 'Uttara', 'Shamim', 'IBL65498498433', '456se8564d', NULL, '2025-12-24 12:02:05', '2025-12-24 12:02:05');

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

--
-- Dumping data for table `bank_transection_details`
--

INSERT INTO `bank_transection_details` (`id`, `bank_id`, `user_id`, `amount`, `date`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5000.00, '2025-12-24', 'Deposit', 'N/A', '2025-12-24 12:01:53', '2025-12-24 12:01:53'),
(2, 1, 2, 1000.00, '2025-12-24', 'Withdraw', 'N/A', '2025-12-24 12:02:13', '2025-12-24 12:02:13'),
(3, 1, 2, 2000.00, '2025-12-24', 'Withdraw', 'Transfer to Bank ID: 2. ', '2025-12-24 12:02:24', '2025-12-24 12:02:24'),
(4, 2, 2, 2000.00, '2025-12-24', 'Deposit', 'Transfer from Bank ID: 1. ', '2025-12-24 12:02:24', '2025-12-24 12:02:24');

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
(1, 1, 1, '08:00:00', '08:40:00', 1, 1, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44'),
(2, 1, 2, '08:40:00', '09:20:00', 2, 2, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44'),
(3, 1, 3, '09:20:00', '10:00:00', 24, 3, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44'),
(4, 1, 4, '10:00:00', '10:40:00', 23, 4, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44'),
(5, 1, 5, '11:00:00', '11:40:00', 21, 5, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44'),
(6, 1, 6, '11:40:00', '12:40:00', 14, 6, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44'),
(7, 1, 7, '12:40:00', '13:20:00', 7, 7, 'Saturday', '2025-12-24 10:35:44', '2025-12-24 10:35:44');

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
(1, 'Midterm', '2025-12-25', 1, 1, 100, '2025-12-24 11:50:28', '2025-12-24 11:50:28'),
(2, 'Midterm', '2025-12-26', 1, 2, 100, '2025-12-26 05:38:39', '2025-12-26 05:38:39'),
(3, 'Midterm', '2025-12-30', 1, 3, 100, '2025-12-26 05:38:53', '2025-12-26 05:38:53'),
(4, 'Final', '2025-12-26', 1, 1, 100, '2025-12-26 05:45:43', '2025-12-26 05:45:43'),
(5, 'Final', '2025-12-27', 1, 2, 100, '2025-12-26 05:45:52', '2025-12-26 05:45:52'),
(6, 'Final', '2025-12-31', 1, 3, 100, '2025-12-26 05:46:00', '2025-12-26 05:46:00'),
(7, 'Class Test', '2025-12-01', 1, 1, 10, '2025-12-26 05:57:29', '2025-12-26 05:57:29'),
(8, 'Class Test', '2025-12-02', 1, 2, 10, '2025-12-26 05:57:40', '2025-12-26 05:57:40'),
(9, 'Class Test', '2025-12-10', 1, 1, 10, '2025-12-26 05:57:52', '2025-12-26 05:57:52');

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
(1, 'Midterm', '2025-12-24 11:50:04', '2025-12-24 11:50:04'),
(2, 'Final', '2025-12-24 11:50:10', '2025-12-24 11:50:10'),
(3, 'Class Test', '2025-12-26 05:57:18', '2025-12-26 05:57:18');

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
(1, 'Food', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(2, 'Transport', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(3, 'Shopping', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(4, 'Medical', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(5, 'Entertainment', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(6, 'Bills & Utilities', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(7, 'Education', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(8, 'Others', '2025-12-24 10:33:57', '2025-12-24 10:33:57');

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
(1, 1, 'Breakfast', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(2, 1, 'Lunch', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(3, 1, 'Dinner', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(4, 1, 'Snacks', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(5, 1, 'Groceries', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(6, 2, 'Bus', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(7, 2, 'CNG', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(8, 2, 'Bike', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(9, 2, 'Train', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(10, 2, 'Ride Sharing', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(11, 3, 'Clothes', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(12, 3, 'Shoes', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(13, 3, 'Gadgets', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(14, 3, 'Cosmetics', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(15, 4, 'Medicine', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(16, 4, 'Doctor Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(17, 4, 'Test/Reports', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(18, 5, 'Movies', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(19, 5, 'Games', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(20, 5, 'Tours', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(21, 5, 'Events', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(22, 6, 'Electricity', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(23, 6, 'Water', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(24, 6, 'Gas', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(25, 6, 'Internet', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(26, 6, 'Mobile Recharge', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(27, 7, 'Books', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(28, 7, 'Tuition Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(29, 7, 'Stationery', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(30, 8, 'Donation', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(31, 8, 'Unexpected Cost', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(32, 8, 'Miscellaneous', '2025-12-24 10:33:57', '2025-12-24 10:33:57');

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
(1, 'Tuition Fee', 'Regular fee for academic instruction and classes', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(2, 'Admission Fee', 'One-time fee for student enrollment', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(3, 'Exam Fee', 'Fee for conducting examinations', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(4, 'Library Fee', 'Charge for library access and maintenance', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(5, 'Laboratory Fee', 'Fee for science/computer lab usage', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(6, 'Sports Fee', 'Charge for sports activities and events', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(7, 'Transport Fee', 'Fee for school bus/transport facilities', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(8, 'Hostel Fee', 'Accommodation and meal charges in hostel', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(9, 'Development Fee', 'Fee for infrastructure and school development', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(10, 'Activity Fee', 'Fee for extracurricular activities and events', '2025-12-24 10:33:57', '2025-12-24 10:33:57');

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
(1, 2, 2, 1000.00, 1000.00, 0.00, 0.00, '2025-12-24', '12', '2025', 'Cash', 'Paid', 'ETJ5UPW5LN', 'INV-13058', '2025-12-24 11:59:36', '2025-12-24 11:59:36'),
(2, 1, 2, 2500.00, 2500.00, 0.00, 0.00, '2025-12-26', '12', '2025', 'Cash', 'Paid', 'XFPZ1YXAPT', 'INV-67523', '2025-12-26 06:37:10', '2025-12-26 06:37:10');

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
(1, 1, 2, 1, 1000.00, 1000.00, 0.00, 0.00, '2025-12-24', '2025-12-24 11:59:36', '2025-12-24 11:59:36'),
(2, 2, 1, 2, 1000.00, 1000.00, 0.00, 0.00, '2025-12-26', '2025-12-26 06:37:10', '2025-12-26 06:37:10'),
(3, 2, 1, 3, 1000.00, 1000.00, 0.00, 0.00, '2025-12-26', '2025-12-26 06:37:10', '2025-12-26 06:37:10'),
(4, 2, 1, 4, 500.00, 500.00, 0.00, 0.00, '2025-12-26', '2025-12-26 06:37:10', '2025-12-26 06:37:10');

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
(1, 9, 2, 1000.00, '2026-01-24', '2025-12-24 11:59:24', '2025-12-24 11:59:24'),
(2, 1, 1, 1000.00, '2026-01-26', '2025-12-26 06:36:31', '2025-12-26 06:36:31'),
(3, 1, 2, 1000.00, '2026-01-26', '2025-12-26 06:36:37', '2025-12-26 06:36:37'),
(4, 1, 3, 500.00, '2026-01-26', '2025-12-26 06:36:42', '2025-12-26 06:36:42');

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

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `category_id`, `subcategory_id`, `user_id`, `title`, `description`, `amount`, `income_date`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 2, 'Midterm Exam Schedule', 'N/A', 5000.00, '2025-12-24', '2025-12-24 12:01:05', '2025-12-24 12:01:05');

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
(1, 'Tuition Fee', 'Income from tuition', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(2, 'Donation', 'Income from donations', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(3, 'Library Fee', 'Income from library', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(4, 'Transport Fee', 'Income from transport', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(5, 'Examination Fee', 'Income from exams', '2025-12-24 10:33:57', '2025-12-24 10:33:57');

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
(1, 1, 'Grade 1-5', 'Subcategory of Tuition Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(2, 1, 'Grade 6-10', 'Subcategory of Tuition Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(3, 1, 'Grade 11-12', 'Subcategory of Tuition Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(4, 2, 'Alumni Donation', 'Subcategory of Donation', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(5, 2, 'Sponsor Donation', 'Subcategory of Donation', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(6, 3, 'Book Fee', 'Subcategory of Library Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(7, 3, 'Late Fee', 'Subcategory of Library Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(8, 4, 'Bus Fee', 'Subcategory of Transport Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(9, 4, 'Van Fee', 'Subcategory of Transport Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(10, 5, 'Monthly Test', 'Subcategory of Examination Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(11, 5, 'Final Exam', 'Subcategory of Examination Fee', '2025-12-24 10:33:57', '2025-12-24 10:33:57');

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

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `subject_id`, `exam_id`, `marks_obtained`, `grade`, `gpa`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 1, 80.00, 'A+', 5, 'N/A', '2025-12-24 11:51:59', '2025-12-24 11:51:59'),
(2, 14, 2, 2, 80.00, 'A+', 5, 'N/A', '2025-12-26 05:39:03', '2025-12-26 05:39:03'),
(3, 14, 3, 3, 85.00, 'A+', 5, 'N/A', '2025-12-26 05:39:08', '2025-12-26 05:39:08'),
(4, 14, 1, 4, 80.00, 'A+', 5, 'N/A', '2025-12-26 05:46:07', '2025-12-26 05:46:07'),
(5, 14, 2, 5, 85.00, 'A+', 5, 'N/A', '2025-12-26 05:46:11', '2025-12-26 05:46:11'),
(6, 14, 3, 6, 90.00, 'A+', 5, 'N/A', '2025-12-26 05:46:15', '2025-12-26 05:46:15'),
(7, 10, 1, 1, 50.00, 'B', 3, 'N/A', '2025-12-26 05:51:07', '2025-12-26 05:51:07'),
(8, 16, 1, 1, 50.00, 'B', 3, 'N/A', '2025-12-26 05:51:10', '2025-12-26 05:51:10'),
(9, 45, 1, 1, 50.00, 'B', 3, 'N/A', '2025-12-26 05:51:11', '2025-12-26 05:51:11'),
(10, 47, 1, 1, 50.00, 'B', 3, 'N/A', '2025-12-26 05:51:13', '2025-12-26 05:51:13'),
(11, 10, 2, 2, 50.00, 'B', 3, 'N/A', '2025-12-26 05:51:17', '2025-12-26 05:51:17'),
(12, 16, 2, 2, 50.00, 'B', 3, 'N/A', '2025-12-26 05:51:19', '2025-12-26 05:51:19'),
(13, 45, 2, 2, 60.00, 'A-', 4, 'N/A', '2025-12-26 05:51:22', '2025-12-26 05:51:22'),
(14, 47, 2, 2, 70.00, 'A', 4, 'N/A', '2025-12-26 05:51:24', '2025-12-26 05:51:24'),
(15, 10, 3, 3, 90.00, 'A+', 5, 'N/A', '2025-12-26 05:51:29', '2025-12-26 05:51:29'),
(16, 16, 3, 3, 90.00, 'A+', 5, 'N/A', '2025-12-26 05:51:30', '2025-12-26 05:51:30'),
(17, 45, 3, 3, 90.00, 'A+', 5, 'N/A', '2025-12-26 05:51:33', '2025-12-26 05:51:33'),
(18, 47, 3, 3, 90.00, 'A+', 5, 'N/A', '2025-12-26 05:51:35', '2025-12-26 05:51:35'),
(19, 10, 1, 4, 75.00, 'A', 4, 'N/A', '2025-12-26 05:51:45', '2025-12-26 05:51:45'),
(20, 16, 1, 4, 75.00, 'A', 4, 'N/A', '2025-12-26 05:51:46', '2025-12-26 05:51:46'),
(21, 45, 1, 4, 75.00, 'A', 4, 'N/A', '2025-12-26 05:51:48', '2025-12-26 05:51:48'),
(22, 47, 1, 4, 75.00, 'A', 4, 'N/A', '2025-12-26 05:51:49', '2025-12-26 05:51:49'),
(23, 10, 2, 5, 75.00, 'A', 4, 'N/A', '2025-12-26 05:51:56', '2025-12-26 05:51:56'),
(24, 16, 2, 5, 75.00, 'A', 4, 'N/A', '2025-12-26 05:51:58', '2025-12-26 05:51:58'),
(25, 45, 2, 5, 75.00, 'A', 4, 'N/A', '2025-12-26 05:52:00', '2025-12-26 05:52:00'),
(26, 47, 2, 5, 75.00, 'A', 4, 'N/A', '2025-12-26 05:52:01', '2025-12-26 05:52:01'),
(27, 10, 3, 6, 75.00, 'A', 4, 'N/A', '2025-12-26 05:52:06', '2025-12-26 05:52:06'),
(28, 16, 3, 6, 75.00, 'A', 4, 'N/A', '2025-12-26 05:52:08', '2025-12-26 05:52:08'),
(29, 45, 3, 6, 75.00, 'A', 4, 'N/A', '2025-12-26 05:52:12', '2025-12-26 05:52:12'),
(30, 47, 3, 6, 75.00, 'A', 4, 'N/A', '2025-12-26 05:52:14', '2025-12-26 05:52:14'),
(31, 14, 1, 7, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:05', '2025-12-26 05:58:05'),
(32, 10, 1, 7, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:06', '2025-12-26 05:58:06'),
(33, 16, 1, 7, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:08', '2025-12-26 05:58:08'),
(34, 45, 1, 7, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:10', '2025-12-26 05:58:10'),
(35, 47, 1, 7, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:11', '2025-12-26 05:58:11'),
(36, 14, 2, 8, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:15', '2025-12-26 05:58:15'),
(37, 10, 2, 8, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:17', '2025-12-26 05:58:17'),
(38, 16, 2, 8, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:18', '2025-12-26 05:58:18'),
(39, 45, 2, 8, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:20', '2025-12-26 05:58:20'),
(40, 47, 2, 8, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:22', '2025-12-26 05:58:22'),
(41, 14, 1, 9, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:26', '2025-12-26 05:58:26'),
(42, 10, 1, 9, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:28', '2025-12-26 05:58:28'),
(43, 16, 1, 9, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:29', '2025-12-26 05:58:29'),
(44, 45, 1, 9, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:31', '2025-12-26 05:58:31'),
(45, 47, 1, 9, 8.00, 'A+', 5, 'N/A', '2025-12-26 05:58:33', '2025-12-26 05:58:33'),
(46, 1, 1, 1, 50.00, 'B', 3, 'N/A', '2025-12-26 06:16:41', '2025-12-26 06:16:41'),
(47, 1, 2, 2, 50.00, 'B', 3, 'N/A', '2025-12-26 06:16:48', '2025-12-26 06:16:48'),
(48, 1, 3, 3, 85.00, 'A+', 5, 'N/A', '2025-12-26 06:16:56', '2025-12-26 06:16:56'),
(49, 1, 1, 4, 85.00, 'A+', 5, 'N/A', '2025-12-26 06:17:03', '2025-12-26 06:17:03'),
(50, 1, 2, 5, 85.00, 'A+', 5, 'N/A', '2025-12-26 06:17:10', '2025-12-26 06:17:10'),
(51, 1, 3, 6, 85.00, 'A+', 5, 'N/A', '2025-12-26 06:17:15', '2025-12-26 06:17:15'),
(52, 1, 1, 7, 8.00, 'A+', 5, 'N/A', '2025-12-26 06:17:20', '2025-12-26 06:17:20'),
(53, 1, 2, 8, 8.00, 'A+', 5, 'N/A', '2025-12-26 06:17:24', '2025-12-26 06:17:24'),
(54, 1, 1, 9, 8.00, 'A+', 5, 'N/A', '2025-12-26 06:17:28', '2025-12-26 06:17:28');

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
(91, '2014_10_12_000000_create_users_table', 1),
(92, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(93, '2014_10_12_100000_create_password_resets_table', 1),
(94, '2019_08_19_000000_create_failed_jobs_table', 1),
(95, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(96, '2025_09_11_094326_create_teachers_table', 1),
(97, '2025_09_12_060130_create_rooms_table', 1),
(98, '2025_09_12_060131_create_students_table', 1),
(99, '2025_09_13_043442_create_attendances_table', 1),
(100, '2025_09_13_085224_create_groups_table', 1),
(101, '2025_09_13_085225_create_subjects_table', 1),
(102, '2025_09_13_085234_create_exams_table', 1),
(103, '2025_09_13_085241_create_marks_table', 1),
(104, '2025_09_16_081917_create_student_subjects_table', 1),
(105, '2025_09_22_185426_create_fee_categories_table', 1),
(106, '2025_09_22_185444_create_fee_structures_table', 1),
(107, '2025_09_28_183808_create_exam_names_table', 1),
(108, '2025_10_03_153733_create_class_schedules_table', 1),
(109, '2025_12_06_164031_create_notices_table', 1),
(110, '2025_12_06_181454_create_excategories_table', 1),
(111, '2025_12_06_181520_create_exsubcategories_table', 1),
(112, '2025_12_06_181537_create_expenses_table', 1),
(113, '2025_12_12_103332_create_fee_payment_details_table', 1),
(114, '2025_12_12_103336_create_fee_payment_items_table', 1),
(115, '2025_12_12_104757_create_companies_table', 1),
(116, '2025_12_21_130614_create_bank_details_table', 1),
(117, '2025_12_21_130634_create_bank_transection_details_table', 1),
(118, '2025_12_23_104250_create_income_categories_table', 1),
(119, '2025_12_23_104304_create_income_sub_categories_table', 1),
(120, '2025_12_23_104324_create_incomes_table', 1);

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
(1, 'Damaris', 'Franecki', '2012-11-29', 'Other', 'O+', 'Other', 'Bangladeshi', '4156925857894', '01939298446', 'student1@example.com', '$2y$12$UWQ.wMVIvQ8pqwNYXHg0LuOWyugOkDwJjhzXRk3sEBk1EMMAwfqMq', '332 Lehner Locks Suite 233\nBodestad, IA 67278', '75579 Gerson Circles\nJordonfurt, AR 12522-3229', 'ADM-00001', '1995-01-26', 'B', 'Science', '2025-2026', 'Rice-Walsh School', 'Elian Ziemann IV', 'Teacher', '01735863508', 'father1@example.com', '9419049292595', 'Athena Hansen III', 'Doctor', '01872388570', 'mother1@example.com', '5540135191339', 'Prof. Dell Sawayn PhD', '01634113286', 'guardian1@example.com', '4690911865197', 'Uncle', 1, 1, 1, '2025-12-25', NULL, 2025000001, 900001, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:47', '2025-12-26 06:37:17', '127.0.0.1', 1, 'JvMqeCqgHUpXOw1fHvofxHeWQT3aXMlKoybCPuY26td4P9mbv5YbWAwYh6mA', '2025-12-24 10:33:47', '2025-12-26 06:37:17'),
(2, 'Ruby', 'Vandervort', '2020-07-01', 'Male', 'A+', 'Hindu', 'Bangladeshi', '7021941083098', '01786772378', 'student2@example.com', '$2y$12$phzwtO1IA.lqXbBgBxxdZ.H2rfmwEfkZxfgZRi4.fvrL1D5SJyhw6', '8629 Felipe Manors Suite 468\nDorthyfurt, TX 93562', '327 Reyna Villages\nPort Eugene, NC 48766', 'ADM-00002', '1977-08-15', 'C', 'Science', '2025-2026', 'Leuschke PLC School', 'Cary Price', 'Engineer', '01871194335', 'father2@example.com', '1912335609452', 'Abbigail Wilkinson', 'Doctor', '01516178250', 'mother2@example.com', '7066816835615', 'Camylle Leuschke', '01658507142', 'guardian2@example.com', '1690396885759', 'Uncle', 1, 1, 9, '2025-12-25', NULL, 2025000002, 900002, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:48', '2025-12-26 06:15:12', '127.0.0.1', 1, 'eJFBpcD2LCunEcw5suth8DZhTQ8WLMh8L3YCcxS6w1nV12rxxXsXXJaJX08O', '2025-12-24 10:33:48', '2025-12-26 06:15:12'),
(3, 'Haven', 'Ondricka', '1971-10-03', 'Male', 'B+', 'Hindu', 'Bangladeshi', '8306318570188', '01652927158', 'student3@example.com', '$2y$12$zWZ94VUDIm.io3MvLLQ5ru923ziXkN1v9YZ/SYQWMJ2Ak/dOtVjsW', '71440 Waelchi Extension Suite 340\nBretborough, OH 80939-8053', '829 Kennedi Rest\nHaleyburgh, NJ 91311', 'ADM-00003', '2024-09-01', 'A', 'Science', '2025-2026', 'Abbott LLC School', 'Coy Satterfield', 'Farmer', '01805090026', 'father3@example.com', '7697623439103', 'Miss Mossie Bauch', 'Nurse', '01707879802', 'mother3@example.com', '6699776223759', 'Emmanuelle Sauer IV', '01626006977', 'guardian3@example.com', '0573111921103', 'Uncle', 1, 2, 6, '2025-12-25', NULL, 2025000003, 900003, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:48', '2025-12-24 10:33:48', '127.0.0.1', 1, NULL, '2025-12-24 10:33:48', '2025-12-24 11:33:17'),
(4, 'Jasmin', 'Okuneva', '1986-04-01', 'Female', 'B-', 'Christian', 'Bangladeshi', '3372084857209', '01784299068', 'student4@example.com', '$2y$12$zMst53InoHGBbIbyCrGAW.cSGrkr1Iib4C5.2x7AdGo2o/9mJ0ffa', '1197 Zboncak Drive\nNew Lonie, SD 78932', '784 Schinner Lock Suite 417\nTarashire, OH 72136', 'ADM-00004', '2021-10-01', 'C', 'Commerce', '2025-2026', 'McGlynn Group School', 'Rocio Frami', 'Teacher', '01362762139', 'father4@example.com', '9014843213787', 'Frieda Jones V', 'Doctor', '01697894880', 'mother4@example.com', '8143618778921', 'Emie Gaylord Jr.', '01851173748', 'guardian4@example.com', '8173037860944', 'Uncle', 1, 1, 8, '2025-12-25', NULL, 2025000004, 900004, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:48', '2025-12-24 10:33:48', '127.0.0.1', 1, NULL, '2025-12-24 10:33:48', '2025-12-24 11:33:34'),
(5, 'Demetris', 'Runolfsson', '2006-08-08', 'Other', 'O+', 'Islam', 'Bangladeshi', '9618781702266', '01376876044', 'student5@example.com', '$2y$12$4hILhRl4PAtWblhtwnunwO9XMGmmmvUatODOiSFI6SaxKcWVn8vxq', '395 Parker Forges\nNew Arch, MS 45037-9796', '4065 Lindgren Prairie Suite 030\nPort Krystel, AL 66672-2603', 'ADM-00005', '1996-07-29', 'A', 'Commerce', '2025-2026', 'Hintz-Wunsch School', 'Deangelo Wiegand', 'Businessman', '01985413798', 'father5@example.com', '9480667892920', 'Ms. Kathlyn Lesch', 'Businesswoman', '01392037669', 'mother5@example.com', '8972836220591', 'Frederik Quitzon V', '01431802012', 'guardian5@example.com', '9180052876351', 'Grandparent', 1, 1, 4, '2025-12-25', NULL, 2025000005, 900005, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:48', '2025-12-24 10:33:48', '127.0.0.1', 1, NULL, '2025-12-24 10:33:48', '2025-12-24 11:32:59'),
(6, 'Assunta', 'Kilback', '2017-08-27', 'Male', 'O-', 'Other', 'Bangladeshi', '2266451012316', '01448702643', 'student6@example.com', '$2y$12$ZmMH4gYIbM0GTd.tyTiugOjlVxJe7cHnlTX6saplDXJxneTqVLIN2', '676 Carson Square\nMarleyfort, TX 05432', '35502 Corkery Locks Suite 167\nHudsonchester, ID 66269', 'ADM-00006', '2010-10-27', 'B', 'Commerce', '2025-2026', 'Bernhard-Klein School', 'Ola O\'Hara III', 'Farmer', '01641643663', 'father6@example.com', '5052511929409', 'Ms. Jana Kulas', 'Businesswoman', '01820325742', 'mother6@example.com', '1148342602761', 'Mr. Otho Maggio', '01823485282', 'guardian6@example.com', '4832580291455', 'Brother', 1, 1, 5, '2025-12-25', NULL, 2025000006, 900006, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:48', '2025-12-24 10:33:48', '127.0.0.1', 1, NULL, '2025-12-24 10:33:48', '2025-12-24 11:33:10'),
(7, 'Cara', 'Prohaska', '1990-01-13', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '0075701501334', '01543123878', 'student7@example.com', '$2y$12$iNHmQ.k0282l3164tBREm.YxesLyEXmqxyp/uCd/ckB6XZNJF2Ws2', '251 Daphney Port\nTadton, WY 00593-3406', '3570 Jade Passage Apt. 743\nNew Korey, AK 19999-3282', 'ADM-00007', '1998-02-10', 'A', 'Science', '2025-2026', 'Romaguera-Cole School', 'Mr. Darion O\'Connell', 'Teacher', '01878107098', 'father7@example.com', '6408575138730', 'Krista Schulist', 'Doctor', '01908385384', 'mother7@example.com', '7383358121966', 'Mr. Kennith Casper Jr.', '01580702818', 'guardian7@example.com', '9689997460652', 'Grandparent', 1, 1, 7, '2025-12-25', NULL, 2025000007, 900007, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:49', '2025-12-24 10:33:49', '127.0.0.1', 1, NULL, '2025-12-24 10:33:49', '2025-12-24 11:33:26'),
(8, 'Morton', 'Stehr', '1971-08-30', 'Female', 'A-', 'Christian', 'Bangladeshi', '2798941231113', '01711723552', 'student8@example.com', '$2y$12$NbCPW6yEJH26smFX4E8mBuHoHuj1ZcwVbiV3Uib3pOFTd2X9X1Deq', '42733 Douglas Parkways Suite 999\nJoshuahborough, AZ 78598-0585', '258 Conn Park\nNorth Jayside, WY 97318', 'ADM-00008', '2004-07-14', 'A', 'Arts', '2025-2026', 'Dach-Welch School', 'Dr. Melvin Krajcik DDS', 'Businessman', '01417472279', 'father8@example.com', '4681856747275', 'Ms. Antonietta Mraz', 'Housewife', '01340870909', 'mother8@example.com', '9767369317700', 'Ervin Cremin', '01900233166', 'guardian8@example.com', '1485023660883', 'Brother', 1, 1, 10, '2025-12-25', NULL, 2025000008, 900008, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:49', '2025-12-24 10:33:49', '127.0.0.1', 1, NULL, '2025-12-24 10:33:49', '2025-12-24 11:33:51'),
(9, 'Kaden', 'Lind', '1988-09-05', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '4751585101718', '01440405042', 'student9@example.com', '$2y$12$qvShkYLM7tM7ok7n7o5NdOMrcsx6aydZkYkTaN5t9vXim8.isjpEq', '75592 Hills View\nSouth Kyrachester, RI 14356', '2811 Dach Rapids\nReillybury, MD 88849', 'ADM-00009', '1982-11-11', 'B', 'Commerce', '2025-2026', 'Roberts-Schaden School', 'Norris Nolan', 'Engineer', '01988743812', 'father9@example.com', '1190149941639', 'Kelli Runolfsdottir', 'Housewife', '01369101984', 'mother9@example.com', '9292358959408', 'Savanah Kulas', '01847732538', 'guardian9@example.com', '6344041718724', 'Sister', 1, 2, 9, '2025-12-25', NULL, 2025000009, 900009, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:49', '2025-12-24 10:33:49', '127.0.0.1', 1, NULL, '2025-12-24 10:33:49', '2025-12-24 11:33:41'),
(10, 'Brendan', 'Bailey', '1982-10-09', 'Female', 'A+', 'Islam', 'Bangladeshi', '2572054252581', '01902839547', 'student10@example.com', '$2y$12$Ilh5nXJ1GyUr9J0jKgy/ZuWYrw8PozFdKQUpm3OltqWkQG5b.iPqq', '7715 Ricky Junction Suite 289\nKelsiehaven, TX 16551-4437', '7509 Prosacco Ports Suite 531\nMaverickfurt, VT 50870-8179', 'ADM-00010', '1973-12-30', 'A', 'Arts', '2025-2026', 'Kuhic, Dibbert and Lebsack School', 'Mervin Bode PhD', 'Businessman', '01967459530', 'father10@example.com', '6907066578166', 'Miss Adell Skiles', 'Housewife', '01511795635', 'mother10@example.com', '2008616948362', 'Jaydon Gutkowski Sr.', '01746749229', 'guardian10@example.com', '7527353037206', 'Grandparent', 1, 1, 1, '2025-12-25', NULL, 2025000010, 900010, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:49', '2025-12-24 10:33:49', '127.0.0.1', 1, NULL, '2025-12-24 10:33:49', '2025-12-24 11:32:37'),
(11, 'Rhiannon', 'King', '2005-07-30', 'Other', 'B+', 'Islam', 'Bangladeshi', '7300082009744', '01681017460', 'student11@example.com', '$2y$12$Knqq5UeD7ACEk4ID8psVk.lIoxockvvbev8LmrQyA4D94LmJtSMmS', '139 Sabryna Lodge\nJoanieview, DE 05290-6294', '262 Ryan Lodge\nEast Emmet, VT 44328-1629', 'ADM-00011', '1988-02-19', 'C', 'Arts', '2025-2026', 'Bogan-Bernier School', 'Ignacio Heaney DDS', 'Engineer', '01884893319', 'father11@example.com', '9740372086475', 'Orie Walter Sr.', 'Housewife', '01957952741', 'mother11@example.com', '2458285021465', 'Mrs. Corene Ward DDS', '01847646237', 'guardian11@example.com', '9447225276438', 'Brother', 1, 3, 6, '2025-12-25', NULL, 2025000011, 900011, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:49', '2025-12-24 10:33:49', '127.0.0.1', 1, NULL, '2025-12-24 10:33:49', '2025-12-24 11:33:18'),
(12, 'Spencer', 'Weimann', '2010-02-02', 'Female', 'B-', 'Christian', 'Bangladeshi', '6501301119641', '01372609922', 'student12@example.com', '$2y$12$oFp6dmHdJ3ZVobMEWwfs.eQUAVi.isHfZWAB/S4oyiDHD3RZxEQI.', '6764 Melody Inlet\nPort Glennaburgh, VT 11466-6077', '56559 Eunice Square\nDessiestad, IL 10424-4657', 'ADM-00012', '1995-12-26', 'A', 'Science', '2025-2026', 'Fisher-Nikolaus School', 'Dr. Gus Adams', 'Engineer', '01664215013', 'father12@example.com', '2159261258541', 'Arielle Hegmann', 'Teacher', '01721051681', 'mother12@example.com', '5799740539326', 'Ms. Opal Tromp MD', '01390979545', 'guardian12@example.com', '5135923692122', 'Brother', 1, 1, 2, '2025-12-25', NULL, 2025000012, 900012, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:49', '2025-12-24 10:33:49', '127.0.0.1', 1, NULL, '2025-12-24 10:33:49', '2025-12-24 11:32:45'),
(13, 'Hudson', 'Schuppe', '1983-12-17', 'Male', 'B+', 'Islam', 'Bangladeshi', '0470197515812', '01697062757', 'student13@example.com', '$2y$12$Ls7qHpix4wE9bWxoXXFTRet4z6gNNexki.2fvyFUvI2AtjBYGhyZ2', '701 Champlin Parkway\nPort Zaneburgh, RI 40245', '414 Stracke Cove\nNorth Lenora, OH 80652-7210', 'ADM-00013', '2011-10-14', 'B', 'Science', '2025-2026', 'Lockman, Dietrich and Adams School', 'Shawn Beer', 'Engineer', '01933080463', 'father13@example.com', '2679242101131', 'Noemi Kling Sr.', 'Nurse', '01647787879', 'mother13@example.com', '0976451378331', 'Zion Brekke', '01937613967', 'guardian13@example.com', '8271917627441', 'Grandparent', 1, 2, 2, '2025-12-25', NULL, 2025000013, 900013, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:50', '2025-12-24 10:33:50', '127.0.0.1', 1, NULL, '2025-12-24 10:33:50', '2025-12-24 11:32:45'),
(14, 'Doyle', 'Hessel', '2006-06-16', 'Male', 'A-', 'Christian', 'Bangladeshi', '9841347814392', '01657907874', 'student14@example.com', '$2y$12$wN.ImLmqgwj6iXGUvAvoUOrzasoefrpdb2GI2Q.GcNPw6ZtZcUyT.', '4368 Cruickshank Island Suite 194\nSouth Lornaburgh, AZ 13453', '343 Heaney Mall Apt. 965\nSouth Kyliestad, MA 81341', 'ADM-00014', '2025-04-14', 'C', 'Commerce', '2025-2026', 'Crona, Klocko and Batz School', 'Dr. Corbin Schmeler', 'Engineer', '01928158376', 'father14@example.com', '4695621927120', 'Ms. Leola Nienow', 'Teacher', '01955887179', 'mother14@example.com', '9085329830026', 'Asa Denesik', '01549739905', 'guardian14@example.com', '2097016864933', 'Brother', 1, 2, 1, '2025-12-25', NULL, 2025000014, 900014, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:50', '2025-12-24 10:33:50', '127.0.0.1', 1, NULL, '2025-12-24 10:33:50', '2025-12-24 11:32:39'),
(15, 'Domenic', 'Pouros', '1993-09-27', 'Other', 'B+', 'Hindu', 'Bangladeshi', '5712830710485', '01995059353', 'student15@example.com', '$2y$12$NxbmVOxywhr0wkn230xkzOP0R5MC4aGAtNfwbyNMypgnYp/luultq', '1935 Andy Village\nWalshland, CA 51283', '580 Abbott Vista\nMireyaport, ND 40501-2765', 'ADM-00015', '1992-07-24', 'B', 'Science', '2025-2026', 'Bechtelar LLC School', 'Prof. Chad Witting', 'Teacher', '01963781366', 'father15@example.com', '3417924509650', 'Sandy Boehm', 'Doctor', '01500221072', 'mother15@example.com', '5903889166137', 'Prof. Bret Parisian', '01559085269', 'guardian15@example.com', '0154962596418', 'Aunt', 1, 3, 2, '2025-12-25', NULL, 2025000015, 900015, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:50', '2025-12-24 10:33:50', '127.0.0.1', 1, NULL, '2025-12-24 10:33:50', '2025-12-24 11:32:47'),
(16, 'Lois', 'Marks', '1973-09-05', 'Female', 'O-', 'Christian', 'Bangladeshi', '9261020858778', '01662662935', 'student16@example.com', '$2y$12$KGrKpkCOIKgobV91dmilhO7z2vBxH2yoRN/NZEd45G3jT599aFWCK', '76925 Wyman Meadow\nPort Josefinamouth, CO 74780', '24031 Gilda Village\nBergnaumhaven, NH 92738', 'ADM-00016', '1981-10-26', 'A', 'Arts', '2025-2026', 'Kirlin Ltd School', 'Mr. Deangelo Bednar', 'Doctor', '01833660463', 'father16@example.com', '1249402815724', 'Prof. Victoria Halvorson', 'Nurse', '01393559930', 'mother16@example.com', '4082167774111', 'Diamond Kerluke', '01422211614', 'guardian16@example.com', '1761240443491', 'Grandparent', 1, 3, 1, '2025-12-25', NULL, 2025000016, 900016, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:50', '2025-12-24 10:33:50', '127.0.0.1', 1, NULL, '2025-12-24 10:33:50', '2025-12-24 11:32:38'),
(17, 'Oswald', 'Lind', '1992-03-27', 'Female', 'A+', 'Other', 'Bangladeshi', '3150347177121', '01447393500', 'student17@example.com', '$2y$12$r2gFNTsAs9y4ZlIHSBeBa.JslHHbvdFwsDtpO3t5wYcMkdlFo7Vnm', '341 Tillman Freeway\nEast Adellastad, NV 72580', '9780 Murphy Brook Suite 371\nSouth Anissa, TN 16493-6507', 'ADM-00017', '2024-04-10', 'A', 'Commerce', '2025-2026', 'Mertz PLC School', 'Prof. Ladarius Tillman DVM', 'Businessman', '01669233857', 'father17@example.com', '9634737205633', 'Lenora Kilback', 'Nurse', '01689258633', 'mother17@example.com', '2520810976183', 'Dante Larkin', '01770274502', 'guardian17@example.com', '0257532292678', 'Uncle', 1, 2, 7, '2025-12-25', NULL, 2025000017, 900017, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:50', '2025-12-24 10:33:50', '127.0.0.1', 1, NULL, '2025-12-24 10:33:50', '2025-12-24 11:33:27'),
(18, 'Keyon', 'Batz', '2021-06-07', 'Other', 'O-', 'Christian', 'Bangladeshi', '0016526374054', '01612454288', 'student18@example.com', '$2y$12$OrbnNCeLBgsHur6aa4wTyesPswg1dEVh4lm9n1IT0V43i8fMJgocq', '87561 Senger Views\nAlfonsoshire, MN 34786-4038', '8473 Colten Club\nWest Erika, MO 75660-8742', 'ADM-00018', '2008-03-01', 'B', 'Arts', '2025-2026', 'Lang, Mayer and Goldner School', 'Dr. Oswald Jerde DVM', 'Doctor', '01332141476', 'father18@example.com', '3752094929008', 'Ms. Martina Shanahan', 'Doctor', '01720871030', 'mother18@example.com', '5263668055963', 'Abdul Schamberger', '01854677871', 'guardian18@example.com', '7965019589300', 'Sister', 1, 1, 3, '2025-12-25', NULL, 2025000018, 900018, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:51', '2025-12-24 10:33:51', '127.0.0.1', 1, NULL, '2025-12-24 10:33:51', '2025-12-24 11:32:54'),
(19, 'Cortney', 'Gleason', '1973-02-15', 'Other', 'A+', 'Islam', 'Bangladeshi', '5761734426325', '01408370227', 'student19@example.com', '$2y$12$EsftQzTzJxAi5UjFI4z2/.iXnDGAkBZ2D72OpHETlvGEkyf5VNdkS', '8952 Leif Track Apt. 616\nAkeemfurt, NH 24758-2138', '15473 Stoltenberg Ranch Apt. 963\nIcieport, IA 27322', 'ADM-00019', '2021-04-10', 'B', 'Science', '2025-2026', 'Dickinson and Sons School', 'Max Schuppe', 'Doctor', '01613746990', 'father19@example.com', '0455083917630', 'Prof. Taryn Hettinger V', 'Businesswoman', '01509817029', 'mother19@example.com', '0948051421367', 'Jace Mills', '01430773941', 'guardian19@example.com', '3915429877233', 'Grandparent', 1, 2, 4, '2025-12-25', NULL, 2025000019, 900019, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:51', '2025-12-24 10:33:51', '127.0.0.1', 1, NULL, '2025-12-24 10:33:51', '2025-12-24 11:33:00'),
(20, 'Lindsay', 'Denesik', '2006-04-08', 'Male', 'O+', 'Islam', 'Bangladeshi', '9143590541308', '01826746793', 'student20@example.com', '$2y$12$t8.pJJ.sd9SZtJRQr.fFA.0i.cR65uD2JUFNSWm/0x9SxT7F1yC4a', '98198 Elena Views\nBatzport, PA 54815', '1764 Santino Square Suite 573\nJaquanmouth, NE 12016', 'ADM-00020', '2015-11-22', 'C', 'Arts', '2025-2026', 'Corkery-VonRueden School', 'Emmitt Rau', 'Teacher', '01653957235', 'father20@example.com', '8616214198856', 'Paula Huel', 'Businesswoman', '01730810422', 'mother20@example.com', '6440945312827', 'Lula Metz', '01738336520', 'guardian20@example.com', '3996712581255', 'Aunt', 1, 2, 10, '2025-12-25', NULL, 2025000020, 900020, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:51', '2025-12-24 10:33:51', '127.0.0.1', 1, NULL, '2025-12-24 10:33:51', '2025-12-24 11:33:52'),
(21, 'Jarret', 'Weimann', '2003-04-14', 'Other', 'AB-', 'Hindu', 'Bangladeshi', '3428906937006', '01316580886', 'student21@example.com', '$2y$12$IbHiEcS6ggPJ3j.j1JvJaO6c.oWcZIN.p7/wKTm4WzIWPBwTmXoW.', '529 Roma Flat\nLake Mckennafurt, NJ 69106', '3806 Dudley Harbor Suite 841\nLake Ryanstad, WV 65708-1198', 'ADM-00021', '2000-03-31', 'A', 'Commerce', '2025-2026', 'Bergstrom, Roob and McGlynn School', 'Anderson Nicolas', 'Engineer', '01616745698', 'father21@example.com', '0081984686758', 'Diana Towne', 'Nurse', '01831394341', 'mother21@example.com', '4132411692477', 'Janae Feeney', '01366238874', 'guardian21@example.com', '1314162533439', 'Grandparent', 1, 3, 4, '2025-12-25', NULL, 2025000021, 900021, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:51', '2025-12-24 10:33:51', '127.0.0.1', 1, NULL, '2025-12-24 10:33:51', '2025-12-24 11:33:01'),
(22, 'Jermain', 'Runolfsson', '2009-08-14', 'Male', 'A-', 'Islam', 'Bangladeshi', '8032376937677', '01575099138', 'student22@example.com', '$2y$12$BHrk3IrzKbQycV6ULv9kVe/0DmCUiefz6RTiJOX27L4kHIiiN881e', '2335 Aliza Alley Apt. 366\nRueckerport, MN 02557', '5649 Francisca Mount Apt. 519\nEast Marisol, MD 84545', 'ADM-00022', '2016-10-21', 'C', 'Commerce', '2025-2026', 'Kemmer-Mohr School', 'Prof. Emanuel Mitchell', 'Businessman', '01554353084', 'father22@example.com', '2484931382072', 'Prof. Madeline Mante', 'Businesswoman', '01557540265', 'mother22@example.com', '9635301895616', 'Prof. Otho Kerluke Sr.', '01663794991', 'guardian22@example.com', '1071872568725', 'Aunt', 1, 4, 6, '2025-12-25', NULL, 2025000022, 900022, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:51', '2025-12-24 10:33:51', '127.0.0.1', 1, NULL, '2025-12-24 10:33:51', '2025-12-24 11:33:20'),
(23, 'Furman', 'Stanton', '1990-12-31', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '1304747799711', '01591016427', 'student23@example.com', '$2y$12$cDtVa2ZWZEQj.1EUjpKgJ.pSqFKa9FYXR7FlLAr/.Fs1heX6vADGG', '8714 Cruz Center\nEast Terencetown, RI 83465-0256', '26878 Nikolaus River Apt. 178\nWest Devon, ME 34546-7988', 'ADM-00023', '2025-12-02', 'B', 'Science', '2025-2026', 'Dare Inc School', 'Prof. Chadrick Olson Sr.', 'Businessman', '01595017811', 'father23@example.com', '2030112510761', 'Aletha O\'Connell DDS', 'Doctor', '01430489870', 'mother23@example.com', '0031689011119', 'Talon Hettinger', '01765598763', 'guardian23@example.com', '0883713495864', 'Aunt', 1, 4, 2, '2025-12-25', NULL, 2025000023, 900023, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:51', '2025-12-24 10:33:51', '127.0.0.1', 1, NULL, '2025-12-24 10:33:51', '2025-12-24 11:32:48'),
(24, 'Dashawn', 'Brown', '2019-05-04', 'Other', 'B+', 'Islam', 'Bangladeshi', '6895883156269', '01980504630', 'student24@example.com', '$2y$12$EPKwUDV8HBsXaylSA9oHReHsabhXWWIWR/ofycR9Ih.WALOLudK8K', '63679 Wyman Walk\nAglaestad, IL 64698', '967 Gustave Parkways\nKadinshire, LA 78198', 'ADM-00024', '2011-02-24', 'A', 'Commerce', '2025-2026', 'Denesik Inc School', 'Marty West III', 'Engineer', '01353573460', 'father24@example.com', '0321086770404', 'Shyanne Ruecker', 'Doctor', '01446888991', 'mother24@example.com', '8305768317539', 'Yadira Jacobson', '01754842133', 'guardian24@example.com', '9465427003721', 'Grandparent', 1, 3, 10, '2025-12-25', NULL, 2025000024, 900024, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:52', '2025-12-24 10:33:52', '127.0.0.1', 1, NULL, '2025-12-24 10:33:52', '2025-12-24 11:33:53'),
(25, 'Madeline', 'Botsford', '1985-03-27', 'Other', 'O+', 'Hindu', 'Bangladeshi', '9896410777821', '01947060097', 'student25@example.com', '$2y$12$euw6pb6nFV.0X5BsOzSMsOFWlqNGWFVbpLwmAD30NARwRDt6zeL8W', '7237 Sandy Heights\nPort Marlonbury, DE 80898', '841 Sauer Circles Suite 918\nReinaville, HI 10022-6534', 'ADM-00025', '1991-07-29', 'B', 'Science', '2025-2026', 'Koch Group School', 'Tyreek Price', 'Engineer', '01608274480', 'father25@example.com', '0945682948551', 'Alba Quitzon', 'Housewife', '01705118795', 'mother25@example.com', '3212500686746', 'Graham Yost', '01448387655', 'guardian25@example.com', '5525714610591', 'Uncle', 1, 3, 9, '2025-12-25', NULL, 2025000025, 900025, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:52', '2025-12-24 10:33:52', '127.0.0.1', 1, NULL, '2025-12-24 10:33:52', '2025-12-24 11:33:42'),
(26, 'Patricia', 'Smith', '2003-03-07', 'Male', 'AB-', 'Christian', 'Bangladeshi', '4751065084873', '01669882385', 'student26@example.com', '$2y$12$2.85rSZ9uXR4BbcjdBZ8leO2sDhgVylknBZHEsn3ajyNgXDR3fO5y', '128 Koch Forest\nRoobbury, MD 25250-6867', '16923 Miller Common Apt. 539\nSouth Carissa, MA 31606-5705', 'ADM-00026', '1991-06-10', 'B', 'Commerce', '2025-2026', 'Sanford Inc School', 'Ned Fritsch Jr.', 'Teacher', '01852378726', 'father26@example.com', '0674342757746', 'Savannah Mills', 'Housewife', '01438800681', 'mother26@example.com', '9079426920680', 'Lacey O\'Conner', '01643860712', 'guardian26@example.com', '7707429520493', 'Brother', 1, 4, 10, '2025-12-25', NULL, 2025000026, 900026, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:52', '2025-12-24 10:33:52', '127.0.0.1', 1, NULL, '2025-12-24 10:33:52', '2025-12-24 11:33:55'),
(27, 'Jaden', 'Kihn', '2006-12-06', 'Male', 'B+', 'Islam', 'Bangladeshi', '0584110991010', '01456933771', 'student27@example.com', '$2y$12$ny3ffUltAmTJSsSXXeF4d.4yymyG3VIdDDhVLXox599tJgA6ibbP.', '280 Hosea Isle Apt. 288\nBrisabury, NJ 14696-2988', '7278 Missouri Trafficway Apt. 419\nPort Annabelleshire, DE 88500', 'ADM-00027', '1974-08-18', 'A', 'Arts', '2025-2026', 'Baumbach PLC School', 'Dr. Miles Stehr', 'Doctor', '01513058444', 'father27@example.com', '8247198753851', 'Prof. Cayla Hills IV', 'Housewife', '01733674861', 'mother27@example.com', '1677369484565', 'Jayda Lynch', '01408753758', 'guardian27@example.com', '2282408059895', 'Aunt', 1, 2, 3, '2025-12-25', NULL, 2025000027, 900027, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:52', '2025-12-24 10:33:52', '127.0.0.1', 1, NULL, '2025-12-24 10:33:52', '2025-12-24 11:32:55'),
(28, 'Loren', 'Murazik', '2015-10-03', 'Other', 'O-', 'Christian', 'Bangladeshi', '2179125932865', '01311126127', 'student28@example.com', '$2y$12$kVWh6u4RKlL4WH07hmnQGu4dJf.klj.QyYVWOi.I8.3EvfsRuNWvS', '5078 Garfield Forge Apt. 364\nNorth Aliya, AL 70788', '2437 Gusikowski Shore Apt. 590\nSouth Devante, AL 50696-3634', 'ADM-00028', '2003-06-11', 'C', 'Science', '2025-2026', 'Schowalter, Willms and Conroy School', 'Dr. Stan Daniel', 'Teacher', '01955051029', 'father28@example.com', '9216905110214', 'Roma Strosin', 'Housewife', '01797399469', 'mother28@example.com', '1681213606532', 'Dr. Lesley Barton', '01936710603', 'guardian28@example.com', '0532744249967', 'Grandparent', 1, 5, 6, '2025-12-25', NULL, 2025000028, 900028, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:52', '2025-12-24 10:33:52', '127.0.0.1', 1, NULL, '2025-12-24 10:33:52', '2025-12-24 11:33:20'),
(29, 'Vivien', 'Roob', '1978-02-02', 'Other', 'B+', 'Christian', 'Bangladeshi', '2436514435225', '01902062660', 'student29@example.com', '$2y$12$XWwcIabJSjvdjspqcsgLwezLaqPb1ASLhr/32ApprOCn1Rb5TSQLW', '48378 Jody Pass\nVolkmanchester, TN 46795', '3204 Jast Burg\nJulioland, ME 41539-6645', 'ADM-00029', '2015-12-30', 'B', 'Arts', '2025-2026', 'Witting-Howell School', 'Philip Barton', 'Teacher', '01559373583', 'father29@example.com', '9066859606015', 'Dr. Alexane Wisozk', 'Housewife', '01978087465', 'mother29@example.com', '8118412242004', 'Cade Jakubowski II', '01923607272', 'guardian29@example.com', '7022240776165', 'Sister', 1, 4, 9, '2025-12-25', NULL, 2025000029, 900029, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:53', '2025-12-24 10:33:53', '127.0.0.1', 1, NULL, '2025-12-24 10:33:53', '2025-12-24 11:33:44'),
(30, 'Cleta', 'Auer', '2015-11-03', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '6736620892719', '01551123621', 'student30@example.com', '$2y$12$mMpooy.RdAm.RT/52dgz.uzNaxiO.qhv3s8qKBJlTrGmPS8yXlRiC', '7097 Coby Stream\nSouth Milan, GA 06241-3582', '942 Gus View Apt. 139\nWest Kamrynhaven, CO 53040-5382', 'ADM-00030', '1985-05-19', 'C', 'Arts', '2025-2026', 'Zemlak, Connelly and Connelly School', 'Dr. Jon Abshire I', 'Doctor', '01518615001', 'father30@example.com', '7790121539503', 'Lilla Padberg I', 'Doctor', '01389438116', 'mother30@example.com', '8981007504924', 'Allison Mayer', '01766985713', 'guardian30@example.com', '6852755265465', 'Grandparent', 1, 4, 4, '2025-12-25', NULL, 2025000030, 900030, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:53', '2025-12-24 10:33:53', '127.0.0.1', 1, NULL, '2025-12-24 10:33:53', '2025-12-24 11:33:03'),
(31, 'Zachery', 'O\'Keefe', '1982-03-14', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '5285539631641', '01738899391', 'student31@example.com', '$2y$12$d5P0w.VNhzcIKbU1fQyVYOaLEHG8RidiVOk4k5TFdx3aZEW.1zPZC', '2016 Kasey Passage Apt. 162\nKilbackshire, DC 18672-8576', '301 Kuhlman Island\nEast Travonside, ND 06423-2762', 'ADM-00031', '1971-09-03', 'C', 'Commerce', '2025-2026', 'Bins, Connelly and Daugherty School', 'Judd Schaefer', 'Engineer', '01885586896', 'father31@example.com', '5308624735811', 'Hettie Haag II', 'Doctor', '01566199137', 'mother31@example.com', '4528611582140', 'Dagmar Grant', '01386525169', 'guardian31@example.com', '6310872238492', 'Grandparent', 1, 2, 8, '2025-12-25', NULL, 2025000031, 900031, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:53', '2025-12-24 10:33:53', '127.0.0.1', 1, NULL, '2025-12-24 10:33:53', '2025-12-24 11:33:35'),
(32, 'Linnie', 'Wyman', '1974-10-04', 'Male', 'A+', 'Other', 'Bangladeshi', '7692729215729', '01542296331', 'student32@example.com', '$2y$12$3/FLfyzW/DlE25hypnry6eDbb6yQsQ1LmhlX/LC/BUhLMMBTyAZ6i', '36453 Marks Roads Apt. 593\nLake Taniaburgh, CO 28518', '1823 Erich Crossroad Suite 355\nGoyetteport, ND 02064', 'ADM-00032', '1995-04-12', 'A', 'Science', '2025-2026', 'Connelly and Sons School', 'Mr. Kraig Deckow Jr.', 'Farmer', '01961082949', 'father32@example.com', '9786242302805', 'Daphney Jakubowski III', 'Housewife', '01696000973', 'mother32@example.com', '9250420067153', 'Prof. Orion Sporer DVM', '01619411466', 'guardian32@example.com', '5558615135174', 'Aunt', 1, 6, 6, '2025-12-25', NULL, 2025000032, 900032, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:53', '2025-12-24 10:33:53', '127.0.0.1', 1, NULL, '2025-12-24 10:33:53', '2025-12-24 11:33:21'),
(33, 'Jaunita', 'Hand', '1995-04-23', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '8342724833654', '01947744894', 'student33@example.com', '$2y$12$YS4mo8u1e9tAXxDbphPBJOAZxRXppPjxYbV63CCXdg3ef4bup2lRa', '6781 Balistreri Prairie\nErabury, RI 48249', '52395 Bernier Shores Apt. 804\nStantonhaven, NE 76569', 'ADM-00033', '2005-06-20', 'B', 'Science', '2025-2026', 'Bahringer LLC School', 'Dr. Waylon Jacobson Sr.', 'Businessman', '01978810621', 'father33@example.com', '3308983628561', 'Mrs. Vicenta Grady DVM', 'Nurse', '01561587250', 'mother33@example.com', '4887027459836', 'Pansy Price', '01393054099', 'guardian33@example.com', '6272904440242', 'Grandparent', 1, 5, 9, '2025-12-25', NULL, 2025000033, 900033, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:53', '2025-12-24 10:33:53', '127.0.0.1', 1, NULL, '2025-12-24 10:33:53', '2025-12-24 11:33:45'),
(34, 'Vanessa', 'Jacobi', '1977-07-29', 'Other', 'O+', 'Islam', 'Bangladeshi', '5389163698179', '01768075703', 'student34@example.com', '$2y$12$GgpT1c9WjrHvToZjobDlju0dn2RjuiHQpxC20y272KIn5f1WyAyC2', '61965 Thompson Fords\nNeldachester, NE 67772-7172', '49249 Russel Rest Suite 403\nTorpchester, ID 44792', 'ADM-00034', '2017-06-30', 'A', 'Commerce', '2025-2026', 'Trantow, Stamm and Kemmer School', 'Mr. Lazaro Heller', 'Teacher', '01460669663', 'father34@example.com', '9670396347975', 'Prof. Alessandra Schuppe', 'Housewife', '01719141958', 'mother34@example.com', '6897556207362', 'Ivy Batz PhD', '01650149821', 'guardian34@example.com', '2931069163736', 'Sister', 1, 5, 2, '2025-12-25', NULL, 2025000034, 900034, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:53', '2025-12-24 10:33:53', '127.0.0.1', 1, NULL, '2025-12-24 10:33:53', '2025-12-24 11:32:50'),
(35, 'Easton', 'Koelpin', '2006-07-16', 'Female', 'O+', 'Islam', 'Bangladeshi', '6339131744654', '01893814128', 'student35@example.com', '$2y$12$SmCQQr0on7ThAgJHx0Gba.qR/mngIidOPRxD8BKHTmgyQl6nS5E0m', '85266 Ofelia Fords Suite 577\nHagenesstad, AZ 19104-5626', '133 Federico Fort Apt. 253\nIsomfort, MT 67526-0798', 'ADM-00035', '2024-12-30', 'C', 'Commerce', '2025-2026', 'O\'Reilly LLC School', 'Mr. Lorenzo Emard', 'Teacher', '01429438001', 'father35@example.com', '7924625755777', 'Alice Pagac', 'Nurse', '01913468236', 'mother35@example.com', '9984189258320', 'Dr. Jalyn Spencer III', '01591030053', 'guardian35@example.com', '7877634781232', 'Grandparent', 1, 2, 5, '2025-12-25', NULL, 2025000035, 900035, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:54', '2025-12-24 10:33:54', '127.0.0.1', 1, NULL, '2025-12-24 10:33:54', '2025-12-24 11:33:11'),
(36, 'Royce', 'Braun', '1984-07-03', 'Other', 'A-', 'Other', 'Bangladeshi', '7226417466599', '01795363782', 'student36@example.com', '$2y$12$JThmByfE.edaDoS7lgw4ZOfsMJuYjcdMz60/tggQp6LO9Sg0aX38K', '133 Ismael Spur\nKrisport, NC 43001-8720', '80304 Vandervort Overpass Apt. 848\nPort Velva, CO 53377-6817', 'ADM-00036', '1992-08-02', 'C', 'Arts', '2025-2026', 'Bayer, Mertz and Hintz School', 'Rory Flatley I', 'Doctor', '01873279324', 'father36@example.com', '8405896104547', 'Dr. Maci Hagenes II', 'Doctor', '01601370368', 'mother36@example.com', '7062190126806', 'Dr. Samanta Kohler IV', '01726779803', 'guardian36@example.com', '3855017168100', 'Grandparent', 1, 6, 9, '2025-12-25', NULL, 2025000036, 900036, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:54', '2025-12-24 10:33:54', '127.0.0.1', 1, NULL, '2025-12-24 10:33:54', '2025-12-24 11:33:46'),
(37, 'Dion', 'Gutmann', '1977-03-19', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '5419759542060', '01564126076', 'student37@example.com', '$2y$12$RQtD515EuYX0HPxYJJG6PefPjwE/4U4RJ57fLCNJ75bjQP5WbKvwq', '124 Schiller Junctions\nWest Casperville, IA 24425-7029', '1776 Weimann Port Apt. 463\nWest Laishaside, IN 50733-2147', 'ADM-00037', '1985-01-27', 'C', 'Science', '2025-2026', 'McKenzie-Baumbach School', 'Vance Tremblay', 'Farmer', '01448481697', 'father37@example.com', '4316557197668', 'Ms. Beryl Eichmann', 'Businesswoman', '01527035392', 'mother37@example.com', '0713552048323', 'Flo Gleason', '01694035464', 'guardian37@example.com', '7718281056371', 'Brother', 1, 3, 3, '2025-12-25', NULL, 2025000037, 900037, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:54', '2025-12-24 10:33:54', '127.0.0.1', 1, NULL, '2025-12-24 10:33:54', '2025-12-24 11:32:56'),
(38, 'Cortney', 'Lebsack', '1984-07-21', 'Female', 'O-', 'Other', 'Bangladeshi', '1312392304307', '01390422118', 'student38@example.com', '$2y$12$DZJHQsCz5cSeVr6eToeLa.aysqBg0JpjpRYiWgMTBpNWKGvpAVKDa', '2728 Waters Ways Apt. 717\nImmanueltown, MI 30189', '50109 Hayes Place\nSchustermouth, NE 01883', 'ADM-00038', '2017-11-18', 'C', 'Science', '2025-2026', 'Medhurst-Braun School', 'Kareem Hansen', 'Engineer', '01669101396', 'father38@example.com', '9886519318081', 'Diana Borer', 'Nurse', '01917207268', 'mother38@example.com', '7763596793432', 'Raegan Steuber', '01893008890', 'guardian38@example.com', '4930397657535', 'Sister', 1, 3, 8, '2025-12-25', NULL, 2025000038, 900038, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:54', '2025-12-24 10:33:54', '127.0.0.1', 1, NULL, '2025-12-24 10:33:54', '2025-12-24 11:33:37'),
(39, 'Pablo', 'Greenfelder', '1988-10-27', 'Other', 'A-', 'Other', 'Bangladeshi', '3207298147421', '01975019432', 'student39@example.com', '$2y$12$3QG57j93Cz07/p6ZGgfLQ.mrjnp7vcIcLZlPhMSTwuy6n/aKt4vdO', '78205 O\'Conner Mill\nAnkundingland, VA 01800-4838', '7523 Brent Court\nSouth Ashtyn, NV 42842-2686', 'ADM-00039', '1991-05-21', 'B', 'Science', '2025-2026', 'Sporer-Yost School', 'Walton Hickle', 'Farmer', '01791344375', 'father39@example.com', '5216301769776', 'Esther Kunde', 'Nurse', '01970451819', 'mother39@example.com', '1378725622967', 'Willie Hyatt V', '01721870782', 'guardian39@example.com', '9253865648763', 'Brother', 1, 3, 5, '2025-12-25', NULL, 2025000039, 900039, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:54', '2025-12-24 10:33:54', '127.0.0.1', 1, NULL, '2025-12-24 10:33:54', '2025-12-24 11:33:13'),
(40, 'Isabella', 'Langworth', '1982-12-02', 'Female', 'B-', 'Other', 'Bangladeshi', '4116035823923', '01860702053', 'student40@example.com', '$2y$12$TBhIGxFG7jjsgvtdu.z1mujaiy/0pzx/J05CAVf3/LqkIFEaKedzG', '2135 Chet Park Suite 876\nKaleighhaven, NY 00623', '616 Sadie Haven\nKeeblerton, MN 25597-4977', 'ADM-00040', '1982-08-17', 'A', 'Commerce', '2025-2026', 'Lebsack, Sipes and Bins School', 'Dimitri Fritsch', 'Doctor', '01976758357', 'father40@example.com', '8804890379588', 'Prof. Josefa Walter MD', 'Housewife', '01627290180', 'mother40@example.com', '0934959393836', 'Lexus Herzog', '01656941475', 'guardian40@example.com', '5815974501980', 'Sister', 1, 3, 7, '2025-12-25', NULL, 2025000040, 900040, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:55', '2025-12-24 10:33:55', '127.0.0.1', 1, NULL, '2025-12-24 10:33:55', '2025-12-24 11:33:28'),
(41, 'Monique', 'Gleason', '2016-07-13', 'Male', 'AB-', 'Christian', 'Bangladeshi', '9299777196881', '01306644015', 'student41@example.com', '$2y$12$9tWwNFbz0zs7vycbbSYMr.Fcoh/GvAJbpxBftAUITR9Z87egXJ4.m', '7796 Rosenbaum Mall Apt. 986\nJakobville, NH 24631-9972', '309 Maritza Crossroad Suite 785\nKossbury, TN 65068-8762', 'ADM-00041', '1991-05-18', 'A', 'Arts', '2025-2026', 'Ondricka, Grimes and Botsford School', 'Andre Dicki Jr.', 'Teacher', '01438626012', 'father41@example.com', '4560976517454', 'Prof. Tianna Okuneva MD', 'Teacher', '01491666629', 'mother41@example.com', '8428942222144', 'Rocio Bernhard', '01934966717', 'guardian41@example.com', '2494886522756', 'Sister', 1, 6, 2, '2025-12-25', NULL, 2025000041, 900041, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:55', '2025-12-24 10:33:55', '127.0.0.1', 1, NULL, '2025-12-24 10:33:55', '2025-12-24 11:32:51'),
(42, 'Jamir', 'Trantow', '1978-11-23', 'Other', 'B+', 'Christian', 'Bangladeshi', '1093725420902', '01346193673', 'student42@example.com', '$2y$12$Dro97MwQkqW1MNleBbkd9OmcY/v4URu3MNmwWxS9WgvNqQR.xpuWK', '1556 Casimir Stream Suite 076\nHermanberg, CA 54566', '1985 Kris Hollow Apt. 103\nBernhardstad, TX 16268-3914', 'ADM-00042', '1981-08-05', 'B', 'Commerce', '2025-2026', 'Zboncak-Maggio School', 'Kristofer Olson', 'Teacher', '01708282768', 'father42@example.com', '8791339377201', 'Prof. Estell Dare DVM', 'Doctor', '01912241629', 'mother42@example.com', '3047394060876', 'Mrs. Shakira Christiansen Jr.', '01313724403', 'guardian42@example.com', '9904548336439', 'Sister', 1, 4, 7, '2025-12-25', NULL, 2025000042, 900042, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:55', '2025-12-24 10:33:55', '127.0.0.1', 1, NULL, '2025-12-24 10:33:55', '2025-12-24 11:33:29'),
(43, 'Mustafa', 'Mann', '2011-12-01', 'Male', 'O-', 'Islam', 'Bangladeshi', '2841871738447', '01808845586', 'student43@example.com', '$2y$12$vndcVPETjRbsgXIHf7hw6eVfG.Fdz8W3BbC5rBVXTIyCFzmQZwc3G', '293 Jocelyn Pass\nEast Amyachester, MO 16130', '9725 Chadd Crossroad\nSouth Briamouth, NC 07290', 'ADM-00043', '1999-02-26', 'C', 'Commerce', '2025-2026', 'Kuhlman, Considine and Cummerata School', 'Gilbert Ernser', 'Farmer', '01665230000', 'father43@example.com', '4656311237995', 'Candace Von', 'Housewife', '01739360659', 'mother43@example.com', '4814499354264', 'Mrs. Yesenia Hammes', '01745276307', 'guardian43@example.com', '1600183450208', 'Uncle', 1, 4, 3, '2025-12-25', NULL, 2025000043, 900043, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:55', '2025-12-24 10:33:55', '127.0.0.1', 1, NULL, '2025-12-24 10:33:55', '2025-12-24 11:32:57'),
(44, 'Hailey', 'Kirlin', '2011-10-26', 'Female', 'O+', 'Christian', 'Bangladeshi', '9995071007954', '01760191902', 'student44@example.com', '$2y$12$8lnvHfhvFfPxTvy8bIaebukFT.pvkJTMQbROk2Te.86ICD13kcGca', '196 Harris Overpass Suite 076\nHagenesberg, VT 55182-1329', '5672 Karlie Passage\nRuntemouth, DC 35132-2790', 'ADM-00044', '1996-12-28', 'A', 'Commerce', '2025-2026', 'Jacobson LLC School', 'Giles Torp PhD', 'Engineer', '01565685028', 'father44@example.com', '8620637101696', 'Caitlyn Dach DVM', 'Housewife', '01579058675', 'mother44@example.com', '9829408265748', 'Laron Schuppe', '01933252650', 'guardian44@example.com', '6320929121218', 'Uncle', 1, 7, 6, '2025-12-25', NULL, 2025000044, 900044, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:55', '2025-12-24 10:33:55', '127.0.0.1', 1, NULL, '2025-12-24 10:33:55', '2025-12-24 11:33:23'),
(45, 'Osborne', 'Beahan', '2002-04-07', 'Male', 'O+', 'Islam', 'Bangladeshi', '0116771330351', '01823553132', 'student45@example.com', '$2y$12$G26VnNvmCA6zNSmEkpx4ouBZekisA/6Gh5yjlMVzVdwwO87iyJpES', '55929 Dare Mall Apt. 775\nEast Hillard, OR 02312-2778', '1163 Wiegand Plain Apt. 317\nSouth Hailee, NE 30031-7085', 'ADM-00045', '1992-04-19', 'A', 'Science', '2025-2026', 'Rohan Group School', 'Prof. Jeramie Kuhic IV', 'Teacher', '01498346382', 'father45@example.com', '2988304916538', 'Palma Kihn', 'Businesswoman', '01725287976', 'mother45@example.com', '1763532739787', 'Ruben Kihn', '01722848630', 'guardian45@example.com', '3754979172642', 'Sister', 1, 4, 1, '2025-12-25', NULL, 2025000045, 900045, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:56', '2025-12-24 10:33:56', '127.0.0.1', 1, NULL, '2025-12-24 10:33:56', '2025-12-24 11:32:40'),
(46, 'Maximilian', 'Predovic', '1983-01-21', 'Other', 'AB+', 'Islam', 'Bangladeshi', '9703543948846', '01560359462', 'student46@example.com', '$2y$12$KUeUl/AmbYg2qloRHRTMl.itrO1L1p2DDTUFL4jCLuUCMbcxEcioO', '10279 Yundt Brook Apt. 808\nNew Roger, VA 91284-8594', '9548 Zemlak Place Suite 904\nLake Lessie, WY 85741-7365', 'ADM-00046', '1999-03-30', 'C', 'Science', '2025-2026', 'Bernier Inc School', 'Prof. Ottis Kovacek III', 'Doctor', '01926462556', 'father46@example.com', '4541976407814', 'Shaylee Schroeder', 'Nurse', '01911254137', 'mother46@example.com', '0118067162458', 'Kylie Konopelski V', '01518339145', 'guardian46@example.com', '0706209692976', 'Aunt', 1, 5, 4, '2025-12-25', NULL, 2025000046, 900046, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:56', '2025-12-24 10:33:56', '127.0.0.1', 1, NULL, '2025-12-24 10:33:56', '2025-12-24 11:33:04'),
(47, 'Isai', 'Hartmann', '1972-10-05', 'Male', 'O+', 'Hindu', 'Bangladeshi', '6627173956929', '01921049581', 'student47@example.com', '$2y$12$mz1lqJuBRn5Ng6eyNnekYuA2dFsXleLXuXsaWNbYlAeKKDLGQ.i.W', '98632 Luigi Inlet\nJakubowskiborough, CT 97635', '6599 Toni Ways Suite 281\nSouth Orionhaven, SD 79691-1752', 'ADM-00047', '1993-10-04', 'C', 'Science', '2025-2026', 'Schroeder Inc School', 'Dr. Allan Denesik', 'Doctor', '01841464936', 'father47@example.com', '6925803039467', 'Josiane Douglas', 'Doctor', '01373741350', 'mother47@example.com', '5786149567052', 'Abel Cassin', '01995314854', 'guardian47@example.com', '5689120766590', 'Aunt', 1, 5, 1, '2025-12-25', NULL, 2025000047, 900047, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:56', '2025-12-24 10:33:56', '127.0.0.1', 1, NULL, '2025-12-24 10:33:56', '2025-12-24 11:32:41'),
(48, 'Vinnie', 'Becker', '2008-03-27', 'Other', 'A-', 'Islam', 'Bangladeshi', '1350393437064', '01510849883', 'student48@example.com', '$2y$12$xBHnJ3/BvwFoYMvMfV3a6epWCDc8Q3ZnQA6V1ZA.45yPT.Il4Nn4.', '68274 Jaden Creek\nKochburgh, SC 38423', '4941 Sylvan Streets\nArmandstad, NE 81523-3475', 'ADM-00048', '1978-11-06', 'C', 'Science', '2025-2026', 'Farrell Group School', 'Prof. Connor Marks', 'Farmer', '01735676213', 'father48@example.com', '9057614510626', 'Elsie Harvey', 'Housewife', '01616686099', 'mother48@example.com', '1356147368218', 'Dr. Estrella Crooks', '01653989288', 'guardian48@example.com', '7918767160670', 'Aunt', 1, 6, 4, '2025-12-25', NULL, 2025000048, 900048, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:56', '2025-12-24 10:33:56', '127.0.0.1', 1, NULL, '2025-12-24 10:33:56', '2025-12-24 11:33:05'),
(49, 'Ludie', 'Buckridge', '2007-01-09', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '6881871593652', '01943520660', 'student49@example.com', '$2y$12$oX7HFuh5VweGvZxcW2lD8OxVJRtMcrHlFi6It6GhRMmz.uOZnu66i', '33524 Kaelyn Lodge\nNew Genoveva, SD 41427-8345', '8022 West Court Suite 285\nHenriettemouth, MT 31462-9809', 'ADM-00049', '1986-01-29', 'A', 'Science', '2025-2026', 'Ullrich LLC School', 'Mr. Gerson Mertz V', 'Businessman', '01965694758', 'father49@example.com', '4729855940211', 'Orpha Borer', 'Teacher', '01685344260', 'mother49@example.com', '0294862596903', 'Alysa Hettinger', '01679803258', 'guardian49@example.com', '8913882892020', 'Aunt', 1, 5, 7, '2025-12-25', NULL, 2025000049, 900049, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:56', '2025-12-24 10:33:56', '127.0.0.1', 1, NULL, '2025-12-24 10:33:56', '2025-12-24 11:33:31'),
(50, 'Raul', 'Lehner', '1990-12-06', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '3754535358275', '01509200595', 'student50@example.com', '$2y$12$drAVfiKCRCKDGle0PEyce.drfXNZWHbM6dficoYmNn4RakStGgIkG', '8050 Kiley Garden Apt. 217\nPort Ramonshire, NV 93440-8320', '68431 Rosenbaum Manor Apt. 422\nLoraton, NC 21986', 'ADM-00050', '1989-08-16', 'B', 'Commerce', '2025-2026', 'Cole, Roberts and Walter School', 'Lionel Cole', 'Farmer', '01715773104', 'father50@example.com', '7520232961080', 'Thalia Donnelly I', 'Nurse', '01360093130', 'mother50@example.com', '5098535550591', 'Krystina King', '01381362810', 'guardian50@example.com', '3714395859695', 'Aunt', 1, 7, 9, '2025-12-25', NULL, 2025000050, 900050, NULL, NULL, NULL, NULL, NULL, '2025-12-24 10:33:56', '2025-12-24 10:33:56', '127.0.0.1', 1, NULL, '2025-12-24 10:33:56', '2025-12-24 11:33:48');

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
(1, 14, 1, '2025-12-24 11:51:30', '2025-12-24 11:51:30'),
(2, 14, 3, '2025-12-24 11:51:32', '2025-12-24 11:51:32'),
(3, 14, 5, '2025-12-24 11:51:33', '2025-12-24 11:51:33'),
(4, 14, 7, '2025-12-24 11:51:34', '2025-12-24 11:51:34'),
(5, 14, 6, '2025-12-24 11:51:35', '2025-12-24 11:51:35'),
(6, 14, 4, '2025-12-24 11:51:36', '2025-12-24 11:51:36'),
(7, 14, 2, '2025-12-24 11:51:38', '2025-12-24 11:51:38'),
(8, 10, 1, '2025-12-26 05:50:35', '2025-12-26 05:50:35'),
(9, 10, 2, '2025-12-26 05:50:36', '2025-12-26 05:50:36'),
(10, 10, 3, '2025-12-26 05:50:38', '2025-12-26 05:50:38'),
(11, 16, 1, '2025-12-26 05:50:43', '2025-12-26 05:50:43'),
(12, 16, 3, '2025-12-26 05:50:44', '2025-12-26 05:50:44'),
(13, 16, 2, '2025-12-26 05:50:45', '2025-12-26 05:50:45'),
(14, 45, 1, '2025-12-26 05:50:49', '2025-12-26 05:50:49'),
(15, 45, 3, '2025-12-26 05:50:50', '2025-12-26 05:50:50'),
(16, 45, 2, '2025-12-26 05:50:51', '2025-12-26 05:50:51'),
(17, 47, 1, '2025-12-26 05:50:54', '2025-12-26 05:50:54'),
(18, 47, 3, '2025-12-26 05:50:55', '2025-12-26 05:50:55'),
(19, 47, 2, '2025-12-26 05:50:56', '2025-12-26 05:50:56'),
(20, 1, 1, '2025-12-26 06:16:07', '2025-12-26 06:16:07'),
(21, 1, 3, '2025-12-26 06:16:08', '2025-12-26 06:16:08'),
(22, 1, 5, '2025-12-26 06:16:09', '2025-12-26 06:16:09'),
(23, 1, 7, '2025-12-26 06:16:11', '2025-12-26 06:16:11'),
(24, 1, 6, '2025-12-26 06:16:12', '2025-12-26 06:16:12'),
(25, 1, 4, '2025-12-26 06:16:13', '2025-12-26 06:16:13'),
(26, 1, 2, '2025-12-26 06:16:14', '2025-12-26 06:16:14');

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
(1, 'Bangla', 1, 1, '2025-12-24 10:33:56', '2025-12-24 10:33:56'),
(2, 'English', 1, 1, '2025-12-24 10:33:56', '2025-12-24 10:33:56'),
(3, 'Math', 1, 1, '2025-12-24 10:33:56', '2025-12-24 10:33:56'),
(4, 'Science', 1, 1, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(5, 'Social Studies', 1, 1, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(6, 'Islamic Studies', 1, 1, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(7, 'Physical Education', 1, 1, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(8, 'Bangla', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(9, 'English', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(10, 'Math', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(11, 'Science', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(12, 'Social Studies', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(13, 'Islamic Studies', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(14, 'Physical Education', 1, 2, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(15, 'Bangla', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(16, 'English', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(17, 'Math', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(18, 'Science', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(19, 'Social Studies', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(20, 'Islamic Studies', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(21, 'Physical Education', 1, 3, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(22, 'Bangla', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(23, 'English', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(24, 'Math', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(25, 'Science', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(26, 'Social Studies', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(27, 'Islamic Studies', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(28, 'Physical Education', 1, 4, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(29, 'Bangla', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(30, 'English', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(31, 'Math', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(32, 'Science', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(33, 'Social Studies', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(34, 'Islamic Studies', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(35, 'Physical Education', 1, 5, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(36, 'Bangla', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(37, 'English', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(38, 'Math', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(39, 'Science', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(40, 'Social Studies', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(41, 'Islamic Studies', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(42, 'Physical Education', 1, 6, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(43, 'Bangla', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(44, 'English', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(45, 'Math', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(46, 'Science', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(47, 'Social Studies', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(48, 'Islamic Studies', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(49, 'Physical Education', 1, 7, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(50, 'Bangla', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(51, 'English', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(52, 'Math', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(53, 'Science', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(54, 'Social Studies', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(55, 'Islamic Studies', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(56, 'Physical Education', 1, 8, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(57, 'Bangla', 1, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(58, 'English', 1, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(59, 'ICT', 1, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(60, 'Physical Education', 1, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(61, 'Physics', 2, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(62, 'Chemistry', 2, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(63, 'Biology', 2, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(64, 'Higher Mathematics', 2, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(65, 'Accounting', 3, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(66, 'Business Studies', 3, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(67, 'Finance', 3, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(68, 'Economics', 3, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(69, 'History', 4, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(70, 'Civics', 4, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(71, 'Geography', 4, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(72, 'Social Work', 4, 9, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(73, 'Bangla', 1, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(74, 'English', 1, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(75, 'ICT', 1, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(76, 'Physical Education', 1, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(77, 'Physics', 2, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(78, 'Chemistry', 2, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(79, 'Biology', 2, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(80, 'Higher Mathematics', 2, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(81, 'Accounting', 3, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(82, 'Business Studies', 3, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(83, 'Finance', 3, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(84, 'Economics', 3, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(85, 'History', 4, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(86, 'Civics', 4, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(87, 'Geography', 4, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57'),
(88, 'Social Work', 4, 10, '2025-12-24 10:33:57', '2025-12-24 10:33:57');

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
(1, 'Spencer', 'Zemlak', '1993-04-17', 'Female', 'A+', '0047483734675', '01754028620', 'teacher0@example.com', '$2y$12$T7ERybwpxtx.Z5zC8bunnut56cf54HZXod5Z3DZ8Zk.eG1NMllTzu', 'Senior Teacher', '70592 Schamberger Camp\nPort Susieton, WA 94302-1640', 'Emerson Wyman', '01619910397', 'Eden Steuber', '01326811769', 'Lawson Douglas', '01359167121', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:42', '2025-12-24 10:33:42', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:42', '2025-12-24 10:33:42'),
(2, 'Selena', 'Jacobs', '1992-01-28', 'Female', 'B-', '9620434117931', '01999933970', 'teacher1@example.com', '$2y$12$HZipZMax//Md.oXzncgT0uMRUSzWjVbKI3UmftTFz5rxA6g37stfm', 'Senior Teacher', '836 Billy Loaf\nEast Annaliseton, NY 60658-2475', 'Mr. Guy Anderson PhD', '01550055675', 'Lorine Schulist', '01743924049', 'Sigmund Bednar DDS', '01326481132', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:42', '2025-12-26 06:36:12', '127.0.0.1', 1, NULL, NULL, 'CgxFg0OScwXbDOyeCluwZYhDij5JRUYP6xiBUonUuMx4eOmsR6MIrbgvcQYD', '2025-12-24 10:33:42', '2025-12-26 06:36:12'),
(3, 'Markus', 'DuBuque', '1986-07-11', 'Male', 'A-', '7068588303769', '01967502225', 'teacher2@example.com', '$2y$12$vCPnfOrqQaFFEj2gJhllE.iBjef9dRGdiozOr5ZOigfnezFzaCzeC', 'Senior Teacher', '6798 Mraz Groves Suite 884\nPort Alysonmouth, FL 61659-1337', 'Savion Maggio', '01430361295', 'Flossie Weimann', '01721951866', 'Leopoldo Hegmann', '01744778867', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:42', '2025-12-24 10:33:42', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:42', '2025-12-24 10:33:42'),
(4, 'Taryn', 'Aufderhar', '1998-04-26', 'Female', 'B-', '4572302218271', '01475848176', 'teacher3@example.com', '$2y$12$69QCNLD1Jmu.g499kCA2BOW2.jBZbHjZvSh.jk651AnH2OWDyQE2m', 'Head of Department', '71832 Funk Stream\nGislasonport, AK 50665', 'Prof. Frank Rowe PhD', '01670658937', 'Kaia Frami', '01412062693', 'Prof. Emmanuelle Balistreri', '01946365024', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:42', '2025-12-24 10:33:42', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:42', '2025-12-24 10:33:42'),
(5, 'Javonte', 'Buckridge', '1974-05-13', 'Male', 'AB+', '8535284526675', '01345849218', 'teacher4@example.com', '$2y$12$8G.5HcvYndowrpy2c.8I8.pKhjNsrICb6fTPO.4a1J59BYLFzft2u', 'Lecturer', '310 Skylar Path\nEast Leannaborough, DC 13921-6168', 'Cedrick Ondricka III', '01900695844', 'Dr. Joanne Von V', '01659665329', 'Herminia Harvey', '01817455050', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:42', '2025-12-24 10:33:42', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:42', '2025-12-24 10:33:42'),
(6, 'Baylee', 'Johns', '1987-07-27', 'Male', 'A-', '0891864480368', '01619252221', 'teacher5@example.com', '$2y$12$3pONz3wDqr11t/hdJK7Vw.bIkTeK/W9mePsUTrle1YzoCE0bcPnUS', 'Lecturer', '6942 Langworth Fort Suite 500\nEast Jose, GA 78164', 'Mohammad Kemmer', '01757861877', 'Mabel Nicolas', '01737425676', 'Maximo Bogisich PhD', '01485467673', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:43', '2025-12-24 10:33:43', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:43', '2025-12-24 10:33:43'),
(7, 'Alfreda', 'Cole', '1987-10-05', 'Female', 'AB-', '9894987965219', '01820509277', 'teacher6@example.com', '$2y$12$.advL9lEWW3zniDuumv01eQYHPIggJNTFdV4uJ1AQ9geSQnj/M9qm', 'Assistant Professor', '89391 Juliet Overpass\nWest Aniyaberg, PA 02889', 'Omer Schultz', '01746976207', 'Carlie Rowe', '01592068354', 'Serena Thiel', '01404569361', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:43', '2025-12-24 10:33:43', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:43', '2025-12-24 10:33:43'),
(8, 'Rita', 'Beier', '1976-03-20', 'Female', 'A+', '8323985076357', '01835223575', 'teacher7@example.com', '$2y$12$d..qkusRe.meQuVtlpNfCOf4ZoZg9.OUxXZNgNGST19JMNt5/p23m', 'Lecturer', '668 Callie Passage Suite 616\nEast Lurlinemouth, VA 82296-7309', 'Ali Robel', '01766169806', 'Keara Nienow', '01864324103', 'Jabari Hayes', '01360649831', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:43', '2025-12-24 10:33:43', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:43', '2025-12-24 10:33:43'),
(9, 'Liliane', 'Bergstrom', '1991-02-07', 'Male', 'O-', '0818538127429', '01300787430', 'teacher8@example.com', '$2y$12$i5fhfOUYCvRkpAbJ/rvbjet8i7vwdrM1bP2khwTs2NcricgtLkBja', 'Senior Teacher', '5469 Lebsack Pine\nAntoniaport, NC 42837', 'Josue Cruickshank', '01507551678', 'Hettie Borer', '01840999936', 'Citlalli Bode', '01663416463', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:43', '2025-12-24 10:33:43', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:43', '2025-12-24 10:33:43'),
(10, 'Levi', 'Dietrich', '1983-12-13', 'Male', 'AB-', '1962552920845', '01424292941', 'teacher9@example.com', '$2y$12$NtKnXj/Bht5wPisESjfJSuv1ZEg2Rx3P/kcp2zJZXr3/TpHfkZNX6', 'Assistant Professor', '683 Josefa Brooks\nJamilbury, DC 39590-9994', 'Charlie Hayes', '01725485984', 'Ms. Lisette Wisozk', '01898083663', 'Ansel Beahan Sr.', '01425121587', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:43', '2025-12-24 10:33:43', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:43', '2025-12-24 10:33:43'),
(11, 'Dereck', 'Nader', '1994-06-08', 'Female', 'AB+', '6001009786968', '01506866990', 'teacher10@example.com', '$2y$12$FtYGsl1xGNmtod8j2CcIkusCGC9yG637Fp0EQSx06.JcquaS9GMsO', 'Senior Teacher', '228 Rosina Field Suite 745\nOberbrunnerview, SD 02362-0787', 'Antwon McDermott', '01937515265', 'Gwendolyn Schultz', '01511130837', 'Noemie Skiles', '01713136070', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:43', '2025-12-24 10:33:43', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:43', '2025-12-24 10:33:43'),
(12, 'Kianna', 'Kassulke', '1966-03-08', 'Male', 'O+', '8408779655090', '01307291294', 'teacher11@example.com', '$2y$12$yAvVIfr5.n3Dkgmcok6UO.gRtojOLN5hB0/CefT/tyexXk0gZucOK', 'Senior Teacher', '4870 Crona Path Suite 092\nPort Loren, NE 79270', 'Braeden Steuber II', '01310189786', 'Lindsay Gleason PhD', '01733530547', 'Prof. Francisco Schuppe MD', '01731540076', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:44', '2025-12-24 10:33:44', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:44', '2025-12-24 10:33:44'),
(13, 'Dorothy', 'Marks', '1974-07-09', 'Female', 'O-', '6861487082755', '01989273217', 'teacher12@example.com', '$2y$12$APsoBifpFk6AydSW6SpNJORKDlgwrM34g1xues8eMYLAAbS7VWVei', 'Senior Teacher', '210 Shaylee Highway\nNew Sven, NM 01782', 'Dorian Johnston', '01670044317', 'Dr. Gilda Langworth', '01512958844', 'Dr. Reymundo Beier DDS', '01471284534', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:44', '2025-12-24 10:33:44', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:44', '2025-12-24 10:33:44'),
(14, 'Phyllis', 'Abernathy', '1972-03-20', 'Male', 'A-', '7615956682747', '01913510895', 'teacher13@example.com', '$2y$12$ZfrRc9SF30wAy5THPOR4YezRjFIqBrGZAMprNVu2I2WaTJZR0u3FK', 'Head of Department', '37074 Jackson Causeway\nPort Joan, CO 80599', 'Dock Jast', '01306158109', 'Nyah Oberbrunner DDS', '01502287744', 'Monserrat Steuber I', '01344108740', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:44', '2025-12-24 10:33:44', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:44', '2025-12-24 10:33:44'),
(15, 'Loraine', 'Von', '1979-10-19', 'Female', 'AB-', '5597590321997', '01546274766', 'teacher14@example.com', '$2y$12$4JPb6jYh3J1lvLj0ouou4.OFUlnL2gzkAKO2f5iXAVW/FC023WbCa', 'Lecturer', '819 Darlene Plains Apt. 458\nOkunevaberg, MS 17475', 'Chance Schamberger I', '01308604109', 'Litzy Dickens III', '01757291805', 'Dr. Betsy Ortiz', '01991875958', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:44', '2025-12-24 10:33:44', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:44', '2025-12-24 10:33:44'),
(16, 'Brittany', 'Rath', '1969-07-26', 'Female', 'A-', '2740170171564', '01419453546', 'teacher15@example.com', '$2y$12$J0wU8icX80/korDm2EJcXebmoUDOzO4TNIpLbFCoXc76DSqzp3qVq', 'Lecturer', '1086 Ceasar Fort\nEast Yvette, NH 61073-8457', 'Mr. Jay Blanda IV', '01622983565', 'Savanah Crist', '01872505009', 'Tyrique Cole', '01754314443', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:44', '2025-12-24 10:33:44', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:44', '2025-12-24 10:33:44'),
(17, 'Fermin', 'Rippin', '1975-06-20', 'Male', 'AB-', '4409370858436', '01604812225', 'teacher16@example.com', '$2y$12$VqaywMqtcG2s436eE1B1pOwouimzw2lQOjzabm/ZXUmm0ha20UIqW', 'Assistant Professor', '3742 Prosacco Viaduct\nJoshton, NY 91627', 'Prof. Fredrick Tremblay Sr.', '01536141354', 'Beryl Goodwin', '01319703908', 'Mr. Colt Kovacek', '01933803121', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:45', '2025-12-24 10:33:45', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:45', '2025-12-24 10:33:45'),
(18, 'Miles', 'Leffler', '1968-07-25', 'Female', 'B-', '7117218207312', '01846182134', 'teacher17@example.com', '$2y$12$W1mk383ax57GTkY8CyT./Ox0brzD73FPZ3WhC3qx3Lt.P4FgUrWXS', 'Senior Teacher', '212 Hermann Underpass\nSchneidermouth, NV 00491-7188', 'Lukas Kutch', '01917092890', 'Ms. Katelin Heathcote PhD', '01435815653', 'Waylon King', '01332834102', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:45', '2025-12-24 10:33:45', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:45', '2025-12-24 10:33:45'),
(19, 'Cristina', 'Mosciski', '2000-04-13', 'Female', 'A+', '1815333299698', '01583908998', 'teacher18@example.com', '$2y$12$xE0V3pYqZ1/6z1f8IzBecePcDWwK.4D.n1IrIC/9EuIuNgWkjoOUC', 'Assistant Professor', '1063 Arielle Plaza Suite 440\nPollichside, IN 23624-2748', 'Prof. Landen Lind DDS', '01431718154', 'Ms. Annamae Lakin', '01669091647', 'Rosemarie Heaney IV', '01329201714', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:45', '2025-12-24 10:33:45', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:45', '2025-12-24 10:33:45'),
(20, 'Gayle', 'Haag', '1976-01-23', 'Male', 'B+', '8383981696120', '01830750315', 'teacher19@example.com', '$2y$12$WDWmPxxLh6FF7k08efaw.uMEJW4T3DgxlWLXXq9xgSQdZ6badvWMq', 'Head of Department', '76814 Sierra Mission\nRogahntown, IN 59002', 'Mr. Antwan Miller MD', '01789740264', 'Ms. Lorna Dickinson Sr.', '01884518714', 'Ricardo Cremin', '01874625599', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:45', '2025-12-24 10:33:45', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:45', '2025-12-24 10:33:45'),
(21, 'Kyra', 'Connelly', '1998-07-20', 'Male', 'B-', '1260425723238', '01978698029', 'teacher20@example.com', '$2y$12$JRGwh4FfpEXELZ4yyhD2yuIGRglwWIPYEoj0XgG1qhHyw6Hh8Ska2', 'Senior Teacher', '76710 Arlene Radial Apt. 110\nLake Samantaview, MN 84373', 'Dr. Fred Haag PhD', '01806631880', 'Yoshiko Herzog', '01790338655', 'Harmony McClure', '01466539500', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:45', '2025-12-24 10:33:45', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:45', '2025-12-24 10:33:45'),
(22, 'Samir', 'Cormier', '1980-04-29', 'Male', 'B+', '2975946790794', '01378417374', 'teacher21@example.com', '$2y$12$9ihIGWxoCjTBPFrdkq1oQOhZcQESnMeSHrdXp6YYXzLpOMWnSlro.', 'Senior Teacher', '33249 Bednar Light Apt. 752\nBotsfordtown, MN 37791', 'Donato Quigley', '01905052130', 'Leanne Orn', '01356070920', 'Casey Borer', '01461817555', 'Grandparent', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:46', '2025-12-24 10:33:46', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:46', '2025-12-24 10:33:46'),
(23, 'Chris', 'Roob', '1988-03-16', 'Male', 'O+', '3843438925352', '01333162765', 'teacher22@example.com', '$2y$12$MzvP9nYUv3JEiCjHGjBAQeFrF8hQto7o.TbrZWYu4oPv2W9vz0TA2', 'Lecturer', '821 Pfannerstill Flats\nSouth Willie, CO 54440', 'Oswald Russel', '01679952062', 'Mrs. Meaghan Greenholt Sr.', '01957803896', 'Mariam Veum', '01575699325', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:46', '2025-12-24 10:33:46', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:46', '2025-12-24 10:33:46'),
(24, 'Jackeline', 'Rodriguez', '1973-06-22', 'Female', 'O-', '8863018447318', '01982945663', 'teacher23@example.com', '$2y$12$D/qLc0RXdhcT8bta6KAsj.38MML3ToaybnP/l5kNdX9YiHd9oYMcW', 'Head of Department', '1647 Hagenes Greens Apt. 728\nPort Jeremy, KY 61146', 'Everardo Schinner DDS', '01518247503', 'Vivianne Schneider', '01422590689', 'Asha Gislason', '01524997354', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:46', '2025-12-24 10:33:46', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:46', '2025-12-24 10:33:46'),
(25, 'Kristy', 'Huel', '1970-11-11', 'Female', 'AB+', '9735356393827', '01461600669', 'teacher24@example.com', '$2y$12$n75Ymb470mq3C81yguAexeMf/4z3YvsO2TnnSTIH8EOAUUybELiWG', 'Assistant Professor', '623 Delia Mountains\nBennieburgh, GA 62915-7181', 'Cloyd Considine', '01912275859', 'Marjory Tillman Jr.', '01851130169', 'Lila Schaefer DVM', '01735978474', 'Sister', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:46', '2025-12-24 10:33:46', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:46', '2025-12-24 10:33:46'),
(26, 'Yolanda', 'Murphy', '1973-12-31', 'Female', 'B-', '6868150770330', '01318485211', 'teacher25@example.com', '$2y$12$hnHsnCa1YEqShb9PKvM6EeG6VAZD4Vkjq4qlCYYHjKlOAK7W2uS0W', 'Assistant Professor', '6188 Paucek Harbors\nNew Brettbury, WY 61717', 'Joshuah Goldner', '01867561656', 'Abbie Johns', '01848219093', 'Mr. Lambert Rempel', '01622043611', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:46', '2025-12-24 10:33:46', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:46', '2025-12-24 10:33:46'),
(27, 'Simeon', 'Kiehn', '1976-09-08', 'Female', 'B+', '8618926448346', '01827203248', 'teacher26@example.com', '$2y$12$tnf14VtoXacaqdKZ/2r0duOBXb27RRK7i727qZYdgsSymGM40ZAQy', 'Assistant Professor', '4123 Zander Trace Apt. 664\nHansenhaven, TN 58284-3993', 'Edwardo Spencer', '01389776492', 'Chyna Dach', '01326807811', 'Idell Upton V', '01584515856', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:47', '2025-12-24 10:33:47', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:47', '2025-12-24 10:33:47'),
(28, 'Enola', 'Thompson', '1970-08-03', 'Male', 'O+', '2446373516502', '01575922155', 'teacher27@example.com', '$2y$12$brreD3n77YuKarze0cdShOrswZ9IVcAagpWo.Y1bzZajG8VzA4OBK', 'Assistant Professor', '364 O\'Hara Run Suite 342\nEast Brenda, KY 20959-8277', 'Prof. Jabari Erdman', '01604846454', 'Peggie Pollich', '01647932327', 'Damion Ullrich', '01552352432', 'Brother', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:47', '2025-12-24 10:33:47', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:47', '2025-12-24 10:33:47'),
(29, 'Maria', 'Ratke', '1982-02-25', 'Male', 'O+', '4091490177968', '01360551692', 'teacher28@example.com', '$2y$12$qtMLAy6GzzY0wmjUzuJ5C.g2xrNpc3PbBDxPwc/biTgHiDpckwNDO', 'Senior Teacher', '157 Douglas Land\nPort Aileenville, MI 97378-6333', 'Brian Gutkowski', '01490724447', 'Ms. Lila Haag', '01451167025', 'Mr. Roscoe Reichert IV', '01702612876', 'Aunt', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:47', '2025-12-24 10:33:47', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:47', '2025-12-24 10:33:47'),
(30, 'Nina', 'Cremin', '1973-08-15', 'Female', 'B+', '8291387010661', '01406608945', 'teacher29@example.com', '$2y$12$hV1b.nVv3bHE0ojb6DV7Xeq2PneSOvJ6QfikDFD0RnD8RJBscJAYG', 'Lecturer', '8044 Bayer Walks Apt. 681\nNew Rico, MN 24677', 'Federico Rau', '01328527113', 'Violette Block', '01701747837', 'Prof. Jany Block', '01931689301', 'Uncle', NULL, NULL, NULL, 'Admin', 1, 'N/A', '2025-12-24 10:33:47', '2025-12-24 10:33:47', '127.0.0.1', 1, NULL, NULL, NULL, '2025-12-24 10:33:47', '2025-12-24 10:33:47');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_transection_details`
--
ALTER TABLE `bank_transection_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_schedules`
--
ALTER TABLE `class_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_names`
--
ALTER TABLE `exam_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_payment_items`
--
ALTER TABLE `fee_payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fee_structures`
--
ALTER TABLE `fee_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
