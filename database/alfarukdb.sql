-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2025 at 09:41 AM
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
(1, 12, 1, '08:30:00', '09:10:00', 1, 112, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(2, 12, 2, '09:10:00', '09:50:00', 2, 113, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(3, 12, 3, '09:50:00', '10:30:00', 3, 114, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(4, 12, 4, '10:30:00', '11:10:00', 4, 115, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(5, 12, 5, '11:30:00', '12:10:00', 5, 116, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(6, 12, 6, '12:10:00', '12:50:00', 6, 117, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(7, 12, 7, '12:50:00', '01:30:00', 7, 118, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(8, 12, 8, '14:00:00', '02:40:00', 8, 125, 'Saturday', '2025-12-06 07:08:17', '2025-12-06 07:08:17'),
(9, 11, 1, '08:00:00', '08:40:00', 2, 92, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00'),
(10, 11, 2, '08:40:00', '09:20:00', 3, 93, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00'),
(11, 11, 3, '09:20:00', '10:00:00', 4, 94, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00'),
(12, 11, 4, '10:00:00', '10:40:00', 5, 130, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:59'),
(13, 11, 5, '11:00:00', '11:40:00', 6, 100, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00'),
(14, 11, 6, '11:40:00', '12:20:00', 7, 101, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00'),
(15, 11, 7, '12:20:00', '22:00:00', 8, 102, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00'),
(16, 11, 8, '14:00:00', '14:40:00', 9, 103, 'Saturday', '2025-12-06 07:10:00', '2025-12-06 07:10:00');

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
(1, 'Tuition Fee', 'Regular fee for academic instruction and classes', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(2, 'Admission Fee', 'One-time fee for student enrollment', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(3, 'Exam Fee', 'Fee for conducting examinations', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(4, 'Library Fee', 'Charge for library access and maintenance', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(5, 'Laboratory Fee', 'Fee for science/computer lab usage', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(6, 'Sports Fee', 'Charge for sports activities and events', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(7, 'Transport Fee', 'Fee for school bus/transport facilities', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(8, 'Hostel Fee', 'Accommodation and meal charges in hostel', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(9, 'Development Fee', 'Fee for infrastructure and school development', '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(10, 'Activity Fee', 'Fee for extracurricular activities and events', '2025-12-06 06:39:14', '2025-12-06 06:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `fee_payments`
--

CREATE TABLE `fee_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `fee_structure_id` bigint(20) UNSIGNED NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'Cash',
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `receipt_no` varchar(255) DEFAULT NULL,
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
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 1),
(41, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(42, '2025_09_11_094326_create_teachers_table', 1),
(43, '2025_09_12_060130_create_rooms_table', 1),
(44, '2025_09_12_060131_create_students_table', 1),
(45, '2025_09_13_043442_create_attendances_table', 1),
(46, '2025_09_13_085225_create_subjects_table', 1),
(47, '2025_09_13_085234_create_exams_table', 1),
(48, '2025_09_13_085241_create_marks_table', 1),
(49, '2025_09_16_081917_create_student_subjects_table', 1),
(50, '2025_09_22_185426_create_fee_categories_table', 1),
(51, '2025_09_22_185444_create_fee_structures_table', 1),
(52, '2025_09_22_185453_create_fee_payments_table', 1),
(53, '2025_09_28_183808_create_exam_names_table', 1),
(54, '2025_10_03_153733_create_class_schedules_table', 1);

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
(10, 'Class 10', 'A', 10, 58, NULL, NULL),
(11, 'Class 11', 'A', 11, 60, NULL, NULL),
(12, 'Class 12', 'A', 12, 62, NULL, NULL);

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
(1, 'Albertha', 'Jerde', NULL, 'Other', 'O+', 'Other', 'Bangladeshi', '1', '+1-409-467-3562', 'student2@example.com', '$2y$12$acYGFqmEUvybAveWlf9gQOphIs.G9m5t1c8xMfCrHoqFQem6/WEvm', '88367 Itzel Causeway Apt. 463\r\nGrahamchester, OH 45663-8469', 'Apt. 710', 'Sofia Jaskolski', 'Teacher', '1-612-497-7502', 'student2@example.com', '2', 'Miss Sadie Marquardt', 'Housewife', '+1-351-873-0523', 'student3@example.com', '3', 'Georgianna McGlynn', '(640) 268-1287', 'student4@example.com', '4', 'Grandparent', 1, 1, 4, '2025-12-06', 'N/A', 272220005101097, 90990401, NULL, NULL, NULL, NULL, NULL, '0xf9BMvVytTOYSQ7YIp1XR9nHkd2kODucBFz01NT0j2ulgDeZ7UE8SxZEF8h', '2025-12-06 06:38:19', '2025-12-06 07:05:34'),
(2, 'Joan', 'Gusikowski', '1980-04-01', 'Female', 'B-', 'Hindu', 'Bangladeshi', '6', '(586) 478-3347', 'student7@example.com', '$2y$12$pTqhT5Yu/FW7fdmJnvbfeei6JOvbtYs5SbEIOP3b2r7Mjl31/mlnS', '150 VonRueden Drive\nZiemannberg, GA 70914-0110', 'Apt. 448', 'Ariel Denesik V', 'Doctor', '+1.360.594.4894', 'student7@example.com', '7', 'Dr. Amelie Morissette', 'Nurse', '+1-503-283-0866', 'student8@example.com', '8', 'Iliana Ortiz', '+1-623-604-8245', 'student9@example.com', '9', 'Aunt', 1, 1, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:19', '2025-12-06 07:05:34'),
(3, 'Gilda', 'Brekke', '2012-03-07', 'Other', 'O-', 'Christian', 'Bangladeshi', '11', '+19562262209', 'student12@example.com', '$2y$12$Z81oybHODZeMbjyMzv6I9uiUs9tiXwnAJTghQ2aXd3rQ.6QgarUJu', '66000 Lueilwitz Locks Suite 300\nPort Michaelachester, KY 11657-8637', 'Suite 319', 'Nick Terry', 'Teacher', '(202) 445-5899', 'student12@example.com', '12', 'Anahi Wiza', 'Teacher', '+1-574-996-0859', 'student13@example.com', '13', 'Mrs. Arlene O\'Keefe', '+1.320.328.2897', 'student14@example.com', '14', 'Sister', 1, 2, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:19', '2025-12-06 07:05:34'),
(4, 'Cassandre', 'Rowe', '2015-06-17', 'Male', 'A+', 'Hindu', 'Bangladeshi', '16', '1-252-983-4536', 'student17@example.com', '$2y$12$GHGDlRHNp2OhJc4cTsYteO6yHmVX3.0mzH5Ry8jQcnAVhedq2jkF.', '337 Trevion Corner\nBergeburgh, CO 09794', 'Apt. 533', 'Niko Fahey', 'Engineer', '1-470-297-0275', 'student17@example.com', '17', 'Dakota Schaefer', 'Nurse', '1-716-482-8975', 'student18@example.com', '18', 'Adriana Heller', '+1-986-633-5103', 'student19@example.com', '19', 'Uncle', 1, 1, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:19', '2025-12-06 07:05:34'),
(5, 'Kay', 'Cronin', '1971-09-08', 'Female', 'O+', 'Islam', 'Bangladeshi', '21', '(551) 308-2430', 'student22@example.com', '$2y$12$yEIxGhSfq0ogUBkSSsJ.nu58FIxjT1Zcp/ajNPczTid2vxfRZoYC6', '8810 Ondricka View Apt. 111\nLake Steveview, IA 29093-0406', 'Apt. 063', 'Dr. Griffin Dare II', 'Teacher', '+1-919-869-2803', 'student22@example.com', '22', 'Lindsay Tillman Jr.', 'Teacher', '+1.262.827.8418', 'student23@example.com', '23', 'Antonietta Bins', '661.916.2592', 'student24@example.com', '24', 'Grandparent', 1, 1, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:19', '2025-12-06 07:05:34'),
(6, 'America', 'Jaskolski', '1995-08-03', 'Other', 'B+', 'Islam', 'Bangladeshi', '26', '(984) 694-1229', 'student27@example.com', '$2y$12$Xs/VuHfQ3kHdug0RJazGiOOUcq0ScuBgOPA8gdlq273AUPhy2AWSq', '77559 Justine Views Apt. 916\nFerryberg, KY 53901-9940', 'Suite 321', 'Mr. Hector Hirthe II', 'Businessman', '(971) 933-1485', 'student27@example.com', '27', 'Dr. Alva Gislason DDS', 'Doctor', '(445) 383-1795', 'student28@example.com', '28', 'Adrienne Roberts', '629-319-5383', 'student29@example.com', '29', 'Sister', 1, 2, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:20', '2025-12-06 07:05:34'),
(7, 'Rosetta', 'Bartoletti', '1975-07-09', 'Female', 'A-', 'Christian', 'Bangladeshi', '31', '+1 (970) 936-5162', 'student32@example.com', '$2y$12$QgxUmG1XKIisH53r1EPBMeIwqBgSIfUMfUIHyIJobvAxhlnhF/zIG', '94842 Wisoky Shores Apt. 614\nSouth Theronton, NV 70221-8331', 'Suite 632', 'Sven Luettgen Sr.', 'Businessman', '646-825-5321', 'student32@example.com', '32', 'Kaci Spinka DVM', 'Doctor', '831-403-6079', 'student33@example.com', '33', 'Cloyd Luettgen', '1-857-251-6428', 'student34@example.com', '34', 'Sister', 1, 1, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:20', '2025-12-06 07:05:34'),
(8, 'Delphia', 'Schamberger', '2007-12-01', 'Male', 'AB+', 'Other', 'Bangladeshi', '36', '986.985.3957', 'student37@example.com', '$2y$12$/mASwdUq/SDDj6MPPqK6Eu.gGFWbJ/F.f8DJZxTKl7l0N9LQ6y9f2', '29128 Little Flats Suite 855\nTerencetown, NJ 20442-3371', 'Suite 473', 'Carol Rempel', 'Doctor', '(630) 613-4820', 'student37@example.com', '37', 'Ena Marquardt', 'Doctor', '+1-978-336-9950', 'student38@example.com', '38', 'Ivory Block', '+1.315.928.9511', 'student39@example.com', '39', 'Sister', 1, 3, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:20', '2025-12-06 07:05:34'),
(9, 'Rhiannon', 'Howell', '2012-03-14', 'Other', 'A-', 'Other', 'Bangladeshi', '41', '203-937-1593', 'student42@example.com', '$2y$12$Ue0RZURJTaIg/t4OTTvEqOA1vhE/HyGSf.6wXVUxfLyJ4SKseaYmu', '520 Welch Cape\nHudsontown, AZ 69730-1878', 'Suite 998', 'Milton Gaylord Jr.', 'Engineer', '+1-386-397-5509', 'student42@example.com', '42', 'Haylee Labadie', 'Teacher', '+17855445507', 'student43@example.com', '43', 'Prof. Kale Little I', '813-965-6090', 'student44@example.com', '44', 'Brother', 1, 1, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:20', '2025-12-06 07:05:34'),
(10, 'Heath', 'Cartwright', '1977-02-28', 'Other', 'O-', 'Christian', 'Bangladeshi', '46', '+1-803-224-9815', 'student47@example.com', '$2y$12$Pb8O2q4RBAX9imA5JWrTm.odPiU1tFUdLbrn5pZ8ZxfGbTjfJb5jS', '580 Heller Plain\nEusebiostad, SD 15031', 'Apt. 786', 'Dwight Lebsack', 'Engineer', '1-630-989-9587', 'student47@example.com', '47', 'Sierra Powlowski', 'Teacher', '575.566.2725', 'student48@example.com', '48', 'Vernon Sanford PhD', '520-746-3339', 'student49@example.com', '49', 'Uncle', 1, 2, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:20', '2025-12-06 07:05:34'),
(11, 'Randy', 'Schneider', '2004-01-05', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '51', '701-808-3956', 'student52@example.com', '$2y$12$EAFfC9p.yoJj7wNoJmv2BuQ/ktyoGfpzwvT82WeZ3v5wmISghXSU.', '37814 Runolfsson Prairie\nDurganberg, IN 14995', 'Apt. 333', 'Domenic Brekke', 'Businessman', '1-772-387-4527', 'student52@example.com', '52', 'Ms. Adaline Beer', 'Housewife', '+15206154035', 'student53@example.com', '53', 'Donna Witting', '1-570-466-6297', 'student54@example.com', '54', 'Sister', 1, 2, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:21', '2025-12-06 07:05:34'),
(12, 'Claudine', 'Boyle', '1993-02-09', 'Other', 'O+', 'Islam', 'Bangladeshi', '56', '1-443-558-6644', 'student57@example.com', '$2y$12$rdcHtwC1Bbs6Cu0y.3YoRe5A4xSoVjHTr78nFLCIGCYJ3WZ4qmUxC', '99637 Dicki Fort\nNorth Lonnybury, TN 16972', 'Suite 102', 'Devonte Cummings', 'Businessman', '+1-512-784-2383', 'student57@example.com', '57', 'Ms. Sylvia Koelpin', 'Businesswoman', '+1.845.746.1512', 'student58@example.com', '58', 'Myrtie Waters MD', '+15317532913', 'student59@example.com', '59', 'Aunt', 1, 3, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:21', '2025-12-06 07:05:34'),
(13, 'Piper', 'Rippin', '1992-03-09', 'Male', 'O-', 'Hindu', 'Bangladeshi', '61', '+1-234-625-5666', 'student62@example.com', '$2y$12$Zor2wksbN8j1O0Rdip7NOeMEYAZGT6TC82Q.LZZsacRcPetr04vtG', '363 Thiel Knoll\nElodyhaven, MT 98494-3492', 'Apt. 424', 'Gabriel Morar', 'Doctor', '+1-838-545-0939', 'student62@example.com', '62', 'Mrs. Laurence Dibbert MD', 'Doctor', '+1.458.884.6694', 'student63@example.com', '63', 'Mariela Wiza', '(629) 844-0850', 'student64@example.com', '64', 'Grandparent', 1, 1, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:21', '2025-12-06 07:05:34'),
(14, 'Freda', 'Paucek', '1995-12-29', 'Male', 'B+', 'Christian', 'Bangladeshi', '66', '1-601-276-9437', 'student67@example.com', '$2y$12$qF9f5fXKewOeZDEsEXJUC.vBUPDhbf4RLxoxAKE5zc5qlwTvZ6XVi', '493 Everette Passage\nFosterville, VT 05924-9236', 'Suite 524', 'Mr. Kenneth Reichert DVM', 'Farmer', '(872) 252-4348', 'student67@example.com', '67', 'Christina Sipes', 'Housewife', '(678) 966-7377', 'student68@example.com', '68', 'Presley Stokes', '1-424-697-4655', 'student69@example.com', '69', 'Uncle', 1, 4, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:21', '2025-12-06 07:05:34'),
(15, 'Easton', 'Bashirian', '2006-08-23', 'Other', 'O-', 'Hindu', 'Bangladeshi', '71', '+1-845-870-2146', 'student72@example.com', '$2y$12$bcSBOe1omoKTcEp4Ucj7i.jvYJ28eiUyliKHB.dybHfPd8jb7xRSK', '4189 Johnston Bypass Suite 970\nLake Amaritown, LA 32229', 'Suite 535', 'Alden Spinka', 'Doctor', '1-847-406-2078', 'student72@example.com', '72', 'Velma Oberbrunner', 'Nurse', '+1 (724) 298-5321', 'student73@example.com', '73', 'Maryjane Daniel', '+1-986-384-6609', 'student74@example.com', '74', 'Grandparent', 1, 3, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:21', '2025-12-06 07:05:34'),
(16, 'Finn', 'Von', '2009-02-03', 'Other', 'O-', 'Buddhist', 'Bangladeshi', '76', '(757) 331-9138', 'student77@example.com', '$2y$12$aLkArH0H27VwwZLatOxOlOo4pfWYTwXq4ZFOzDdgmbn.yyeNNC1N6', '20154 Heather Meadow Suite 983\nLakinmouth, MN 92021', 'Apt. 923', 'Charlie Cruickshank', 'Doctor', '(561) 757-1555', 'student77@example.com', '77', 'Mrs. Leora Bergstrom', 'Teacher', '(561) 355-6881', 'student78@example.com', '78', 'Mikel Abernathy DDS', '1-270-935-4946', 'student79@example.com', '79', 'Sister', 1, 1, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:21', '2025-12-06 07:05:34'),
(17, 'Skyla', 'Cummerata', '1998-09-14', 'Male', 'AB+', 'Other', 'Bangladeshi', '81', '727-551-9421', 'student82@example.com', '$2y$12$imzFUidrPYhooUNMpss16.C/5KxLr8eUSQkybVf72DIGs8RwA5LTW', '20938 Kohler Via\nLacyland, KS 44328', 'Suite 631', 'Christ Gottlieb', 'Teacher', '323-955-2892', 'student82@example.com', '82', 'Dr. Jacky Dach III', 'Businesswoman', '+1.463.808.3125', 'student83@example.com', '83', 'Ernie McLaughlin', '283-733-1751', 'student84@example.com', '84', 'Aunt', 1, 4, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:22', '2025-12-06 07:05:34'),
(18, 'Gerald', 'Deckow', '1987-09-09', 'Female', 'AB+', 'Christian', 'Bangladeshi', '86', '1-412-325-1071', 'student87@example.com', '$2y$12$ji2HQRA1eHOaT6FzH2nwLuznuOjI08w26I9Y8ychvuKNb/n6qWvXu', '555 Boyle Hollow\nKonopelskiburgh, HI 51047', 'Apt. 585', 'Kristopher Kovacek', 'Doctor', '765.243.3202', 'student87@example.com', '87', 'Estefania Stanton MD', 'Housewife', '1-417-512-8012', 'student88@example.com', '88', 'Aletha Pagac II', '+1-531-213-7665', 'student89@example.com', '89', 'Aunt', 1, 5, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:22', '2025-12-06 07:05:34'),
(19, 'Dariana', 'Runte', '1997-12-03', 'Male', 'B+', 'Islam', 'Bangladeshi', '91', '1-941-499-9156', 'student92@example.com', '$2y$12$q5ocGCvSfbXDlig1DfCQUOw45T/C6.5qXeVTL.Nm2QnEGilrqhR66', '81793 Lindgren Heights Apt. 114\nLandenside, CO 25304-5963', 'Apt. 586', 'Turner Stehr MD', 'Farmer', '1-401-836-3766', 'student92@example.com', '92', 'Gia Stanton', 'Teacher', '+1-346-879-2434', 'student93@example.com', '93', 'Prof. Titus Von', '801-789-7458', 'student94@example.com', '94', 'Aunt', 1, 2, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:22', '2025-12-06 07:05:34'),
(20, 'Delphine', 'Doyle', '1985-03-29', 'Other', 'AB+', 'Islam', 'Bangladeshi', '96', '+1-409-524-7206', 'student97@example.com', '$2y$12$l4vGFpsiZiDLwBYNpydeKejf5qk6nlsS2yQ4kzlkhgQiehON6BSeG', '328 Goldner View Apt. 741\nNew Imeldaland, MA 19697-9483', 'Suite 588', 'Hermann Schneider', 'Engineer', '+1-508-317-1833', 'student97@example.com', '97', 'Katelyn Cummings', 'Nurse', '+1 (629) 703-5267', 'student98@example.com', '98', 'Rossie Osinski', '870-627-6899', 'student99@example.com', '99', 'Grandparent', 1, 2, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:22', '2025-12-06 07:05:34'),
(21, 'Vivienne', 'Hackett', '1977-11-07', 'Female', 'AB+', 'Other', 'Bangladeshi', '101', '1-276-393-1114', 'student102@example.com', '$2y$12$nTeIF4G1yLknbVfHQjAYBuQJftU2iAzgEF0HDrzwbgsytw5sFbUdK', '705 Gleichner Isle Apt. 656\nEast Marguerite, IN 33514', 'Apt. 001', 'Bret Keebler', 'Teacher', '906-913-1409', 'student102@example.com', '102', 'Miss Abbey Reynolds', 'Teacher', '+1-412-212-7056', 'student103@example.com', '103', 'Kale Jacobs', '+1-865-961-4650', 'student104@example.com', '104', 'Uncle', 1, 1, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:22', '2025-12-06 07:05:34'),
(22, 'Nona', 'Ullrich', '1973-01-23', 'Male', 'AB-', 'Christian', 'Bangladeshi', '106', '+1.608.953.1068', 'student107@example.com', '$2y$12$PSYHV9RZzbI51/0L7gG.UearRXym3ZrwLgocLvby/IBQRTo3wwK62', '571 Marlin Locks\nNorth Shirley, AR 12018', 'Suite 783', 'Kennedi Gutkowski IV', 'Doctor', '1-984-305-6583', 'student107@example.com', '107', 'Idella Pacocha', 'Housewife', '(272) 567-2468', 'student108@example.com', '108', 'Dr. Jesus Jerde II', '+1-458-862-0632', 'student109@example.com', '109', 'Grandparent', 1, 5, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:23', '2025-12-06 07:05:34'),
(23, 'Jaqueline', 'Rippin', '1988-03-09', 'Other', 'AB+', 'Other', 'Bangladeshi', '111', '1-919-316-2802', 'student112@example.com', '$2y$12$cxKLfUqdE6uEh8aLGWvrf.RB0sL/WxwjnstbpmjDiDrX2NNgwU7pS', '101 Ramiro Mall\nNew Ernesto, AR 77590-7452', 'Suite 126', 'Drake Schamberger', 'Engineer', '(757) 528-1990', 'student112@example.com', '112', 'Cordie Wunsch', 'Businesswoman', '1-716-579-1978', 'student113@example.com', '113', 'Mr. Lourdes Krajcik V', '(617) 698-1560', 'student114@example.com', '114', 'Aunt', 1, 1, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:23', '2025-12-06 07:05:34'),
(24, 'Scotty', 'Baumbach', '2010-12-16', 'Other', 'B-', 'Other', 'Bangladeshi', '116', '+1-458-781-3323', 'student117@example.com', '$2y$12$Klz2172U6ooDuaG11ayKY.HeytJkkZiJiwLmRk8stXV6kNXegq/oO', '3641 Devon Garden\nWest Arnulfo, UT 52955', 'Suite 746', 'Prof. Lyric Hackett I', 'Teacher', '1-857-945-8657', 'student117@example.com', '117', 'Blanche Botsford', 'Doctor', '251.872.6938', 'student118@example.com', '118', 'Mya Gaylord', '847-651-8309', 'student119@example.com', '119', 'Sister', 1, 4, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:23', '2025-12-06 07:05:34'),
(25, 'Jessie', 'Watsica', '1988-08-04', 'Other', 'O-', 'Islam', 'Bangladeshi', '121', '586.547.2603', 'student122@example.com', '$2y$12$Ndtn.ISYEsF9s3t9/Xbademr7GddKF2tcZ58bAcmr3zqMIpwfbycC', '5438 Howell Freeway\nOlsonville, WI 93431-0983', 'Apt. 850', 'Norbert Greenfelder', 'Farmer', '1-575-785-1524', 'student122@example.com', '122', 'Miss Connie Jacobi MD', 'Businesswoman', '+1 (210) 539-6986', 'student123@example.com', '123', 'Prof. Cornelius Steuber', '1-484-471-0025', 'student124@example.com', '124', 'Sister', 1, 1, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:23', '2025-12-06 07:05:34'),
(26, 'Marta', 'Weimann', '2011-11-28', 'Female', 'AB+', 'Other', 'Bangladeshi', '126', '(779) 386-1218', 'student127@example.com', '$2y$12$n8t.qb6iCRBlan7FG27U0Oa3VrYfzBbwOuyXXouUeUhZ52.mKkwaW', '3416 Cummerata Gateway\nEast Loyalfort, WA 55428', 'Apt. 398', 'Melvin Treutel', 'Farmer', '304.631.7858', 'student127@example.com', '127', 'Lavonne Hill', 'Doctor', '1-906-968-7989', 'student128@example.com', '128', 'Jordon Orn', '878-452-6621', 'student129@example.com', '129', 'Uncle', 1, 2, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:23', '2025-12-06 07:05:34'),
(27, 'Cortney', 'Turner', '2019-03-27', 'Other', 'O+', 'Islam', 'Bangladeshi', '131', '+1.878.308.2787', 'student132@example.com', '$2y$12$1Ac/SWq81obHdZ26inme7OmEvajlGjyJ6N562RFhdfzalC4RyrXdG', '12587 Zaria Oval\nNorth Maynardfort, VT 24749', 'Apt. 954', 'Garnett Waelchi V', 'Engineer', '484.304.6350', 'student132@example.com', '132', 'Zula Rutherford', 'Teacher', '+1.336.219.5163', 'student133@example.com', '133', 'Dr. Verda Halvorson', '629.794.4666', 'student134@example.com', '134', 'Grandparent', 1, 3, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:24', '2025-12-06 07:05:34'),
(28, 'Jefferey', 'Treutel', '2005-10-02', 'Other', 'O+', 'Islam', 'Bangladeshi', '136', '+17602416799', 'student137@example.com', '$2y$12$FHM1A2ZdewE.CrcS7.uDOuOhxLKT3ux1gmNOSuyxJll3rFct9fjX.', '2036 Mayer Estates\nBodefort, CA 35062-5648', 'Suite 399', 'Roscoe Lehner MD', 'Businessman', '618.246.4629', 'student137@example.com', '137', 'Josephine Ebert', 'Housewife', '(620) 995-2105', 'student138@example.com', '138', 'Justen Ward', '678-854-4785', 'student139@example.com', '139', 'Sister', 1, 6, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:24', '2025-12-06 07:05:34'),
(29, 'Theo', 'Moen', '1991-08-21', 'Male', 'AB-', 'Other', 'Bangladeshi', '141', '+17316177680', 'student142@example.com', '$2y$12$7UittSisHMuvc6K6PHJlu.G2a/wDpj51LhMtv0hgs96cO2NWuXup6', '593 Doris Lakes Suite 424\nEast Rubiefort, GA 22977-7837', 'Suite 935', 'Haleigh Veum', 'Businessman', '1-949-573-2665', 'student142@example.com', '142', 'Berniece Senger', 'Doctor', '808-662-1552', 'student143@example.com', '143', 'Prof. Viva Funk', '564-498-6193', 'student144@example.com', '144', 'Grandparent', 1, 5, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:24', '2025-12-06 07:05:34'),
(30, 'Oleta', 'Wilderman', '2000-03-30', 'Other', 'AB-', 'Christian', 'Bangladeshi', '146', '+1 (820) 220-1569', 'student147@example.com', '$2y$12$xnDU7qbx.UPzBjAcMSd82.8kSPXOLPvXCdMLgz3fL8PYc5tCtzM6.', '37977 Ashley Keys Apt. 537\nTremayneside, AR 08806', 'Apt. 410', 'Dion Schamberger', 'Teacher', '847.383.4990', 'student147@example.com', '147', 'Fay Cole DDS', 'Doctor', '+1-725-791-2335', 'student148@example.com', '148', 'Fleta Roob Jr.', '1-531-374-3615', 'student149@example.com', '149', 'Brother', 1, 2, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:24', '2025-12-06 07:05:34'),
(31, 'Brody', 'Lehner', '1984-03-06', 'Other', 'A-', 'Islam', 'Bangladeshi', '151', '970-682-2891', 'student152@example.com', '$2y$12$1B.VJLRh3yQbpH7LZA55ZuTYySwiHZLjfRh1IfJk8LvmfZNfHCHiK', '4039 Delpha River\nEast Lavern, MS 34341-4245', 'Apt. 346', 'Prof. Jakob Schoen IV', 'Farmer', '206-599-6029', 'student152@example.com', '152', 'Sydni Jones I', 'Doctor', '+1-774-643-7018', 'student153@example.com', '153', 'Roel Schoen', '207-592-9885', 'student154@example.com', '154', 'Uncle', 1, 4, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:24', '2025-12-06 07:05:34'),
(32, 'Terrell', 'Mills', '1998-06-30', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '156', '978.455.5840', 'student157@example.com', '$2y$12$f42.K/fzTrTdhEudo/OxceAd2bIHknKv0Krdah61e./tcCCRWf762', '393 Mathilde Garden\nRunolfssonview, ND 41423', 'Suite 209', 'Lester Schuppe', 'Teacher', '+1-682-204-7588', 'student157@example.com', '157', 'Elisabeth Rosenbaum', 'Businesswoman', '+17654474796', 'student158@example.com', '158', 'Gladys Little', '+17724323130', 'student159@example.com', '159', 'Sister', 1, 2, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:24', '2025-12-06 07:05:34'),
(33, 'Bailee', 'Torp', '1974-07-09', 'Male', 'B+', 'Islam', 'Bangladeshi', '161', '(430) 465-0451', 'student162@example.com', '$2y$12$oEJwrY6NltYKg2kbIGolcujl.hey9K21y8LO43c3gCpkMtdr3tIza', '6919 Oma Island Suite 623\nDaisyfort, IA 05537-0031', 'Apt. 060', 'Luigi Marks', 'Engineer', '(608) 229-1712', 'student162@example.com', '162', 'Luz Moore', 'Nurse', '+1.757.961.3521', 'student163@example.com', '163', 'Jordi Heaney', '+17312064285', 'student164@example.com', '164', 'Aunt', 1, 3, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:25', '2025-12-06 07:05:34'),
(34, 'Kathryne', 'Farrell', '1979-12-07', 'Male', 'O+', 'Christian', 'Bangladeshi', '166', '+1-862-458-3705', 'student167@example.com', '$2y$12$One9eBsChMRebnXPxBdksu6hOIIUSA3PeOTQdzq5Gmlx6/jC1x1My', '89899 Nyah Camp Suite 246\nDuBuquehaven, AR 38060', 'Apt. 453', 'Rosendo Tremblay', 'Businessman', '+16809520711', 'student167@example.com', '167', 'Germaine Weber', 'Teacher', '+1.214.219.0240', 'student168@example.com', '168', 'Prof. Hassie Williamson', '229.839.4069', 'student169@example.com', '169', 'Aunt', 1, 2, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:25', '2025-12-06 07:05:34'),
(35, 'Danielle', 'Gutmann', '2022-09-21', 'Other', 'A-', 'Christian', 'Bangladeshi', '171', '+1-845-673-8548', 'student172@example.com', '$2y$12$sxMYOOcBHUGNB1xJ5e1irODvk8v6ryjuPOCzlcHzrFKBh7jegmaeC', '307 Jakob Summit\nEast Arjun, WA 45943', 'Suite 092', 'Ladarius Schowalter', 'Teacher', '+1-651-558-2137', 'student172@example.com', '172', 'Neoma Emard', 'Businesswoman', '(385) 460-8791', 'student173@example.com', '173', 'Odell King I', '+1-763-324-9086', 'student174@example.com', '174', 'Aunt', 1, 6, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:25', '2025-12-06 07:05:34'),
(36, 'Jayde', 'White', '2025-05-29', 'Male', 'AB-', 'Other', 'Bangladeshi', '176', '786-638-9530', 'student177@example.com', '$2y$12$V8YxmSDcMjm6Sw71dzqBTe3BunWSeFlgANQww61N/3v7APeCQUnI2', '21726 Kelley Prairie Apt. 061\nShanahanbury, MT 13402', 'Suite 755', 'Mr. Eugene Weimann II', 'Doctor', '1-434-213-8898', 'student177@example.com', '177', 'Paula Bauch', 'Housewife', '(754) 209-0178', 'student178@example.com', '178', 'Estevan Franecki', '281.619.2994', 'student179@example.com', '179', 'Uncle', 1, 1, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:25', '2025-12-06 07:05:34'),
(37, 'Ottis', 'Ward', '2016-04-14', 'Other', 'A-', 'Christian', 'Bangladeshi', '181', '539.347.1228', 'student182@example.com', '$2y$12$0DWQjH1PZkliJEebMUBDV.Mw.fXfD3fjggDlHtpqWLPprGG4fidji', '24564 Ike Path\nThurmanchester, VA 28822', 'Suite 882', 'Elian Keeling', 'Farmer', '971.563.5169', 'student182@example.com', '182', 'Neva Erdman', 'Businesswoman', '863-571-1777', 'student183@example.com', '183', 'Donavon Hagenes', '615-821-6643', 'student184@example.com', '184', 'Sister', 1, 3, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:25', '2025-12-06 07:05:34'),
(38, 'Sydni', 'Oberbrunner', '2011-02-28', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '186', '512-438-6579', 'student187@example.com', '$2y$12$2.RbehOYm6AqGAKIDCieUuUDgPh49v34HAV.YX48c5354B4RVXuES', '7856 Rogahn Vista\nNew Linnieland, IA 80546', 'Suite 623', 'Justus Wuckert', 'Teacher', '1-360-394-8841', 'student187@example.com', '187', 'Hermina Cronin', 'Housewife', '(934) 986-7523', 'student188@example.com', '188', 'Dr. Ethan Schaden', '+1-770-955-9804', 'student189@example.com', '189', 'Grandparent', 1, 7, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:26', '2025-12-06 07:05:34'),
(39, 'Keaton', 'VonRueden', '1996-09-11', 'Female', 'O+', 'Buddhist', 'Bangladeshi', '191', '1-732-397-6483', 'student192@example.com', '$2y$12$49fkjcYvmeqTc6T4hDV1..6XruSMkhLgpkv4b/o3V9p.tDeKU9VYe', '99714 Emard Views\nParisianview, RI 49591-0248', 'Suite 404', 'Prof. Easter Lesch I', 'Farmer', '(620) 255-6997', 'student192@example.com', '192', 'Dr. Susanna Haag', 'Nurse', '+1 (929) 522-1116', 'student193@example.com', '193', 'Prof. Ernesto Kozey', '+1-904-339-7295', 'student194@example.com', '194', 'Sister', 1, 3, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:26', '2025-12-06 07:05:34'),
(40, 'Rick', 'Rodriguez', '1973-08-01', 'Other', 'A-', 'Hindu', 'Bangladeshi', '196', '+1-909-991-4130', 'student197@example.com', '$2y$12$S00uRZNbNGuJ.yksUudZn.fcHpTqD4VxvRZ2xMHX/1msMLPFxdU2y', '701 Pete Expressway\nNorth Hertaside, KS 36113', 'Suite 097', 'Mr. Kiel Hahn PhD', 'Teacher', '831.629.0919', 'student197@example.com', '197', 'Dr. Sophia Corkery IV', 'Nurse', '+1-716-293-2007', 'student198@example.com', '198', 'Aleen Hessel', '+17475947752', 'student199@example.com', '199', 'Brother', 1, 4, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:26', '2025-12-06 07:05:34'),
(41, 'Donato', 'Lubowitz', '1972-03-14', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '201', '(352) 898-0790', 'student202@example.com', '$2y$12$hjQ2YgP1BUCruAsPvu3ot.IvLd..FePfrsc/JiEsK2jcMAoGPBWim', '55201 Bashirian Creek Apt. 131\nKesslerberg, AK 31013', 'Apt. 724', 'Raul McDermott MD', 'Engineer', '(302) 571-0890', 'student202@example.com', '202', 'Emily Sporer', 'Teacher', '+1.810.572.7423', 'student203@example.com', '203', 'Colt Hickle Sr.', '1-214-346-8646', 'student204@example.com', '204', 'Brother', 1, 2, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:26', '2025-12-06 07:05:34'),
(42, 'Floyd', 'Hintz', '1995-12-15', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '206', '(442) 890-8063', 'student207@example.com', '$2y$12$O8cIXTQvnHlX/EtSc2o5puykgPnczCcam8gMyZL/U6nldCh6Mi3g.', '4446 Reggie Centers Suite 302\nWest Karianne, IA 68444', 'Apt. 954', 'Lonny Macejkovic', 'Farmer', '+1-404-589-8449', 'student207@example.com', '207', 'Syble Jacobi MD', 'Housewife', '+17652918211', 'student208@example.com', '208', 'Joshua Ruecker MD', '+12209952457', 'student209@example.com', '209', 'Grandparent', 1, 4, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:26', '2025-12-06 07:05:34'),
(43, 'Caroline', 'Toy', '2016-09-21', 'Other', 'O+', 'Islam', 'Bangladeshi', '211', '1-562-487-5116', 'student212@example.com', '$2y$12$vuS6dW2tGZINnctacJ3GduzNt/rseEg2XE.eKXnRNOGQEspm3/IpS', '1068 Feil Plains Apt. 868\nLake Jaylenstad, DC 09310', 'Apt. 617', 'Savion McLaughlin', 'Businessman', '+1.910.880.5442', 'student212@example.com', '212', 'Mrs. Alanna Nikolaus', 'Teacher', '209-662-8508', 'student213@example.com', '213', 'Dolores Predovic', '248-273-8393', 'student214@example.com', '214', 'Uncle', 1, 3, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:27', '2025-12-06 07:05:34'),
(44, 'Sadie', 'Schowalter', '2017-01-11', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '216', '(469) 540-0890', 'student217@example.com', '$2y$12$koe.MmiqPdCyIbyP1mbyieidCz.JwQ1S9bG1d9f5ZZsUFv9EOBJyG', '38557 Domenick Shoals Apt. 908\nWest Chaunceyland, LA 69419-3035', 'Apt. 946', 'Ethel Lakin', 'Engineer', '+1.716.837.8882', 'student217@example.com', '217', 'Layla Keebler IV', 'Teacher', '657.431.2091', 'student218@example.com', '218', 'Krystina Witting', '+19282772188', 'student219@example.com', '219', 'Uncle', 1, 5, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:27', '2025-12-06 07:05:34'),
(45, 'Margarita', 'Lockman', '1987-07-09', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '221', '+1.419.345.8868', 'student222@example.com', '$2y$12$O1uuVYJS812lK8zWdiMUOuc8edftEJrq2DB7jcbY7JBuWxVMiISoK', '282 Ebert Inlet\nHammesmouth, GA 92119', 'Suite 704', 'Doris Dooley', 'Farmer', '860.522.1690', 'student222@example.com', '222', 'Vesta Wiza', 'Doctor', '+1-601-327-0654', 'student223@example.com', '223', 'Mr. Gennaro Quitzon DDS', '810.470.2456', 'student224@example.com', '224', 'Sister', 1, 6, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:27', '2025-12-06 07:05:34'),
(46, 'Maryse', 'Murphy', '2007-12-18', 'Male', 'B+', 'Christian', 'Bangladeshi', '226', '832.995.0184', 'student227@example.com', '$2y$12$G0MqLYNQ.s2UfkWKaKRGS.qcEIri0xLbPpelS1oZAANuBLS.QK40G', '3544 Hoeger Rapid\nEast Gilda, RI 26289', 'Suite 680', 'Theodore Brown', 'Teacher', '(848) 793-6440', 'student227@example.com', '227', 'Prof. Katharina Ernser IV', 'Nurse', '815.652.0289', 'student228@example.com', '228', 'Cesar Gusikowski', '+1.630.250.3356', 'student229@example.com', '229', 'Sister', 1, 4, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:27', '2025-12-06 07:05:34'),
(47, 'Andreane', 'Mann', '1980-05-05', 'Male', 'O-', 'Islam', 'Bangladeshi', '231', '802-250-5911', 'student232@example.com', '$2y$12$2U9HbDXAJRo2Bin6pnl11OvcrPe1kV5WeZdNEi2vcZFR0qhFiesva', '40994 Koepp Cliff\nWest Hannamouth, KY 79990-9257', 'Apt. 507', 'Gus Schaden V', 'Farmer', '1-703-937-8005', 'student232@example.com', '232', 'Miss May Ebert', 'Housewife', '781.953.2244', 'student233@example.com', '233', 'Pierre Kessler PhD', '1-786-200-7822', 'student234@example.com', '234', 'Uncle', 1, 3, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:27', '2025-12-06 07:05:34'),
(48, 'Lourdes', 'Fahey', '2012-10-30', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '236', '810-439-2624', 'student237@example.com', '$2y$12$LdDg0qUWj3207woMjZV44uQKUihFnQ06PNbAi0Rp6EyRLG2iLQ5AO', '52875 Theodore Mews Suite 292\nSouth Shanafurt, IA 32068-9747', 'Suite 652', 'Brody Abbott', 'Engineer', '(267) 672-2827', 'student237@example.com', '237', 'Velda McCullough', 'Nurse', '+1-310-596-4484', 'student238@example.com', '238', 'Kurtis Rutherford DDS', '(772) 877-4413', 'student239@example.com', '239', 'Sister', 1, 3, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:28', '2025-12-06 07:05:34'),
(49, 'Uriel', 'Thompson', '2005-06-18', 'Male', 'AB-', 'Other', 'Bangladeshi', '241', '352-623-4054', 'student242@example.com', '$2y$12$LL8wyAkuC41PxFoByljU7uyhtGZe9u.SJ43CkqoXOLF1gZq/yyw46', '6447 Etha Grove Suite 842\nHomenickchester, MN 42904-9162', 'Suite 593', 'Silas Wyman DVM', 'Doctor', '620-260-8589', 'student242@example.com', '242', 'Miss Alia Crist DDS', 'Nurse', '+1 (361) 314-9837', 'student243@example.com', '243', 'Reyna Hermann', '820.205.7523', 'student244@example.com', '244', 'Brother', 1, 4, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:28', '2025-12-06 07:05:34'),
(50, 'Gia', 'Kulas', '1976-12-09', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '246', '458.719.8479', 'student247@example.com', '$2y$12$reVvBENTjJUZZ7Etr8vrE.ufHZ/afKKrnhvhF2C9MIjz3BUjBOySC', '858 Gene Springs\nJudsonton, ME 85535-1471', 'Suite 643', 'Pietro Hettinger', 'Engineer', '757.799.7130', 'student247@example.com', '247', 'Julia Heller', 'Businesswoman', '813.358.1484', 'student248@example.com', '248', 'Prof. Alford Fay III', '+1 (325) 315-5301', 'student249@example.com', '249', 'Uncle', 1, 7, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:28', '2025-12-06 07:05:34'),
(51, 'Sandy', 'Bosco', '1973-10-03', 'Male', 'AB+', 'Christian', 'Bangladeshi', '251', '+12404193436', 'student252@example.com', '$2y$12$UtJihpS4CywKzinQ5C9Lk.BzJ6h.W9LjjViTwYm2AALirkb6YgZoS', '77234 Little Mills Suite 851\nSouth Zitamouth, UT 50643-9246', 'Apt. 203', 'Gregorio Kris', 'Businessman', '810-379-7550', 'student252@example.com', '252', 'Marisa Hermiston', 'Nurse', '341-846-3508', 'student253@example.com', '253', 'Rosalind Lynch', '575.544.8583', 'student254@example.com', '254', 'Aunt', 1, 4, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:28', '2025-12-06 07:05:34'),
(52, 'Darlene', 'Balistreri', '2007-04-26', 'Male', 'AB-', 'Buddhist', 'Bangladeshi', '256', '+1.626.927.1295', 'student257@example.com', '$2y$12$WQMb7kNRFE4GSUHrvLz7S..ZP5ofkiJtKlqw4nIJ3waMQh3LSmQE6', '809 Greenholt Estates Suite 413\nNew Julianahaven, NH 75352-4863', 'Suite 332', 'Akeem Bailey', 'Businessman', '1-240-232-2898', 'student257@example.com', '257', 'Freida Kilback', 'Teacher', '+1-585-249-1525', 'student258@example.com', '258', 'Obie Hammes', '708.991.8765', 'student259@example.com', '259', 'Grandparent', 1, 5, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:28', '2025-12-06 07:05:34'),
(53, 'Adele', 'Schaefer', '2004-02-04', 'Other', 'A+', 'Islam', 'Bangladeshi', '261', '+15133554297', 'student262@example.com', '$2y$12$zxZ7FsVFziT3ZdGhriLRXu2CFlF8ctGYD867vJJyC8DHktS1X5wCS', '706 Monahan Unions\nSouth Dorian, HI 32225-2744', 'Apt. 039', 'Dr. Stefan McLaughlin', 'Businessman', '754-634-6823', 'student262@example.com', '262', 'Daisy Schuster', 'Doctor', '270-546-0274', 'student263@example.com', '263', 'Angelica Casper', '(718) 666-6584', 'student264@example.com', '264', 'Grandparent', 1, 3, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:29', '2025-12-06 07:05:34'),
(54, 'Easter', 'Jerde', '1970-12-13', 'Other', 'B+', 'Other', 'Bangladeshi', '266', '959.598.3180', 'student267@example.com', '$2y$12$/YL3CnYd5ktWn.iUYssKx.Cb0xpLYay2Ru2aWpUtGjIyHP6YdzI.C', '181 Bergstrom Road Suite 049\nEttieview, AR 01243-4578', 'Suite 750', 'Lon Metz MD', 'Teacher', '(620) 664-3495', 'student267@example.com', '267', 'Mara Graham', 'Teacher', '(414) 968-8055', 'student268@example.com', '268', 'Dr. Montana Stehr', '283-702-8621', 'student269@example.com', '269', 'Grandparent', 1, 4, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:29', '2025-12-06 07:05:34'),
(55, 'Ulices', 'Hoeger', '1970-07-25', 'Male', 'B-', 'Christian', 'Bangladeshi', '271', '(321) 574-1223', 'student272@example.com', '$2y$12$JDDvx9rvPQngOlunpzKf1uvdfJL5dYk1zYnpDBnCO/yWUHYVZHYeu', '372 Fay Lakes\nMaggiofurt, GA 51042-0716', 'Suite 113', 'Ike Hessel', 'Businessman', '+1-205-321-8143', 'student272@example.com', '272', 'Prof. Shannon Auer V', 'Doctor', '(662) 479-0380', 'student273@example.com', '273', 'Houston Predovic', '657.569.8801', 'student274@example.com', '274', 'Aunt', 1, 5, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:29', '2025-12-06 07:05:34'),
(56, 'Angela', 'Osinski', '2007-05-30', 'Female', 'A-', 'Christian', 'Bangladeshi', '276', '+1.310.667.7309', 'student277@example.com', '$2y$12$SCgAUddx4dIwkcUTOUkKD.D3ZyLwTaFR4q19NOpFqs4jHzDyqPg8q', '72232 Jacky Prairie\nKuphalshire, NJ 08872', 'Apt. 911', 'Dr. Nathan Bradtke', 'Teacher', '+1-283-470-0750', 'student277@example.com', '277', 'Dr. Lavinia Dickinson III', 'Teacher', '1-628-701-1018', 'student278@example.com', '278', 'Sophie Dach', '(248) 508-2191', 'student279@example.com', '279', 'Sister', 1, 8, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:29', '2025-12-06 07:05:34'),
(57, 'Lionel', 'Cummings', '1973-08-17', 'Other', 'A+', 'Christian', 'Bangladeshi', '281', '+14172808841', 'student282@example.com', '$2y$12$6445JVDG9gCmC4S7zlpB7uHlZFP0lzbX4v11o8FbCZIpMb7snv69O', '1705 Morissette Lakes Suite 837\nSouth Edmondtown, UT 77127-3261', 'Suite 675', 'Mr. Gerhard Zemlak', 'Engineer', '+1-330-216-5165', 'student282@example.com', '282', 'Amya Ortiz', 'Housewife', '(978) 708-8806', 'student283@example.com', '283', 'Jefferey Boyle', '(480) 379-8437', 'student284@example.com', '284', 'Uncle', 1, 2, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:29', '2025-12-06 07:05:34'),
(58, 'Larissa', 'Wyman', '1970-01-18', 'Male', 'O+', 'Christian', 'Bangladeshi', '286', '646.251.0833', 'student287@example.com', '$2y$12$s8Q8glUZx66xEPGfg4nYh.zn/O5mpQToFaSv5YxWqNYSRUwlEoQr2', '7931 Randi Road\nAnkundingside, LA 29248-5839', 'Suite 162', 'Dr. Adolfo Daniel PhD', 'Engineer', '+1-941-384-5360', 'student287@example.com', '287', 'Ms. Susana Jerde IV', 'Nurse', '623-476-8594', 'student288@example.com', '288', 'Mireille Hegmann', '+1 (424) 995-2794', 'student289@example.com', '289', 'Aunt', 1, 9, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:30', '2025-12-06 07:05:34'),
(59, 'Brady', 'Pfannerstill', '2009-11-05', 'Other', 'O+', 'Hindu', 'Bangladeshi', '291', '1-808-471-3881', 'student292@example.com', '$2y$12$re.DLtOUUo4lTR4EoEHyOOgzMwAziHn6WtB96nE91jlbDujoo9C.a', '7843 Ona Alley\nLake Braeden, NY 30565', 'Apt. 455', 'Jacques Howell', 'Teacher', '+14129625607', 'student292@example.com', '292', 'Prof. Reva Jacobi Sr.', 'Nurse', '651-533-0060', 'student293@example.com', '293', 'Demond Carroll', '+1-410-561-7262', 'student294@example.com', '294', 'Sister', 1, 3, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:30', '2025-12-06 07:05:34'),
(60, 'Joany', 'O\'Hara', '2020-09-13', 'Female', 'AB-', 'Other', 'Bangladeshi', '296', '580-575-3932', 'student297@example.com', '$2y$12$Qjk6wvdUJZiH1w/QKBr/DeYmy9Kkz/Ll87xNxrpZv.7BiU5p8ucNm', '94160 Schaden Spurs Suite 420\nOrnberg, OK 97313-0132', 'Apt. 927', 'Curtis Huel I', 'Teacher', '850.375.9449', 'student297@example.com', '297', 'Yazmin Wilkinson V', 'Businesswoman', '+1.763.596.3118', 'student298@example.com', '298', 'Kaitlyn Conn', '440.344.9425', 'student299@example.com', '299', 'Brother', 1, 6, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:30', '2025-12-06 07:05:34'),
(61, 'Josie', 'Kshlerin', '1989-01-31', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '301', '+12399918246', 'student302@example.com', '$2y$12$LowNzRinwYZiAudRYHR9S.D9CuRJuMZxE1ScpcvWPWP.riEoJc6Na', '41794 Jay Tunnel\nBorermouth, KY 24895-9575', 'Suite 156', 'Rashawn Skiles', 'Doctor', '+1.458.574.0920', 'student302@example.com', '302', 'Dr. Addison Hahn', 'Housewife', '1-708-924-3499', 'student303@example.com', '303', 'Freeman Gleichner', '561.931.8654', 'student304@example.com', '304', 'Aunt', 1, 5, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:30', '2025-12-06 07:05:34'),
(62, 'Santino', 'O\'Connell', '1973-10-15', 'Female', 'B-', 'Islam', 'Bangladeshi', '306', '+1.585.809.9714', 'student307@example.com', '$2y$12$KbmyIfCyfWGfwVA/xpigu.zS3DHm7Cbn6LGOL48SpsiWy3DA1bk9K', '4005 Walsh Ports\nLake Bradstad, VA 45232', 'Suite 494', 'Linwood Marvin V', 'Farmer', '+1 (715) 689-1734', 'student307@example.com', '307', 'Valentine Herzog', 'Doctor', '+19287524609', 'student308@example.com', '308', 'Robert Nienow I', '925-841-4418', 'student309@example.com', '309', 'Uncle', 1, 5, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:30', '2025-12-06 07:05:34'),
(63, 'Andreane', 'Prosacco', '1975-10-11', 'Female', 'O-', 'Hindu', 'Bangladeshi', '311', '+1.480.997.6488', 'student312@example.com', '$2y$12$jmvF.snOF3Uvn46zaWjJWuCh5aCaGnTOAi2/1jBUWT6gcZnabvWIi', '6396 Koss Knolls Apt. 914\nLake Palma, NM 34020-7578', 'Suite 411', 'Dell Lakin', 'Engineer', '+1 (540) 673-2824', 'student312@example.com', '312', 'Clementina Veum V', 'Nurse', '(469) 446-1164', 'student313@example.com', '313', 'Katelyn Quigley', '941-945-4724', 'student314@example.com', '314', 'Grandparent', 1, 5, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:30', '2025-12-06 07:05:34'),
(64, 'Oceane', 'Nitzsche', '2006-11-19', 'Other', 'O+', 'Islam', 'Bangladeshi', '316', '845.703.2039', 'student317@example.com', '$2y$12$VwB0TPhQpoWnKyYCJhtoBuIcswpwtDr4wEGk.kTixSzMrkFGaZMhu', '267 Rohan Manors Apt. 111\nPort Jackeline, WV 25722', 'Suite 754', 'Nick Schultz', 'Engineer', '(615) 895-8399', 'student317@example.com', '317', 'Elnora Wunsch', 'Doctor', '(385) 721-5849', 'student318@example.com', '318', 'Lizeth Gorczany II', '283-907-7534', 'student319@example.com', '319', 'Brother', 1, 10, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:31', '2025-12-06 07:05:34'),
(65, 'Caleigh', 'Haag', '2011-09-22', 'Male', 'A+', 'Christian', 'Bangladeshi', '321', '1-325-671-5476', 'student322@example.com', '$2y$12$O3kdHgDWBsjD9AHlNL4mjeznp35YZTiShgIgKjiRJ9Jvui/UaGLgW', '64064 Maryjane Divide\nRhiannaton, MO 12834-1157', 'Suite 763', 'Santino Green', 'Teacher', '248.968.6695', 'student322@example.com', '322', 'Summer Bergnaum', 'Doctor', '+1.201.500.7603', 'student323@example.com', '323', 'Mrs. Janet Yundt DVM', '+1-475-446-1152', 'student324@example.com', '324', 'Grandparent', 1, 6, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:31', '2025-12-06 07:05:34'),
(66, 'Fernando', 'Morar', '1995-06-14', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '326', '+1-779-730-6842', 'student327@example.com', '$2y$12$DMHfJNmPrbntJ55ORbrZgOVx55oZGpDOWmqDGG9okDar3vc3a9qNu', '560 Matteo Creek\nVidaborough, AL 45051', 'Suite 826', 'Erwin Schiller', 'Farmer', '458-359-1926', 'student327@example.com', '327', 'Oleta Gaylord', 'Nurse', '(954) 931-4460', 'student328@example.com', '328', 'Prof. Greg Conn', '+12406062917', 'student329@example.com', '329', 'Aunt', 1, 11, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:31', '2025-12-06 07:05:34'),
(67, 'Betsy', 'McClure', '2010-02-01', 'Female', 'AB+', 'Other', 'Bangladeshi', '331', '(717) 283-3395', 'student332@example.com', '$2y$12$007iM53UFgE59.wCaWPlq.GhfS9neV5rjyCaSbJCJEqUEyK8SmFaq', '758 Blick Cape Apt. 737\nLianaport, DC 83371', 'Suite 860', 'Juston Weimann', 'Farmer', '+13379571332', 'student332@example.com', '332', 'Addison Crona', 'Businesswoman', '(657) 268-9314', 'student333@example.com', '333', 'Mr. Clark Gulgowski IV', '(984) 765-2366', 'student334@example.com', '334', 'Sister', 1, 6, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:31', '2025-12-06 07:05:34'),
(68, 'Lenore', 'Kunde', '1972-12-07', 'Female', 'A+', 'Other', 'Bangladeshi', '336', '(817) 388-8064', 'student337@example.com', '$2y$12$4G3pvxPpzbtimXarvF80XOz0XEZ.dX52QEDLcEHRmMRidIziKYCWO', '1440 Fritz Cove\nEast Roslyn, MS 90865-0156', 'Apt. 916', 'Anastacio O\'Conner', 'Doctor', '+1 (805) 330-5324', 'student337@example.com', '337', 'Gisselle Roob', 'Nurse', '+19859726075', 'student338@example.com', '338', 'Sheldon Fisher', '1-251-921-5690', 'student339@example.com', '339', 'Brother', 1, 5, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:31', '2025-12-06 07:05:34'),
(69, 'Ricky', 'Kunde', '1997-08-25', 'Female', 'O-', 'Other', 'Bangladeshi', '341', '+1.563.859.6511', 'student342@example.com', '$2y$12$St6uONdSEn8nF6mB1IpIUuUaCRWXn5AREgIy.tPuZa8XWlT5nLRJu', '40885 Agustina Gardens Suite 634\nDenesikstad, MN 58137-5210', 'Suite 031', 'Prof. Cooper Stanton DVM', 'Engineer', '1-435-236-4624', 'student342@example.com', '342', 'Mrs. Beth Ondricka', 'Housewife', '+1.617.989.6648', 'student343@example.com', '343', 'Pablo Leuschke', '445.926.1979', 'student344@example.com', '344', 'Aunt', 1, 6, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:32', '2025-12-06 07:05:34'),
(70, 'Duncan', 'Yundt', '1995-03-01', 'Other', 'AB-', 'Christian', 'Bangladeshi', '346', '1-928-959-4720', 'student347@example.com', '$2y$12$HQdZZnas2S5/FjiDP/BQQ.6TFFNic3m2gmETn6SNuO4HR.7z0kNfi', '21078 Zboncak Inlet Apt. 527\nCaspermouth, OH 73959', 'Apt. 964', 'Omer Orn', 'Teacher', '629-586-4093', 'student347@example.com', '347', 'Mrs. Elsie Kilback', 'Doctor', '+1 (727) 315-0193', 'student348@example.com', '348', 'Trystan Osinski DDS', '351.875.7760', 'student349@example.com', '349', 'Uncle', 1, 4, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:32', '2025-12-06 07:05:34'),
(71, 'Jordan', 'VonRueden', '2008-02-04', 'Female', 'AB+', 'Other', 'Bangladeshi', '351', '(332) 924-4485', 'student352@example.com', '$2y$12$MO2chCKm60B6yUqChH69cONCeuZDcmM2vBlB2Ik6hIoXDPFumh3Q2', '865 Considine Circle Apt. 454\nMurrayburgh, AK 03976', 'Suite 058', 'Mr. Tyreek Reichel', 'Doctor', '+1.413.526.6246', 'student352@example.com', '352', 'Prof. Daniella Denesik', 'Businesswoman', '+18789703816', 'student353@example.com', '353', 'Dr. Weldon Tremblay II', '+19492758436', 'student354@example.com', '354', 'Brother', 1, 4, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:32', '2025-12-06 07:05:34'),
(72, 'Geraldine', 'Wisoky', '1990-12-21', 'Female', 'B-', 'Other', 'Bangladeshi', '356', '630-727-2218', 'student357@example.com', '$2y$12$s6/5NNBKa/MjZUVyAPOrC.w4CC09QDEKLY0mCyS9b3iq6/tmX6lb6', '958 Prosacco Forge\nNorth Floydmouth, ME 75666', 'Apt. 272', 'Prof. Walton Walter Jr.', 'Doctor', '(854) 932-1854', 'student357@example.com', '357', 'Ila Champlin', 'Teacher', '+1-970-991-2255', 'student358@example.com', '358', 'Jodie Shanahan', '+1.475.291.0719', 'student359@example.com', '359', 'Brother', 1, 7, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:32', '2025-12-06 07:05:34'),
(73, 'Amina', 'Murray', '2016-09-04', 'Other', 'A-', 'Christian', 'Bangladeshi', '361', '+16676901895', 'student362@example.com', '$2y$12$tpN9z0H9HrQkUPZ7Uu6oNOaiYYTspkElcOS5bdSCVeWVvE8CDwHKG', '757 Keon Hollow\nNew Carroll, FL 11695', 'Suite 674', 'Jarrell Wehner', 'Businessman', '262-217-2768', 'student362@example.com', '362', 'Beryl Johnston', 'Teacher', '260-372-6448', 'student363@example.com', '363', 'Julie Corwin', '+12406389225', 'student364@example.com', '364', 'Aunt', 1, 7, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:32', '2025-12-06 07:05:34'),
(74, 'Arvilla', 'Armstrong', '2005-06-05', 'Other', 'O+', 'Hindu', 'Bangladeshi', '366', '(586) 943-1613', 'student367@example.com', '$2y$12$C9mjodybxfWPmA4g6THubOoQ/wf5LOy4ZbOKi3kh9B5GLtVlNVwjG', '8521 Pacocha Lights\nWest Vaughnchester, TX 10032', 'Suite 974', 'Dr. Jaiden Vandervort', 'Farmer', '725-542-4225', 'student367@example.com', '367', 'Myrtie Effertz', 'Doctor', '872.762.9501', 'student368@example.com', '368', 'Ludie Tillman', '+1-530-667-8961', 'student369@example.com', '369', 'Brother', 1, 8, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:32', '2025-12-06 07:05:34'),
(75, 'Shannon', 'Keebler', '1983-07-12', 'Other', 'B+', 'Hindu', 'Bangladeshi', '371', '1-986-941-4783', 'student372@example.com', '$2y$12$dUWswtbHmlQ8W5IaWtVwYOmHnskluDe5gO6fj/uaoIiyN57brch/6', '45646 Cormier Island Apt. 537\nEast Angelaberg, NY 86184', 'Apt. 745', 'Bertha Bechtelar', 'Teacher', '(272) 695-8002', 'student372@example.com', '372', 'Elissa Crona', 'Nurse', '+1-512-876-5464', 'student373@example.com', '373', 'Glenna Hamill', '+18062167154', 'student374@example.com', '374', 'Aunt', 1, 8, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:33', '2025-12-06 07:05:34'),
(76, 'Augusta', 'Steuber', '1982-01-29', 'Other', 'B-', 'Other', 'Bangladeshi', '376', '+17608225271', 'student377@example.com', '$2y$12$kQKRVri74ht0W7lJ0cQNP.om1ol.Il6cHGED7j8mTmaIVU.9Qlexe', '191 Scot Park\nWeissnatfurt, MI 20069-3867', 'Apt. 449', 'Christian Wisoky III', 'Businessman', '+14807326057', 'student377@example.com', '377', 'Mrs. Ericka O\'Hara MD', 'Doctor', '(856) 822-9558', 'student378@example.com', '378', 'Mrs. Sharon Fadel', '320-495-2879', 'student379@example.com', '379', 'Brother', 1, 6, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:33', '2025-12-06 07:05:34'),
(77, 'Constance', 'Barrows', '1972-01-18', 'Other', 'A+', 'Christian', 'Bangladeshi', '381', '+1-586-985-5123', 'student382@example.com', '$2y$12$.7Ri/JUYk6G1RXm1h7Xd5.rjcFU/Y1ofSj9kHV3W1NsU2BxR8zewy', '970 Alexzander Course\nKennyberg, AZ 01877', 'Suite 217', 'Akeem Jacobson I', 'Engineer', '+1 (551) 326-5228', 'student382@example.com', '382', 'Nia Little', 'Businesswoman', '863-779-3100', 'student383@example.com', '383', 'Reed Boehm', '(931) 475-1832', 'student384@example.com', '384', 'Aunt', 1, 7, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:33', '2025-12-06 07:05:34'),
(78, 'Heloise', 'Spencer', '2013-06-16', 'Other', 'AB+', 'Other', 'Bangladeshi', '386', '1-248-581-2537', 'student387@example.com', '$2y$12$iw76/qtDJeIUSuhNdEeHieDN5zvkexfv/fKySz/PVFRgH7RIgMbsm', '75286 Rocio Island\nOsinskiton, MS 99407', 'Suite 664', 'Trey McClure', 'Engineer', '1-484-989-1042', 'student387@example.com', '387', 'Ena McKenzie', 'Doctor', '217-337-3626', 'student388@example.com', '388', 'Melba Yundt', '818-368-6856', 'student389@example.com', '389', 'Uncle', 1, 9, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:33', '2025-12-06 07:05:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(79, 'Bonnie', 'Fisher', '1976-04-08', 'Other', 'A+', 'Islam', 'Bangladeshi', '391', '(425) 813-1649', 'student392@example.com', '$2y$12$6T3sEyPZZkKaWSRNH9RyEOxoxjUvxv//NiuLkO912M0/F0j1U9rcC', '7784 Shirley Junction\nPort Clydetown, OK 88791', 'Suite 184', 'Carey Towne', 'Engineer', '(303) 947-6552', 'student392@example.com', '392', 'Veronica Moen', 'Doctor', '+1.534.336.7990', 'student393@example.com', '393', 'Celestine Langosh', '+1 (380) 950-4853', 'student394@example.com', '394', 'Sister', 1, 12, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:33', '2025-12-06 07:05:34'),
(80, 'Danny', 'Breitenberg', '1978-07-29', 'Female', 'B-', 'Hindu', 'Bangladeshi', '396', '276-298-5900', 'student397@example.com', '$2y$12$WRN2bNfkW4xbR7VGL3IJF.0YKbBpm6AtSLmqpE8WNftx/GSXyLFCq', '77398 Jermaine Vista\nPort Karianetown, MI 27627', 'Apt. 186', 'Brad Koss III', 'Doctor', '351.536.1609', 'student397@example.com', '397', 'Abby Kuvalis', 'Businesswoman', '804-360-7294', 'student398@example.com', '398', 'Jerry Moen', '458-969-6496', 'student399@example.com', '399', 'Uncle', 1, 5, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:34', '2025-12-06 07:05:34'),
(81, 'Mazie', 'Schumm', '2001-07-05', 'Male', 'O-', 'Hindu', 'Bangladeshi', '401', '+13216899621', 'student402@example.com', '$2y$12$qnN2sRPCpEsQ5H/1wG1OTemn162khDBX2r1hrFpw.zl1TJUf6Ly72', '528 Laverne Neck\nWest Toreytown, UT 13351', 'Suite 772', 'Cristian DuBuque', 'Teacher', '+1.425.631.5313', 'student402@example.com', '402', 'Gisselle Prosacco', 'Nurse', '(220) 950-7090', 'student403@example.com', '403', 'Kaycee Romaguera', '+1-707-754-3583', 'student404@example.com', '404', 'Aunt', 1, 6, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:34', '2025-12-06 07:05:34'),
(82, 'Titus', 'Gleason', '2015-11-24', 'Male', 'B-', 'Other', 'Bangladeshi', '406', '1-620-535-6166', 'student407@example.com', '$2y$12$n5VV2WwK7N1tnnuasgBozeJXZe2dr57LL76ZJ50b8ft3Q4bLACT9u', '45421 McDermott Freeway\nWest Jalon, NM 91552', 'Suite 920', 'Dr. Judah Kautzer II', 'Engineer', '+1-669-381-1949', 'student407@example.com', '407', 'Mrs. Maiya Leffler Jr.', 'Housewife', '1-563-879-8790', 'student408@example.com', '408', 'Liza Wisoky', '586-522-4947', 'student409@example.com', '409', 'Aunt', 1, 7, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:34', '2025-12-06 07:05:34'),
(83, 'Edna', 'Fritsch', '2006-04-23', 'Other', 'O-', 'Hindu', 'Bangladeshi', '411', '1-714-269-9922', 'student412@example.com', '$2y$12$IFwhf0y0HVEKAred9cUxV.7hm8QU.qN1qUuXN0evAPDNkaZCgxYKy', '965 Jazlyn Bypass\nSouth Daxbury, NJ 55291-5982', 'Apt. 206', 'Manuela Boyle', 'Engineer', '1-352-748-5814', 'student412@example.com', '412', 'Kali Ebert', 'Teacher', '947-779-8940', 'student413@example.com', '413', 'Miss Mona Herman DDS', '+1-308-277-7389', 'student414@example.com', '414', 'Grandparent', 1, 7, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:34', '2025-12-06 07:05:34'),
(84, 'Edison', 'Jacobi', '1991-08-22', 'Male', 'O+', 'Christian', 'Bangladeshi', '416', '440-441-8621', 'student417@example.com', '$2y$12$SXe7Os8L.bHS8TW2oyFpX.7tPJ73OttJgJdNwbxkLhAOFOvwPyV9W', '14883 Cruickshank Garden\nEast Rafaelfort, OH 98387', 'Suite 501', 'Alphonso Effertz', 'Teacher', '1-208-280-4830', 'student417@example.com', '417', 'Miss Corrine Stokes III', 'Nurse', '+1-820-526-2948', 'student418@example.com', '418', 'Lucinda Langosh IV', '912-246-2133', 'student419@example.com', '419', 'Sister', 1, 6, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:34', '2025-12-06 07:05:34'),
(85, 'Lindsey', 'Breitenberg', '2012-02-29', 'Female', 'O-', 'Islam', 'Bangladeshi', '421', '1-848-829-5345', 'student422@example.com', '$2y$12$oqdpQM7agzTeyo4gGQs7BeApUgEbfnxbQ2r6BybNwOjjVNH7Q7QMu', '241 Murphy Fields\nErnieport, MA 84378-6607', 'Apt. 016', 'Dr. Clint Collier DVM', 'Teacher', '+1-925-555-6825', 'student422@example.com', '422', 'Prof. Reva Legros', 'Teacher', '(352) 233-5991', 'student423@example.com', '423', 'Kurtis Orn', '+16294837402', 'student424@example.com', '424', 'Uncle', 1, 8, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:35', '2025-12-06 07:05:34'),
(86, 'Monique', 'Von', '2005-01-29', 'Female', 'AB+', 'Buddhist', 'Bangladeshi', '426', '+18287851815', 'student427@example.com', '$2y$12$LRDj5Ypf4/zX6u.lleHuVODg5rERbGsworfx769crwlMgKgDUIES2', '18282 Gaston Plaza Suite 173\nMarjolaineland, MA 61462-9974', 'Apt. 234', 'Brady Gusikowski Jr.', 'Farmer', '+1.215.737.3216', 'student427@example.com', '427', 'Norma Price', 'Teacher', '(763) 717-0642', 'student428@example.com', '428', 'Prof. Dominique Morar DDS', '440-873-6734', 'student429@example.com', '429', 'Uncle', 1, 7, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:35', '2025-12-06 07:05:34'),
(87, 'Ludie', 'Rosenbaum', '2010-09-15', 'Other', 'B-', 'Islam', 'Bangladeshi', '431', '(831) 847-1345', 'student432@example.com', '$2y$12$It873don6Jn8kxLL635GL.eUiHszI8bAkoDd9ujXtWVyjCtA9O3aK', '19715 Maxie Harbors Suite 785\nNew Benjaminfort, FL 42790', 'Apt. 317', 'Freddy Yost', 'Farmer', '+14423962309', 'student432@example.com', '432', 'Mrs. Charlene Littel', 'Nurse', '810-543-1298', 'student433@example.com', '433', 'Dorris Barrows', '+1-203-952-3789', 'student434@example.com', '434', 'Uncle', 1, 8, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:35', '2025-12-06 07:05:34'),
(88, 'Jesse', 'Bradtke', '2015-04-19', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '436', '1-458-809-3894', 'student437@example.com', '$2y$12$V7pewCfFkgaGyj640sW3I.dmyIzm2/B1dDgZERo6RROZR3ipgWHeC', '5924 Peggie Roads Apt. 946\nJerodchester, LA 92856', 'Suite 765', 'Cleveland Zemlak', 'Teacher', '+1 (802) 328-1401', 'student437@example.com', '437', 'Eloisa Brekke', 'Nurse', '484-778-8915', 'student438@example.com', '438', 'Curt Lockman', '1-830-427-2444', 'student439@example.com', '439', 'Uncle', 1, 7, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:35', '2025-12-06 07:05:35'),
(89, 'Thea', 'Ryan', '2005-04-01', 'Other', 'B+', 'Christian', 'Bangladeshi', '441', '+1.680.888.3160', 'student442@example.com', '$2y$12$x6xOqXxAY8bF9tAo4EJCLO1RrMSRhRFtGiG3rEzfXyWu0jaZR.Vma', '482 McDermott Springs\nRayside, OR 35078-5168', 'Apt. 456', 'Dr. Kameron Skiles DVM', 'Engineer', '(323) 531-6662', 'student442@example.com', '442', 'Lavada Adams MD', 'Doctor', '+1.864.522.7718', 'student443@example.com', '443', 'Prof. Jacynthe Ryan II', '(870) 376-0437', 'student444@example.com', '444', 'Grandparent', 1, 8, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:35', '2025-12-06 07:05:35'),
(90, 'Rey', 'Quigley', '1973-09-23', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '446', '281.349.9302', 'student447@example.com', '$2y$12$aUva1wVjxjfGUOkuG4DzP.yw7th60a0dX/GUrLr3ToAlD7JxfRgqC', '61030 Schulist Groves\nCorwinburgh, LA 58580', 'Apt. 677', 'Sean Ritchie', 'Businessman', '+1-918-988-4998', 'student447@example.com', '447', 'Eileen Jacobi III', 'Doctor', '1-678-803-2979', 'student448@example.com', '448', 'Mrs. Adrienne Pouros IV', '+1 (269) 286-5402', 'student449@example.com', '449', 'Sister', 1, 9, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:35', '2025-12-06 07:05:35'),
(91, 'Amani', 'Zieme', '2021-09-07', 'Female', 'B+', 'Christian', 'Bangladeshi', '451', '484-883-3964', 'student452@example.com', '$2y$12$sZKUNNPwisNDbXuqaTpkCeeyiA0kZ5S7V9xQPga3N75ejNVJ2KRxu', '2627 Simonis Crossing\nPort Loraineville, OR 10260', 'Apt. 452', 'Prof. Franz Gaylord V', 'Doctor', '1-731-581-9193', 'student452@example.com', '452', 'Nya Boehm', 'Teacher', '1-224-941-1320', 'student453@example.com', '453', 'Maida Schowalter', '360.632.5618', 'student454@example.com', '454', 'Uncle', 1, 9, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:36', '2025-12-06 07:05:35'),
(92, 'Ali', 'Rau', '2004-12-04', 'Female', 'B-', 'Other', 'Bangladeshi', '456', '+15206663494', 'student457@example.com', '$2y$12$KkBPkiZT9T73Pjr05WA13ertoxrflk4jwkINnXa6lupW2xEAH5WaG', '4782 Rebekah Springs\nNorth Brucemouth, NV 82472', 'Apt. 932', 'Akeem Donnelly', 'Farmer', '+1.904.734.7283', 'student457@example.com', '457', 'Chyna Durgan', 'Teacher', '(269) 268-3261', 'student458@example.com', '458', 'Prof. Litzy Baumbach', '(859) 413-1587', 'student459@example.com', '459', 'Grandparent', 1, 6, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:36', '2025-12-06 07:05:35'),
(93, 'Jason', 'Lind', '1974-12-28', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '461', '+1 (551) 366-0161', 'student462@example.com', '$2y$12$RghfQjxnYiDWF1sWt0gGu.9ISTG1OF8PzDa0a1CI8yL279NH8eV/G', '111 Konopelski Keys\nLisettehaven, MD 84571-1760', 'Apt. 670', 'Rashawn Emmerich', 'Teacher', '+1 (903) 898-3031', 'student462@example.com', '462', 'Lessie Block I', 'Businesswoman', '+1.469.678.9580', 'student463@example.com', '463', 'Prof. Audreanne Vandervort', '509.600.2597', 'student464@example.com', '464', 'Uncle', 1, 10, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:36', '2025-12-06 07:05:35'),
(94, 'Rosella', 'Feeney', '1986-03-27', 'Male', 'AB+', 'Other', 'Bangladeshi', '466', '+14588477051', 'student467@example.com', '$2y$12$7oNCM6gEjmv2FBmqXOKesuOd6a6slpjfYdeDrKl8bPwLTzCyvt01y', '8021 Braun Plaza\nSouth Rickiemouth, ND 02719-8463', 'Apt. 515', 'Prof. Merlin Greenfelder I', 'Businessman', '(916) 518-2274', 'student467@example.com', '467', 'Ms. Katarina Schuppe', 'Teacher', '(828) 412-5916', 'student468@example.com', '468', 'Gilda Romaguera', '(781) 549-7303', 'student469@example.com', '469', 'Grandparent', 1, 8, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:36', '2025-12-06 07:05:35'),
(95, 'Tomasa', 'Renner', '1993-07-21', 'Other', 'A-', 'Other', 'Bangladeshi', '471', '725.901.9779', 'student472@example.com', '$2y$12$BmWJV9qzkZxSyxc2mLrNTOacVIkgrPVnsMHyPCbkfxUujhdve/LiC', '8270 O\'Keefe Squares Suite 097\nWestborough, DC 86111-8225', 'Suite 805', 'Wilfred Shanahan', 'Engineer', '+1-918-566-8740', 'student472@example.com', '472', 'Magnolia Turcotte III', 'Teacher', '757.967.7843', 'student473@example.com', '473', 'Twila Hilpert', '351-361-6408', 'student474@example.com', '474', 'Uncle', 1, 5, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:36', '2025-12-06 07:05:35'),
(96, 'Kailee', 'Heller', '2022-06-25', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '476', '1-920-403-8633', 'student477@example.com', '$2y$12$Wt6Ow/kDTZAbzrMTAHBomOkhwJnDaEX36jbf2enT7OBRXYXWV7AWa', '48218 West Branch\nPort Yadira, KY 60364-6360', 'Suite 968', 'Brooks Klein Jr.', 'Teacher', '(346) 234-6170', 'student477@example.com', '477', 'Miss Samara Wuckert DVM', 'Housewife', '+1-937-489-1038', 'student478@example.com', '478', 'Nikko Hyatt', '508-465-6752', 'student479@example.com', '479', 'Aunt', 1, 10, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:37', '2025-12-06 07:05:35'),
(97, 'Sandrine', 'Swift', '2007-05-02', 'Female', 'A+', 'Buddhist', 'Bangladeshi', '481', '331.296.9591', 'student482@example.com', '$2y$12$Rlm4CTjfgtWU/PZMFZ1WHOXr/Iz6mfpvXONYFu22KCllKadHyZFuK', '16356 Morissette Shore\nOrtizborough, AL 10109', 'Apt. 868', 'Gilbert Roberts Sr.', 'Farmer', '430-461-0795', 'student482@example.com', '482', 'Melissa Towne', 'Doctor', '318.505.2632', 'student483@example.com', '483', 'Mr. Thurman West III', '+1-820-723-8522', 'student484@example.com', '484', 'Aunt', 1, 7, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:37', '2025-12-06 07:05:35'),
(98, 'Giovanny', 'Walker', '1979-10-26', 'Other', 'A-', 'Islam', 'Bangladeshi', '486', '434-286-1058', 'student487@example.com', '$2y$12$QfrOrudfna/2TRcB31N2L.h8Hnq872tI388LsIUd6rbHQ07buNjBK', '93213 Raynor Crescent Suite 158\nEast Issac, DC 16114', 'Apt. 847', 'Kurtis Bartell', 'Farmer', '(762) 682-1304', 'student487@example.com', '487', 'Mrs. Missouri Marks Jr.', 'Housewife', '978-422-1453', 'student488@example.com', '488', 'Lexi O\'Hara', '(386) 454-6534', 'student489@example.com', '489', 'Uncle', 1, 8, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:37', '2025-12-06 07:05:35'),
(99, 'Pat', 'Quigley', '1983-07-12', 'Other', 'AB-', 'Hindu', 'Bangladeshi', '491', '+1-818-741-6254', 'student492@example.com', '$2y$12$iUE4gHxd.O36J/5LGfzv/.c.YKiDBAW7zTcmVV5xNOdW6OBQ14X9q', '696 Keven Way Suite 513\nBrookemouth, NC 44940', 'Suite 703', 'Chandler Mante', 'Doctor', '+1.520.377.4287', 'student492@example.com', '492', 'Megane King', 'Teacher', '606.581.3156', 'student493@example.com', '493', 'Clement Will', '351-783-0330', 'student494@example.com', '494', 'Grandparent', 1, 11, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:37', '2025-12-06 07:05:35'),
(100, 'Waino', 'Herzog', '2020-01-08', 'Female', 'A-', 'Islam', 'Bangladeshi', '496', '+19848360034', 'student497@example.com', '$2y$12$zXSnPMIPdtrRI08Blrk3W.ChQqLrda4yv69gziwg6/8vUKoq52gwy', '63096 Schaden Plains Suite 717\nMohrtown, OR 41122', 'Suite 523', 'Wendell Marvin', 'Doctor', '+12019907702', 'student497@example.com', '497', 'Karen Barrows IV', 'Doctor', '724.640.7941', 'student498@example.com', '498', 'Beatrice Hickle', '947.710.7452', 'student499@example.com', '499', 'Uncle', 1, 9, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:37', '2025-12-06 07:05:35'),
(101, 'Christine', 'Hilpert', '1987-12-20', 'Female', 'A-', 'Hindu', 'Bangladeshi', '501', '1-205-618-2129', 'student502@example.com', '$2y$12$omA1GR7Z1Zj2.YGvSHfPfOYM2hWM6k4gM.1k4oN6bz8vJPxfCtTxe', '751 Sidney Summit Suite 963\nMakenziebury, TX 94629', 'Apt. 397', 'Trenton Kassulke', 'Farmer', '607.625.1803', 'student502@example.com', '502', 'Prof. Nola Ankunding Jr.', 'Doctor', '925-889-3150', 'student503@example.com', '503', 'Damion Nolan', '1-906-526-3677', 'student504@example.com', '504', 'Uncle', 1, 6, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:37', '2025-12-06 07:05:35'),
(102, 'Rupert', 'Ritchie', '2004-11-07', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '506', '+1-480-565-4682', 'student507@example.com', '$2y$12$mFI9LfAWZUUjIiBm9rAo1.LAm.eNc05A.SM27563Rzw1IdjLcvZsq', '88569 Jimmy Turnpike\nEast Virgilport, HI 89316', 'Apt. 433', 'Westley Connelly', 'Engineer', '774-978-2272', 'student507@example.com', '507', 'Ms. Delta Durgan Sr.', 'Doctor', '+1.828.221.0239', 'student508@example.com', '508', 'Lavina Predovic', '1-843-856-6386', 'student509@example.com', '509', 'Brother', 1, 7, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:38', '2025-12-06 07:05:35'),
(103, 'Harmony', 'Hettinger', '1994-03-25', 'Other', 'A+', 'Christian', 'Bangladeshi', '511', '+1-970-704-3171', 'student512@example.com', '$2y$12$uYHk7EKmWseqHKQjbbjZdOHKXyvj1fRH3SbKMlXBaHkSXcn71EbI2', '68490 Julie Flat\nMitchellhaven, NV 03372', 'Suite 972', 'Sheldon Howell', 'Engineer', '412-277-7788', 'student512@example.com', '512', 'Idella Huel', 'Nurse', '(585) 318-3298', 'student513@example.com', '513', 'Madisyn Kuhn', '+1 (586) 536-4776', 'student514@example.com', '514', 'Grandparent', 1, 8, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:38', '2025-12-06 07:05:35'),
(104, 'Guy', 'Flatley', '1987-12-04', 'Female', 'A-', 'Christian', 'Bangladeshi', '516', '352-880-5605', 'student517@example.com', '$2y$12$SHwQAlOX6G7WhCAozZzc4OcPrW2wDHmM8xaojrjnSeTgvzLgm/vTS', '6822 Lebsack Circles\nEast Collin, MO 96759-3310', 'Apt. 409', 'Edd Streich', 'Doctor', '240-816-9385', 'student517@example.com', '517', 'Florida Konopelski', 'Businesswoman', '580.653.8983', 'student518@example.com', '518', 'Jackeline Steuber Sr.', '(520) 948-6264', 'student519@example.com', '519', 'Sister', 1, 9, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:38', '2025-12-06 07:05:35'),
(105, 'Judy', 'Hessel', '1981-10-20', 'Female', 'AB-', 'Islam', 'Bangladeshi', '521', '531.529.9546', 'student522@example.com', '$2y$12$57kwM/41r.RCm1rKgfSZpekyVjOSJiAU5TqqGsp70dRzzX3HJpZ1.', '12006 Sandrine Unions Apt. 017\nJarrellport, MS 09027-0116', 'Apt. 921', 'Prof. Maxime Kutch I', 'Teacher', '+1-682-258-3324', 'student522@example.com', '522', 'Bryana Rowe', 'Doctor', '360.284.3063', 'student523@example.com', '523', 'Dr. Bernardo Leuschke', '660-265-9233', 'student524@example.com', '524', 'Sister', 1, 10, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:38', '2025-12-06 07:05:35'),
(106, 'Parker', 'Okuneva', '2003-11-21', 'Other', 'AB-', 'Buddhist', 'Bangladeshi', '526', '272.735.3890', 'student527@example.com', '$2y$12$qnFohs4/9W/rWlLUzu1MOOKnbHBDpXCrneLPOa8I0ilkb8hOsgLSC', '3843 Dorcas Ramp Suite 040\nWest Aiyana, UT 00126', 'Apt. 319', 'Cristobal Herman', 'Doctor', '+1.716.688.6909', 'student527@example.com', '527', 'Lexie Halvorson DDS', 'Teacher', '1-283-600-9433', 'student528@example.com', '528', 'Cordia O\'Conner', '458-829-5729', 'student529@example.com', '529', 'Brother', 1, 10, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:38', '2025-12-06 07:05:35'),
(107, 'Ellsworth', 'Corwin', '2015-05-27', 'Female', 'AB-', 'Hindu', 'Bangladeshi', '531', '(714) 696-7694', 'student532@example.com', '$2y$12$dyU2wqEAAjbMJ6EwnpXnZuTMZzAqLoCFEu8Xgi57LDDPSSE1f0Liu', '75183 Oma Alley\nRaynorshire, ID 68171-3039', 'Suite 315', 'Pierre Schoen Sr.', 'Teacher', '678-469-2675', 'student532@example.com', '532', 'Glenda Batz', 'Teacher', '(239) 792-6705', 'student533@example.com', '533', 'Eve Berge', '+1.520.619.1803', 'student534@example.com', '534', 'Aunt', 1, 9, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:38', '2025-12-06 07:05:35'),
(108, 'Flo', 'Feeney', '1980-07-16', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '536', '818.707.6675', 'student537@example.com', '$2y$12$.Vt.qyxRklQesH/WGfa5wOmEodGXJgIAOWVYshlNl.gtLjgVAEkA2', '96772 Kuvalis Keys\nLake Gregoriotown, MI 42770-5423', 'Apt. 106', 'Linwood Stamm', 'Doctor', '831-207-8792', 'student537@example.com', '537', 'Leslie Yundt', 'Teacher', '321.303.0094', 'student538@example.com', '538', 'Dr. Asha Bechtelar', '551-515-0111', 'student539@example.com', '539', 'Grandparent', 1, 11, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:39', '2025-12-06 07:05:35'),
(109, 'Carson', 'Zieme', '2019-09-25', 'Other', 'AB-', 'Buddhist', 'Bangladeshi', '541', '1-863-549-3932', 'student542@example.com', '$2y$12$aCiIAHWZwNq9p3JK/N0y2O0jZgSAoTRU336B70uBHmy0EPqX.eSiW', '622 Virgil Neck Apt. 907\nKuvalismouth, DE 51538', 'Apt. 499', 'Jarrett Zulauf', 'Engineer', '+1.520.586.2047', 'student542@example.com', '542', 'Elda Miller', 'Housewife', '860.877.5796', 'student543@example.com', '543', 'Dr. Gaetano Waelchi', '786-622-8092', 'student544@example.com', '544', 'Brother', 1, 11, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:39', '2025-12-06 07:05:35'),
(110, 'Vidal', 'Glover', '2019-06-11', 'Female', 'B-', 'Hindu', 'Bangladeshi', '546', '534.604.1238', 'student547@example.com', '$2y$12$XuzD4xn/76r1RTl6ESDN6O5eQn8nc5yUQt.2jxRAXwYjIZ31cbt7G', '7123 Andreane Brooks Suite 956\nBednarchester, MA 15258-1210', 'Apt. 352', 'Sebastian Anderson', 'Teacher', '+1-828-956-9773', 'student547@example.com', '547', 'Miss Julie Treutel', 'Nurse', '+1 (458) 374-7441', 'student548@example.com', '548', 'Crystal Conn', '1-325-698-5566', 'student549@example.com', '549', 'Uncle', 1, 10, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:39', '2025-12-06 07:05:35'),
(111, 'Stella', 'Beer', '2014-08-15', 'Other', 'AB+', 'Other', 'Bangladeshi', '551', '(862) 376-0864', 'student552@example.com', '$2y$12$3j0eYsTYJBue3wUMd...BOW04AMW2Z0c8DTNuNAhCT1V85PiXR78G', '25322 Koelpin Harbor Apt. 141\nPort Josiemouth, KS 58009', 'Apt. 246', 'Axel Fisher', 'Teacher', '929.265.0700', 'student552@example.com', '552', 'Alison Gislason', 'Nurse', '667.226.2582', 'student553@example.com', '553', 'Rosendo Weimann', '424-917-4687', 'student554@example.com', '554', 'Brother', 1, 12, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:39', '2025-12-06 07:05:35'),
(112, 'Marilyne', 'Moore', '2010-06-21', 'Other', 'B-', 'Islam', 'Bangladeshi', '556', '458-294-3577', 'student557@example.com', '$2y$12$VVia0bpSFmwZPjAzFjreKeKw6ZLsZ6bF3kJgWIGVFQ.AvJEEFCLIW', '62105 Adrienne Meadows Suite 399\nPort Venaland, FL 05420', 'Apt. 446', 'Prof. Linwood Bednar', 'Businessman', '360.668.7087', 'student557@example.com', '557', 'Lavonne McKenzie', 'Teacher', '941-680-6820', 'student558@example.com', '558', 'Dr. Lew Koelpin', '+1 (878) 206-4553', 'student559@example.com', '559', 'Brother', 1, 11, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:39', '2025-12-06 07:05:35'),
(113, 'Deja', 'Hills', '1985-06-26', 'Male', 'B-', 'Hindu', 'Bangladeshi', '561', '332.250.8402', 'student562@example.com', '$2y$12$kRFcseh6PvbMsLc9uIby4.P03U88r6TGZTXC.YJch6KEgkjE/t05q', '157 Goyette Mount\nPercyborough, RI 17189-4206', 'Apt. 169', 'Garrick Pollich', 'Doctor', '1-725-706-9062', 'student562@example.com', '562', 'Winnifred Stamm', 'Doctor', '1-240-680-7166', 'student563@example.com', '563', 'Reagan Ortiz', '+1-512-436-7224', 'student564@example.com', '564', 'Uncle', 1, 11, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:40', '2025-12-06 07:05:35'),
(114, 'Timmothy', 'Huel', '2007-10-08', 'Other', 'B-', 'Christian', 'Bangladeshi', '566', '+14049778514', 'student567@example.com', '$2y$12$FzTIzX640KLJg.KJKI/P3O01NkUEkdftVJ1fzU5vFwla.E4vaVDhi', '2459 Stroman Neck\nKozeyborough, SD 64059', 'Apt. 201', 'Mr. Pablo Hyatt', 'Businessman', '(985) 503-0021', 'student567@example.com', '567', 'Arlene Greenholt', 'Nurse', '(651) 344-7377', 'student568@example.com', '568', 'Vance Zieme', '+1-678-922-1419', 'student569@example.com', '569', 'Sister', 1, 13, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:40', '2025-12-06 07:05:35'),
(115, 'Sadye', 'Vandervort', '2005-11-01', 'Female', 'AB+', 'Other', 'Bangladeshi', '571', '(516) 980-7695', 'student572@example.com', '$2y$12$L7LrEu9szm1CeCctf3CVSOeq7esrXlf1IEtPklrGZtaaUqOIhtUM6', '2013 Barbara Oval Apt. 112\nLake Jeanieburgh, CA 38079', 'Suite 063', 'Grady Cormier', 'Teacher', '+1.629.742.3823', 'student572@example.com', '572', 'Mrs. Tina Pollich', 'Teacher', '1-772-622-8643', 'student573@example.com', '573', 'Felix Dickens', '469-249-2993', 'student574@example.com', '574', 'Sister', 1, 14, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:40', '2025-12-06 07:05:35'),
(116, 'Florian', 'Reinger', '1988-03-05', 'Other', 'O-', 'Other', 'Bangladeshi', '576', '+1-309-548-7003', 'student577@example.com', '$2y$12$dy7aG2ZSZgNrNh4EgHu56OT9BTNhWxW11Bkp9dYVktU.RVfM1AKzq', '920 Altenwerth Lights\nBoyerfort, VT 15103-3872', 'Suite 567', 'Mr. Florian Crist', 'Engineer', '+16176437046', 'student577@example.com', '577', 'Alexandra Grady', 'Housewife', '+1-909-560-5445', 'student578@example.com', '578', 'Mrs. Brisa Mitchell', '+12798345943', 'student579@example.com', '579', 'Brother', 1, 8, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:40', '2025-12-06 07:05:35'),
(117, 'Emmalee', 'Schulist', '2022-05-24', 'Other', 'AB+', 'Christian', 'Bangladeshi', '581', '+1-610-465-4926', 'student582@example.com', '$2y$12$/Mhm6A4yUNSxgzZAR9yGz.yMpJ.4mrdjzMZoyXHrMfTFK6TVT4pSK', '5861 Alejandra Garden\nNorth Zachary, FL 80999', 'Suite 081', 'Brandon Predovic', 'Doctor', '678.290.0599', 'student582@example.com', '582', 'Estelle Carter', 'Businesswoman', '+1 (805) 443-4673', 'student583@example.com', '583', 'Aubree Gutmann', '+1 (520) 671-3963', 'student584@example.com', '584', 'Grandparent', 1, 12, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:40', '2025-12-06 07:05:35'),
(118, 'Abbigail', 'Gislason', '2001-07-15', 'Other', 'A-', 'Other', 'Bangladeshi', '586', '386-361-6217', 'student587@example.com', '$2y$12$ijcaGmPcDdxmlYT3PC8AWejWCwGa3JVwsydkDkUc4unIALmZ9cJ36', '754 Ronny Center Suite 089\nPort Steveberg, IN 17788', 'Suite 101', 'Erich Hirthe', 'Doctor', '575-422-9831', 'student587@example.com', '587', 'Christa Abbott', 'Nurse', '251-928-2206', 'student588@example.com', '588', 'Jayce Brakus', '+1-361-674-6488', 'student589@example.com', '589', 'Brother', 1, 12, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:40', '2025-12-06 07:05:35'),
(119, 'Jacinthe', 'Tromp', '1984-02-14', 'Other', 'AB+', 'Christian', 'Bangladeshi', '591', '(309) 480-4249', 'student592@example.com', '$2y$12$1WIAfolYZAAmmB/mJAygX.TzU5TDNdSoCu6fcqdsJcI3kLzGeaM4a', '55646 Zulauf Row\nEast Clint, TN 92770-4528', 'Apt. 016', 'Dalton McDermott', 'Engineer', '332.955.2014', 'student592@example.com', '592', 'Bethel Waelchi I', 'Housewife', '1-847-560-2348', 'student593@example.com', '593', 'Estrella Ebert', '678-712-1577', 'student594@example.com', '594', 'Sister', 1, 13, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:41', '2025-12-06 07:05:35'),
(120, 'Trevion', 'Legros', '1987-10-21', 'Other', 'A+', 'Christian', 'Bangladeshi', '596', '1-360-558-9135', 'student597@example.com', '$2y$12$3..5ElGwR605WYmFz/K0iu3IuvMIxCXjPsj/JBe7.4arweMSvv1P.', '419 O\'Keefe Fort\nLabadietown, TX 50154-1853', 'Apt. 032', 'Larry Barton II', 'Farmer', '(216) 603-2013', 'student597@example.com', '597', 'Rosetta Paucek PhD', 'Doctor', '219.686.8719', 'student598@example.com', '598', 'Abbie Rogahn', '551-251-4739', 'student599@example.com', '599', 'Grandparent', 1, 9, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:41', '2025-12-06 07:05:35'),
(121, 'Pink', 'Bosco', '2012-01-06', 'Other', 'O+', 'Christian', 'Bangladeshi', '601', '+17737904302', 'student602@example.com', '$2y$12$AajD4xcnl/fR86uRp1//d.AEmbze26lpmF3Cy3VKOvzM5pIy4OVc6', '153 Bode Hills\nLednerview, VT 24883', 'Suite 599', 'Dr. Garrison Morar', 'Engineer', '+1 (341) 790-5507', 'student602@example.com', '602', 'Aniyah Kessler Jr.', 'Doctor', '+1-740-470-7451', 'student603@example.com', '603', 'Prof. Casey Labadie Jr.', '1-571-915-6862', 'student604@example.com', '604', 'Brother', 1, 9, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:41', '2025-12-06 07:05:35'),
(122, 'Lavern', 'Harber', '2018-07-07', 'Male', 'AB+', 'Christian', 'Bangladeshi', '606', '(304) 206-2205', 'student607@example.com', '$2y$12$RZ1QHMNbq7AQ/bkmUElR6eUdXxbpOHd18DzWCZJoCAbLJZ.kdjRCe', '36817 Vicente Mission\nWest Trisha, MT 39668', 'Suite 501', 'Prof. Erling Cormier', 'Engineer', '+1.864.455.9373', 'student607@example.com', '607', 'Citlalli Cremin', 'Housewife', '(628) 947-3912', 'student608@example.com', '608', 'Sedrick Barrows', '+1.831.507.5627', 'student609@example.com', '609', 'Sister', 1, 13, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:41', '2025-12-06 07:05:35'),
(123, 'Bernardo', 'Mertz', '2018-11-15', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '611', '(320) 395-8652', 'student612@example.com', '$2y$12$dO2NeWXNHZ2klqFw/rPSwup6NAw2p6jSqPy5/tYdgMqDvhcq/yt72', '7137 Janis Keys Suite 680\nGleichnerview, AZ 61788', 'Apt. 623', 'Roger Rogahn', 'Doctor', '417-392-7537', 'student612@example.com', '612', 'Leonor Roberts', 'Housewife', '(412) 241-7178', 'student613@example.com', '613', 'Eve Dibbert I', '1-820-443-5849', 'student614@example.com', '614', 'Uncle', 1, 10, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:41', '2025-12-06 07:05:35'),
(124, 'Harvey', 'Smitham', '2019-02-04', 'Female', 'AB+', 'Other', 'Bangladeshi', '616', '(385) 832-5348', 'student617@example.com', '$2y$12$1XJHQLsDi4DvhZZ.wWNpmu8Q764BHiLUlYLkDd/kunHfyFcL7n5hO', '9780 Glover Fork\nFisherfurt, AL 49795-0382', 'Apt. 937', 'Mervin Jacobi', 'Businessman', '424.437.5861', 'student617@example.com', '617', 'Prof. Autumn Dickens', 'Nurse', '+1-559-597-1937', 'student618@example.com', '618', 'Mrs. Kamille Goldner', '+1.570.399.5766', 'student619@example.com', '619', 'Brother', 1, 7, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:42', '2025-12-06 07:05:35'),
(125, 'Hershel', 'Ferry', '1988-05-24', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '621', '+1.239.486.3518', 'student622@example.com', '$2y$12$VrULcKX9IDp4px2BWh8ngO8PNsy4qAID36aycsZHNxai7..GMF2Au', '9637 Idella Greens\nKohlertown, AL 25194', 'Suite 631', 'Webster Towne', 'Teacher', '386.803.1006', 'student622@example.com', '622', 'Penelope Gutmann', 'Housewife', '(517) 698-8445', 'student623@example.com', '623', 'Dr. Elfrieda Baumbach', '810-979-9864', 'student624@example.com', '624', 'Uncle', 1, 10, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:42', '2025-12-06 07:05:35'),
(126, 'Connie', 'Rath', '2017-04-03', 'Male', 'AB-', 'Hindu', 'Bangladeshi', '626', '838-791-1263', 'student627@example.com', '$2y$12$HYbU5lZ6CfYpwEIkcmoqbed1r1JEI.nBb4HKD5CM21jm9TKrnT8US', '235 King Ports\nSouth Dulce, MT 31656-9469', 'Suite 118', 'Kurt Mertz', 'Teacher', '+17813575276', 'student627@example.com', '627', 'Karianne Lowe', 'Doctor', '+1.660.384.6737', 'student628@example.com', '628', 'Oma Rutherford', '+1-737-249-9638', 'student629@example.com', '629', 'Sister', 1, 12, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:42', '2025-12-06 07:05:35'),
(127, 'Randy', 'DuBuque', '1989-01-17', 'Other', 'O-', 'Islam', 'Bangladeshi', '631', '1-956-859-0325', 'student632@example.com', '$2y$12$0eiRPeU6Yg2auwTPYblvKOmViK.9qlatxfAV1i0hocYokaVDZBApG', '875 Pacocha Ranch Suite 672\nFriedrichmouth, IL 29044', 'Apt. 549', 'Prof. Jean Muller Sr.', 'Teacher', '+13347989858', 'student632@example.com', '632', 'Prof. Malvina Legros', 'Businesswoman', '(408) 999-0660', 'student633@example.com', '633', 'Priscilla Padberg III', '+1-575-744-9953', 'student634@example.com', '634', 'Sister', 1, 10, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:42', '2025-12-06 07:05:35'),
(128, 'Tyree', 'Ullrich', '2002-07-01', 'Female', 'AB-', 'Christian', 'Bangladeshi', '636', '+14843414258', 'student637@example.com', '$2y$12$KAqUvD6JDr./od4v2D3D8eFKdqIEnlPpSUqkNVL1adiyxDmHM5zr2', '695 Botsford Walk\nLake Jonatan, VA 41404', 'Apt. 487', 'Juston Stroman III', 'Businessman', '304-715-8431', 'student637@example.com', '637', 'Ms. Millie Welch', 'Teacher', '+1 (270) 847-9985', 'student638@example.com', '638', 'Mr. Maynard Lehner', '1-423-992-3867', 'student639@example.com', '639', 'Brother', 1, 8, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:42', '2025-12-06 07:05:35'),
(129, 'Jaquan', 'Renner', '1988-01-16', 'Male', 'A+', 'Hindu', 'Bangladeshi', '641', '779.772.9972', 'student642@example.com', '$2y$12$HYwceOFccGNhJt2uy4P8GeRfYSKA2iL6d4lsL6H6oFzYr/Xof8Hoy', '59182 Hane Terrace Suite 188\nNew Retaview, KY 60073-8741', 'Apt. 265', 'Xander Tromp', 'Doctor', '(346) 909-6522', 'student642@example.com', '642', 'Miss Rhianna Langworth', 'Housewife', '+18608710271', 'student643@example.com', '643', 'Delfina Cartwright', '828.807.4243', 'student644@example.com', '644', 'Brother', 1, 11, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:42', '2025-12-06 07:05:35'),
(130, 'Willard', 'Emard', '1974-02-26', 'Female', 'A+', 'Hindu', 'Bangladeshi', '646', '+1-718-939-5545', 'student647@example.com', '$2y$12$i.1bEX8lbuRFgqH7bNmQSOkdGvZDjMha/4swnzFG1CRKkaV3BFEvC', '562 Turner Corners Suite 009\nLorineview, DE 43220-5147', 'Apt. 932', 'Giovanni Abbott III', 'Teacher', '1-838-769-7123', 'student647@example.com', '647', 'Prof. Nina Russel IV', 'Nurse', '+1-458-927-3851', 'student648@example.com', '648', 'Davin Hegmann', '+1.916.682.7084', 'student649@example.com', '649', 'Brother', 1, 12, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:43', '2025-12-06 07:05:35'),
(131, 'Mathias', 'Langosh', '1985-04-01', 'Other', 'O-', 'Christian', 'Bangladeshi', '651', '1-936-952-8338', 'student652@example.com', '$2y$12$6npSh6KCcNvu9QkBO2UF4uLLLyTjKV7jj1ExQ78k5Q/EPR5KlfeI.', '307 Murazik Motorway\nPort Gisselleshire, WI 08040', 'Suite 129', 'Hilario Crona', 'Engineer', '+1-689-639-6876', 'student652@example.com', '652', 'Mrs. Katrina Walsh', 'Businesswoman', '270-578-3021', 'student653@example.com', '653', 'Adan Spinka', '909-409-3451', 'student654@example.com', '654', 'Uncle', 1, 11, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:43', '2025-12-06 07:05:35'),
(132, 'Edward', 'Parisian', '1978-08-09', 'Other', 'A-', 'Other', 'Bangladeshi', '656', '515.337.3087', 'student657@example.com', '$2y$12$Qe2rXyZND6vvBf0on2z0ZuKL9ZfbzeP7hlLqyC8AUJn0Maq7SBRNG', '1022 Quitzon Way Apt. 828\nCrookschester, MD 00524', 'Suite 585', 'Dr. Jakob Bergstrom', 'Engineer', '+1 (650) 598-4885', 'student657@example.com', '657', 'Margie Terry I', 'Businesswoman', '+1-878-432-3771', 'student658@example.com', '658', 'Sofia Towne', '716.480.5657', 'student659@example.com', '659', 'Grandparent', 1, 15, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:43', '2025-12-06 07:05:35'),
(133, 'Chaya', 'Krajcik', '1976-02-29', 'Other', 'B-', 'Hindu', 'Bangladeshi', '661', '229.295.5257', 'student662@example.com', '$2y$12$3GHPf/BnmE5mC1bOTg6fEuZpqpJqnLIK34cnu1HZIMQRPzLMZc5wO', '8169 Brain Burg\nSouth Summerstad, DC 82706-6759', 'Apt. 834', 'Domenic Goyette', 'Teacher', '(336) 454-7582', 'student662@example.com', '662', 'Bella Kerluke', 'Businesswoman', '608.299.4349', 'student663@example.com', '663', 'Tierra Hintz', '+1.980.531.5164', 'student664@example.com', '664', 'Brother', 1, 13, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:43', '2025-12-06 07:05:35'),
(134, 'Teagan', 'Moen', '1986-10-18', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '666', '+1-915-924-1719', 'student667@example.com', '$2y$12$l.iRYzcSis7OOPFtddNdoOnVA4m1bSbGNtpqymY4ualfydOz9GroG', '308 Modesto Walk\nStokesburgh, CA 98649', 'Apt. 577', 'Kraig VonRueden Sr.', 'Engineer', '1-732-232-0113', 'student667@example.com', '667', 'Nola Wilderman', 'Teacher', '+1-989-327-8272', 'student668@example.com', '668', 'Yadira Pollich', '385-220-4258', 'student669@example.com', '669', 'Uncle', 1, 9, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:43', '2025-12-06 07:05:35'),
(135, 'Westley', 'Cole', '1993-05-26', 'Female', 'O-', 'Christian', 'Bangladeshi', '671', '+1 (430) 941-2135', 'student672@example.com', '$2y$12$3b.swcJAoejhXQsFx.5/oOj4SGhsskRpgghYHKDL3CKtUIqq5C226', '40271 Stokes Run Suite 867\nNew Davon, AL 07340-8292', 'Suite 262', 'Wilford Hauck DDS', 'Businessman', '+13619175563', 'student672@example.com', '672', 'Chloe Goodwin', 'Businesswoman', '769.887.8780', 'student673@example.com', '673', 'Dr. Jazmin Jacobi MD', '1-323-924-3193', 'student674@example.com', '674', 'Uncle', 1, 12, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:44', '2025-12-06 07:05:35'),
(136, 'Johann', 'Rosenbaum', '2008-06-30', 'Male', 'AB+', 'Buddhist', 'Bangladeshi', '676', '+1 (586) 521-2133', 'student677@example.com', '$2y$12$aGa4krH1oBN1RiiQPCSKbeecXxZSft2JX1DPN4zmm7.cfcdhlf7Ry', '410 Magali Highway\nSouth Melisatown, AR 06120-2491', 'Apt. 053', 'Lonnie Bode', 'Doctor', '361.938.2191', 'student677@example.com', '677', 'Kaylie Jerde', 'Businesswoman', '1-502-702-3439', 'student678@example.com', '678', 'Ericka Gorczany', '303-612-3623', 'student679@example.com', '679', 'Brother', 1, 9, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:44', '2025-12-06 07:05:35'),
(137, 'Camilla', 'Buckridge', '2020-01-27', 'Female', 'B+', 'Christian', 'Bangladeshi', '681', '+1.680.991.7903', 'student682@example.com', '$2y$12$GYdYsNB5A.0zVuhJ6GiaMuSnXzlARSuDxHKU5kUltdAx74oEiLfem', '1329 Kuphal Fork\nLake Krystalberg, RI 71438-7906', 'Suite 827', 'Kiel Hartmann Jr.', 'Farmer', '1-870-889-5505', 'student682@example.com', '682', 'Dr. Lizzie Corwin', 'Businesswoman', '+15024628246', 'student683@example.com', '683', 'Alfredo Towne', '984.850.9180', 'student684@example.com', '684', 'Brother', 1, 13, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:44', '2025-12-06 07:05:35'),
(138, 'Bruce', 'Mosciski', '1993-06-09', 'Female', 'O-', 'Buddhist', 'Bangladeshi', '686', '+1 (831) 343-6125', 'student687@example.com', '$2y$12$t8Aj/YoAcVxlUIJQlYssw.WvNqpfVOKTx3UbAK4F.d85gSASSndxW', '573 Johns Locks Suite 479\nAuerville, VA 62700', 'Suite 237', 'Prof. Jaylin Baumbach', 'Businessman', '+1-828-630-8776', 'student687@example.com', '687', 'Eulah Frami', 'Teacher', '+1.321.419.5509', 'student688@example.com', '688', 'Melvin Runolfsson', '+1.540.546.1696', 'student689@example.com', '689', 'Grandparent', 1, 14, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:44', '2025-12-06 07:05:35'),
(139, 'Erika', 'Fahey', '1983-10-10', 'Male', 'AB-', 'Other', 'Bangladeshi', '691', '(970) 928-4640', 'student692@example.com', '$2y$12$S5tsAuyB6Hh3Guh.hS2Sv.60FqMhtJMa3Ejjxq9sUaQQcETql47Sm', '828 Giovanni Parks\nHelenechester, SD 99430', 'Suite 070', 'Morgan Schumm', 'Teacher', '(435) 224-0853', 'student692@example.com', '692', 'Kathleen Lebsack', 'Teacher', '757-795-2448', 'student693@example.com', '693', 'Ashley Bayer', '1-786-878-0475', 'student694@example.com', '694', 'Uncle', 1, 12, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:44', '2025-12-06 07:05:35'),
(140, 'Celine', 'Gleichner', '1973-07-03', 'Other', 'O+', 'Islam', 'Bangladeshi', '696', '(269) 297-1077', 'student697@example.com', '$2y$12$sDvYxou7tg4LJOmhjV30lO7BOUTDHD4oRI7xpuZOWgkuJxzH5Bknu', '493 Bethany Bridge\nChristiansenfurt, MI 62515-9359', 'Apt. 485', 'Kris Hand', 'Doctor', '+1-781-921-2753', 'student697@example.com', '697', 'Baby Crona', 'Doctor', '480.494.6214', 'student698@example.com', '698', 'Lewis Gorczany', '(586) 584-6526', 'student699@example.com', '699', 'Uncle', 1, 8, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:44', '2025-12-06 07:05:35'),
(141, 'Marcellus', 'Hahn', '2010-07-16', 'Male', 'A-', 'Hindu', 'Bangladeshi', '701', '352.758.3100', 'student702@example.com', '$2y$12$4YAeGXontfFsK.dJEF5aye2qKBwivFmro61rSRE2AN5lOl/i2D2Y6', '5398 Ledner Freeway\nNorth Emmet, MO 19126-9922', 'Suite 826', 'Herminio Bosco Sr.', 'Businessman', '+1 (520) 527-8868', 'student702@example.com', '702', 'Miss Ollie White', 'Teacher', '(309) 461-3391', 'student703@example.com', '703', 'Prof. Casper Shields', '929.540.3725', 'student704@example.com', '704', 'Uncle', 1, 10, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:45', '2025-12-06 07:05:35'),
(142, 'Agustina', 'Gorczany', '2000-01-06', 'Male', 'O-', 'Hindu', 'Bangladeshi', '706', '316-963-5625', 'student707@example.com', '$2y$12$KU4EClscHjtlspF0Tx..oe/j1xncq9pUsPpTqEx7FSrdDTNzpUTzK', '7994 Kihn Branch Suite 564\nJailynmouth, AK 09062-7703', 'Apt. 579', 'Mr. Cole Pagac', 'Engineer', '+1-986-998-9658', 'student707@example.com', '707', 'Mia Morissette V', 'Nurse', '412-737-3944', 'student708@example.com', '708', 'Narciso Becker I', '360.642.7632', 'student709@example.com', '709', 'Sister', 1, 11, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:45', '2025-12-06 07:05:35'),
(143, 'Jaylon', 'Wolff', '1980-04-20', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '711', '1-283-466-6354', 'student712@example.com', '$2y$12$hWhI5slG3LGKuyVy3F2uzuaCpCij8G2eJOE7zpAnUuli/2N.2SqUG', '997 Hane Forest\nMarcellefort, CA 10316-7311', 'Apt. 076', 'Johnpaul Reilly', 'Engineer', '+1-678-794-7707', 'student712@example.com', '712', 'Laurie Mann', 'Doctor', '805-622-3180', 'student713@example.com', '713', 'Ramona Mraz III', '984.740.1394', 'student714@example.com', '714', 'Sister', 1, 16, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:45', '2025-12-06 07:05:35'),
(144, 'Allison', 'Pacocha', '1984-09-25', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '716', '+1-304-277-4202', 'student717@example.com', '$2y$12$/DZPJKFUo2CYMmS36pmC7.PglVphvYVovF1qFrFMOtYAhUVCjuTqm', '26676 Kessler Track\nAlvaview, ME 50037', 'Suite 991', 'Orrin Casper', 'Doctor', '313-323-6919', 'student717@example.com', '717', 'Shea Jast', 'Businesswoman', '219.262.0016', 'student718@example.com', '718', 'Philip Dickinson', '425-734-2610', 'student719@example.com', '719', 'Brother', 1, 14, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:45', '2025-12-06 07:05:35'),
(145, 'Alf', 'Zulauf', '1993-05-26', 'Female', 'AB+', 'Christian', 'Bangladeshi', '721', '307-821-4238', 'student722@example.com', '$2y$12$cUrjWWQFFEkqhwszHodATO0JUqt6VDUi2T4KbFKBmrQThknK1rx0a', '73047 Sylvia Plains Suite 190\nPeytonfurt, FL 34036-5165', 'Apt. 173', 'Arnaldo Dickinson II', 'Doctor', '1-623-564-4741', 'student722@example.com', '722', 'Jude Herman', 'Housewife', '+16786905320', 'student723@example.com', '723', 'Karley Marquardt Sr.', '1-678-746-7519', 'student724@example.com', '724', 'Sister', 1, 17, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:45', '2025-12-06 07:05:35'),
(146, 'Humberto', 'Lubowitz', '2004-03-05', 'Female', 'O-', 'Other', 'Bangladeshi', '726', '+1 (562) 717-0771', 'student727@example.com', '$2y$12$utKX3jTfxb9oxFxqqjyRWOYjc8Aou37oTxaN9fh8Plt6cvaBOiATG', '3096 Adolphus Dale Apt. 823\nBlickville, AL 17876-3350', 'Apt. 991', 'Prof. Cortez Prosacco', 'Farmer', '(479) 716-7384', 'student727@example.com', '727', 'Carole Wunsch', 'Doctor', '936.473.5364', 'student728@example.com', '728', 'Mrs. Verdie Tillman', '212-790-4038', 'student729@example.com', '729', 'Uncle', 1, 14, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:46', '2025-12-06 07:05:35'),
(147, 'Brittany', 'Hudson', '2003-07-27', 'Other', 'A+', 'Christian', 'Bangladeshi', '731', '346-372-8090', 'student732@example.com', '$2y$12$lWtmjBzyoSIQSaYAa1zZce5YPzNV9fsUl5alzJC00ZhKoJbu/7QH.', '92632 Gerlach Fords Apt. 886\nNorth Katelyn, NE 86628', 'Apt. 031', 'Mr. Royal Kshlerin PhD', 'Engineer', '726.664.0088', 'student732@example.com', '732', 'Miss Megane Cruickshank', 'Teacher', '1-773-795-2388', 'student733@example.com', '733', 'Melba Bogan MD', '(984) 683-4855', 'student734@example.com', '734', 'Brother', 1, 18, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:46', '2025-12-06 07:05:35'),
(148, 'Tamara', 'Jones', '2021-05-14', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '736', '404-779-0594', 'student737@example.com', '$2y$12$8SwKTImaSglb8ByCL0uE6OF2wt1CrkAywnfQg9qvh1q5xhvdVkpeG', '1705 Gleason Skyway Apt. 937\nMillerberg, WA 03166', 'Apt. 642', 'Dennis Hand', 'Businessman', '832-481-0456', 'student737@example.com', '737', 'Bria Sipes', 'Housewife', '1-463-236-3628', 'student738@example.com', '738', 'Dr. Leo Bins Jr.', '857.795.1265', 'student739@example.com', '739', 'Grandparent', 1, 11, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:46', '2025-12-06 07:05:35'),
(149, 'Nathanael', 'Littel', '1999-06-01', 'Other', 'O+', 'Hindu', 'Bangladeshi', '741', '+1-681-843-0067', 'student742@example.com', '$2y$12$CtSzASHh39V5dMg9.diFpu/RXdOz3ScxWGaksIJ8zyh1U6o.vWvL2', '12232 Nicklaus Turnpike Apt. 839\nWest Carroll, RI 11558-6369', 'Apt. 368', 'Prof. Adolfo Wehner', 'Teacher', '+1 (240) 973-6389', 'student742@example.com', '742', 'Bernadine Cremin', 'Teacher', '847.873.0780', 'student743@example.com', '743', 'Lemuel Kub', '+1.318.464.3027', 'student744@example.com', '744', 'Grandparent', 1, 13, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:46', '2025-12-06 07:05:35'),
(150, 'Patricia', 'Miller', '2019-09-29', 'Female', 'A+', 'Other', 'Bangladeshi', '746', '+1.989.874.7463', 'student747@example.com', '$2y$12$P/K9pZQjrA6AMR1EWBNe/etuz.Tc153NCeFMQr1ghSATgtoghWaA.', '39150 Domenico Green\nEast Tremayneborough, DE 23888', 'Suite 922', 'Horace Gleason', 'Engineer', '(442) 698-8110', 'student747@example.com', '747', 'Dr. Holly Haag', 'Nurse', '+16807079335', 'student748@example.com', '748', 'Miracle Sipes', '920-672-4025', 'student749@example.com', '749', 'Brother', 1, 9, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:46', '2025-12-06 07:05:35'),
(151, 'Frida', 'Haag', '1979-05-06', 'Male', 'B-', 'Other', 'Bangladeshi', '751', '801.547.6401', 'student752@example.com', '$2y$12$g7iL3lcKQAk8s9d2uOogq.b.qc/cL7ATBYF6Oqg2o/3ogaJ5.JNzG', '46753 Ottilie Fork Apt. 730\nSouth Brooksland, KS 29905', 'Apt. 830', 'Mr. Antwan Morissette IV', 'Teacher', '1-952-443-7723', 'student752@example.com', '752', 'Gwen Ryan', 'Nurse', '1-606-818-3878', 'student753@example.com', '753', 'Mr. Arno Hamill I', '(831) 977-9198', 'student754@example.com', '754', 'Grandparent', 1, 14, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:46', '2025-12-06 07:05:35'),
(152, 'Erick', 'Marquardt', '2010-05-04', 'Other', 'B+', 'Hindu', 'Bangladeshi', '756', '(402) 709-7958', 'student757@example.com', '$2y$12$/RFEuHJ4zyzpSN03fUiUje/mv7xCTntk3Rp.fgwkta2rwBjkcKfy6', '170 Dorthy Valleys\nNorth Arnaldo, IN 86567', 'Apt. 089', 'Adelbert Sawayn', 'Farmer', '1-680-510-5146', 'student757@example.com', '757', 'Miss Rosalyn Ferry', 'Businesswoman', '(712) 852-9667', 'student758@example.com', '758', 'Freddie Pollich', '847.648.0506', 'student759@example.com', '759', 'Brother', 1, 10, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:47', '2025-12-06 07:05:35'),
(153, 'Darion', 'Prohaska', '1999-05-02', 'Other', 'A+', 'Buddhist', 'Bangladeshi', '761', '+1 (442) 540-7238', 'student762@example.com', '$2y$12$956qEsSUykrdS14QPKVaauckz7krGNTIeAmCwxKXnsTdpWtlERjhS', '37392 Rosemarie Field Apt. 312\nNorth Arleneview, PA 96872-9687', 'Suite 170', 'Haleigh Bauch', 'Doctor', '(386) 350-8941', 'student762@example.com', '762', 'Ms. Ruthie Crona V', 'Housewife', '424.857.9684', 'student763@example.com', '763', 'Mr. Trevion Bartell DDS', '1-410-837-8265', 'student764@example.com', '764', 'Uncle', 1, 15, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:47', '2025-12-06 07:05:35'),
(154, 'Mckenzie', 'Armstrong', '2017-06-15', 'Female', 'O+', 'Other', 'Bangladeshi', '766', '281-275-8523', 'student767@example.com', '$2y$12$9RC0Xm/GKU0qyZMu3HLCm.UmJaN8KXLZaVaWLgAIeSK1lfT2HWOGm', '75632 Barton Via\nCasimerborough, DC 52975-4721', 'Suite 946', 'Ned DuBuque', 'Businessman', '+1.507.288.9509', 'student767@example.com', '767', 'Adrianna Runolfsson', 'Teacher', '+12537025358', 'student768@example.com', '768', 'Prof. Virginia Haley IV', '989-977-2213', 'student769@example.com', '769', 'Brother', 1, 15, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:47', '2025-12-06 07:05:35'),
(155, 'Isai', 'Rowe', '1977-10-15', 'Female', 'B+', 'Buddhist', 'Bangladeshi', '771', '678-391-7334', 'student772@example.com', '$2y$12$ZtsHEbO/YCyaLcXz/pJCJe6RiuwlTJePgUqYwRAwhEVEW1PKqUSIe', '52164 Murphy Lock Suite 737\nWest Jadestad, VT 57109', 'Apt. 308', 'Arden Crona', 'Farmer', '931-305-9412', 'student772@example.com', '772', 'Dr. Bette O\'Hara DDS', 'Businesswoman', '(267) 886-3563', 'student773@example.com', '773', 'Camylle Balistreri', '505.837.8425', 'student774@example.com', '774', 'Aunt', 1, 12, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:47', '2025-12-06 07:05:35'),
(156, 'Stewart', 'Connelly', '1982-01-02', 'Other', 'A-', 'Islam', 'Bangladeshi', '776', '540-545-2890', 'student777@example.com', '$2y$12$8DubrDKFDuLX55K6sN/EEOiYsfQB.f21125yrvMNAZu3dTURjQCjy', '84948 Beatty Locks\nMertzberg, MD 78425-9720', 'Suite 019', 'Mr. Jesus Torphy', 'Businessman', '+1-779-842-3375', 'student777@example.com', '777', 'Mercedes Pollich', 'Housewife', '754-741-8274', 'student778@example.com', '778', 'Celia Larkin', '1-520-526-2096', 'student779@example.com', '779', 'Brother', 1, 15, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:47', '2025-12-06 07:05:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(157, 'Renee', 'Walter', '2016-11-06', 'Male', 'O-', 'Christian', 'Bangladeshi', '781', '989-813-0618', 'student782@example.com', '$2y$12$p/I3xGPSqhvqZ1dgT.W6FO4tToCq/w4Pznn3.KvTXbTrmDoZra5N6', '959 Brianne Locks\nPort Loraine, AL 64996-3209', 'Apt. 281', 'Forrest Gerlach', 'Engineer', '1-539-787-0890', 'student782@example.com', '782', 'Loren Daniel Jr.', 'Nurse', '1-870-823-7146', 'student783@example.com', '783', 'Dr. Izaiah Will PhD', '(657) 476-7805', 'student784@example.com', '784', 'Aunt', 1, 15, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:48', '2025-12-06 07:05:35'),
(158, 'Merlin', 'Jacobs', '2011-05-17', 'Male', 'A+', 'Islam', 'Bangladeshi', '786', '+16512213994', 'student787@example.com', '$2y$12$nNEscTcXS.eJQUszj9RxsOzlihzlYvyrNmKI3FxAHcYzEx8YJurl6', '4792 Kiehn Plain Apt. 288\nNew Laila, DC 83459', 'Suite 487', 'Jaylen Legros', 'Businessman', '+1-405-484-7459', 'student787@example.com', '787', 'Ms. Onie Fadel II', 'Businesswoman', '+1-561-742-8257', 'student788@example.com', '788', 'Prof. Callie Strosin', '743-887-1712', 'student789@example.com', '789', 'Grandparent', 1, 19, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:48', '2025-12-06 07:05:35'),
(159, 'Adeline', 'Jacobson', '2020-04-30', 'Other', 'AB-', 'Buddhist', 'Bangladeshi', '791', '+1-401-248-8842', 'student792@example.com', '$2y$12$03XNnmy8mLQrZRuREnGW.eQ/urZubyUYl2pcZkvhaG1gN0AV3TOfS', '2581 Wolff Manor\nLake Joeyshire, ND 54751', 'Suite 466', 'Dr. Torrance Hermann', 'Businessman', '320-254-0371', 'student792@example.com', '792', 'Lora VonRueden', 'Teacher', '505.333.9220', 'student793@example.com', '793', 'Mr. Lukas Abbott', '1-502-742-9791', 'student794@example.com', '794', 'Grandparent', 1, 16, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:48', '2025-12-06 07:05:35'),
(160, 'Keeley', 'Schoen', '1990-07-05', 'Male', 'O-', 'Other', 'Bangladeshi', '796', '1-706-303-3459', 'student797@example.com', '$2y$12$6k/9COyRwfrB1x7uTV0Fl.eVSTMDIpEAAeCSMFREIKMRPVjvrt6Ye', '4096 McDermott Plaza Apt. 215\nSouth Octavia, SC 48512', 'Apt. 698', 'Fredrick Greenholt', 'Businessman', '(414) 687-1987', 'student797@example.com', '797', 'Valentina Hoeger', 'Teacher', '+1 (806) 546-9539', 'student798@example.com', '798', 'Magdalena Littel', '469-326-2427', 'student799@example.com', '799', 'Uncle', 1, 11, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:48', '2025-12-06 07:05:35'),
(161, 'Nelson', 'Howell', '1993-12-15', 'Female', 'A+', 'Hindu', 'Bangladeshi', '801', '+1-445-861-9395', 'student802@example.com', '$2y$12$DvrMRzX7m0khTZ.wk0l5HOy/fqwv.bT7CXy5x5XLl0DyaBKjV34dq', '9149 Verlie Drives\nSouth Roscoe, KS 59129-2941', 'Apt. 098', 'Matt Mayer', 'Teacher', '+1-539-514-6624', 'student802@example.com', '802', 'Dr. Jewel Nikolaus', 'Housewife', '+17545364448', 'student803@example.com', '803', 'Prof. Lazaro Sanford', '831.455.3983', 'student804@example.com', '804', 'Grandparent', 1, 12, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:48', '2025-12-06 07:05:35'),
(162, 'Ray', 'Hill', '2013-08-27', 'Female', 'A+', 'Hindu', 'Bangladeshi', '806', '1-239-472-5888', 'student807@example.com', '$2y$12$pbGZXFfaMrni4zrFy0NzNul0heOkjCT0ebMgFx6dGVp7MuqU328Yi', '502 Green Junctions Suite 273\nYostview, UT 93961-1556', 'Apt. 412', 'Jessie Considine', 'Farmer', '1-458-871-3163', 'student807@example.com', '807', 'Alison Goyette', 'Nurse', '959-515-4625', 'student808@example.com', '808', 'Mrs. Miracle Beier II', '585.243.6476', 'student809@example.com', '809', 'Uncle', 1, 16, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:48', '2025-12-06 07:05:35'),
(163, 'Gerry', 'Olson', '1995-02-20', 'Female', 'A-', 'Christian', 'Bangladeshi', '811', '+1 (603) 746-3015', 'student812@example.com', '$2y$12$wP4KE2YFUvk7HqemAa.1xuHfeeZPIxR7YQ4P/3/tHlOUtGDWHl/0K', '98167 Koch Shores\nJennyfermouth, AL 05682-5790', 'Apt. 557', 'Johann Roob', 'Doctor', '(248) 451-3523', 'student812@example.com', '812', 'Addison Wehner', 'Teacher', '831.985.4499', 'student813@example.com', '813', 'Coleman Moore', '1-947-715-5850', 'student814@example.com', '814', 'Uncle', 1, 13, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:49', '2025-12-06 07:05:35'),
(164, 'Bernita', 'Daniel', '2009-10-02', 'Other', 'A+', 'Hindu', 'Bangladeshi', '816', '903-442-5096', 'student817@example.com', '$2y$12$7KKjJeCkwZJwlqdsLxhrqOKsHrzx3/JKe5GB0DxQNO8F02IF.fG46', '8607 Schamberger Stravenue Suite 939\nPort Clifford, LA 18508', 'Suite 447', 'Prof. Estevan Hettinger I', 'Doctor', '740.472.5391', 'student817@example.com', '817', 'Darby Pouros', 'Teacher', '+1 (251) 283-4831', 'student818@example.com', '818', 'Raegan Donnelly', '(828) 532-2956', 'student819@example.com', '819', 'Grandparent', 1, 12, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:49', '2025-12-06 07:05:35'),
(165, 'Maria', 'Nolan', '2016-02-22', 'Male', 'O-', 'Islam', 'Bangladeshi', '821', '+1.918.757.2928', 'student822@example.com', '$2y$12$4JqyCBMWPWUAsBsvXuYlt.Ak8LwBE6UnG5ku6463zRuZCumkc5oQq', '4219 Mariana Station\nNew Josephine, DE 96556', 'Apt. 127', 'Mr. Buddy Labadie I', 'Engineer', '+1-419-355-4898', 'student822@example.com', '822', 'Elaina Abernathy', 'Teacher', '+1.406.938.3491', 'student823@example.com', '823', 'Breana Lindgren', '(847) 470-3431', 'student824@example.com', '824', 'Grandparent', 1, 16, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:49', '2025-12-06 07:05:35'),
(166, 'Sabryna', 'Dach', '2015-12-12', 'Other', 'O-', 'Buddhist', 'Bangladeshi', '826', '+1 (859) 560-4959', 'student827@example.com', '$2y$12$Lt5xKTkAqtSoH0YdSrh2r.YwcLqagfhye1DcJp43DjCL9PYBh116i', '85277 Hollis Key\nSouth Hettieborough, NY 80652', 'Apt. 258', 'Mr. Clinton Wilderman', 'Doctor', '1-307-539-3630', 'student827@example.com', '827', 'Alexanne Schneider', 'Businesswoman', '+1 (534) 386-3141', 'student828@example.com', '828', 'Dr. Adrianna Lubowitz', '571-892-0992', 'student829@example.com', '829', 'Aunt', 1, 16, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:49', '2025-12-06 07:05:35'),
(167, 'Grayson', 'Tillman', '2012-01-05', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '831', '(206) 713-3958', 'student832@example.com', '$2y$12$LxuesVhEIrLS4C4sfLd1WuQ4fx22uwkZL.Y8CRRyYDTL9wbWA89.e', '2340 Johnston Glen Suite 555\nEast Marleeside, ND 36105', 'Suite 865', 'Nicolas Schumm', 'Businessman', '+1 (678) 216-2603', 'student832@example.com', '832', 'Mrs. Ofelia Goyette Sr.', 'Teacher', '(931) 650-5269', 'student833@example.com', '833', 'Ricardo Thiel', '+1-850-246-1904', 'student834@example.com', '834', 'Uncle', 1, 17, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:49', '2025-12-06 07:05:35'),
(168, 'Ambrose', 'Champlin', '1986-07-13', 'Male', 'A-', 'Hindu', 'Bangladeshi', '836', '+13313071166', 'student837@example.com', '$2y$12$CCQNkp97IZY/mmrBkCHg5u7RQik4uKMNz1gKAjeCQCSPHMKv86gie', '595 Carleton Manor\nClemmieburgh, RI 81580-2342', 'Apt. 159', 'Avery Kertzmann II', 'Businessman', '+1-386-866-4185', 'student837@example.com', '837', 'Allison Pouros', 'Nurse', '+1.314.609.8590', 'student838@example.com', '838', 'Miss Vivien Halvorson', '(703) 242-3150', 'student839@example.com', '839', 'Sister', 1, 17, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:50', '2025-12-06 07:05:35'),
(169, 'Ford', 'Feest', '1978-12-11', 'Female', 'A-', 'Islam', 'Bangladeshi', '841', '(631) 747-1765', 'student842@example.com', '$2y$12$pYbcdqYvqjQ3a1sEqK2rh.L.4yPZ6tjjy8qRqAJ/X1TsvGWOKu2s6', '5699 Abigayle Mount Suite 012\nSouth Deborahtown, SD 09152', 'Apt. 548', 'Horace Fahey DVM', 'Teacher', '1-641-737-4679', 'student842@example.com', '842', 'Anahi Denesik', 'Businesswoman', '918-342-6609', 'student843@example.com', '843', 'Georgianna Reilly', '901.686.5948', 'student844@example.com', '844', 'Sister', 1, 20, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:50', '2025-12-06 07:05:35'),
(170, 'Kelton', 'Smith', '2009-05-25', 'Male', 'A-', 'Other', 'Bangladeshi', '846', '1-541-771-5339', 'student847@example.com', '$2y$12$ju1qcqsBViFF52wea/8A0eRgo2HnTSry4g/W0ZY4FUJ7Ptn4GgUwS', '899 Hermann Street\nPort Gailside, MI 03670-3332', 'Suite 139', 'Giovanni Tromp', 'Farmer', '+1-458-833-9675', 'student847@example.com', '847', 'Kailey Beer I', 'Teacher', '(785) 518-5060', 'student848@example.com', '848', 'Ms. Samantha Hintz', '458-473-3005', 'student849@example.com', '849', 'Aunt', 1, 18, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:50', '2025-12-06 07:05:35'),
(171, 'Markus', 'Stiedemann', '2024-02-23', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '851', '720.339.4159', 'student852@example.com', '$2y$12$AErkY/B.2ZUxLHZVQsdgn.2WfMrlZfRdwsm9XjppIJE7XYf2s9H9q', '5711 Wolff Camp\nFadelview, NY 51576', 'Suite 903', 'Demetrius Runolfsdottir Sr.', 'Doctor', '1-785-208-1799', 'student852@example.com', '852', 'Angeline Turcotte', 'Teacher', '+1-954-365-5874', 'student853@example.com', '853', 'Marian Hayes', '947-225-5407', 'student854@example.com', '854', 'Aunt', 1, 19, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:50', '2025-12-06 07:05:35'),
(172, 'Aleen', 'Predovic', '2020-09-18', 'Female', 'B+', 'Other', 'Bangladeshi', '856', '1-828-294-4560', 'student857@example.com', '$2y$12$td0oh/YN6qDLmSi0HUgNS.hpUejqWd.kYS3N0CBxCTXFMIQcQNg.i', '63923 Grayson Corners\nSouth Josianetown, IN 05992', 'Apt. 048', 'Cesar Heidenreich', 'Doctor', '+14634169615', 'student857@example.com', '857', 'Dr. Jaqueline DuBuque', 'Doctor', '1-559-937-4666', 'student858@example.com', '858', 'Gerda Hills', '(760) 255-2231', 'student859@example.com', '859', 'Brother', 1, 13, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:50', '2025-12-06 07:05:35'),
(173, 'Destin', 'Krajcik', '2017-05-17', 'Female', 'A-', 'Other', 'Bangladeshi', '861', '+1-216-593-8564', 'student862@example.com', '$2y$12$OgA393/l3eDp2JGwGxnyX.bqcffpV2U.DKd8DqTob9oqsVChoeVI6', '1012 Raynor Walks\nDanielview, MN 05673-5493', 'Apt. 116', 'Solon Jenkins', 'Businessman', '737-981-1303', 'student862@example.com', '862', 'Dr. Bette Durgan Sr.', 'Businesswoman', '+1-678-528-8704', 'student863@example.com', '863', 'Rafael Toy IV', '337-580-2682', 'student864@example.com', '864', 'Grandparent', 1, 18, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:50', '2025-12-06 07:05:35'),
(174, 'Heloise', 'Herman', '2015-07-24', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '866', '+1.530.914.9262', 'student867@example.com', '$2y$12$E9In2ly2wzDx/koxjxefX.7fzIKs05vKJhTGNqf85/8NRb8M8Xy.y', '889 Goyette Tunnel Suite 793\nSatterfieldmouth, UT 77528', 'Suite 684', 'Orville Hudson', 'Teacher', '(570) 442-5852', 'student867@example.com', '867', 'Miss Shanelle Waters Sr.', 'Businesswoman', '(463) 351-3919', 'student868@example.com', '868', 'Dr. Julian Hickle I', '828-887-3517', 'student869@example.com', '869', 'Brother', 1, 13, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:51', '2025-12-06 07:05:35'),
(175, 'Clay', 'Wolff', '1981-03-01', 'Female', 'AB-', 'Christian', 'Bangladeshi', '871', '1-909-672-9368', 'student872@example.com', '$2y$12$wjtD9kVkwTFwLOt/iGM.huhTyAwlVf0IAoKfESzFQQvH7E1yfOozy', '64413 Corwin Highway\nPort Kelly, VT 42954-0844', 'Suite 572', 'Clay Kertzmann', 'Doctor', '423-385-1052', 'student872@example.com', '872', 'Telly Upton', 'Teacher', '+1-803-990-9225', 'student873@example.com', '873', 'Kris Auer', '775.477.9667', 'student874@example.com', '874', 'Sister', 1, 19, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:51', '2025-12-06 07:05:35'),
(176, 'Linda', 'Lynch', '2023-10-27', 'Female', 'O+', 'Christian', 'Bangladeshi', '876', '380-794-4127', 'student877@example.com', '$2y$12$ImiTYAo/cRAV4MhubJiCoO809W8D8Pt3h3h9hr0fJr9xXfA8ArhR.', '761 Aletha Haven\nWest Rollinview, KY 54825', 'Suite 042', 'Fermin O\'Keefe', 'Engineer', '(440) 214-1388', 'student877@example.com', '877', 'Ashlee Abbott III', 'Businesswoman', '+16574810384', 'student878@example.com', '878', 'Melisa Greenholt', '316-901-1699', 'student879@example.com', '879', 'Sister', 1, 17, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:51', '2025-12-06 07:05:35'),
(177, 'Marlee', 'Tremblay', '2005-02-18', 'Male', 'AB-', 'Christian', 'Bangladeshi', '881', '541.884.2795', 'student882@example.com', '$2y$12$uvLar649X53P5Ipot6Ea.eNPscsAXgbeA2N2CA2jipcJxd3UpOqIa', '312 Keanu Stravenue\nPort Coltshire, DC 11418', 'Apt. 612', 'Mathias Tremblay', 'Teacher', '208-687-4957', 'student882@example.com', '882', 'Kaci Pacocha', 'Housewife', '214-827-7200', 'student883@example.com', '883', 'Prof. Vaughn Konopelski I', '+12834683832', 'student884@example.com', '884', 'Aunt', 1, 18, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:51', '2025-12-06 07:05:35'),
(178, 'Pattie', 'Zemlak', '2003-03-17', 'Male', 'A+', 'Christian', 'Bangladeshi', '886', '+1 (270) 770-1272', 'student887@example.com', '$2y$12$pN6ebRrd/9qhTYLmv7M9Serk5COdIJsqrj8AD/ojDhd71wtHVFupK', '84302 Macie Islands Apt. 701\nNew Chanelside, MO 09154', 'Apt. 891', 'Roman Batz I', 'Engineer', '+1-731-455-4562', 'student887@example.com', '887', 'Mrs. Mariam Schumm Sr.', 'Teacher', '1-504-560-9053', 'student888@example.com', '888', 'Lonie Lang', '878.643.4754', 'student889@example.com', '889', 'Brother', 1, 20, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:51', '2025-12-06 07:05:35'),
(179, 'Ophelia', 'Gutmann', '2010-02-01', 'Male', 'AB-', 'Other', 'Bangladeshi', '891', '505-712-1341', 'student892@example.com', '$2y$12$fWI6c5I8U8JBEliL4TO.BO/bKFBelzPXc6sYqjw/bbw28PpbkcSVO', '834 Ardella Heights Apt. 302\nSouth Henderson, CO 69268', 'Suite 367', 'Camron Kuhic', 'Teacher', '1-930-827-8093', 'student892@example.com', '892', 'Breana Lueilwitz DVM', 'Nurse', '1-919-368-2747', 'student893@example.com', '893', 'Delia Lowe', '+19254594428', 'student894@example.com', '894', 'Brother', 1, 19, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:52', '2025-12-06 07:05:35'),
(180, 'Sylvia', 'Ryan', '1987-12-18', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '896', '(929) 249-7361', 'student897@example.com', '$2y$12$6r0W8z0DgYx2nrJ4BGnWJOKzr4K929PsflVnqC7TY7qtbr91aR.7i', '438 Harber Freeway\nSouth Jazmyne, WY 65573', 'Apt. 276', 'Horacio Ernser MD', 'Engineer', '515.953.3532', 'student897@example.com', '897', 'Mrs. Matilde Littel', 'Teacher', '+1-727-797-0860', 'student898@example.com', '898', 'Ms. Madaline Mosciski', '920-484-0534', 'student899@example.com', '899', 'Sister', 1, 10, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:52', '2025-12-06 07:05:35'),
(181, 'Marcelo', 'King', '1996-08-21', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '901', '1-908-389-4127', 'student902@example.com', '$2y$12$weMTh9UkNXj7IvV2Nb4t4.Vdz9tqNeYcBtqYAawjedawfIRTpB5x.', '74739 Orland Inlet Apt. 529\nZiemefurt, UT 45417', 'Suite 169', 'Montana Streich', 'Doctor', '323.618.3464', 'student902@example.com', '902', 'Miss Sydni Hoppe III', 'Housewife', '(912) 307-5032', 'student903@example.com', '903', 'Lisandro Bosco', '959-609-9837', 'student904@example.com', '904', 'Grandparent', 1, 14, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:52', '2025-12-06 07:05:35'),
(182, 'Douglas', 'Stoltenberg', '2005-10-17', 'Male', 'A-', 'Hindu', 'Bangladeshi', '906', '234.316.7795', 'student907@example.com', '$2y$12$nzutAOb4y0AQEaG9plH/Wun8bx8QwbkXBwBcv3EpkmtnMzpBGeU0i', '354 Mittie Flats Suite 959\nEast Angelinebury, SD 19706-5919', 'Suite 699', 'Erwin Huels', 'Engineer', '726.717.6275', 'student907@example.com', '907', 'Shanna Hessel', 'Teacher', '1-240-787-5828', 'student908@example.com', '908', 'Newell Leffler', '1-816-654-9994', 'student909@example.com', '909', 'Aunt', 1, 14, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:52', '2025-12-06 07:05:35'),
(183, 'Pierce', 'Block', '2018-08-31', 'Other', 'AB+', 'Islam', 'Bangladeshi', '911', '+12344453608', 'student912@example.com', '$2y$12$bey8azdR02/iLw3GcONKUe6fRRdBGssVMgjvmELeY6QbBbBotCGJ2', '7222 Emerald Springs\nGarretview, MS 75807', 'Suite 490', 'Prof. Jacques Hand PhD', 'Farmer', '(717) 418-8389', 'student912@example.com', '912', 'Miss Vesta Mohr', 'Doctor', '1-321-406-0289', 'student913@example.com', '913', 'Ms. Cynthia Quigley', '+1-954-559-9605', 'student914@example.com', '914', 'Aunt', 1, 20, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:52', '2025-12-06 07:05:35'),
(184, 'Kristin', 'Goodwin', '1985-05-23', 'Female', 'O-', 'Christian', 'Bangladeshi', '916', '(859) 576-7261', 'student917@example.com', '$2y$12$ek5LDA9PQWRx1ORm7Fo2wucghsHBVagbXCW8czfHcPTZwvZ2STjMe', '46992 Larkin Ferry\nNew Patricia, NM 72570', 'Apt. 401', 'Korbin Zboncak', 'Doctor', '(660) 650-1702', 'student917@example.com', '917', 'Kaylie Cartwright', 'Teacher', '1-443-716-7882', 'student918@example.com', '918', 'Josiane Wintheiser', '+1.480.631.8881', 'student919@example.com', '919', 'Grandparent', 1, 20, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:52', '2025-12-06 07:05:35'),
(185, 'Vicky', 'Bahringer', '1991-09-11', 'Female', 'A-', 'Other', 'Bangladeshi', '921', '(510) 380-4694', 'student922@example.com', '$2y$12$HegQfEtUyX/0S2Gr/Pk5YOsGl9Th6BgBlZ6uZs2oqHz3W3IpYzD9.', '56135 Summer Lodge Suite 700\nSchneiderside, WI 10195-0148', 'Apt. 261', 'Prof. Kareem Lowe', 'Doctor', '341.441.4856', 'student922@example.com', '922', 'Jammie Schaefer', 'Doctor', '(640) 814-1974', 'student923@example.com', '923', 'Alicia Reinger MD', '(785) 779-8601', 'student924@example.com', '924', 'Brother', 1, 14, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:53', '2025-12-06 07:05:35'),
(186, 'Leda', 'Hand', '1972-12-29', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '926', '(352) 735-9135', 'student927@example.com', '$2y$12$zguU/ncg4yoK6cF6gTZNTOw4d3amrCGz7NBf1nKI1lHVTJ2Ee62c6', '24817 Santos Villages\nVivianneside, NE 08157-1686', 'Apt. 221', 'Mr. Dorian Lakin', 'Doctor', '+1.650.414.4469', 'student927@example.com', '927', 'Miss Talia O\'Kon III', 'Teacher', '+15712311081', 'student928@example.com', '928', 'Miss Cleora Stroman DDS', '+16802695433', 'student929@example.com', '929', 'Aunt', 1, 21, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:53', '2025-12-06 07:05:35'),
(187, 'Gene', 'Bergnaum', '1995-04-11', 'Female', 'A+', 'Hindu', 'Bangladeshi', '931', '1-984-489-5557', 'student932@example.com', '$2y$12$dtzGs8NBtQtKwtBGbKH9HOhgZFe4f8xGD2H.7z.TB0tFOJHkLGbMy', '7215 Ratke Lake Suite 480\nGoyettebury, OK 65125', 'Suite 605', 'Roger Gorczany MD', 'Doctor', '(786) 675-2598', 'student932@example.com', '932', 'Miss Rebekah Erdman MD', 'Housewife', '1-848-209-3060', 'student933@example.com', '933', 'Cassandre Crooks', '929-533-7580', 'student934@example.com', '934', 'Grandparent', 1, 15, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:53', '2025-12-06 07:05:35'),
(188, 'Issac', 'Eichmann', '2013-07-25', 'Male', 'O+', 'Buddhist', 'Bangladeshi', '936', '678-437-0892', 'student937@example.com', '$2y$12$Y385Dw01wP45/jAQb1EEFuNXMEwMZyOn7fy.rUWEv4XrZ4aDZKrxi', '71340 Greenfelder Views\nCummingsstad, GA 53901-8777', 'Apt. 059', 'Felipe Hessel', 'Engineer', '786.457.5872', 'student937@example.com', '937', 'Miss Wendy Daniel', 'Businesswoman', '+1 (574) 872-5816', 'student938@example.com', '938', 'Aniyah Lowe IV', '1-810-541-6051', 'student939@example.com', '939', 'Aunt', 1, 15, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:53', '2025-12-06 07:05:35'),
(189, 'Edd', 'Considine', '2025-06-06', 'Female', 'B-', 'Hindu', 'Bangladeshi', '941', '+1.520.620.0717', 'student942@example.com', '$2y$12$i6jy4B8MjXq4a62PAVfD3.byJM9QXrZeKuBzY1Ag.Vjrr4uLcPbcK', '71749 Schaefer Trail Suite 919\nSouth Citlalliburgh, LA 97431-6409', 'Apt. 671', 'Connor Gleichner', 'Businessman', '1-352-301-8811', 'student942@example.com', '942', 'April Kling', 'Housewife', '+13807847188', 'student943@example.com', '943', 'Brendon Christiansen', '360-223-2601', 'student944@example.com', '944', 'Sister', 1, 16, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:53', '2025-12-06 07:05:35'),
(190, 'Richard', 'Monahan', '2012-04-23', 'Other', 'A+', 'Other', 'Bangladeshi', '946', '(484) 804-6926', 'student947@example.com', '$2y$12$q2mmEQwoQiKDsUN8cwkmpuid82E1G9xfBRAJ7cmSzls2eTu39Fa6G', '14049 Christiansen Trail Suite 870\nEast Dora, NE 80673-8374', 'Apt. 573', 'Rick Wunsch', 'Teacher', '(878) 983-2295', 'student947@example.com', '947', 'Selina Kerluke IV', 'Businesswoman', '+1.959.279.0979', 'student948@example.com', '948', 'Nels Rippin III', '+12292814354', 'student949@example.com', '949', 'Grandparent', 1, 13, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:54', '2025-12-06 07:05:35'),
(191, 'Clementine', 'Gerlach', '1993-08-24', 'Male', 'A+', 'Buddhist', 'Bangladeshi', '951', '1-408-918-8863', 'student952@example.com', '$2y$12$hzBXQ5y4r0qCTcZi96SM8.HKviVIJV5mqgh7JCfwqVf.43rh8cCO.', '6194 Little Inlet Apt. 129\nFeestborough, MS 40207-5867', 'Suite 963', 'Arnulfo Morar', 'Engineer', '706.553.1598', 'student952@example.com', '952', 'Destany Reinger', 'Teacher', '+1-803-926-5468', 'student953@example.com', '953', 'Mrs. Lempi Schuster MD', '+1-520-322-1125', 'student954@example.com', '954', 'Aunt', 1, 22, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:54', '2025-12-06 07:05:35'),
(192, 'Brisa', 'Johns', '1973-03-29', 'Other', 'B+', 'Christian', 'Bangladeshi', '956', '(872) 482-8366', 'student957@example.com', '$2y$12$GtWfMu.OULW9NKGuwLPZw.RR/IYEVWUmpBrhfeQvYvPGoAl/xoT.O', '28796 Beverly Harbors Apt. 422\nPort Demetris, AZ 72853-8711', 'Apt. 741', 'Dawson Nikolaus', 'Businessman', '(341) 244-7896', 'student957@example.com', '957', 'Christelle Miller', 'Teacher', '(513) 946-7559', 'student958@example.com', '958', 'Susan Lind MD', '+17859519135', 'student959@example.com', '959', 'Aunt', 1, 17, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:54', '2025-12-06 07:05:35'),
(193, 'Myrtice', 'Schultz', '1986-04-24', 'Other', 'O+', 'Other', 'Bangladeshi', '961', '+16298958098', 'student962@example.com', '$2y$12$oaiN8veY2F8V48mxhkcJyu4Jnmq/ai1U.lBdSVlxQjoivPsC4f06u', '3323 Pascale Hollow Suite 841\nRuthetown, DE 23248', 'Suite 588', 'Prof. Jedediah Walker', 'Engineer', '+1 (213) 645-3519', 'student962@example.com', '962', 'Ms. Laura Schmitt Jr.', 'Housewife', '+1 (785) 658-4630', 'student963@example.com', '963', 'Danielle Hayes', '267-754-9038', 'student964@example.com', '964', 'Brother', 1, 13, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:54', '2025-12-06 07:05:35'),
(194, 'Eliane', 'Davis', '1988-11-28', 'Male', 'A+', 'Hindu', 'Bangladeshi', '966', '(380) 949-3730', 'student967@example.com', '$2y$12$Jqf.ewcCOYwo4MUnMgNK5eYVXjJoa5x6eafZPXJpR9YSE7WBEFwE.', '243 Pollich Fords\nPort Katelynn, AR 74544', 'Apt. 037', 'Benny Yost DVM', 'Farmer', '+1 (912) 215-6470', 'student967@example.com', '967', 'Maureen Hackett', 'Housewife', '940-418-4445', 'student968@example.com', '968', 'Nikita O\'Keefe', '346.439.2536', 'student969@example.com', '969', 'Brother', 1, 11, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:54', '2025-12-06 07:05:35'),
(195, 'Koby', 'Von', '2003-09-08', 'Other', 'B+', 'Other', 'Bangladeshi', '971', '+1-469-664-4164', 'student972@example.com', '$2y$12$htaseC7LaTa88MMQ0PcKdOJvoIRhrRjm16gfEfh/N0syl.0fp7bvG', '68629 Sawayn Manors\nGusikowskimouth, NY 58044-1272', 'Suite 417', 'Joaquin Leannon DVM', 'Farmer', '1-865-741-7311', 'student972@example.com', '972', 'Lenore Williamson', 'Nurse', '260.480.2129', 'student973@example.com', '973', 'Miss Virgie Dickens IV', '+1 (908) 559-9039', 'student974@example.com', '974', 'Aunt', 1, 23, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:54', '2025-12-06 07:05:35'),
(196, 'Rollin', 'Stark', '2011-10-22', 'Male', 'A+', 'Islam', 'Bangladeshi', '976', '+1 (732) 683-2308', 'student977@example.com', '$2y$12$2ST1yPeJCjMuAjIHy506w.GaehHXfZ/JT3mfjuicXL2AyPkdjHS2S', '2936 Rocio Inlet\nLake Sunnyside, VA 85094', 'Apt. 800', 'Howard Lang', 'Farmer', '315-661-6468', 'student977@example.com', '977', 'Ms. Jakayla Becker', 'Businesswoman', '1-678-537-3150', 'student978@example.com', '978', 'Cruz Simonis', '1-667-779-2464', 'student979@example.com', '979', 'Brother', 1, 18, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:55', '2025-12-06 07:05:35'),
(197, 'Meredith', 'Price', '2018-04-01', 'Male', 'B+', 'Islam', 'Bangladeshi', '981', '1-934-481-7301', 'student982@example.com', '$2y$12$IpA8t06I.guIL5ic5qAzE.4QU9H4iDxxNo4TpBPXt6ZYFCmZCGtPO', '20609 Schiller Stream\nOttobury, AK 08139', 'Suite 215', 'Cody Schmidt', 'Teacher', '(785) 298-2533', 'student982@example.com', '982', 'Eleonore Kessler', 'Nurse', '+1-423-266-8664', 'student983@example.com', '983', 'Mrs. Charlotte Ward', '585-484-2919', 'student984@example.com', '984', 'Uncle', 1, 14, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:55', '2025-12-06 07:05:35'),
(198, 'Lenny', 'Mitchell', '2016-04-02', 'Female', 'AB-', 'Other', 'Bangladeshi', '986', '(508) 413-8382', 'student987@example.com', '$2y$12$q8xvH7cgV9tw0uCMqlH7TeMXy1MrjWLS7g7Ey.EiRp1mLqg2JsSaa', '67211 Mohr Crossing Apt. 615\nNew Bernita, AL 68538', 'Suite 471', 'Prof. Savion Hegmann', 'Doctor', '1-386-674-9678', 'student987@example.com', '987', 'Prof. Maryjane Kautzer III', 'Doctor', '765-590-8990', 'student988@example.com', '988', 'Aniya Dickens', '786-516-4520', 'student989@example.com', '989', 'Uncle', 1, 24, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:55', '2025-12-06 07:05:35'),
(199, 'Milton', 'Wiza', '1997-09-04', 'Other', 'AB+', 'Christian', 'Bangladeshi', '991', '308-414-4036', 'student992@example.com', '$2y$12$wbn90dPGOouVxrnHni7o0eotmn8Sppm5cZ3Wu0PCdQjv6t4koG5Oq', '9605 Imani Mountains Suite 097\nSouth Constance, IN 93508-3051', 'Suite 431', 'Leonardo Wiegand', 'Engineer', '283.508.0733', 'student992@example.com', '992', 'Mrs. Laurine Schaefer IV', 'Doctor', '(845) 477-1904', 'student993@example.com', '993', 'Tabitha Howell', '1-248-764-8695', 'student994@example.com', '994', 'Uncle', 1, 12, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:55', '2025-12-06 07:05:35'),
(200, 'Libbie', 'Hackett', '1991-04-22', 'Other', 'A-', 'Buddhist', 'Bangladeshi', '996', '231-567-1808', 'student997@example.com', '$2y$12$mcv./RgqKkfUeUrVfO7WMuRccfpDC.X5wiSz7mo900miMT3HiFnn.', '94695 Roselyn Extensions Apt. 116\nWyatttown, AK 27745', 'Apt. 278', 'Dr. Tavares Adams', 'Engineer', '956.559.9643', 'student997@example.com', '997', 'Julianne Hackett III', 'Teacher', '+1-217-203-9146', 'student998@example.com', '998', 'Leilani Zieme', '+1-929-998-4024', 'student999@example.com', '999', 'Uncle', 1, 16, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:55', '2025-12-06 07:05:35'),
(201, 'Leopold', 'Christiansen', '2015-11-24', 'Other', 'O+', 'Hindu', 'Bangladeshi', '1001', '1-361-219-5271', 'student1002@example.com', '$2y$12$D1qceYfeUMlvdiblf.axK.CC8P1L1YF4C1OUko7zozZ1nNuXtMFaK', '5293 Aurelie Tunnel Apt. 198\nPowlowskiland, CO 39093-2854', 'Suite 333', 'Gerardo Stiedemann', 'Engineer', '+19047605834', 'student1002@example.com', '1002', 'Dr. Vivienne Vandervort IV', 'Businesswoman', '1-458-789-1558', 'student1003@example.com', '1003', 'Mrs. Janiya Schowalter DDS', '631-587-6763', 'student1004@example.com', '1004', 'Grandparent', 1, 14, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:56', '2025-12-06 07:05:35'),
(202, 'Domingo', 'Thompson', '1981-02-08', 'Male', 'O-', 'Hindu', 'Bangladeshi', '1006', '678-548-9251', 'student1007@example.com', '$2y$12$FcLR2hYoYPxDtQ7lTniKPOuwfHdQ82hOad4FjjGuzEkVLU41ssQGi', '462 Stephanie Land Suite 587\nEast Rodgerville, WY 35269', 'Apt. 870', 'Grayson Ryan', 'Businessman', '+1-520-215-5602', 'student1007@example.com', '1007', 'Amely Towne', 'Nurse', '1-773-632-6083', 'student1008@example.com', '1008', 'Ms. America Mayert I', '+1-321-303-2170', 'student1009@example.com', '1009', 'Sister', 1, 13, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:56', '2025-12-06 07:05:35'),
(203, 'Letitia', 'Lindgren', '1996-07-29', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '1011', '+1 (351) 571-3459', 'student1012@example.com', '$2y$12$pUi2oFd1r1Tj5NKR9EHl9Osvv2DPqi/pLsli7YywpCbhciSEH/AYi', '73286 Quigley Tunnel Suite 315\nConnellyborough, DC 68639-3132', 'Apt. 624', 'Dr. Bo Ortiz DDS', 'Teacher', '214-632-2817', 'student1012@example.com', '1012', 'Mrs. Felicia Johns PhD', 'Doctor', '337.572.0463', 'student1013@example.com', '1013', 'Ruben Pfeffer', '445-830-2219', 'student1014@example.com', '1014', 'Sister', 1, 15, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:56', '2025-12-06 07:05:35'),
(204, 'Daija', 'Weimann', '1988-11-26', 'Female', 'A+', 'Other', 'Bangladeshi', '1016', '561-892-2768', 'student1017@example.com', '$2y$12$t.3H48wDj0KOptmhH2sQie4ZuOlbgiCA47fJEVT3w4S/H8DxMeU.C', '709 Grant Manors Suite 629\nSouth Aylinchester, TN 25291', 'Apt. 359', 'Jackson Walsh', 'Businessman', '+1-931-667-6680', 'student1017@example.com', '1017', 'Prof. Jacynthe Johnson IV', 'Nurse', '(331) 394-1926', 'student1018@example.com', '1018', 'Susie Thompson IV', '785.360.1703', 'student1019@example.com', '1019', 'Sister', 1, 14, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:56', '2025-12-06 07:05:35'),
(205, 'Isaac', 'Vandervort', '2022-02-04', 'Other', 'O-', 'Islam', 'Bangladeshi', '1021', '954-700-6667', 'student1022@example.com', '$2y$12$CTsIn2pwGZp9wX8vsBLqfeJzB.tyxXUcjgnVExh0.ijNae35llUPq', '17614 Collin Common\nNew Monique, SD 03928-6419', 'Suite 982', 'Warren Upton', 'Farmer', '224-596-3000', 'student1022@example.com', '1022', 'Antoinette Von', 'Teacher', '+1-904-267-7555', 'student1023@example.com', '1023', 'Roel Jones', '1-346-998-3571', 'student1024@example.com', '1024', 'Aunt', 1, 15, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:56', '2025-12-06 07:05:35'),
(206, 'Margarita', 'Parisian', '2021-12-04', 'Other', 'A-', 'Other', 'Bangladeshi', '1026', '979.245.6212', 'student1027@example.com', '$2y$12$cN3.8MbFAs2webyA58Ypf.xzTkNHzCckDpPp2X8AhM7rw2rpbzBNO', '273 Carolyne Coves Apt. 575\nNorth Beulahchester, MA 16244-0678', 'Suite 604', 'Prof. Abe Haag MD', 'Farmer', '1-214-643-4995', 'student1027@example.com', '1027', 'Mrs. Viva Lakin', 'Doctor', '(484) 276-0033', 'student1028@example.com', '1028', 'Nina Dietrich', '+1-559-413-1690', 'student1029@example.com', '1029', 'Aunt', 1, 14, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:56', '2025-12-06 07:05:35'),
(207, 'Connor', 'Jones', '1994-11-18', 'Female', 'A+', 'Hindu', 'Bangladeshi', '1031', '346-490-1925', 'student1032@example.com', '$2y$12$PUNgRFAnpr6IHsmv9FNp1.I283c.xhClPCH5zLLAN6EoxB9RiKhUC', '6220 Bernadette Estate Apt. 844\nWest Isobel, TN 10652', 'Suite 742', 'Mr. Halle Bode DDS', 'Doctor', '680.404.6487', 'student1032@example.com', '1032', 'Mazie McLaughlin', 'Teacher', '1-781-996-2789', 'student1033@example.com', '1033', 'Lionel Powlowski', '+1.301.858.8873', 'student1034@example.com', '1034', 'Uncle', 1, 25, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:57', '2025-12-06 07:05:35'),
(208, 'Salvatore', 'Smitham', '1983-10-03', 'Female', 'A+', 'Christian', 'Bangladeshi', '1036', '+1-563-710-2441', 'student1037@example.com', '$2y$12$9OYOPdq87xLXdm1tvPTm7.iNERRILPbrM6Xk1GwhECye4M4zojnLO', '7404 Greenholt Track\nPort Shakira, NM 66624-1421', 'Apt. 500', 'Rhett Hamill', 'Engineer', '425-982-8434', 'student1037@example.com', '1037', 'Dr. Audreanne Mohr PhD', 'Nurse', '+1.864.363.7824', 'student1038@example.com', '1038', 'Julia Howe', '+1-689-292-0876', 'student1039@example.com', '1039', 'Brother', 1, 17, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:57', '2025-12-06 07:05:35'),
(209, 'Loy', 'Corkery', '1986-08-29', 'Other', 'O+', 'Christian', 'Bangladeshi', '1041', '+14348130165', 'student1042@example.com', '$2y$12$ksCx.LYPH5xbFP69xK7c/eSJK18TeGnNG57YhXp87KyWrqMktf43u', '96365 Monty Ramp Apt. 382\nEast Brandoport, ND 16896-4495', 'Apt. 065', 'Trent Cummings MD', 'Farmer', '979.751.1973', 'student1042@example.com', '1042', 'Dr. Maymie Graham MD', 'Businesswoman', '+18478214353', 'student1043@example.com', '1043', 'Ms. Carole Batz', '1-323-835-7272', 'student1044@example.com', '1044', 'Sister', 1, 16, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:57', '2025-12-06 07:05:35'),
(210, 'Emiliano', 'Wintheiser', '2006-02-13', 'Male', 'AB-', 'Christian', 'Bangladeshi', '1046', '1-216-772-0782', 'student1047@example.com', '$2y$12$yss3ixEo5pE4BoRjBcccW.BX2Sb7lx6C3awD1kv9hlemfEMbkkg42', '4476 Gleichner Plains Apt. 007\nLake Eudora, FL 46488-9194', 'Suite 488', 'Mr. Kelley McGlynn', 'Farmer', '737.594.3505', 'student1047@example.com', '1047', 'Ms. Antonette Stehr', 'Nurse', '+1-781-252-5512', 'student1048@example.com', '1048', 'Cordia Terry PhD', '978.549.0405', 'student1049@example.com', '1049', 'Uncle', 1, 21, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:57', '2025-12-06 07:05:35'),
(211, 'Ayana', 'Herman', '2010-09-05', 'Male', 'A-', 'Islam', 'Bangladeshi', '1051', '713-886-0826', 'student1052@example.com', '$2y$12$giqjTFucBx.LCFNoQs7Uw.XY9tZby1SIAexvCabEZMVQZTCavC4BW', '92333 Broderick Valleys\nKeelingshire, KS 73383', 'Apt. 419', 'Andy Mayert', 'Doctor', '+1 (445) 459-0961', 'student1052@example.com', '1052', 'Selena Hessel', 'Doctor', '(740) 991-9200', 'student1053@example.com', '1053', 'Darlene Nolan', '+1-228-613-2017', 'student1054@example.com', '1054', 'Uncle', 1, 26, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:57', '2025-12-06 07:05:35'),
(212, 'Jeffrey', 'Feest', '1988-06-10', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '1056', '(412) 504-2633', 'student1057@example.com', '$2y$12$ZdZnLAlJ1qv.ducTWcbmS.ORpppUDxz1jRXqvOlJC5b8uqX0nWIOW', '2853 Schaefer Cliff\nLueilwitzstad, AL 52413-7571', 'Apt. 332', 'Prof. Abdiel Padberg', 'Teacher', '580.614.2681', 'student1057@example.com', '1057', 'Ofelia Willms', 'Nurse', '(865) 270-6901', 'student1058@example.com', '1058', 'Dr. Ona Friesen V', '719.771.6839', 'student1059@example.com', '1059', 'Grandparent', 1, 17, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:58', '2025-12-06 07:05:35'),
(213, 'Aditya', 'Strosin', '1971-12-18', 'Female', 'B+', 'Islam', 'Bangladeshi', '1061', '541.896.6514', 'student1062@example.com', '$2y$12$udJSxlUVCCbjvt6.0e6dVORfBVQnYqMKDVgoWC/uqnqRfiSHj0pyS', '19706 Brock Loaf\nNorth Branson, IL 31179', 'Apt. 351', 'Laron Schumm', 'Businessman', '360.892.5255', 'student1062@example.com', '1062', 'Dr. Lina Becker DDS', 'Housewife', '+18156183916', 'student1063@example.com', '1063', 'Jannie Roberts', '1-228-662-8596', 'student1064@example.com', '1064', 'Grandparent', 1, 21, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:58', '2025-12-06 07:05:35'),
(214, 'Alaina', 'Jenkins', '1993-07-17', 'Other', 'AB+', 'Christian', 'Bangladeshi', '1066', '+1 (661) 738-5235', 'student1067@example.com', '$2y$12$l.QGAXoNk/fzBoVMTF7pXu6J3hQsTJM1oDmLjOGBkCC3rLBW9zqRy', '13967 Kris Harbors\nPort Maymieville, AK 47948-3524', 'Apt. 405', 'Prof. Lucious Cole', 'Businessman', '+1.351.662.9547', 'student1067@example.com', '1067', 'Mrs. Dessie Paucek I', 'Teacher', '986.379.5697', 'student1068@example.com', '1068', 'Joaquin Parker', '657.385.6016', 'student1069@example.com', '1069', 'Brother', 1, 17, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:58', '2025-12-06 07:05:35'),
(215, 'Jamil', 'Harvey', '1997-05-15', 'Female', 'B-', 'Islam', 'Bangladeshi', '1071', '1-662-386-2319', 'student1072@example.com', '$2y$12$EGB4OArjZFKPaUFcoOrEoeDvFRm2I6KCRVK0BYO35tdt5TgXhaJcG', '328 Jacobs Parkways\nSouth Wendy, WY 85666-8221', 'Suite 578', 'Jeramy Bogisich', 'Teacher', '1-346-352-4286', 'student1072@example.com', '1072', 'Concepcion Crona', 'Businesswoman', '574.654.1620', 'student1073@example.com', '1073', 'Jonatan Mitchell Jr.', '+13803756963', 'student1074@example.com', '1074', 'Sister', 1, 15, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:58', '2025-12-06 07:05:35'),
(216, 'Jaden', 'Marvin', '1996-05-17', 'Other', 'AB+', 'Hindu', 'Bangladeshi', '1076', '1-281-492-9188', 'student1077@example.com', '$2y$12$20IK9gFL3Ii1f2RitJrQo.x8SuRmzp3ydZ9/7KuLLPIOsIuYZIvsG', '99743 McLaughlin Squares\nHendersonburgh, OR 35690', 'Suite 010', 'Stanton Beier', 'Engineer', '(407) 356-7483', 'student1077@example.com', '1077', 'Prof. Aurelia Littel I', 'Doctor', '678-323-8986', 'student1078@example.com', '1078', 'Mr. Florian Lueilwitz I', '+1-984-649-6101', 'student1079@example.com', '1079', 'Uncle', 1, 18, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:58', '2025-12-06 07:05:35'),
(217, 'Chris', 'Dickens', '1995-09-03', 'Female', 'A+', 'Islam', 'Bangladeshi', '1081', '262-592-0269', 'student1082@example.com', '$2y$12$3JzMsXvKD3/w1WntwkPz2uSC0ywMPxvGqClDJ1VD.6KS3f8QGVcS2', '816 Vicente Knolls Apt. 093\nSouth Nels, KS 78781', 'Suite 067', 'Prof. Aric Maggio', 'Teacher', '1-832-837-7657', 'student1082@example.com', '1082', 'Marian Jacobs', 'Teacher', '+13314123699', 'student1083@example.com', '1083', 'Shawn Macejkovic', '+1 (805) 429-7955', 'student1084@example.com', '1084', 'Brother', 1, 21, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:58', '2025-12-06 07:05:35'),
(218, 'Kayli', 'Gaylord', '1997-07-20', 'Male', 'O+', 'Islam', 'Bangladeshi', '1086', '302-220-6647', 'student1087@example.com', '$2y$12$4zn45SYsu.zAI5FC.nYYaeEGIaWxWxXqZ501FCbo1J0/8kkJG2utO', '72313 Brendan Spur\nMetzside, VT 03548', 'Apt. 314', 'Mr. Mustafa Williamson', 'Teacher', '440-249-7168', 'student1087@example.com', '1087', 'Amira Bartell IV', 'Teacher', '959.282.9161', 'student1088@example.com', '1088', 'Jayden Jakubowski', '+1.865.382.8473', 'student1089@example.com', '1089', 'Aunt', 1, 22, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:59', '2025-12-06 07:05:35'),
(219, 'Jade', 'Hoppe', '2005-03-24', 'Female', 'O+', 'Islam', 'Bangladeshi', '1091', '586.879.4016', 'student1092@example.com', '$2y$12$Km8jWBNDTz9MQyc5118H9emIZEJC04kDVPO7YWK8470I5M5oOG.z6', '1705 Marisa Cliff Apt. 489\nGutkowskiborough, NC 03834', 'Suite 968', 'Mr. Schuyler Armstrong', 'Teacher', '+12675760556', 'student1092@example.com', '1092', 'Eudora Aufderhar', 'Teacher', '+1-443-721-2213', 'student1093@example.com', '1093', 'Mrs. Otilia Skiles', '1-601-765-2291', 'student1094@example.com', '1094', 'Aunt', 1, 23, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:59', '2025-12-06 07:05:35'),
(220, 'Jadyn', 'Torphy', '1970-11-20', 'Other', 'A-', 'Christian', 'Bangladeshi', '1096', '(612) 892-3670', 'student1097@example.com', '$2y$12$lPt605YEBg67IQNsqvM5len3s9cAD9XHwTRd7RnOsfJ8BBNcajoD2', '37020 Yost Falls Suite 166\nSouth Andy, NJ 42792', 'Suite 093', 'Mariano Hand', 'Businessman', '1-631-259-5944', 'student1097@example.com', '1097', 'Flavie Pollich', 'Nurse', '+1 (408) 759-8114', 'student1098@example.com', '1098', 'Harmony Balistreri', '+1-531-332-7222', 'student1099@example.com', '1099', 'Sister', 1, 22, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:59', '2025-12-06 07:05:35'),
(221, 'Hazle', 'Runte', '2018-09-04', 'Female', 'B+', 'Islam', 'Bangladeshi', '1101', '+12399915117', 'student1102@example.com', '$2y$12$Eg9k/nMI/ytLP.6Xi3PPGeVgdtAb.R1i/C51GXbrw0A3PANq9Wbzm', '50931 Mayer Prairie Apt. 225\nPearlineview, WY 51536-3699', 'Suite 993', 'Roy Sporer', 'Teacher', '+1.386.316.7633', 'student1102@example.com', '1102', 'Zoe Willms PhD', 'Teacher', '1-903-577-1431', 'student1103@example.com', '1103', 'Mrs. Elyssa Murazik IV', '+1-830-263-7455', 'student1104@example.com', '1104', 'Uncle', 1, 24, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:59', '2025-12-06 07:05:35'),
(222, 'Jazmin', 'Schuppe', '1985-08-22', 'Other', 'O+', 'Buddhist', 'Bangladeshi', '1106', '432-764-7706', 'student1107@example.com', '$2y$12$NAMVpTxpN2qOnMGL53TfHOal/BBqXU1TeyOpFaPkCWemBI/8EaQua', '15822 Manley Ford\nEast Jedidiahburgh, AR 84138-9763', 'Suite 049', 'Mr. Ricky Hauck', 'Engineer', '509-372-7954', 'student1107@example.com', '1107', 'Hildegard Shanahan IV', 'Doctor', '(724) 368-7765', 'student1108@example.com', '1108', 'Kelsie Reilly II', '520.912.9635', 'student1109@example.com', '1109', 'Uncle', 1, 19, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:38:59', '2025-12-06 07:05:35'),
(223, 'Jefferey', 'Bergstrom', '2002-04-07', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '1111', '+12486748224', 'student1112@example.com', '$2y$12$o0d7teF0lI7MibvzD.9MEuSOXLCFdAE/5dYRqYnrW4uWgn/eqLjyq', '738 Fanny Parks\nChristiansenton, UT 51690', 'Suite 061', 'Carmel Rutherford', 'Teacher', '1-862-967-3507', 'student1112@example.com', '1112', 'Miss Sonya Haag', 'Housewife', '830.884.1751', 'student1113@example.com', '1113', 'Nathaniel Bashirian', '1-283-979-3211', 'student1114@example.com', '1114', 'Grandparent', 1, 16, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:00', '2025-12-06 07:05:35'),
(224, 'Ally', 'Muller', '1970-05-24', 'Female', 'A+', 'Hindu', 'Bangladeshi', '1116', '1-713-559-9779', 'student1117@example.com', '$2y$12$/koP/2fCg/rRHQhcqLtYIuNiVkO96voKjHlsel7k6wBWQahSe/RCG', '255 Dejah Divide Apt. 181\nNorth Rae, NM 47828-8168', 'Apt. 155', 'Baylee Rohan I', 'Farmer', '541-203-2049', 'student1117@example.com', '1117', 'Lempi Ryan', 'Businesswoman', '860.324.7774', 'student1118@example.com', '1118', 'Susanna Davis', '(628) 646-4261', 'student1119@example.com', '1119', 'Brother', 1, 25, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:00', '2025-12-06 07:05:35'),
(225, 'Garett', 'Schoen', '1986-10-23', 'Male', 'B-', 'Christian', 'Bangladeshi', '1121', '330-429-8958', 'student1122@example.com', '$2y$12$Jl99DgI1UgDsa0XGS8l7SO7sHGY3sc3wx4O84SbW6e3fAYAfaTSj6', '88650 Jaskolski Run Suite 550\nNew Zackeryland, TX 31131', 'Apt. 983', 'Morris Kulas I', 'Engineer', '+1 (980) 382-6909', 'student1122@example.com', '1122', 'Kaycee Dooley MD', 'Teacher', '+13053592990', 'student1123@example.com', '1123', 'Lourdes Gutkowski', '360-280-9977', 'student1124@example.com', '1124', 'Aunt', 1, 22, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:00', '2025-12-06 07:05:35'),
(226, 'Maryse', 'Collins', '1996-06-14', 'Male', 'O+', 'Christian', 'Bangladeshi', '1126', '1-801-557-4030', 'student1127@example.com', '$2y$12$wKPS9J2xE9Oh/RWMoOShF.YasfCxIRDaouXt7dnSSjWuROKYKV1bi', '65143 Abby Trail Apt. 062\nVeronicaport, ID 84124', 'Apt. 916', 'Lucio Mante Jr.', 'Doctor', '+1.570.844.2519', 'student1127@example.com', '1127', 'Alison Ratke', 'Teacher', '+1 (360) 467-8851', 'student1128@example.com', '1128', 'Tate Braun', '1-725-204-8885', 'student1129@example.com', '1129', 'Brother', 1, 23, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:00', '2025-12-06 07:05:35'),
(227, 'Darien', 'Muller', '2011-04-11', 'Male', 'AB-', 'Buddhist', 'Bangladeshi', '1131', '1-540-489-1227', 'student1132@example.com', '$2y$12$jG5OqeVx.ZxnnScYiCebKOfd5dEhBb.pPvuro.zDQPrPGkmOy9up.', '761 Raleigh Creek\nSouth Orval, RI 33790-3966', 'Suite 270', 'Dr. Andrew Carter', 'Doctor', '(332) 856-2162', 'student1132@example.com', '1132', 'Jude Effertz MD', 'Nurse', '+1-302-773-2934', 'student1133@example.com', '1133', 'Annetta Ritchie PhD', '1-785-456-3778', 'student1134@example.com', '1134', 'Grandparent', 1, 15, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:00', '2025-12-06 07:05:35'),
(228, 'Lafayette', 'Gibson', '2016-01-16', 'Other', 'B+', 'Christian', 'Bangladeshi', '1136', '1-310-425-7631', 'student1137@example.com', '$2y$12$Lkb9YTeAqdxLBTRqDvSvcu/.YX0mF4FcPBOp4SFBgBqEMUKcBdDU.', '5120 Herman Parkways Apt. 529\nHackettfort, AZ 16477', 'Apt. 458', 'Ramon Farrell', 'Businessman', '(980) 995-4540', 'student1137@example.com', '1137', 'Albertha Rau', 'Businesswoman', '+1.701.215.9005', 'student1138@example.com', '1138', 'Jerrod White', '262.343.8081', 'student1139@example.com', '1139', 'Uncle', 1, 27, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:00', '2025-12-06 07:05:35'),
(229, 'Gilbert', 'Volkman', '2002-06-04', 'Other', 'B-', 'Other', 'Bangladeshi', '1141', '530-344-5329', 'student1142@example.com', '$2y$12$9DRQn/WKpBARVAYsrDQ0s.A3KS3j5/uM2bh9v0AIWPlIEyR6dJLpG', '772 Brandy Park\nAmyafort, AK 07769', 'Apt. 862', 'Kaleigh Altenwerth', 'Teacher', '+1.623.679.2751', 'student1142@example.com', '1142', 'Bridgette Kunde III', 'Housewife', '(440) 345-2068', 'student1143@example.com', '1143', 'Sydni Ortiz', '1-272-407-8423', 'student1144@example.com', '1144', 'Uncle', 1, 28, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:01', '2025-12-06 07:05:35'),
(230, 'Elva', 'Streich', '1994-04-11', 'Male', 'AB-', 'Islam', 'Bangladeshi', '1146', '307.761.1072', 'student1147@example.com', '$2y$12$SveBTbGEHOK3yml.nnnIpu4j62uLadaR3BB3HuBG.Dgyt7eFDK3A6', '6954 Kunze Bypass\nWittingstad, PA 59384-7336', 'Suite 206', 'Prof. Emmanuel Pagac MD', 'Doctor', '(346) 352-3079', 'student1147@example.com', '1147', 'Anissa Witting', 'Businesswoman', '828.959.3468', 'student1148@example.com', '1148', 'Eliezer Beahan III', '785.249.2266', 'student1149@example.com', '1149', 'Uncle', 1, 20, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:01', '2025-12-06 07:05:35'),
(231, 'Lisette', 'Raynor', '1986-11-13', 'Female', 'B-', 'Islam', 'Bangladeshi', '1151', '+1 (763) 655-1601', 'student1152@example.com', '$2y$12$k3pbW/A4Z4JflWpUaxQ0fOc0VAc7T1iqHM8t2uTqa68jdZFcYWKm6', '1935 Muhammad Motorway Suite 412\nSouth Katharinafurt, HI 08793-1797', 'Suite 665', 'Dr. Kyler McGlynn I', 'Teacher', '+14582881907', 'student1152@example.com', '1152', 'Mrs. Trisha Fritsch', 'Teacher', '+1-864-770-9147', 'student1153@example.com', '1153', 'Esperanza Yost', '631.240.6155', 'student1154@example.com', '1154', 'Grandparent', 1, 26, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:01', '2025-12-06 07:05:35'),
(232, 'Sean', 'Jacobi', '1988-01-31', 'Other', 'O-', 'Hindu', 'Bangladeshi', '1156', '1-361-605-8703', 'student1157@example.com', '$2y$12$RbnyaFfqBmETtc6ARTcFbue6av4mIk2aygSlKzEGpoZc5WW69D33O', '1121 Myriam Parkway Apt. 539\nWest Blake, MD 09815', 'Suite 914', 'Chance Stokes DVM', 'Teacher', '1-720-710-9986', 'student1157@example.com', '1157', 'Alessandra Haley Jr.', 'Housewife', '(657) 988-5086', 'student1158@example.com', '1158', 'Chad Keebler', '(947) 725-7187', 'student1159@example.com', '1159', 'Uncle', 1, 15, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:01', '2025-12-06 07:05:35'),
(233, 'Yazmin', 'Anderson', '2010-07-06', 'Female', 'AB+', 'Islam', 'Bangladeshi', '1161', '(312) 652-9065', 'student1162@example.com', '$2y$12$knrRtIX3kUs61e3eQVKoyOg15JklF617yymEkngqcqfVPEHQ91mnm', '190 Deangelo Ramp Apt. 249\nSouth Gaston, RI 61474-9427', 'Apt. 169', 'Mr. Russel Turner III', 'Doctor', '+1-201-762-8734', 'student1162@example.com', '1162', 'Rosella Fisher', 'Housewife', '+18586051981', 'student1163@example.com', '1163', 'Mckayla Johns', '1-984-542-6471', 'student1164@example.com', '1164', 'Sister', 1, 29, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:01', '2025-12-06 07:05:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `dob`, `gender`, `blood_group`, `religion`, `nationality`, `national_id`, `contact_number`, `email`, `password`, `address1`, `address2`, `father_name`, `father_profession`, `father_contact`, `father_email`, `father_nid`, `mother_name`, `mother_profession`, `mother_contact`, `mother_email`, `mother_nid`, `guardian_name`, `guardian_contact`, `guardian_email`, `guardian_nid`, `guardian_relationship`, `status`, `roll_number`, `class_id`, `attend_date`, `remark`, `b_reg_no`, `b_roll_no`, `photo`, `father_photo`, `mother_photo`, `otp`, `otp_expires_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(234, 'Amely', 'Torphy', '1983-07-29', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '1166', '+16418127665', 'student1167@example.com', '$2y$12$dEMg2HXy1xVxFJzohMF6euDeOiclf6f8sv5inCukHQBlKtn9jl1Da', '1596 Adriana Track\nEast Leonora, AK 86377', 'Apt. 283', 'Mr. Vernon Watsica', 'Doctor', '931-639-7672', 'student1167@example.com', '1167', 'Shea Bechtelar', 'Nurse', '+15628299952', 'student1168@example.com', '1168', 'Guadalupe O\'Keefe', '213-208-6712', 'student1169@example.com', '1169', 'Uncle', 1, 21, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:02', '2025-12-06 07:05:35'),
(235, 'Jonatan', 'Powlowski', '1980-08-09', 'Other', 'B-', 'Hindu', 'Bangladeshi', '1171', '+1-228-969-5678', 'student1172@example.com', '$2y$12$sp42epE8WBVaB70r4/psluZm7nq6/EJ1fQxapDmjmSTxmmryAJaRO', '6905 Witting Highway\nEast Jefferey, WI 29729', 'Apt. 701', 'Mr. Bryon Cronin', 'Teacher', '612.640.7193', 'student1172@example.com', '1172', 'Prof. Teresa Boyle DDS', 'Doctor', '+1-678-793-6725', 'student1173@example.com', '1173', 'Mr. Einar Smith', '661-998-9757', 'student1174@example.com', '1174', 'Brother', 1, 18, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:02', '2025-12-06 07:05:35'),
(236, 'Sheridan', 'Thiel', '1985-03-16', 'Female', 'A-', 'Islam', 'Bangladeshi', '1176', '+15594181925', 'student1177@example.com', '$2y$12$RWFNIK0RZ4fLcCwTbcZ.SeHJFNVtDMijzOPmHMGuXPC4iU9y3Fsz.', '63367 Raynor Islands Apt. 240\nWest Edgardo, AL 64005-4243', 'Apt. 985', 'Rosario Willms', 'Businessman', '(516) 737-0398', 'student1177@example.com', '1177', 'Ollie Conroy', 'Doctor', '872.388.5040', 'student1178@example.com', '1178', 'Judge Dooley IV', '541-574-8401', 'student1179@example.com', '1179', 'Uncle', 1, 19, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:02', '2025-12-06 07:05:35'),
(237, 'Nova', 'Wintheiser', '2018-03-04', 'Male', 'O-', 'Other', 'Bangladeshi', '1181', '1-680-537-7218', 'student1182@example.com', '$2y$12$hnKK5xE1Y4f3c3xTRzewSOLVEEjEGoS4fH60nhM6.dDhaH7gGCfAO', '12470 Harris Road Apt. 807\nNorth Bobbyfurt, NC 02717-1005', 'Apt. 887', 'Brown Donnelly', 'Teacher', '+1-507-216-3274', 'student1182@example.com', '1182', 'Ms. Itzel Lindgren', 'Housewife', '+1-916-849-9910', 'student1183@example.com', '1183', 'Dr. Rosario Sanford V', '283.320.7853', 'student1184@example.com', '1184', 'Brother', 1, 24, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:02', '2025-12-06 07:05:35'),
(238, 'Braulio', 'Bayer', '1992-07-03', 'Male', 'A+', 'Islam', 'Bangladeshi', '1186', '405-531-1990', 'student1187@example.com', '$2y$12$zBHJM.O41LTkinJf0WtSJ.55yPUEPUcDbPyL16uM.Wyb3NXs5/WdK', '61775 Coty Lake\nRoyceton, HI 99574-7900', 'Suite 434', 'Lucas Johnson I', 'Businessman', '+1.657.765.2176', 'student1187@example.com', '1187', 'Mrs. Margarett Daugherty', 'Businesswoman', '316-205-2606', 'student1188@example.com', '1188', 'Mr. Omer Watsica MD', '681-801-6004', 'student1189@example.com', '1189', 'Brother', 1, 20, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:02', '2025-12-06 07:05:35'),
(239, 'Felicia', 'Towne', '2021-09-09', 'Female', 'O-', 'Christian', 'Bangladeshi', '1191', '(754) 271-0224', 'student1192@example.com', '$2y$12$diy.zDF.v4fNYBiX35K/0.T477Nb5cOUbGVmt1yHI3kyYMwqkg.Oi', '91322 Shanny Corners\nNorth Kenneth, AR 72177', 'Apt. 387', 'Earl Weimann Sr.', 'Doctor', '+1-860-514-5089', 'student1192@example.com', '1192', 'Vesta Boyle', 'Housewife', '779.337.4694', 'student1193@example.com', '1193', 'Dr. Wayne Cronin MD', '(682) 394-5184', 'student1194@example.com', '1194', 'Sister', 1, 19, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:02', '2025-12-06 07:05:35'),
(240, 'Eduardo', 'Ernser', '1986-11-01', 'Male', 'O+', 'Hindu', 'Bangladeshi', '1196', '(843) 941-4576', 'student1197@example.com', '$2y$12$dhThbRgb0iRDvhhNFU.gF.KEmlkHJnQDN3dOg/II8AXNDw00aP.ke', '86890 Ruecker Views\nBillhaven, FL 98773', 'Suite 431', 'Gillian Kassulke', 'Businessman', '(650) 786-1983', 'student1197@example.com', '1197', 'Cathy Kuhic', 'Housewife', '+1.279.969.9095', 'student1198@example.com', '1198', 'Milo Daugherty', '(743) 601-9569', 'student1199@example.com', '1199', 'Grandparent', 1, 17, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:03', '2025-12-06 07:05:35'),
(241, 'Micah', 'Fritsch', '2025-01-24', 'Male', 'B-', 'Other', 'Bangladeshi', '1201', '1-303-482-1101', 'student1202@example.com', '$2y$12$OwveYbbUHDR.5jYmCk.zqeNQS7CyPCr8B8e4QeLMxzW6Ez9wWhxoe', '22868 Daugherty Forks\nImogenehaven, KY 57840-0267', 'Apt. 863', 'Mr. Lafayette Raynor', 'Businessman', '1-678-964-5307', 'student1202@example.com', '1202', 'Estefania Hamill I', 'Businesswoman', '765.705.7148', 'student1203@example.com', '1203', 'Ms. Lorine Fisher DVM', '(323) 477-8887', 'student1204@example.com', '1204', 'Brother', 1, 27, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:03', '2025-12-06 07:05:35'),
(242, 'Kieran', 'Abbott', '2016-04-13', 'Female', 'B-', 'Christian', 'Bangladeshi', '1206', '530.610.4928', 'student1207@example.com', '$2y$12$Go3QsD0kp7/jOg9d51R2PuDbIAG8.rnnVKWAls3HFXl6z.H7/9oHm', '86500 Leif View Suite 752\nWest Heber, NC 81885', 'Apt. 158', 'Prof. Bell Satterfield', 'Engineer', '+1-559-887-3204', 'student1207@example.com', '1207', 'Edna Buckridge MD', 'Housewife', '641.224.0580', 'student1208@example.com', '1208', 'Dr. Jerald Ward V', '(409) 524-1679', 'student1209@example.com', '1209', 'Sister', 1, 23, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:03', '2025-12-06 07:05:35'),
(243, 'Frida', 'O\'Keefe', '1990-11-03', 'Male', 'A+', 'Other', 'Bangladeshi', '1211', '(281) 840-0727', 'student1212@example.com', '$2y$12$w7rnWn9u/4I6pZOBPgkLzOD0szpuIlG6A2N8vbzFheOlO6sSEdK5.', '34959 Wiza Centers\nDamarisport, OH 95149-9344', 'Apt. 183', 'Randall Casper', 'Teacher', '401-312-0935', 'student1212@example.com', '1212', 'Mrs. Janae Kerluke Jr.', 'Nurse', '660.878.7712', 'student1213@example.com', '1213', 'Demetris Bergnaum', '+1-202-968-6317', 'student1214@example.com', '1214', 'Aunt', 1, 16, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:03', '2025-12-06 07:05:35'),
(244, 'Pinkie', 'Hayes', '1991-03-21', 'Male', 'B-', 'Islam', 'Bangladeshi', '1216', '+1-341-780-2208', 'student1217@example.com', '$2y$12$t0vQE.XbrC/McPBtmNfjweUG88EZOdJHWwXVxvLByg2VbQuLoW.4C', '717 Paxton Grove\nAbelport, OK 58298', 'Apt. 311', 'Steve Hauck', 'Engineer', '(517) 572-9622', 'student1217@example.com', '1217', 'Genevieve Lynch', 'Doctor', '(520) 930-4708', 'student1218@example.com', '1218', 'Nicola Satterfield', '+1-563-925-7016', 'student1219@example.com', '1219', 'Brother', 1, 22, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:03', '2025-12-06 07:05:35'),
(245, 'Cathy', 'Eichmann', '1989-02-12', 'Male', 'B-', 'Buddhist', 'Bangladeshi', '1221', '(380) 876-2901', 'student1222@example.com', '$2y$12$.WkwTR/Eg.zlzfPcyeaTeOSLjIpiNLf0v1jgiXDUPyFCBZAMMSktm', '926 Block Path\nChesleybury, TN 62889-2874', 'Apt. 587', 'August Nienow', 'Teacher', '1-352-925-5676', 'student1222@example.com', '1222', 'Miss Beth Wunsch PhD', 'Businesswoman', '+1-936-539-9757', 'student1223@example.com', '1223', 'Dr. Warren Batz DDS', '414-710-8921', 'student1224@example.com', '1224', 'Uncle', 1, 21, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:04', '2025-12-06 07:05:35'),
(246, 'Mackenzie', 'McLaughlin', '1978-12-29', 'Female', 'A-', 'Christian', 'Bangladeshi', '1226', '+1-863-254-8303', 'student1227@example.com', '$2y$12$swO7A/go1jhh1hnuErnGXOfCtBqEwJfnf0iQzOiHqwoWuHX.N2pZC', '6587 Carter Forges Apt. 927\nBernierfurt, AL 78068', 'Apt. 026', 'Giuseppe Fadel', 'Teacher', '1-559-706-6217', 'student1227@example.com', '1227', 'Melyssa Cruickshank DDS', 'Businesswoman', '(940) 387-4015', 'student1228@example.com', '1228', 'Mrs. Tierra Goodwin', '+18647168970', 'student1229@example.com', '1229', 'Grandparent', 1, 23, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:04', '2025-12-06 07:05:35'),
(247, 'Adrain', 'Gulgowski', '1972-04-30', 'Male', 'A-', 'Islam', 'Bangladeshi', '1231', '+1.351.837.9969', 'student1232@example.com', '$2y$12$0Bc/mOgMlF0GXlWcnWfjDOEnr3qdyMm1m3.JqMhncqIjtLLO.3SVS', '21156 McLaughlin Ford\nMarvinstad, MS 11573', 'Apt. 392', 'Dr. Doyle Flatley', 'Doctor', '+1 (539) 918-8521', 'student1232@example.com', '1232', 'Skyla Auer', 'Housewife', '1-930-741-6431', 'student1233@example.com', '1233', 'Ms. Roma Bogan', '+1.612.986.3878', 'student1234@example.com', '1234', 'Brother', 1, 30, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:04', '2025-12-06 07:05:35'),
(248, 'Dayne', 'Morissette', '1982-09-19', 'Female', 'AB+', 'Christian', 'Bangladeshi', '1236', '+1-423-797-4958', 'student1237@example.com', '$2y$12$mZR2g.orZuzmXE5QMFHa1ebEZqr/ulBakaHd3DaFtONj0S.5dnhwm', '2633 Romaguera Centers\nWest Deanna, ND 62785', 'Apt. 192', 'Brooks Eichmann', 'Doctor', '364.707.4384', 'student1237@example.com', '1237', 'Betsy Murray', 'Doctor', '+1-541-774-4312', 'student1238@example.com', '1238', 'Carolina Blanda Jr.', '(769) 497-0724', 'student1239@example.com', '1239', 'Aunt', 1, 24, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:04', '2025-12-06 07:05:35'),
(249, 'Berenice', 'Hermann', '1987-09-18', 'Other', 'AB+', 'Buddhist', 'Bangladeshi', '1241', '740.848.6347', 'student1242@example.com', '$2y$12$llflv06vjANbW.EJjodf.e8IL3Zo4A9ap8V/g1roezg3hb4coilkS', '609 Cathrine Station\nWest Violetteberg, ME 28746', 'Suite 224', 'Allan Lesch', 'Farmer', '(760) 279-0553', 'student1242@example.com', '1242', 'Carmen Langosh', 'Teacher', '1-559-537-2207', 'student1243@example.com', '1243', 'Prof. Lambert Greenholt III', '+19064896996', 'student1244@example.com', '1244', 'Sister', 1, 16, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:04', '2025-12-06 07:05:35'),
(250, 'Sean', 'Weimann', '2009-03-07', 'Other', 'AB+', 'Christian', 'Bangladeshi', '1246', '+1-956-417-4327', 'student1247@example.com', '$2y$12$67xzEj6V.UfN2dKJmzzsL.Pa.auxvfosp8JeFborm93TJaGvATh1y', '51724 Jazmyne Turnpike Apt. 596\nJanniebury, KS 95832-9846', 'Apt. 591', 'Leland Wisoky', 'Businessman', '+17705419399', 'student1247@example.com', '1247', 'Ciara Ebert', 'Businesswoman', '(863) 387-8091', 'student1248@example.com', '1248', 'Dr. Lee Zemlak IV', '(936) 688-9142', 'student1249@example.com', '1249', 'Uncle', 1, 20, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:04', '2025-12-06 07:05:35'),
(251, 'Gerardo', 'Brown', '2002-11-03', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '1251', '(727) 472-2782', 'student1252@example.com', '$2y$12$MXfuENNI8ufoVwNyg.YGP.qgWKKrpHhcdV0tufusFnuiKINmZ55ma', '8381 Crooks Land Apt. 212\nMacieshire, FL 06643', 'Suite 231', 'Sheridan Batz DVM', 'Farmer', '(726) 363-9362', 'student1252@example.com', '1252', 'Berniece Thompson Sr.', 'Nurse', '+1-276-759-3553', 'student1253@example.com', '1253', 'Allene Hahn', '1-918-323-3739', 'student1254@example.com', '1254', 'Sister', 1, 18, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:05', '2025-12-06 07:05:35'),
(252, 'Amber', 'Hayes', '2012-08-07', 'Male', 'A-', 'Christian', 'Bangladeshi', '1256', '(986) 507-6593', 'student1257@example.com', '$2y$12$rFOBcNv2BOgyKZGZmVThFuvD8O2ify4PIhfidp6asxAhrtqH7HkBC', '228 Bosco Mill Suite 633\nTremblaymouth, AR 72689', 'Suite 684', 'Mr. Jose Klein', 'Doctor', '267-932-0041', 'student1257@example.com', '1257', 'Helen Krajcik I', 'Teacher', '1-667-732-4417', 'student1258@example.com', '1258', 'Madison Franecki', '480-313-0687', 'student1259@example.com', '1259', 'Uncle', 1, 25, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:05', '2025-12-06 07:05:35'),
(253, 'Kiara', 'Miller', '1997-01-03', 'Female', 'O-', 'Christian', 'Bangladeshi', '1261', '+1-562-485-5247', 'student1262@example.com', '$2y$12$XVdP/Q6f5tXtyRcQVhITX.YqkSDmyGfvgTrECyo2aVuXXOkFbfwN2', '640 Kuvalis Point\nKoelpinburgh, AK 63870-5914', 'Suite 824', 'Anibal Crona', 'Farmer', '+1-989-574-6971', 'student1262@example.com', '1262', 'Natalie Krajcik', 'Doctor', '+1-801-896-8378', 'student1263@example.com', '1263', 'Elvis Mohr', '(432) 323-6878', 'student1264@example.com', '1264', 'Aunt', 1, 31, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:05', '2025-12-06 07:05:35'),
(254, 'Jace', 'McCullough', '1993-07-08', 'Other', 'A-', 'Other', 'Bangladeshi', '1266', '+13025689453', 'student1267@example.com', '$2y$12$CFwFSKk/wf7S0xDfNK32NOdmOtxgeadYPE9uyuXuKPEBzE2OzCo2W', '7032 Hortense Parks\nKovacekville, AK 70846', 'Apt. 218', 'Prof. Monserrate Hills DDS', 'Doctor', '717-469-4814', 'student1267@example.com', '1267', 'Dr. Dominique O\'Connell', 'Doctor', '(802) 979-8357', 'student1268@example.com', '1268', 'Dr. Rick Farrell', '+1-630-785-2027', 'student1269@example.com', '1269', 'Aunt', 1, 26, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:05', '2025-12-06 07:05:35'),
(255, 'Danny', 'Feest', '1996-07-08', 'Male', 'AB+', 'Christian', 'Bangladeshi', '1271', '240.261.1137', 'student1272@example.com', '$2y$12$dpI4yLanc2gRzckGZOGfTuUDHkJY3UiIRMQv8DERbzQkGGEmlU3WK', '7970 Ramon Valleys\nPort Lilianaville, AK 38505', 'Suite 141', 'Dr. Braxton Schuster', 'Farmer', '+1 (234) 396-9886', 'student1272@example.com', '1272', 'Mrs. Yadira Gleichner II', 'Housewife', '+1-602-325-5757', 'student1273@example.com', '1273', 'Heloise Hettinger', '337.919.9627', 'student1274@example.com', '1274', 'Grandparent', 1, 17, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:05', '2025-12-06 07:05:35'),
(256, 'Andy', 'Hackett', '2011-11-28', 'Male', 'O-', 'Buddhist', 'Bangladeshi', '1276', '308-206-1131', 'student1277@example.com', '$2y$12$PxA1FPN2alRYFd4BVw4bFeR4eZuXeSg6B1NKp91Ulw5o0nVVLs8CW', '432 Jade Rest Apt. 720\nAudrafort, NM 24733', 'Suite 273', 'Prof. Jaeden Jones', 'Farmer', '520.425.1256', 'student1277@example.com', '1277', 'Prof. Alta Bartoletti II', 'Doctor', '(405) 885-8114', 'student1278@example.com', '1278', 'Morgan Ryan', '1-240-916-8292', 'student1279@example.com', '1279', 'Aunt', 1, 17, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:06', '2025-12-06 07:05:35'),
(257, 'Colby', 'Ziemann', '2009-06-20', 'Female', 'O-', 'Other', 'Bangladeshi', '1281', '+1 (458) 832-4990', 'student1282@example.com', '$2y$12$lLv44ZYJbrHP8UW2tVCYMejQMr/AKkJGcz0rsaDwR37WAOoNsnSWu', '26033 Quitzon Circles\nMargarettside, NY 17713-0529', 'Suite 921', 'Mr. Reynold Jacobi V', 'Businessman', '716.970.5179', 'student1282@example.com', '1282', 'Katrina Quigley', 'Nurse', '1-240-347-7451', 'student1283@example.com', '1283', 'Prof. Roma Pacocha', '+1 (401) 337-3983', 'student1284@example.com', '1284', 'Uncle', 1, 25, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:06', '2025-12-06 07:05:35'),
(258, 'Cecilia', 'Kilback', '1999-06-02', 'Other', 'B-', 'Hindu', 'Bangladeshi', '1286', '+1 (640) 866-0270', 'student1287@example.com', '$2y$12$/JoYyjXdDGutXBszERtkNuYa3gKPBwTs9AnRTxsm.YZRQuyKAWFxi', '75592 Judah Harbor Suite 721\nWest Shanny, WI 27034', 'Apt. 708', 'Rodger Herman PhD', 'Businessman', '+12726986654', 'student1287@example.com', '1287', 'Prof. Margarete Vandervort II', 'Businesswoman', '414-700-2175', 'student1288@example.com', '1288', 'Marina Witting', '(425) 833-0839', 'student1289@example.com', '1289', 'Aunt', 1, 18, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:06', '2025-12-06 07:05:35'),
(259, 'Anabelle', 'Langosh', '1970-07-26', 'Male', 'AB-', 'Other', 'Bangladeshi', '1291', '+1-689-655-7250', 'student1292@example.com', '$2y$12$duxr8uA.zUvnORdOs6he6.tLfkUCPYez5KUWt7ps69yeaZCMYtsdS', '627 Carter Overpass Apt. 418\nPort Erlingstad, NE 56815-3357', 'Suite 129', 'Devante Schmidt', 'Businessman', '+1-469-993-5922', 'student1292@example.com', '1292', 'Vincenza Hoppe', 'Nurse', '1-425-283-1064', 'student1293@example.com', '1293', 'Ethyl Quitzon', '1-616-489-4234', 'student1294@example.com', '1294', 'Aunt', 1, 19, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:06', '2025-12-06 07:05:35'),
(260, 'Bethel', 'Wolf', '2018-09-02', 'Other', 'O-', 'Hindu', 'Bangladeshi', '1296', '+17795363822', 'student1297@example.com', '$2y$12$YgliGP34ffJc1m50JICi2ONS8HXPvAYY74anIBPLvFLf8pImro0Om', '262 Sam Mount Apt. 479\nKleinburgh, NH 82767-9632', 'Suite 083', 'Dante Kutch', 'Farmer', '+1-703-737-0462', 'student1297@example.com', '1297', 'Ms. Daphne Lowe', 'Doctor', '562.639.7888', 'student1298@example.com', '1298', 'Giles King', '463.993.2521', 'student1299@example.com', '1299', 'Sister', 1, 18, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:06', '2025-12-06 07:05:35'),
(261, 'Jasper', 'Upton', '1984-11-14', 'Male', 'O+', 'Hindu', 'Bangladeshi', '1301', '1-337-820-0513', 'student1302@example.com', '$2y$12$td.xkSm7/4utVmNtTLRLHepYyRbcC2bFwKZpPKHAMj6wxjG.KXwYu', '85657 Abigayle Drive\nWest Brianshire, MI 97567', 'Suite 014', 'Prof. Layne Ratke Jr.', 'Farmer', '1-571-931-6012', 'student1302@example.com', '1302', 'Leanna Ullrich', 'Doctor', '+1.361.574.9718', 'student1303@example.com', '1303', 'Lewis Heathcote', '786-221-5778', 'student1304@example.com', '1304', 'Uncle', 1, 20, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:07', '2025-12-06 07:05:35'),
(262, 'Therese', 'Tillman', '2016-12-23', 'Male', 'O-', 'Christian', 'Bangladeshi', '1306', '541-580-1707', 'student1307@example.com', '$2y$12$DlSn/tNub7MmzOJbfJwrBO6Wuy8uOcNa/giMtRNL8cSQTuR9qo8g2', '4562 Jerel Dale Suite 520\nNew Margaritamouth, WV 68546-6795', 'Apt. 752', 'Blake Howell', 'Teacher', '1-786-297-9890', 'student1307@example.com', '1307', 'Jada Emard', 'Businesswoman', '+18583875838', 'student1308@example.com', '1308', 'Bert Dach', '941.502.6888', 'student1309@example.com', '1309', 'Brother', 1, 16, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:07', '2025-12-06 07:05:35'),
(263, 'Carmella', 'Feeney', '2013-03-03', 'Female', 'O+', 'Buddhist', 'Bangladeshi', '1311', '+1 (234) 987-7664', 'student1312@example.com', '$2y$12$KTATAlGiH1qqUrq3oNJARuMnI.Xrlfjs0AIKpr1WVNSa7c2R9eFqG', '7636 Haleigh Villages Suite 894\nEmmerichhaven, RI 54254-8907', 'Suite 275', 'Dave Hane', 'Businessman', '+1-283-295-6008', 'student1312@example.com', '1312', 'Dr. Alexa Kris I', 'Nurse', '1-704-863-9057', 'student1313@example.com', '1313', 'Rosella Erdman', '(228) 879-5382', 'student1314@example.com', '1314', 'Uncle', 1, 19, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:07', '2025-12-06 07:05:35'),
(264, 'Afton', 'Kuvalis', '2023-10-16', 'Female', 'AB-', 'Other', 'Bangladeshi', '1316', '1-320-399-5721', 'student1317@example.com', '$2y$12$Z6.lTSZDKioKNJxgdcXPpe7JkUqbnp6XHHCHg/8yl3pBBlAdDoB7.', '597 Marquardt Road Suite 052\nPort Courtneybury, ND 59237', 'Suite 904', 'Lloyd Bogan', 'Businessman', '1-919-774-2830', 'student1317@example.com', '1317', 'Darlene O\'Connell', 'Teacher', '+1 (364) 917-8400', 'student1318@example.com', '1318', 'Beulah Cartwright', '1-380-690-6927', 'student1319@example.com', '1319', 'Aunt', 1, 21, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:07', '2025-12-06 07:05:35'),
(265, 'Cordia', 'McGlynn', '1987-06-06', 'Other', 'O-', 'Buddhist', 'Bangladeshi', '1321', '(872) 913-0963', 'student1322@example.com', '$2y$12$hb6j9Y9UufmfNUyC.JPYkeIbY3xISOaTTkJTrRhTEIlB7OM0JCWzi', '92339 Keaton Spring Suite 099\nSchulistshire, CT 00812-2168', 'Suite 114', 'Theodore Corkery', 'Businessman', '+1.726.982.7445', 'student1322@example.com', '1322', 'Keira Leannon', 'Housewife', '+1.458.256.3694', 'student1323@example.com', '1323', 'Mr. Carson Mayert DVM', '1-602-477-5024', 'student1324@example.com', '1324', 'Grandparent', 1, 18, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:07', '2025-12-06 07:05:35'),
(266, 'Zaria', 'Romaguera', '1980-04-13', 'Female', 'A+', 'Islam', 'Bangladeshi', '1326', '541.619.8037', 'student1327@example.com', '$2y$12$nkWmy//rlb4U1t0kiRIqb.MEMPSoUF8CefOtV.SDJ3mF2NJAcvH0K', '2860 May Viaduct Suite 920\nNorth Rafaelview, SC 00974', 'Suite 194', 'Osvaldo Hane', 'Engineer', '(878) 419-0816', 'student1327@example.com', '1327', 'Nova Hamill II', 'Teacher', '541.384.2561', 'student1328@example.com', '1328', 'Mr. Winfield Considine', '+1-870-418-5734', 'student1329@example.com', '1329', 'Uncle', 1, 27, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:07', '2025-12-06 07:05:35'),
(267, 'Howell', 'Little', '1990-07-18', 'Other', 'O+', 'Islam', 'Bangladeshi', '1331', '260-436-1398', 'student1332@example.com', '$2y$12$vura7AP5eauTYm685x56qOkwVipsSL/rDe2buJ3X1u64Cg2PgQL6a', '42504 Rippin Plaza Apt. 339\nParkerport, DC 74910-9180', 'Apt. 012', 'Mr. Bret Lind PhD', 'Farmer', '(931) 284-0049', 'student1332@example.com', '1332', 'Gerda Bashirian', 'Teacher', '1-425-458-8496', 'student1333@example.com', '1333', 'Thelma Zieme', '(984) 969-6800', 'student1334@example.com', '1334', 'Sister', 1, 21, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:08', '2025-12-06 07:05:35'),
(268, 'Eldon', 'Walsh', '1975-07-19', 'Male', 'A+', 'Christian', 'Bangladeshi', '1336', '650.328.5377', 'student1337@example.com', '$2y$12$K4Nq9SNHCYJidlSfH4eVu.uQr1vhmgf0pmCTL.LzA.CD/ataet32K', '717 Gulgowski Wells Suite 306\nHegmannside, VT 40133', 'Suite 639', 'Kolby Howe', 'Doctor', '+16822569155', 'student1337@example.com', '1337', 'Agnes Torp IV', 'Businesswoman', '+1 (262) 892-7043', 'student1338@example.com', '1338', 'Cornelius Jacobs', '+1 (580) 257-7234', 'student1339@example.com', '1339', 'Sister', 1, 19, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:08', '2025-12-06 07:05:35'),
(269, 'Jaydon', 'Fay', '2013-08-03', 'Male', 'AB-', 'Other', 'Bangladeshi', '1341', '(267) 785-6616', 'student1342@example.com', '$2y$12$/pI0Sl7WbIhYFLtKC515puIYhgLYMV/mAr2c5n/IfcaytJsoFohP.', '7427 Minerva Pine Suite 523\nGerlachchester, ND 02876-2850', 'Suite 096', 'Timmothy Mraz', 'Farmer', '434-993-6036', 'student1342@example.com', '1342', 'Glenna O\'Hara', 'Nurse', '+1 (609) 444-9229', 'student1343@example.com', '1343', 'Danyka Padberg DVM', '+1 (650) 633-5788', 'student1344@example.com', '1344', 'Brother', 1, 22, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:08', '2025-12-06 07:05:35'),
(270, 'Althea', 'Olson', '1984-11-11', 'Male', 'A-', 'Islam', 'Bangladeshi', '1346', '+1.458.328.2308', 'student1347@example.com', '$2y$12$0ghb/Y0l5CgVrTIQur1YK.eZ3TLENC.DO96WptAyavC.l7KW.3itm', '371 Cronin Center Apt. 062\nKelsihaven, NM 16277-7874', 'Suite 107', 'Joany Weimann', 'Teacher', '859-265-1418', 'student1347@example.com', '1347', 'Ima Jerde', 'Nurse', '(539) 386-3384', 'student1348@example.com', '1348', 'Ricardo Wuckert', '+1.786.519.6320', 'student1349@example.com', '1349', 'Sister', 1, 23, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:08', '2025-12-06 07:05:35'),
(271, 'Tyler', 'Marks', '2020-11-15', 'Female', 'AB-', 'Buddhist', 'Bangladeshi', '1351', '1-267-513-6758', 'student1352@example.com', '$2y$12$nKKe5n2jWumIVYzDGdTRlu/y3Y2VQw5zaJpWo0MTPgwFcXwS3iyqi', '632 Mohammad Lodge\nEast Kevon, NY 65706-8404', 'Suite 706', 'Adelbert Gleichner', 'Doctor', '+1-312-648-5465', 'student1352@example.com', '1352', 'Sydni Williamson', 'Nurse', '401-940-8193', 'student1353@example.com', '1353', 'Anastacio Kuvalis V', '1-331-815-9621', 'student1354@example.com', '1354', 'Grandparent', 1, 28, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:08', '2025-12-06 07:05:35'),
(272, 'Sanford', 'Collins', '1997-06-23', 'Other', 'O+', 'Christian', 'Bangladeshi', '1356', '+1.934.412.5079', 'student1357@example.com', '$2y$12$v0igASLW.c6nzSl9QcmyVOolwUToVaSBIkeG2Qt4w7zSHUJjHbLW.', '742 Pouros Fords\nO\'Haraberg, KY 15330-4027', 'Apt. 118', 'Mr. Rogelio Bradtke DVM', 'Businessman', '872-661-1608', 'student1357@example.com', '1357', 'Prof. Tina Murphy', 'Businesswoman', '(765) 621-4897', 'student1358@example.com', '1358', 'Dr. Christian Barton PhD', '1-747-204-9632', 'student1359@example.com', '1359', 'Brother', 1, 20, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:09', '2025-12-06 07:05:35'),
(273, 'Trace', 'Bergnaum', '2003-09-08', 'Female', 'B-', 'Buddhist', 'Bangladeshi', '1361', '+1.812.605.7216', 'student1362@example.com', '$2y$12$7ibg.dJ6KR4Y/dwGQqM.befOyeIxD5wULyTs5pRqgW1jNygwezONy', '74953 Marquardt Expressway\nAufderharland, IL 50594-5784', 'Suite 489', 'Fabian Nikolaus', 'Teacher', '251.407.7708', 'student1362@example.com', '1362', 'Cora Macejkovic', 'Nurse', '463.798.5776', 'student1363@example.com', '1363', 'Evangeline Schoen IV', '+1-862-538-7972', 'student1364@example.com', '1364', 'Aunt', 1, 21, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:09', '2025-12-06 07:05:35'),
(274, 'Woodrow', 'Sawayn', '2016-12-08', 'Female', 'A-', 'Hindu', 'Bangladeshi', '1366', '463.591.2247', 'student1367@example.com', '$2y$12$DOw1Ixc9p5ZJoIXpopUJH..gVQsHTZ.t4qwO5jG/a.tHotTTCM3fC', '3049 Rohan Row\nNorth Kalebstad, NC 18483', 'Suite 064', 'Dr. Kim Terry', 'Teacher', '+1-573-329-5983', 'student1367@example.com', '1367', 'Sarai Koepp PhD', 'Housewife', '682-831-2750', 'student1368@example.com', '1368', 'Viva Hoppe', '+1-682-482-1755', 'student1369@example.com', '1369', 'Grandparent', 1, 19, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:09', '2025-12-06 07:05:35'),
(275, 'Tiana', 'Swaniawski', '2006-08-10', 'Male', 'AB-', 'Christian', 'Bangladeshi', '1371', '+17438233192', 'student1372@example.com', '$2y$12$HvHHfrlXyLjFz7TRPxkD2eSRQOiAkiFN1KFtddgVjid9XSxo8gUoa', '481 Zakary Path Suite 983\nCaylaport, DE 47678-5015', 'Apt. 126', 'Warren Auer', 'Farmer', '+1 (380) 210-8140', 'student1372@example.com', '1372', 'Malinda Yost Sr.', 'Businesswoman', '956-503-9502', 'student1373@example.com', '1373', 'Alfredo O\'Connell', '1-321-591-9567', 'student1374@example.com', '1374', 'Aunt', 1, 20, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:09', '2025-12-06 07:05:35'),
(276, 'Urban', 'Schoen', '1990-02-03', 'Female', 'O+', 'Islam', 'Bangladeshi', '1376', '(984) 328-9664', 'student1377@example.com', '$2y$12$tg5eue5qBRtnkh/Bwyqrj.ZySuXrztllQhmK5wCppkl3jhyjUNcoK', '740 Kyler Rapid Suite 970\nNorth Kirk, OH 36513-6558', 'Apt. 674', 'Frankie Sanford', 'Businessman', '+1-361-898-5139', 'student1377@example.com', '1377', 'Jayne Kuvalis PhD', 'Housewife', '1-803-804-6191', 'student1378@example.com', '1378', 'Agustina Roob MD', '678-223-9572', 'student1379@example.com', '1379', 'Uncle', 1, 24, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:09', '2025-12-06 07:05:35'),
(277, 'Lindsay', 'Schowalter', '1990-01-15', 'Other', 'O-', 'Christian', 'Bangladeshi', '1381', '(731) 443-3348', 'student1382@example.com', '$2y$12$RPYbIraGiugRm5fJ0WmLgeOmZ9wscr6EUZL.JEExfVG5JxWO/ej12', '64028 Klein Fords Suite 109\nWest Mylesberg, DC 42388', 'Suite 553', 'Edward Zulauf', 'Businessman', '+1.682.203.8052', 'student1382@example.com', '1382', 'Gretchen Kshlerin', 'Housewife', '+1-586-735-0774', 'student1383@example.com', '1383', 'Colleen Lubowitz', '712.371.5062', 'student1384@example.com', '1384', 'Grandparent', 1, 22, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:09', '2025-12-06 07:05:35'),
(278, 'Lura', 'Runolfsdottir', '2008-01-08', 'Male', 'B-', 'Islam', 'Bangladeshi', '1386', '+1 (931) 590-7066', 'student1387@example.com', '$2y$12$jI9hzT8uO38x18Q1E0YK0O0E4YVZZ3kTndK1NiGXw7Kj7amQEL3Ue', '518 Herzog Knoll Suite 043\nWest Tito, IA 54485', 'Apt. 295', 'Rex Wilkinson I', 'Engineer', '640.429.5493', 'student1387@example.com', '1387', 'Angelita Reinger', 'Housewife', '+1 (539) 939-3673', 'student1388@example.com', '1388', 'Louisa Turner', '1-941-829-6159', 'student1389@example.com', '1389', 'Brother', 1, 28, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:10', '2025-12-06 07:05:35'),
(279, 'Sylvan', 'Mills', '1989-10-19', 'Male', 'A+', 'Hindu', 'Bangladeshi', '1391', '484.720.4004', 'student1392@example.com', '$2y$12$GRN.SGCvlEOEZTTtVT/c..bHfvaajRfNF.gDzUvd3ZmWpHxwiSLR.', '62068 Braeden Causeway Suite 375\nPascaleberg, SD 52345', 'Suite 287', 'Ian Connelly IV', 'Doctor', '+1.303.324.0741', 'student1392@example.com', '1392', 'Jaquelin Wyman DDS', 'Teacher', '+1-724-585-0568', 'student1393@example.com', '1393', 'Ms. Zoe Collins', '606.754.3753', 'student1394@example.com', '1394', 'Sister', 1, 23, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:10', '2025-12-06 07:05:35'),
(280, 'Kailey', 'Ferry', '2007-01-12', 'Male', 'A-', 'Buddhist', 'Bangladeshi', '1396', '+1 (540) 909-5509', 'student1397@example.com', '$2y$12$4UlxpAvQaDLSihy2.umaw.cEBT0olT5j6fA8crfcpZUS5DuFo1MS2', '702 Windler Extension\nNelshaven, NY 68963-3259', 'Suite 673', 'Mathew Toy', 'Teacher', '628.961.0857', 'student1397@example.com', '1397', 'Icie Littel', 'Businesswoman', '(660) 830-7112', 'student1398@example.com', '1398', 'Miss Jordane Schuster DDS', '+1-531-619-6905', 'student1399@example.com', '1399', 'Uncle', 1, 17, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:10', '2025-12-06 07:05:35'),
(281, 'Allie', 'Farrell', '1992-08-23', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '1401', '+1.276.918.1353', 'student1402@example.com', '$2y$12$6E7uYCOqPV.VBc.bON/mIOJXQTrcD9201Gg4UqxiBz0FufqfW7GCq', '324 Bednar Estate Suite 079\nWest Kraig, AZ 08321-8337', 'Apt. 518', 'Magnus O\'Reilly', 'Teacher', '(786) 565-7761', 'student1402@example.com', '1402', 'Kailee Senger', 'Businesswoman', '1-281-797-0180', 'student1403@example.com', '1403', 'Lauretta King', '843-268-4126', 'student1404@example.com', '1404', 'Grandparent', 1, 32, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:10', '2025-12-06 07:05:35'),
(282, 'Audrey', 'Gleichner', '1981-11-17', 'Female', 'A+', 'Islam', 'Bangladeshi', '1406', '(959) 847-9022', 'student1407@example.com', '$2y$12$i1jeuKtdl.E9OKD7uGLoeeAEhNxVFug7P9rRwssRMsMUTgGcyD6X6', '167 Halvorson Junction\nKingborough, AK 03480', 'Apt. 968', 'Mr. Tyshawn Bashirian DVM', 'Farmer', '518-881-6057', 'student1407@example.com', '1407', 'Meagan Ziemann', 'Teacher', '737-881-0772', 'student1408@example.com', '1408', 'Mr. Stevie Lindgren Jr.', '+1-740-587-6519', 'student1409@example.com', '1409', 'Brother', 1, 33, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:10', '2025-12-06 07:05:35'),
(283, 'Madisen', 'Cormier', '2024-03-08', 'Other', 'O-', 'Other', 'Bangladeshi', '1411', '+1-650-239-7946', 'student1412@example.com', '$2y$12$3Iv.1bfZlMN/XpMk1AKJXumtBhI.0StM7ozsm2GWJdzpsKZkmC6.i', '121 Kris Skyway Suite 047\nEllamouth, KS 01974-6461', 'Apt. 650', 'Kim Bogan', 'Businessman', '253-823-3094', 'student1412@example.com', '1412', 'Araceli Hane', 'Businesswoman', '+1 (323) 686-8310', 'student1413@example.com', '1413', 'Mariam Johnston', '331-525-6888', 'student1414@example.com', '1414', 'Uncle', 1, 26, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:11', '2025-12-06 07:05:35'),
(284, 'Jeromy', 'Hoeger', '1985-04-16', 'Male', 'B-', 'Other', 'Bangladeshi', '1416', '470.593.5014', 'student1417@example.com', '$2y$12$cADfyGsGFbnsMTq7TEEPHeCZDvKl1Ok2Oxt0WRgBGq/B6B0fVd/We', '186 Goldner Hollow\nNew Dulce, KS 24560-5085', 'Suite 956', 'Cletus Medhurst', 'Doctor', '216-368-6310', 'student1417@example.com', '1417', 'Aida Cremin', 'Teacher', '+15205576643', 'student1418@example.com', '1418', 'Prof. Garnett Schaden', '+1-458-686-9128', 'student1419@example.com', '1419', 'Aunt', 1, 24, 8, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:11', '2025-12-06 07:05:35'),
(285, 'Jaleel', 'Aufderhar', '1974-12-26', 'Female', 'A+', 'Islam', 'Bangladeshi', '1421', '361-923-3504', 'student1422@example.com', '$2y$12$uPK6aVr34wYCmv0Ronjcd.QqGIBMpWdKF347Wa0CHQOsst80Qj492', '9018 Faye Walks\nNorth Dewayne, IN 05600-8094', 'Suite 561', 'Armand Homenick', 'Farmer', '803.716.5225', 'student1422@example.com', '1422', 'Miss Emmie Gerlach V', 'Doctor', '1-910-768-6681', 'student1423@example.com', '1423', 'Otis Gleichner', '1-223-235-7482', 'student1424@example.com', '1424', 'Brother', 1, 20, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:11', '2025-12-06 07:05:35'),
(286, 'Hester', 'Ernser', '1985-07-11', 'Other', 'B+', 'Buddhist', 'Bangladeshi', '1426', '234-498-1861', 'student1427@example.com', '$2y$12$a9gvpx3N5zsFgAyPvE3HpOo05hITlVp93ndPuO2WH.tzhhg0zwFZK', '67842 Roslyn Forge\nCrystalburgh, NJ 97800-5625', 'Suite 275', 'Noble Schaden', 'Engineer', '769.625.4030', 'student1427@example.com', '1427', 'Emely Botsford II', 'Nurse', '+1 (828) 581-8870', 'student1428@example.com', '1428', 'Diana Nicolas', '678.310.2405', 'student1429@example.com', '1429', 'Grandparent', 1, 18, 12, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:11', '2025-12-06 07:05:35'),
(287, 'Timmy', 'Medhurst', '2007-10-21', 'Male', 'AB+', 'Other', 'Bangladeshi', '1431', '1-971-508-3366', 'student1432@example.com', '$2y$12$fPNbuLc.sXEKjhbgEewb0u6uY0yShLqTF3BlnjldZcAFu7fmJ0mFS', '26575 Don Branch Suite 537\nLake Jessycaland, IL 65631-1298', 'Suite 598', 'David Gleichner', 'Businessman', '573.722.2882', 'student1432@example.com', '1432', 'Tiara Dickinson', 'Businesswoman', '+18054476083', 'student1433@example.com', '1433', 'Mr. Damian Bechtelar', '386-565-2058', 'student1434@example.com', '1434', 'Sister', 1, 21, 5, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:11', '2025-12-06 07:05:35'),
(288, 'Pete', 'Schaden', '1995-03-24', 'Other', 'AB-', 'Hindu', 'Bangladeshi', '1436', '+1.724.240.0761', 'student1437@example.com', '$2y$12$ltssuCoCW9g9jYfspI8wauJNf11ZR.VyAraR6AeWNC5IrNk641UPK', '74639 Willms Vista Suite 489\nWest Raeberg, AZ 67397-7967', 'Apt. 671', 'Donavon Waters', 'Businessman', '283.442.3940', 'student1437@example.com', '1437', 'Bria Okuneva MD', 'Doctor', '+1-283-692-5130', 'student1438@example.com', '1438', 'Virginia Roberts IV', '754.416.8312', 'student1439@example.com', '1439', 'Brother', 1, 27, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:11', '2025-12-06 07:05:35'),
(289, 'Barry', 'Adams', '1981-11-22', 'Female', 'O-', 'Hindu', 'Bangladeshi', '1441', '+1-248-567-4631', 'student1442@example.com', '$2y$12$1.DFrJao7fRRC3yQFGNOc.v6apVOjmZ2/AIlfCG2cBUbrKAp9j.hW', '15945 Callie Wells\nOlafview, OR 08373', 'Suite 092', 'Reilly Hill PhD', 'Doctor', '+14702863201', 'student1442@example.com', '1442', 'Kitty Hyatt', 'Nurse', '+1.989.688.7714', 'student1443@example.com', '1443', 'Anjali Romaguera', '+1.907.862.4670', 'student1444@example.com', '1444', 'Grandparent', 1, 28, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:12', '2025-12-06 07:05:35'),
(290, 'Else', 'West', '2001-01-28', 'Other', 'A-', 'Islam', 'Bangladeshi', '1446', '(747) 732-6298', 'student1447@example.com', '$2y$12$fm6Z8EXGSkaWiFwhwmqi9.4PccLbo2UWy2yDsid3BJtb/3tkyTTQO', '7389 George Courts Apt. 703\nBessiestad, MS 49770', 'Suite 931', 'Mr. Albin Hane I', 'Engineer', '669.940.8921', 'student1447@example.com', '1447', 'Euna Muller', 'Businesswoman', '970-986-1178', 'student1448@example.com', '1448', 'Prof. Dane Erdman', '+1 (480) 912-9572', 'student1449@example.com', '1449', 'Grandparent', 1, 21, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:12', '2025-12-06 07:05:35'),
(291, 'Yvette', 'Lynch', '2014-01-21', 'Female', 'A-', 'Buddhist', 'Bangladeshi', '1451', '+13395004036', 'student1452@example.com', '$2y$12$ixa2r8v0W45Vj/9WLEl/EerwQPas6z/KQr4yTLdi13nJIoYvFCk06', '951 Arvilla Port Suite 794\nNyasiastad, TN 09709-8340', 'Apt. 515', 'Harley Reichel', 'Engineer', '+14698500878', 'student1452@example.com', '1452', 'Meda Orn', 'Housewife', '1-737-297-6592', 'student1453@example.com', '1453', 'Araceli Wilderman', '347-952-1491', 'student1454@example.com', '1454', 'Uncle', 1, 22, 7, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:12', '2025-12-06 07:05:35'),
(292, 'Abraham', 'Romaguera', '1973-09-28', 'Male', 'A-', 'Other', 'Bangladeshi', '1456', '1-347-272-2235', 'student1457@example.com', '$2y$12$0YjQBpOds0zRmMXHXCeBH.H8f1/cnOpK1pr/Wc0iGyic1lbTkye9i', '5361 Baylee Point Apt. 253\nTaureanbury, ND 43780', 'Suite 062', 'Abner Graham', 'Farmer', '1-828-758-2427', 'student1457@example.com', '1457', 'Ms. Serenity Hane V', 'Doctor', '(612) 649-5761', 'student1458@example.com', '1458', 'Desiree Skiles', '+1 (360) 950-4346', 'student1459@example.com', '1459', 'Sister', 1, 22, 2, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:12', '2025-12-06 07:05:35'),
(293, 'Lucas', 'Emmerich', '1987-02-22', 'Male', 'B+', 'Buddhist', 'Bangladeshi', '1461', '(272) 826-4570', 'student1462@example.com', '$2y$12$vAAN7jyqT1NWU03oYpvm4O/rwEb2cxcH9sJ4ncvYFSyLqh4fiv3ce', '43179 Bergnaum Curve Suite 698\nPort Jason, NM 65347-1324', 'Suite 874', 'Danial Rath V', 'Farmer', '862.994.2433', 'student1462@example.com', '1462', 'Miss Thelma Armstrong I', 'Businesswoman', '(435) 864-0697', 'student1463@example.com', '1463', 'Mia Hill', '+1-540-324-2905', 'student1464@example.com', '1464', 'Grandparent', 1, 34, 9, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:12', '2025-12-06 07:05:35'),
(294, 'Jazlyn', 'Schneider', '1996-09-30', 'Female', 'AB+', 'Hindu', 'Bangladeshi', '1466', '608.582.7086', 'student1467@example.com', '$2y$12$A82.V1SbJMgTjVhanuORLOgM5xpadCAfV890UeRqoiKmiwVi/gyeO', '3998 Marjorie Overpass Suite 217\nLake Jeremie, RI 80394-9894', 'Apt. 449', 'Prof. Irwin Pfannerstill I', 'Engineer', '+1 (281) 995-5606', 'student1467@example.com', '1467', 'Aniyah Dietrich IV', 'Nurse', '(630) 521-6063', 'student1468@example.com', '1468', 'Fletcher Walker', '+1 (564) 721-0376', 'student1469@example.com', '1469', 'Sister', 1, 29, 10, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:13', '2025-12-06 07:05:35'),
(295, 'Lonie', 'Satterfield', '1970-02-10', 'Male', 'AB+', 'Hindu', 'Bangladeshi', '1471', '+19512044616', 'student1472@example.com', '$2y$12$BS2n.y7x5edCRRx36859oe3Z7Xxy2gP037mYZrmu9ryJYmijSzVpy', '9735 Hessel Forge Suite 688\nStammside, CT 47712', 'Apt. 639', 'Tobin Kerluke', 'Businessman', '623.233.3737', 'student1472@example.com', '1472', 'Marlen Hickle', 'Doctor', '1-279-700-5753', 'student1473@example.com', '1473', 'Velda Welch II', '+1.917.534.7705', 'student1474@example.com', '1474', 'Uncle', 1, 25, 4, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:13', '2025-12-06 07:05:35'),
(296, 'Tamia', 'Gorczany', '2015-10-22', 'Female', 'O-', 'Christian', 'Bangladeshi', '1476', '253-555-5502', 'student1477@example.com', '$2y$12$xyDdMQtUBvO5Gw5HqJ.MIOOYL.lEV/Ki8hY5uXghjh4kQlvF9rJ0q', '428 Vandervort Cliff\nWest Einoside, NJ 00346', 'Suite 001', 'Dr. Edison Hermann I', 'Engineer', '1-567-812-7711', 'student1477@example.com', '1477', 'Aida Raynor', 'Doctor', '+1.828.874.1412', 'student1478@example.com', '1478', 'Estefania Runolfsdottir', '+1-928-632-0504', 'student1479@example.com', '1479', 'Sister', 1, 29, 1, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:13', '2025-12-06 07:05:35'),
(297, 'Emanuel', 'Barton', '2005-05-19', 'Other', 'B+', 'Hindu', 'Bangladeshi', '1481', '(480) 736-6770', 'student1482@example.com', '$2y$12$wmim/8cFqZxmXWym3IVBfe4t2Z3p2TuRLOOiIPepkEHWjKT7phdP.', '116 Estel Harbors Apt. 806\nOrnland, LA 49064-1499', 'Apt. 565', 'Chaz Bogisich', 'Teacher', '(754) 892-4930', 'student1482@example.com', '1482', 'Sylvia Mayert', 'Teacher', '+1-445-445-4240', 'student1483@example.com', '1483', 'Annie Kuhn', '+1 (872) 640-3404', 'student1484@example.com', '1484', 'Aunt', 1, 29, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:13', '2025-12-06 07:05:35'),
(298, 'Winfield', 'Kutch', '1986-03-05', 'Other', 'AB+', 'Christian', 'Bangladeshi', '1486', '(737) 472-2027', 'student1487@example.com', '$2y$12$6alQSuJd/SDGxj8apszH3umbJXZLQd/D5TNpYwbe.S2A/xfKESHre', '5523 Hope Lane Apt. 322\nBreitenbergmouth, AR 99873', 'Suite 673', 'Perry Hudson', 'Engineer', '850-955-3559', 'student1487@example.com', '1487', 'Alvena Effertz Sr.', 'Doctor', '(678) 328-1366', 'student1488@example.com', '1488', 'Ms. Georgiana Leuschke V', '316.635.4565', 'student1489@example.com', '1489', 'Sister', 1, 30, 11, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:13', '2025-12-06 07:05:35'),
(299, 'Dale', 'Goyette', '2022-07-12', 'Male', 'AB+', 'Christian', 'Bangladeshi', '1491', '+1-424-643-3053', 'student1492@example.com', '$2y$12$MY2U7Q.JzVVRaZpaZtXav.aNuPQFmat8o0VdUQpdMyy/oO3HfiQD6', '81690 Linda Light\nSouth Maceymouth, CT 39666-0016', 'Suite 696', 'Darwin Mertz PhD', 'Doctor', '(706) 506-3702', 'student1492@example.com', '1492', 'Stephany Pfannerstill', 'Teacher', '615-386-2450', 'student1493@example.com', '1493', 'Dr. Neha Gislason V', '669-436-3073', 'student1494@example.com', '1494', 'Grandparent', 1, 22, 3, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:13', '2025-12-06 07:05:35'),
(300, 'Tracy', 'Haley', '1980-10-31', 'Female', 'AB-', 'Other', 'Bangladeshi', '1496', '+14786502739', 'student1497@example.com', '$2y$12$IzHIHjmjH/Tekmh4XkAKu.A1yc7JoF1uygQ7lRxw/yGRiiwXl58Jm', '104 Lang Ways\nWest Astridhaven, OH 88834-2167', 'Apt. 276', 'Woodrow Heller', 'Engineer', '1-620-571-5169', 'student1497@example.com', '1497', 'Brianne Nitzsche', 'Housewife', '(225) 583-4920', 'student1498@example.com', '1498', 'Wilfrid Pagac', '435-668-8537', 'student1499@example.com', '1499', 'Brother', 1, 24, 6, '2025-12-06', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 06:39:14', '2025-12-06 07:05:35');

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
(1, 1, 21, '2025-12-06 07:33:36', '2025-12-06 07:33:36'),
(4, 1, 22, '2025-12-06 07:33:39', '2025-12-06 07:33:39'),
(5, 1, 20, '2025-12-06 07:33:40', '2025-12-06 07:33:40'),
(6, 1, 18, '2025-12-06 07:33:41', '2025-12-06 07:33:41'),
(7, 1, 17, '2025-12-06 07:39:51', '2025-12-06 07:39:51'),
(8, 1, 19, '2025-12-06 07:39:55', '2025-12-06 07:39:55');

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
(1, 'Bangla', 1, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(2, 'English', 1, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(3, 'Mathematics', 1, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(4, 'General Knowledge', 1, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(5, 'Religion', 1, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(6, 'Bangla', 2, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(7, 'English', 2, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(8, 'Mathematics', 2, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(9, 'General Knowledge', 2, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(10, 'Religion', 2, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(11, 'Bangla', 3, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(12, 'English', 3, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(13, 'Mathematics', 3, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(14, 'Elementary Science', 3, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(15, 'General Knowledge', 3, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(16, 'Religion', 3, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(17, 'Bangla', 4, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(18, 'English', 4, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(19, 'Mathematics', 4, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(20, 'Elementary Science', 4, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(21, 'General Knowledge', 4, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(22, 'Religion', 4, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(23, 'Bangla', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(24, 'English', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(25, 'Mathematics', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(26, 'Bangladesh and Global Studies', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(27, 'Science', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(28, 'Religion', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(29, 'Arts and Crafts', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(30, 'Physical Education', 5, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(31, 'Bangla', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(32, 'English', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(33, 'Mathematics', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(34, 'Science', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(35, 'Bangladesh and Global Studies', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(36, 'Religion', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(37, 'Arts and Crafts', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(38, 'Physical Education', 6, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(39, 'Bangla', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(40, 'English', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(41, 'Mathematics', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(42, 'Science', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(43, 'Bangladesh and Global Studies', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(44, 'Religion', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(45, 'Arts and Crafts', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(46, 'Physical Education', 7, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(47, 'Bangla', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(48, 'English', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(49, 'Mathematics', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(50, 'Science', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(51, 'Bangladesh and Global Studies', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(52, 'Religion', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(53, 'Arts and Crafts', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(54, 'Physical Education', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(55, 'ICT', 8, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(56, 'Bangla', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(57, 'English', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(58, 'Mathematics', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(59, 'Bangladesh and Global Studies', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(60, 'Religion', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(61, 'ICT', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(62, 'Physical Education', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(63, 'Physics', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(64, 'Chemistry', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(65, 'Biology', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(66, 'Higher Mathematics', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(67, 'Accounting', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(68, 'Business Entrepreneurship', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(69, 'Finance & Banking', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(70, 'History of Bangladesh & World Civilization', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(71, 'Civics & Citizenship', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(72, 'Geography & Environment', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(73, 'Economics', 9, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(74, 'Bangla', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(75, 'English', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(76, 'Mathematics', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(77, 'Bangladesh and Global Studies', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(78, 'Religion', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(79, 'ICT', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(80, 'Physical Education', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(81, 'Physics', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(82, 'Chemistry', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(83, 'Biology', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(84, 'Higher Mathematics', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(85, 'Accounting', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(86, 'Business Entrepreneurship', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(87, 'Finance & Banking', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(88, 'History of Bangladesh & World Civilization', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(89, 'Civics & Citizenship', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(90, 'Geography & Environment', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(91, 'Economics', 10, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(92, 'Bangla', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(93, 'English', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(94, 'ICT', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(95, 'Physical Education', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(96, 'Physics', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(97, 'Chemistry', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(98, 'Biology', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(99, 'Higher Mathematics', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(100, 'Accounting', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(101, 'Business Organization & Management', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(102, 'Finance, Banking & Insurance', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(103, 'Production Management & Marketing', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(104, 'Logic', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(105, 'History', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(106, 'Civics', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(107, 'Economics', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(108, 'Islamic Studies', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(109, 'Sociology', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(110, 'Social Work', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(111, 'Geography', 11, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(112, 'Bangla', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(113, 'English', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(114, 'ICT', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(115, 'Physical Education', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(116, 'Physics', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(117, 'Chemistry', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(118, 'Biology', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(119, 'Higher Mathematics', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(120, 'Accounting', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(121, 'Business Organization & Management', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(122, 'Finance, Banking & Insurance', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(123, 'Production Management & Marketing', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(124, 'Logic', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(125, 'History', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(126, 'Civics', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(127, 'Economics', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(128, 'Islamic Studies', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(129, 'Sociology', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(130, 'Social Work', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14'),
(131, 'Geography', 12, '2025-12-06 06:39:14', '2025-12-06 06:39:14');

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
(1, 'Fae', 'Eichmann', '1979-10-22', 'Male', 'AB-', '0', '586-684-6167', 'teacher1@example.com', '$2y$12$XYQiFs.eeUGjQ/p8eCU/2e5DnQ22fghVv8432swPEwWzt7rJa05.W', 'Head of Department', '29376 Jaskolski Fords\nIsaiahburgh, NJ 90728-1345', 'Dante Hand IV', '+15672365771', 'Maritza Wisozk', '+1-970-437-8200', 'Reggie Kuvalis', '973.932.7116', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, 'B25sGNnQfP93S6UcHo2FXYaQFbg5DiZrA0GTrsDAn1v1DHVqMUn6hhgDbOUn', '2025-12-06 06:38:16', '2025-12-06 06:38:16'),
(2, 'Kevon', 'O\'Connell', '1988-11-29', 'Other', 'AB+', '2', '1-970-982-8397', 'teacher2@example.com', '$2y$12$CNBc0MuNuAy18s10mw0P0OS8TS9P3JuWsQTM1sz1h6Hvjb6KPzShW', 'Assistant Professor', '815 Feeney Street Suite 513\nAbbotttown, OH 60227-7075', 'Mr. Jamison Stokes III', '305-340-6653', 'Cristal Schmeler', '901-755-1672', 'Savanna Lindgren', '1-954-851-8217', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:16', '2025-12-06 06:38:16'),
(3, 'Karli', 'Waelchi', '1980-01-08', 'Other', 'AB-', '4', '470-283-0193', 'teacher3@example.com', '$2y$12$BGXP/0xv5txKkVR14GMbAOE603iLE670f9MZvH1TfTKkEdWJhNsUy', 'Senior Teacher', '993 Katarina Camp\nSouth Imelda, GA 26276-1193', 'Flavio Wisoky', '+1-407-532-0059', 'Laurine Walsh', '980-837-1197', 'Mr. Tillman Blanda', '1-571-692-3174', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:16', '2025-12-06 06:38:16'),
(4, 'Henri', 'Grimes', '1983-07-18', 'Other', 'A+', '6', '1-551-597-9880', 'teacher4@example.com', '$2y$12$zpJ3Z6y4gCWyWY67sxHLn..hM8cNRAevIrkerTz4jO7htu.2as53C', 'Head of Department', '739 Trent Bypass\nSauermouth, MO 43005-1729', 'Carey Wolff PhD', '+1.520.702.8429', 'Mrs. Petra Lang Jr.', '+1 (952) 330-4122', 'Karelle Pollich', '(231) 217-4759', 'Grandparent', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:16', '2025-12-06 06:38:16'),
(5, 'Kayli', 'Witting', '1978-05-22', 'Other', 'B+', '8', '+12626820333', 'teacher5@example.com', '$2y$12$9jXK1j626/X4GnJvwYQsQer1jcQHDx10S5urxCTMRhXEf46nhfMvi', 'Lecturer', '28501 Katrina Corner Suite 336\nNew Ikechester, AL 03238', 'Stan Gaylord', '(504) 758-3324', 'Corrine Howell', '1-640-200-8855', 'Harold Hartmann', '+15106548100', 'Grandparent', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:16', '2025-12-06 06:38:16'),
(6, 'Jessie', 'Stehr', '1980-11-26', 'Other', 'A+', '10', '+1.229.806.7799', 'teacher6@example.com', '$2y$12$Wm9gNEjM5feVb.bRYg2Hv.D/EzWqBh7TDYYCNbh4mrCB7nJ5qkXWK', 'Assistant Professor', '25690 Modesto Shoal Suite 282\nSouth Elzaside, GA 16513', 'Mr. Earl Romaguera IV', '+1.951.746.6024', 'Modesta Lindgren', '430.532.5296', 'Kurtis Fisher', '650-226-4430', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:17', '2025-12-06 06:38:17'),
(7, 'Delfina', 'Botsford', '1987-08-27', 'Female', 'AB-', '12', '+1-484-650-5381', 'teacher7@example.com', '$2y$12$pNjo8fyLNs.obUUwuv3Y6u4VrSIt42i9CF9l9wqAmWeTvfvRK34uC', 'Senior Teacher', '84363 Pattie Unions\nKovacekmouth, TX 54143-6734', 'Jamal Ward DDS', '1-530-431-0293', 'Evangeline Nader', '305.444.7425', 'Christop Rolfson', '432.967.2785', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:17', '2025-12-06 06:38:17'),
(8, 'Charlene', 'Bartoletti', '1976-09-16', 'Female', 'B+', '14', '743.863.0738', 'teacher8@example.com', '$2y$12$65lVYU84MOh8VGGHXMuw4e8VudKluJtQ0lTyrgrdSOofs8IeWLZEe', 'Lecturer', '4805 Leanna Locks\nNickolaston, SD 87557', 'Prof. Dorthy Bode DDS', '+1-575-812-7343', 'Roberta Haag', '+1.417.580.2012', 'Carolanne Ebert', '+1 (959) 862-6610', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:17', '2025-12-06 06:38:17'),
(9, 'Rex', 'Rempel', '1984-05-19', 'Other', 'O+', '16', '(630) 550-6377', 'teacher9@example.com', '$2y$12$Hkf25MHBgKkzKdO35Lktj.KCLCLnsbbA4Y39B1INOwBbttsotZTYi', 'Senior Teacher', '4656 Carmella Plaza\nFranceshaven, IA 46128', 'Ricky Wintheiser', '+1.726.543.5929', 'Makayla Friesen', '(272) 503-1687', 'Prof. Cristopher Dare', '208-877-6191', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:17', '2025-12-06 06:38:17'),
(10, 'Kaylee', 'Cruickshank', '1974-11-21', 'Other', 'O+', '18', '(980) 334-7152', 'teacher10@example.com', '$2y$12$IrjeG8wGKI0TpqZ72971VuKRdWT95.YNx6UBcMSludPE2GZCUoaHG', 'Senior Teacher', '939 Kaylin Harbor\nLake Marybury, HI 73523-4291', 'Isom Kovacek', '470-333-8419', 'Mrs. Sibyl Bernhard II', '+13019969518', 'Kaleigh Runolfsdottir Sr.', '+17032785357', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:17', '2025-12-06 06:38:17'),
(11, 'Mable', 'Dach', '1984-01-16', 'Male', 'A+', '20', '(760) 760-9543', 'teacher11@example.com', '$2y$12$BbFPFHq8A7yICZrBiDdNW.ka7CWLw/K8F8Z6wwc0QcF1Zo.z6kVuq', 'Assistant Professor', '10667 Corkery Divide Apt. 011\nLake Theresia, IN 36909', 'Dayton Boyle', '1-208-235-8898', 'Mrs. Reanna Wiegand', '909-764-1585', 'Viva Kemmer', '(682) 526-1469', 'Brother', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:18', '2025-12-06 06:38:18'),
(12, 'Roosevelt', 'Ortiz', '1975-02-01', 'Female', 'AB-', '22', '+13617816892', 'teacher12@example.com', '$2y$12$3lrV2kpK1EGXy19o8JPN0.4cY/DWO2bUV1O/.8KsNIdkrV9MY9lSy', 'Lecturer', '65634 Walter Mountain Suite 923\nKerlukechester, AK 56372', 'Edwardo Champlin', '+1.628.833.0439', 'Candice Pollich', '+1-934-703-4482', 'Roslyn Mitchell DDS', '458-541-1888', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:18', '2025-12-06 06:38:18'),
(13, 'Eve', 'Lebsack', '1975-01-30', 'Male', 'B-', '24', '+1-731-629-1051', 'teacher13@example.com', '$2y$12$aNNg77G4sVxo3tVdAWJukugheJZddhuqXIcMkDIYCh0Z4EjmGC1Tq', 'Assistant Professor', '88259 Beer Wells\nLuellaborough, SD 53556-2065', 'Ali Gulgowski', '1-713-250-5370', 'Prof. Adeline Turner', '307.347.6406', 'Meagan Miller', '(228) 551-5610', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:18', '2025-12-06 06:38:18'),
(14, 'Eliezer', 'Bauch', '1986-06-05', 'Male', 'O-', '26', '+1-650-873-6197', 'teacher14@example.com', '$2y$12$Yb9jyAlE9kDugwmrvdhFtO9/WvW5jWJDvhUygNFOPYpXAZPhrZ5Oq', 'Lecturer', '4321 Rolfson Land\nSelinaberg, ME 04377-0582', 'Prof. Jamarcus Ratke III', '254-782-4508', 'Alexandrine Okuneva', '1-323-421-5172', 'Oliver Pouros', '248.857.3749', 'Aunt', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:18', '2025-12-06 06:38:18'),
(15, 'Marietta', 'Macejkovic', '1981-11-29', 'Other', 'AB+', '28', '770.827.3416', 'teacher15@example.com', '$2y$12$uMYDQAHddijUqGwmxfnEZe.u8aFimFe1ee2e.gUT1gs./d6Sl1Dwe', 'Senior Teacher', '29470 Marlene Springs\nNew Andreanne, ME 88043-4473', 'Abner Kertzmann', '+1-442-992-6974', 'Hilma Morar', '(424) 976-5152', 'Dr. Alana Little III', '+1-769-734-8509', 'Uncle', NULL, NULL, NULL, 1, 'N/A', NULL, NULL, NULL, '2025-12-06 06:38:18', '2025-12-06 06:38:18');

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
-- Indexes for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_payments_student_id_foreign` (`student_id`),
  ADD KEY `fee_payments_fee_structure_id_foreign` (`fee_structure_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_schedules`
--
ALTER TABLE `class_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT for table `fee_payments`
--
ALTER TABLE `fee_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_structures`
--
ALTER TABLE `fee_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

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
-- Constraints for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD CONSTRAINT `fee_payments_fee_structure_id_foreign` FOREIGN KEY (`fee_structure_id`) REFERENCES `fee_structures` (`id`),
  ADD CONSTRAINT `fee_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

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
