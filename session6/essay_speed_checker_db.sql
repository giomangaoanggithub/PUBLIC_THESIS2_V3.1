-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 02:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `essay_speed_checker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_teacher_conn`
--

CREATE TABLE `admin_teacher_conn` (
  `a_t_c_id` int(11) NOT NULL,
  `admin_email` text NOT NULL,
  `teacher_email` text NOT NULL,
  `connection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_teacher_conn`
--

INSERT INTO `admin_teacher_conn` (`a_t_c_id`, `admin_email`, `teacher_email`, `connection`) VALUES
(1, 'gioadmin@gmail.com', 'gioteacher@gmail.com', 1),
(6, 'gioadmin@gmail.com', 'gioteacher215@gmail.com', -1);

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `room_id` int(11) NOT NULL,
  `room_name` text NOT NULL,
  `room_code` text NOT NULL,
  `owner_email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`room_id`, `room_name`, `room_code`, `owner_email`) VALUES
(1, 'Science Room', '_vje3452JN3467EUk', 'scienceteacher@gmail.com'),
(2, 'English Room', '_gkl72242JN3467fer', 'englishteacher@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `company_admin_email` text NOT NULL,
  `company_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `company_admin_email`, `company_code`) VALUES
(1, 'NEW MDPS', 'gioadmin@gmail.com', 'mdps_code'),
(2, 'New Company', 'new@gmail.com', 'new_code'),
(3, 'lol', 'lol@gmail.com', 'lol_code'),
(4, 'qq', 'gioteacherqq215@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `created_questions`
--

CREATE TABLE `created_questions` (
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `owner_teacher` text NOT NULL,
  `classroom_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `created_questions`
--

INSERT INTO `created_questions` (`question_id`, `question`, `owner_teacher`, `classroom_id`) VALUES
(1, 'What happened to the story of the three little pigs?', 'englishteacher@gmail.com', '2'),
(2, 'What is the difference between speed and velocity?', 'scienceteacher@gmail.com', '1'),
(3, 'Is distance the same as displacement? Explain Why?', 'scienceteacher@gmail.com', '1'),
(4, 'Which house that hasn\'t blown off by the big bad wolf?', 'englishteacher@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL,
  `room_code` text NOT NULL,
  `teacher_email` text NOT NULL,
  `student_email` text NOT NULL,
  `semester_start` date NOT NULL,
  `semester_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_answers`
--

CREATE TABLE `student_answers` (
  `answer_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(11) NOT NULL,
  `owner_student` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_answers`
--

INSERT INTO `student_answers` (`answer_id`, `answer`, `question_id`, `owner_student`) VALUES
(1, 'The third house, which is made out of bricks, unlike the first and the second house, built with straws and sticks respectively.', 4, 'giostudent111@gmail.com'),
(2, 'To answer it simply, the process of calculating the distance and displacement is not the same.', 3, 'giostudent@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_connection`
--

CREATE TABLE `teacher_student_connection` (
  `t_s_conn_id` int(11) NOT NULL,
  `teacher_email` text NOT NULL,
  `student_email` text NOT NULL,
  `t_s_connection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `user_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `contact_number` text NOT NULL,
  `user_role` int(11) NOT NULL,
  `on_queue` int(11) NOT NULL,
  `accepted` int(11) NOT NULL,
  `profile_pic_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`user_id`, `email`, `username`, `password`, `contact_number`, `user_role`, `on_queue`, `accepted`, `profile_pic_address`) VALUES
(6, 'scienceteacher@gmail.com', 'ScienceUsername', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 1, 0, 0, ''),
(7, 'englishteacher@gmail.com', 'EnglishUsername', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 1, 0, 0, ''),
(18, 'gioadmin@gmail.com', 'GioAdmin', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 2, 0, 0, 'profiles/gioadmin@gmail.com'),
(20, 'gioteacher@gmail.com', 'GioTeacher', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 1, 0, 0, 'profiles/gioteacher@gmail.com'),
(22, 'giostudent@gmail.com', 'GioStudent', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 0, 0, 0, 'profiles/giostudent@gmail.com'),
(23, 'new@gmail.com', 'Newman', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 2, 0, 0, 'profiles/new@gmail.com'),
(24, 'lol@gmail.com', 'lolol', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 2, 0, 0, 'profiles/lol@gmail.com'),
(32, 'gioteacher215@gmail.com', 'Gio215', '8228a11d555fd7129be3d7f20f2ac1c1', '09608663386', 1, 0, 0, 'profiles/gioteacher215@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_teacher_conn`
--
ALTER TABLE `admin_teacher_conn`
  ADD PRIMARY KEY (`a_t_c_id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `created_questions`
--
ALTER TABLE `created_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `teacher_student_connection`
--
ALTER TABLE `teacher_student_connection`
  ADD PRIMARY KEY (`t_s_conn_id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_teacher_conn`
--
ALTER TABLE `admin_teacher_conn`
  MODIFY `a_t_c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `created_questions`
--
ALTER TABLE `created_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_answers`
--
ALTER TABLE `student_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_student_connection`
--
ALTER TABLE `teacher_student_connection`
  MODIFY `t_s_conn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
