-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 11:40 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(1, 'Sample Project', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum, metus vitae malesuada mollis, urna nisi luctus ligula, vitae volutpat massa eros eu ligula. Nunc dui metus, iaculis id dolor non, luctus tristique libero. Aenean et sagittis sem. Nulla facilisi. Mauris at placerat augue. Nullam porttitor felis turpis, ac varius eros placerat et. Nunc ut enim scelerisque, porta lacus vitae, viverra justo. Nam mollis turpis nec dolor feugiat, sed bibendum velit placerat. Etiam in hendrerit leo. Nullam mollis lorem massa, sit amet tincidunt dolor lacinia at.&lt;/span&gt;							', 0, '2020-11-03', '2021-01-20', 2, '3,4,5', '2020-12-03 09:56:56'),
(2, 'Sample Project 102', 'Sample Only', 0, '2020-12-02', '2020-12-31', 2, '3', '2020-12-03 13:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `scholars_clg`
--

CREATE TABLE `scholars_clg` (
  `id` int(11) NOT NULL,
  `scholar_id` varchar(15) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `suffix` varchar(5) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `gradelvl` varchar(50) NOT NULL,
  `pgname` varchar(100) NOT NULL,
  `pgcontact` varchar(100) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `registration` varchar(200) NOT NULL,
  `report_card` varchar(200) NOT NULL,
  `valid_id` varchar(200) NOT NULL,
  `bgy_cert` varchar(200) NOT NULL,
  `payslip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholars_clg`
--

INSERT INTO `scholars_clg` (`id`, `scholar_id`, `lastname`, `firstname`, `middlename`, `suffix`, `bdate`, `gender`, `contact`, `address`, `email`, `school`, `gradelvl`, `pgname`, `pgcontact`, `avatar`, `registration`, `report_card`, `valid_id`, `bgy_cert`, `payslip`) VALUES
(1, 'YNW629413708', 'Lopez', 'Lorenz', 'Dumayaw', 'Jr.', '2010-07-11', 'Male', '09923262065', 'Blk. 3 Lot 12 Tiangge Subdivision, Brgy Tinaytay, Taytay, Rizal,1852', 'lopez@gmail.com', 'Knights & Archers Montesorri School', 'Grade 8', 'Florita Lopez', '+639285192849', '334057253_149943927928435_4474569998683793041_n.jpg', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png'),
(9, 'OYT489073265', 'Dela Cruz', 'Mario', 'Sanchez', 'Jr.', '2012-11-27', 'Male', '+6309552950154', 'Blk4 Lot18 Sinampalukan St., Tinaligay Ave., Taytay, Rizal', 'marimar@gmail.com', 'Siena College of Taytay', 'Grade 10', 'Tasio Dela Cruz', '+63882759301', '334057253_149943927928435_4474569998683793041_n.jpg', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `scholars_gs`
--

CREATE TABLE `scholars_gs` (
  `id` int(11) NOT NULL,
  `scholar_id` varchar(15) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `suffix` varchar(5) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `gradelvl` varchar(50) NOT NULL,
  `pgname` varchar(100) NOT NULL,
  `pgcontact` varchar(100) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `registration` varchar(200) NOT NULL,
  `report_card` varchar(200) NOT NULL,
  `valid_id` varchar(200) NOT NULL,
  `bgy_cert` varchar(200) NOT NULL,
  `payslip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholars_gs`
--

INSERT INTO `scholars_gs` (`id`, `scholar_id`, `lastname`, `firstname`, `middlename`, `suffix`, `bdate`, `gender`, `contact`, `address`, `email`, `school`, `gradelvl`, `pgname`, `pgcontact`, `avatar`, `registration`, `report_card`, `valid_id`, `bgy_cert`, `payslip`) VALUES
(1, 'YNW629413708', 'Lopez', 'Lorenz', 'Dumayaw', 'Jr.', '2010-07-11', 'Male', '09923262065', 'Blk. 3 Lot 12 Tiangge Subdivision, Brgy Tinaytay, Taytay, Rizal,1852', 'lopez@gmail.com', 'Knights & Archers Montesorri School', 'Grade 8', 'Florita Lopez', '+639285192849', '334057253_149943927928435_4474569998683793041_n.jpg', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png'),
(9, 'OYT489073265', 'Dela Cruz', 'Mario', 'Sanchez', 'Jr.', '2012-11-27', 'Male', '+6309552950154', 'Blk4 Lot18 Sinampalukan St., Tinaligay Ave., Taytay, Rizal', 'marimar@gmail.com', 'Siena College of Taytay', 'Grade 10', 'Tasio Dela Cruz', '+63882759301', '334057253_149943927928435_4474569998683793041_n.jpg', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `scholars_jhs`
--

CREATE TABLE `scholars_jhs` (
  `id` int(11) NOT NULL,
  `scholar_id` varchar(15) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `suffix` varchar(5) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `gradelvl` varchar(50) NOT NULL,
  `pgname` varchar(100) NOT NULL,
  `pgcontact` varchar(100) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `registration` varchar(200) NOT NULL,
  `report_card` varchar(200) NOT NULL,
  `valid_id` varchar(200) NOT NULL,
  `bgy_cert` varchar(200) NOT NULL,
  `payslip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholars_jhs`
--

INSERT INTO `scholars_jhs` (`id`, `scholar_id`, `lastname`, `firstname`, `middlename`, `suffix`, `bdate`, `gender`, `contact`, `address`, `email`, `school`, `gradelvl`, `pgname`, `pgcontact`, `avatar`, `registration`, `report_card`, `valid_id`, `bgy_cert`, `payslip`) VALUES
(1, 'YNW629413708', 'Lopez', 'Lorenz', 'Dumayaw', 'Jr.', '2010-07-11', 'Male', '09923262065', 'Blk. 3 Lot 12 Tiangge Subdivision, Brgy Tinaytay, Taytay, Rizal,1852', 'lopez@gmail.com', 'Knights & Archers Montesorri School', 'Grade 8', 'Florita Lopez', '+639285192849', '334057253_149943927928435_4474569998683793041_n.jpg', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png'),
(9, 'OYT489073265', 'Dela Cruz', 'Mario', 'Sanchez', 'Jr.', '2012-11-27', 'Male', '+6309552950154', 'Blk4 Lot18 Sinampalukan St., Tinaligay Ave., Taytay, Rizal', 'marimar@gmail.com', 'Siena College of Taytay', 'Grade 10', 'Tasio Dela Cruz', '+63882759301', '334057253_149943927928435_4474569998683793041_n.jpg', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `scholars_shs`
--

CREATE TABLE `scholars_shs` (
  `id` int(11) NOT NULL,
  `scholar_id` varchar(15) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `suffix` varchar(5) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `gradelvl` varchar(50) NOT NULL,
  `pgname` varchar(100) NOT NULL,
  `pgcontact` varchar(100) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `registration` varchar(200) NOT NULL,
  `report_card` varchar(200) NOT NULL,
  `valid_id` varchar(200) NOT NULL,
  `bgy_cert` varchar(200) NOT NULL,
  `payslip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholars_shs`
--

INSERT INTO `scholars_shs` (`id`, `scholar_id`, `lastname`, `firstname`, `middlename`, `suffix`, `bdate`, `gender`, `contact`, `address`, `email`, `school`, `gradelvl`, `pgname`, `pgcontact`, `avatar`, `registration`, `report_card`, `valid_id`, `bgy_cert`, `payslip`) VALUES
(1, 'YNW629413708', 'Lopez', 'Lorenz', 'Dumayaw', 'Jr.', '2010-07-11', 'Male', '09923262065', 'Blk. 3 Lot 12 Tiangge Subdivision, Brgy Tinaytay, Taytay, Rizal,1852', 'lopez@gmail.com', 'Knights & Archers Montesorri School', 'Grade 8', 'Florita Lopez', '+639285192849', '334057253_149943927928435_4474569998683793041_n.jpg', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png', 'no-image-available.png'),
(9, 'OYT489073265', 'Dela Cruz', 'Mario', 'Sanchez', 'Jr.', '2012-11-27', 'Male', '+6309552950154', 'Blk4 Lot18 Sinampalukan St., Tinaligay Ave., Taytay, Rizal', 'marimar@gmail.com', 'Siena College of Taytay', 'Grade 10', 'Tasio Dela Cruz', '+63882759301', '334057253_149943927928435_4474569998683793041_n.jpg', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png', 'Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `assignedto` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `assignedto`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;													', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', '', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', '', 'Sample', 1, '2020-12-03 13:52:25'),
(4, 2, 'test 23', '', 'Sample test 23', 1, '2020-12-03 13:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 'no-image-available.png', '2020-11-26 10:57:04'),
(3, 'Marijo', 'Nieva', 'marijo@sample.com', '85ad547ba877151ac1d3d0663b6f2899', 3, '1606958760_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 09:26:42'),
(4, 'Aedia Clint', 'Mirandilla', 'acm@sample.com', '036914837fb362f4070592a2b3a3b70d', 3, '1606963560_avatar.jpg', '2020-12-03 10:46:41'),
(5, 'Cathlyn Joy', 'De Leon', 'cath@sample.com', 'be5b4940eee2dc7cee2619dd66d8e73a', 3, '1606963620_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 10:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholars_clg`
--
ALTER TABLE `scholars_clg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholars_gs`
--
ALTER TABLE `scholars_gs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholars_jhs`
--
ALTER TABLE `scholars_jhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholars_shs`
--
ALTER TABLE `scholars_shs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scholars_clg`
--
ALTER TABLE `scholars_clg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `scholars_gs`
--
ALTER TABLE `scholars_gs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `scholars_jhs`
--
ALTER TABLE `scholars_jhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `scholars_shs`
--
ALTER TABLE `scholars_shs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
