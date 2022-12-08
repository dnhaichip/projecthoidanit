-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 07:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `phone_number`, `address`, `email`, `username`, `password`, `image`, `create_date`) VALUES
(1, 'admin', 'admin', '123456', 'hcm', 'admin@gmail.com', 'admin', '123456', NULL, '2021-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `apply_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`id`, `student_id`, `job_id`, `cv`, `status`, `apply_date`) VALUES
(4, 1, 6, 'CV_PhamMinhHieu.pdf', 1, '2021-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `des`, `image`, `price`, `course_id`, `status`, `aid`, `create_date`) VALUES
(1, 'book 1', 'acd', 'EnglishKidsBox.jpg', '15.00', 1, 1, 1, '2021-07-08'),
(2, 'book 2', 'qqqq', 'new_english_file_intermediate_multipack.jpg', '30.00', 2, 1, 1, '2021-07-08'),
(3, 'book 3 ', 'abcde', 'oxford_word_skills_upper_intermediate___advanced_students.jpg', '30.00', 2, 1, 1, '2021-07-08'),
(7, 'b', 'b', 'image', '21.00', 1, 1, NULL, '2021-07-18'),
(8, 'b', ' b', 'oxford_word_skills_upper_intermediate___advanced_students.jpg', '12.00', 3, 0, NULL, '2021-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `des`, `country`, `phone_number`, `email`, `image`, `address`, `username`, `password`, `aid`, `create_date`) VALUES
(3, 'Công ty TNHH GS 25', 'abc', 'Viet Nam', '0123456789', 'GS25@company.com', NULL, 'HCM', 'gs25', 'gs25', 1, '2021-07-22'),
(4, 'CÔNG TY TNHH MANULIFE (VIỆT NAM)', 'abc', 'Viet Nam', '0123456789', 'CÔNG TY CỔ PHẦN MASSCOM VIỆT NAM', NULL, ' Văn Phòng HCM: Số 9 Lê Văn Huân, P.13, Quận Tân Bình, Hồ Chí Minh ', 'ms12', 'ms12', 1, '2021-07-22'),
(5, 'Mitalab Co.,Ltd', 'bcd', 'Viet Nam', '0123456789', 'Mitalab@gmail.com', NULL, 'Quận Tân Bình, Tp HCM', 'mi12', 'mi12', 1, '2021-07-22'),
(6, 'CareerLink\'s Client', 'tttt', 'Japan', '0123456789', 'Career@company.com', NULL, 'Quận Bình Thanh, HCM', 'ca12', 'ca12', 1, '2021-07-22'),
(7, 'CÔNG TY CP TÂN HỒNG MỸ GROUP', 'bbbb', 'Viet Nam', '0123456789', 'CP@company.com', NULL, 'Quận 10, TP HCM', 'hm123', 'hm123', 1, '2021-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `des`, `image`, `type`, `aid`, `create_date`) VALUES
(8, 'Category Course 1', 'abc', NULL, 1, 1, '2021-07-16'),
(9, 'Category Course 2', 'bcd', NULL, 1, 1, '2021-07-16'),
(10, 'Category Course 3', 'aaa', NULL, 1, 1, '2021-07-16'),
(12, 'Security', 'Security', NULL, 0, 1, '2021-07-22'),
(13, 'Sales', 'Sales', NULL, 0, 1, '2021-07-22'),
(14, 'Education', 'Tranning/Library', NULL, 0, 1, '2021-07-22'),
(15, 'Chemicals', 'Biochemistry/Food', NULL, 0, 1, '2021-07-22'),
(16, 'Hotel', 'Hotel/Motel', NULL, 0, 1, '2021-07-22'),
(17, 'Marketing', 'Marketing', NULL, 0, 1, '2021-07-22'),
(18, 'IT', 'Web/Mobile', NULL, 0, 1, '2021-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_id` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `finish_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `des`, `price`, `image`, `cat_id`, `teacher_id`, `aid`, `status`, `create_date`) VALUES
(1, 'course 1', 'description course 1', '50.00', 'xsingle_shop.jpg.pagespeed.ic.yMJhawG7Q-.jpg', 9, 4, 1, 1, '2021-06-28'),
(2, 'course 2', 'description course 2', '30.00', 'xcourse_02.png.pagespeed.ic.PL7Wu2UcSB.png', 9, 4, 1, 1, '2021-07-05'),
(3, 'course 3', 'description course 3', '40.00', 'xcourse_03.png.pagespeed.ic.8e1MyY5M7i.png', 9, 4, 1, 1, '2021-07-05'),
(4, 'course 4', 'description course 4', '20.00', 'xcourse_04.png.pagespeed.ic.2rIKmUwjA7.png', 8, 4, 1, 1, '2021-07-09'),
(5, 'course 5', 'description course 5', '35.00', 'xcourse_05.png.pagespeed.ic.mrKpzOf8LX.png', 10, 4, 1, 1, '2021-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `discuss`
--

CREATE TABLE `discuss` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  `join_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT 0,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` text COLLATE utf8mb4_unicode_ci DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT 0,
  `cat_id` int(11) DEFAULT 0,
  `experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workplaces` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`id`, `student_id`, `cat_id`, `experience`, `salary`, `workplaces`) VALUES
(4, 1, 17, '1-2 years', '$5000', 'Ho Chi Minh');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate(),
  `salary` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `name`, `des`, `business_id`, `cat_id`, `status`, `create_date`, `salary`, `experience`, `requirement`, `expiry_date`) VALUES
(6, 'CHUYÊN VIÊN TUYỂN DỤNG: 03 NAM', 'bb', 7, 13, 1, '2021-07-22', '$ 300', '1-2 years', 'bb', NULL),
(7, '[Bình Tân, TP.HCM] Chuyên Viên Tư Vấn Tài Chính Kênh Liên Kết Siêu Thị Coop Mart Bình Tân', 'bb', 4, 17, 1, '2021-07-22', '$ 300', '1-2 years', 'bb', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joined`
--

CREATE TABLE `joined` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT 0,
  `course_id` int(11) DEFAULT NULL,
  `register_date` date DEFAULT curdate(),
  `expire_date` date DEFAULT NULL,
  `sum_process` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joined`
--

INSERT INTO `joined` (`id`, `student_id`, `course_id`, `register_date`, `expire_date`, `sum_process`) VALUES
(1, 1, 1, '2021-06-28', '2022-07-28', 0),
(19, 1, 4, '2021-07-21', NULL, NULL),
(20, 1, 3, '2021-07-21', NULL, NULL),
(21, 1, 2, '2021-07-22', NULL, NULL),
(22, 18, 2, '2021-07-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate(),
  `lengths` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `video`, `des`, `status`, `course_id`, `teacher_id`, `create_date`, `lengths`) VALUES
(1, 'lesson-01', '2021-06-19 16-23-40.mkv', 'don\'t have', 0, 1, 4, '2021-07-12', '20:14'),
(2, 'lesson-02', 'video.mp4', 'don\'t have', 1, 1, 4, '2021-07-12', '32:20'),
(3, 'lesson-01', 'ocean.mp4', 'don\'t have', 1, 1, 4, '2021-07-13', '20:14'),
(4, 'lesson-03', 'ocean.mp4', 'don\'t have', 1, 1, 4, '2021-07-13', '23:20'),
(7, 'lesson-04', NULL, 'don\'t have', 0, 4, 4, '2021-07-20', '00:33'),
(8, 'b', 'video.mp4', 'aaa', 0, 1, 4, '2021-07-22', '12:20');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `course_id`, `create_date`) VALUES
(6, 'title 1', 'content 1', 1, '2021-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_no`, `amount`, `payment_date`, `status`) VALUES
(14, 'qgdbR2GX2dzrnSP7bghb', '30.00', '2021-07-21 16:58:56', 1),
(17, 'WfI8PIWaViWNYanniGJb', '40.00', '2021-07-21 20:03:57', 0),
(18, 'ii6VVnTHTGMYs5q1sxPu', '50.00', '2021-07-21 21:26:13', 1),
(19, 'Wpjtz6O0ExWjw0IywIEF', '40.00', '2021-07-22 12:03:49', 1),
(20, '1yQyVlia7zAYI6y8SaLF', '40.00', '2021-07-22 12:57:23', 1),
(21, 'VXWYF2FWgW7YRNkpZGbV', '40.00', '2021-07-22 12:59:33', 1),
(22, 'cnRsbZRaPxBHuBSP3aLR', '40.00', '2021-07-22 18:43:08', 1),
(23, '1gh3CSm6lalJ74ieoTb2', '40.00', '2021-07-22 23:45:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `join_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`id`, `join_id`, `lesson_id`, `progress`, `status`, `last_date`) VALUES
(16, 1, 1, 18, 0, '2021-07-21'),
(17, 1, 2, 100, 1, '2021-07-21'),
(18, 1, 3, 100, 1, '2021-07-21'),
(19, 1, 7, 77, 0, '2021-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `title`, `des`, `file`, `course_id`, `create_date`) VALUES
(6, 'title 1 ', 'des 1', NULL, 1, '2021-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `username`, `password`, `image`, `create_date`) VALUES
(1, 'huy', 'nguyen', '01234', 'test@gmail.com', 'hcm', 'abc123', '123456', 'xstudent_01.png.pagespeed.ic.756JwMcqdq.png', '2021-06-28'),
(18, 'vinh', 'dang', '111111', 'vinh@test', 'hn', 'vinh123', '123456', '', '2021-07-09'),
(37, 'adminwemaila', 'tran', '23232323', 'tes1t@gmail.com', 'hn', NULL, '123456', '', '2021-07-15'),
(42, 'david', 'nguyen', '0000', 'b1@gmail.com', 'hcme', NULL, '123456', '', '2021-07-19'),
(43, 'thay', 'thay', NULL, 'thay@gmail.com', NULL, 'thay', '123', NULL, '2021-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_orders`
--

CREATE TABLE `student_orders` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_mount` decimal(15,2) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_orders`
--

INSERT INTO `student_orders` (`id`, `student_id`, `invoice_no`, `due_mount`, `book_id`, `course_id`, `order_date`, `status`) VALUES
(15, 1, 'qgdbR2GX2dzrnSP7bghb', '30.00', NULL, 4, '2021-07-21 16:58:56', 1),
(17, 1, 'WfI8PIWaViWNYanniGJb', '40.00', 3, NULL, '2021-07-21 20:03:57', 1),
(18, 1, 'ii6VVnTHTGMYs5q1sxPu', '50.00', NULL, 3, '2021-07-21 21:26:15', 1),
(19, 1, 'VXWYF2FWgW7YRNkpZGbV', '40.00', NULL, 2, '2021-07-22 12:59:33', 1),
(20, 18, 'cnRsbZRaPxBHuBSP3aLR', '40.00', NULL, 2, '2021-07-22 18:43:09', 1),
(21, 1, '1gh3CSm6lalJ74ieoTb2', '40.00', 3, NULL, '2021-07-22 23:45:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `image`, `username`, `password`, `aid`, `create_date`) VALUES
(4, 'nguyen', 'tran', '1213', 'a@gmail.com', 'hcm', 'xstudent_01.png.pagespeed.ic.756JwMcqdq.png', 'abcde', 'abcde', 1, '2021-07-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_job_student_id_student_id` (`student_id`),
  ADD KEY `FK_job_business_id_business_id` (`job_id`) USING BTREE;

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_book_teacher_id_teacher_id` (`course_id`) USING BTREE,
  ADD KEY `FK_book_admin` (`aid`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_business_aid_admin_id` (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_categories_aid_teacher_id` (`aid`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__join` (`join_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_course_aid_admin_id` (`aid`),
  ADD KEY `FK_course_teacher_id_teacher_id` (`teacher_id`),
  ADD KEY `FK_course_cat_id_category_id` (`cat_id`);

--
-- Indexes for table `discuss`
--
ALTER TABLE `discuss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_discuss_class_id_class_id` (`join_id`) USING BTREE;

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__course` (`course_id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `FK__student` (`student_id`),
  ADD KEY `FK__category` (`cat_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_job_category` (`cat_id`),
  ADD KEY `FK_job_business` (`business_id`);

--
-- Indexes for table `joined`
--
ALTER TABLE `joined`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_class_course_id_course_id` (`course_id`),
  ADD KEY `FK_join_student` (`student_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lesson_course_id_course_id` (`course_id`),
  ADD KEY `FK_lesson_teacher_id_teacher_id` (`teacher_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_notice_course` (`course_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_progress_join` (`join_id`),
  ADD KEY `FK_progress_lesson` (`lesson_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reference_class_id_class_id` (`course_id`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_orders`
--
ALTER TABLE `student_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_student_orders_student_id_student_id` (`student_id`),
  ADD KEY `FK_student_orders_book` (`book_id`),
  ADD KEY `FK_student_orders_course` (`course_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_teacher_aid_admin_id` (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `discuss`
--
ALTER TABLE `discuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `joined`
--
ALTER TABLE `joined`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student_orders`
--
ALTER TABLE `student_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `FK_apply_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_job_student_id_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_book_admin` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_book_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `FK_business_aid_admin_id` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_category_admin` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `FK__join` FOREIGN KEY (`join_id`) REFERENCES `joined` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_course_aid_admin_id` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_course_cat_id_category_id` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_course_teacher_id_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `discuss`
--
ALTER TABLE `discuss`
  ADD CONSTRAINT `FK_discuss_join_id_join_id` FOREIGN KEY (`join_id`) REFERENCES `joined` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FK__course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `FK__category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_job_business` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_job_category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `joined`
--
ALTER TABLE `joined`
  ADD CONSTRAINT `FK_joined_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_joined_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_lesson_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lesson_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `FK_notice_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `FK_progress_joined` FOREIGN KEY (`join_id`) REFERENCES `joined` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_progress_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reference`
--
ALTER TABLE `reference`
  ADD CONSTRAINT `FK_reference_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `student_orders`
--
ALTER TABLE `student_orders`
  ADD CONSTRAINT `FK_student_orders_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student_orders_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student_orders_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `FK_teacher_admin` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
