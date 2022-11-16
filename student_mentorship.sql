-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2021 at 05:20 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mentorship`
--

-- --------------------------------------------------------

--
-- Table structure for table `ao`
--

CREATE TABLE `ao` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ao`
--

INSERT INTO `ao` (`id`, `email`, `name`, `password`, `phone`, `photo_url`, `created_at`) VALUES
(1, 'rijon@yahoo.com', 'rijon', '$2a$10$KpvmkO4UTbM1cta5UTOTCupT4xSBDllbM6/J7AfAy2S3VxcFin6V2', '234234234', 'asdfasdf', '2021-02-27 07:09:56'),
(2, 'jokermr143@gmail.com', 'milon27', '$2a$10$SLEo9L5Zb23d3l3BEIVV5.VJxdXfbBMe1Mtnjt3GF8ep9aXygmbyS', '017272', 'NOT_SET', '2021-03-16 13:02:11'),
(3, 'test@g.com', 'test', '$2a$10$rjjG1LXrjAjsGi95dM3aE.d5rpzED75bwfNk6xzHIqaQpuqaLiSK2', '2222', 'NOT_SET', '2021-04-17 15:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(150) DEFAULT 'NOT_SET',
  `phone` varchar(50) DEFAULT 'NOT_SET',
  `photo_url` varchar(200) DEFAULT 'NOT_SET',
  `password` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `email`, `name`, `phone`, `photo_url`, `password`, `created_at`) VALUES
(2, 'jokermr143@gmail.com', 'Mr J', '92821', 'NOT_SET', '$2a$10$jxWY27JxREj/bc.c5Az3n.m7oGquF6d9WUc8YJCghm3oZ8TvaQnc2', '2021-07-03 10:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `room_number` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `email`, `name`, `password`, `phone`, `photo_url`, `room_number`, `created_at`) VALUES
(1, 'jokermr143@gmail.com', 'Joker', '$2a$10$uBtxUji4kOvpFQK7uQ31Pe08lwhuDf2IS4qO8HyigtGB.p2vKZBoW', '939993', 'http:://', '27', '2021-05-22 17:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `publisher_id`, `title`, `description`, `created_at`) VALUES
(3, 2, 'Class WIll Start Form 20th feb', 'Class WIll Start Form 20th feb', '2021-07-02 17:07:44'),
(4, NULL, 'IUBAT and IRRI signed MoU for Academic Collaboration', 'IUBAT and IRRI signed MoU for Academic Collaboration', '2021-07-03 11:42:59'),
(5, NULL, 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', '2021-07-03 11:43:08'),
(6, NULL, 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', '2021-07-03 11:43:16'),
(7, NULL, 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', '2021-07-03 11:43:21'),
(8, NULL, 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', '2021-07-03 11:43:26'),
(9, NULL, 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', 'Covid-19 Vaccine Registration for Students (except those are already enlisted)', '2021-07-03 11:43:31'),
(10, NULL, 'Practicum Defense Schedule for BSCE program ( Spring 2021)', 'Practicum Defense Schedule for BSCE program ( Spring 2021)', '2021-07-03 11:47:32'),
(11, NULL, 'Practicum Defense Schedule for BSN program (Spring 2021)', 'Practicum Defense Schedule for BSN program (Spring 2021)', '2021-07-03 11:47:36'),
(12, NULL, 'Oral Part of Comprehensive Examination Schedule ( BSAg program- Summer 2021)', 'Oral Part of Comprehensive Examination Schedule ( BSAg program- Summer 2021)', '2021-07-03 11:47:42'),
(14, NULL, 'Practicum Student of Summer 2021', 'Confirm your internship organization detail information’s as following points:\n\nurl: https://forms.gle/CC96RbzYaL9S4ss29', '2021-07-03 11:47:53');

-- --------------------------------------------------------


--
-- Table structure for table `career_path`
--

CREATE TABLE `career_path` (
  `id` bigint(20) UNSIGNED NOT NULL, 
  `title` varchar(200) DEFAULT NULL, 
  `video_url` varchar(200) DEFAULT NULL, 
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `skill`
--

INSERT INTO `career_path` (
  `id`, `title`, `video_url`, `created_at`) VALUES
(1, 'Career Paths for Software Engineers', 'https://www.youtube.com/embed/oGy_uK6FrgE', '2021-07-08 18:24:37');


---
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_skill_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `op_1` varchar(200) DEFAULT NULL,
  `op_2` varchar(200) DEFAULT NULL,
  `op_3` varchar(200) DEFAULT NULL,
  `op_4` varchar(200) DEFAULT NULL,
  `ans` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `sub_skill_id`, `title`, `op_1`, `op_2`, `op_3`, `op_4`, `ans`, `created_at`) VALUES
(1, 2, 'Css 3 question?', 'option1', 'option2', 'option3', 'option4', 'option1', '2021-07-08 18:50:31'),
(2, 2, 'ans is 2nd option?', 'a', 'b', 'c', 'd', 'a', '2021-07-11 16:04:53'),
(3, 2, 'what is your name', 'name 1', 'name 2', 'name 3', 'name 4', 'name 2', '2021-07-26 07:40:48'),
(4, 5, 'what is useParam?', 'hook', 'function', 'nothing', 'don\'t know', 'hook', '2021-07-26 19:49:06'),
(5, 2, 'What is es6?', 'abc', 'def', 'ac', 'ader', 'abc', '2021-07-26 20:09:42'),
(6, 2, 'How to define function?', '1', '2', '3', '4', '3', '2021-07-26 20:10:43'),
(7, 17, 'what are the datatypes in javascript?', '1', '2', '3', '4', '1', '2021-07-26 20:12:20'),
(8, 17, 'how to create a link?', '1', '2', '3', '4', '2', '2021-07-26 20:12:36'),
(9, 17, 'how a link can be open in new tab?', '1', '2', '3', '4', '3', '2021-07-26 20:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `intro_url` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `title`, `intro_url`, `created_at`) VALUES
(2, 'Web dev', 'https://www.youtube.com/embed/VfGW0Qiy2I0', '2021-07-08 18:24:37'),
(3, 'React dev.', 'https://www.youtube.com/embed/zIx9kFXdwlc', '2021-07-08 00:41:37'),
(6, 'MERN Stack ', 'https://www.youtube.com/embed/PXqXOxr-LMg', '2021-07-26 20:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `present_address` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `parents_phone` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `email`, `present_address`, `name`, `is_verified`, `parents_phone`, `password`, `phone`, `photo_url`, `created_at`) VALUES
(1, '18103012', 'rijon@yahoo.com', 'comilla', 'rijon', 0, '523423', '$2a$10$ojPYrf/bQhjZpY1fdZU/xusqAmpuyQnev0ZsHhBzm2VpPFYQsVgUu', '234234234', 'asdfasdf', '2021-02-27 07:09:04'),
(4, '17303025', 'hashi@g.com', 'tongi', 'hashi', 0, '0184747', '$2a$10$REfSsCmFnTKlKZxi8uvSTOZbGJFQIN1/G/jdRf/1Khb.ZbjjU49Yi', '017394', 'NOT_SET', '2021-03-10 12:14:40'),
(6, '17303024', 'jokermr143@gmail.com', 'Uttara', 'Milon27', 0, '015', '$2a$10$zlmrKSk7piynmqj2KN0tiOoCCvFwzVAn4AXcEb57jTdxcPnFdZRu6', '0172', 'NOT_SET', '2021-03-14 17:20:21'),
(7, '17303028', 'test@iubat.edu', 'uttara', 'test', 0, '12345', '$2a$10$85U4XTYDvFFuknRIJiEoN.XVu0Z4AwpaN/h6S2HgE4jDbTXfUE6Fy', '123', 'NOT_SET', '2021-03-16 05:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_skill_list`
--

CREATE TABLE `student_skill_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) DEFAULT NULL,
  `sub_skill_ids` varchar(50) DEFAULT NULL,
  `stu_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_skill_list`
--

INSERT INTO `student_skill_list` (`id`, `skill_id`, `sub_skill_ids`, `stu_id`, `created_at`) VALUES
(3, 2, '[2]', '17303024', '2021-07-12 00:34:11'),
(4, 3, '[4,5,17]', '17303024', '2021-07-12 11:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `sub_skill`
--

CREATE TABLE `sub_skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `task` text,
  `pass_mark` double DEFAULT '80',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_skill`
--

INSERT INTO `sub_skill` (`id`, `skill_id`, `title`, `type`, `task`, `pass_mark`, `created_at`) VALUES
(1, 2, 'HTML 5', 'beginner', 'https://www.youtube.com/watch?v=-rmljpeKTAc and https://www.youtube.com/watch?v=-rmljpeKTAc', 75, '2021-07-08 18:45:57'),
(2, 2, 'css', 'beginner', 'watch this video.\r\nhttps://www.youtube.com/watch?v=qz0aGYrrlhU and https://www.youtube.com/watch?v=-rmljpeKTAc and https://www.youtube.com/watch?v=-rmljpeKTA and ', 80, '2021-07-08 18:46:29'),
(3, 2, 'js', 'intermidiate', 'watch this video.\nhttps://www.youtube.com/watch?v=qz0aGYrrlhU', 70, '2021-07-08 18:46:43'),
(5, 3, 'useParams', 'beginner', 'const {id}=useParam()', 90, '2021-07-26 18:39:35'),
(6, 3, 'wwwwwww1111', 'intermidiate', 'www', 22, '2021-07-26 06:41:43'),
(8, 3, 'hey hey react', 'advanced', 'learn this this', 75, '2021-07-26 19:52:34'),
(17, 3, 'milo', 'advanced', 'tht', 43, '2021-07-26 14:08:05'),
(18, 3, 'twse', 'beginner', 'ete', 90, '2021-07-26 20:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(200) DEFAULT NULL,
  `ticket_title` varchar(200) DEFAULT NULL,
  `ticket_dept` varchar(200) DEFAULT NULL,
  `assigned_user_id` varchar(200) DEFAULT 'NOT_SET',
  `ticket_state` varchar(100) DEFAULT 'pending',
  `reschedule_reason` varchar(200) DEFAULT 'NOT_SET',
  `reschedule_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `student_id`, `ticket_title`, `ticket_dept`, `assigned_user_id`, `ticket_state`, `reschedule_reason`, `reschedule_date`, `created_at`) VALUES
(2, '17303024', 'ticket one', 'CSE_AO', '1', 'processing', 'NOT_SET', '2021-04-12 12:07:25', '2021-04-12 12:07:25'),
(3, '17303024', 'test', 'CSE_AO', 'NOT_SET', 'pending', 'NOT_SET', '2021-04-12 12:10:11', '2021-04-12 12:10:11'),
(4, '17303024', '3rd', 'CSE_AO', '2', 'completed', 'NOT_SET', '2021-01-11 18:00:00', '2021-04-12 12:13:00'),
(5, '17303024', 'new ticket', 'CSE_AO', '2', 'processing', 'NOT_SET', '2021-01-11 18:00:00', '2021-04-19 07:10:13'),
(6, '17303024', 'test new ticket', 'CSE_AO', '2', 'processing', 'NOT_SET', '2021-04-19 07:13:24', '2021-04-19 07:13:24'),
(7, '17303024', 'course offer problem', 'CSE_AO', '2', 'snoozed', '5 trikh e asho.', '2021-08-04 18:00:00', '2021-07-30 16:11:19'),
(8, '17303024', 'Need to talk to Co-ordinator Sir', 'CSE_AO', 'NOT_SET', 'pending', 'NOT_SET', '2021-08-14 11:38:13', '2021-08-14 11:38:13'),
(9, '17303024', 'I need help 1', 'CSE_AO', 'NOT_SET', 'pending', 'NOT_SET', '2021-08-14 11:40:26', '2021-08-14 11:40:26'),
(10, '17303024', 'i want to take course csc 445', 'CSE_AO', 'NOT_SET', 'pending', 'NOT_SET', '2021-08-14 12:03:38', '2021-08-14 12:03:38'),
(11, '17303024', 'I need the number of chairman sir?', 'CSE_AO', 'NOT_SET', 'pending', 'NOT_SET', '2021-08-14 12:04:00', '2021-08-14 12:04:00'),
(12, '17303024', 'what are the course i can take in the next semester?', 'CSE_AO', 'NOT_SET', 'pending', 'NOT_SET', '2021-08-14 12:05:19', '2021-08-13 12:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_chat`
--

CREATE TABLE `ticket_chat` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(200) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT 'NOT_SET',
  `sender_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_chat`
--

INSERT INTO `ticket_chat` (`id`, `ticket_id`, `message`, `img_url`, `sender_id`, `created_at`) VALUES
(53, '4', 'fff', 'NOT_SET', '17303024', '2021-04-16 13:59:11'),
(54, '4', 'ok', 'NOT_SET', '17303024', '2021-04-16 14:00:53'),
(55, '4', 'hey man', 'NOT_SET', '17303024', '2021-04-16 14:06:52'),
(56, '4', 'yes tell me', 'NOT_SET', '2', '2021-04-16 14:12:19'),
(57, '4', 'whats going on', 'NOT_SET', '17303024', '2021-04-16 14:12:34'),
(58, '4', 'cool', 'NOT_SET', '2', '2021-04-16 14:12:40'),
(59, '4', 'ok bye', 'NOT_SET', '17303024', '2021-04-16 14:12:49'),
(60, '4', 'hey bro', 'NOT_SET', '17303024', '2021-04-18 19:59:16'),
(61, '4', 'hi2', 'NOT_SET', '17303024', '2021-04-18 20:01:04'),
(62, '4', 'i', 'NOT_SET', '17303024', '2021-04-18 20:01:20'),
(63, '4', 'hwo are', 'NOT_SET', '17303024', '2021-04-18 20:01:23'),
(64, '4', 'hey man', 'NOT_SET', '2', '2021-04-18 20:35:14'),
(65, '4', 'hi bro', 'NOT_SET', '2', '2021-04-18 20:35:19'),
(66, '4', 'yeah i am here', 'NOT_SET', '17303024', '2021-04-18 20:35:25'),
(67, '4', 'how is gooing', 'NOT_SET', '17303024', '2021-04-18 20:35:31'),
(68, '4', 'all good?', 'NOT_SET', '17303024', '2021-04-18 20:35:34'),
(69, '4', 'hi', 'NOT_SET', '17303024', '2021-04-18 20:38:51'),
(70, '4', 'hey', 'NOT_SET', '2', '2021-04-18 20:38:55'),
(71, '4', 'ok good now', 'NOT_SET', '2', '2021-04-18 20:38:59'),
(72, '4', 'ok', 'NOT_SET', '2', '2021-04-18 20:39:07'),
(73, '5', 'this is a new one. bro', 'NOT_SET', '17303024', '2021-04-19 07:10:13'),
(74, '5', 'ok tell me?', 'NOT_SET', '17303024', '2021-04-19 07:11:36'),
(75, '5', 'yeah  man', 'NOT_SET', '2', '2021-04-19 07:12:36'),
(76, '5', 'how is life?', 'NOT_SET', '2', '2021-04-19 07:12:43'),
(77, '5', 'all good bro', 'NOT_SET', '17303024', '2021-04-19 07:12:48'),
(78, '6', 'this is brand new', 'NOT_SET', '17303024', '2021-04-19 07:13:24'),
(79, '6', 'ok cool', 'NOT_SET', '2', '2021-04-19 07:13:56'),
(80, '7', 'fhekfe', 'NOT_SET', '17303024', '2021-07-30 16:11:19'),
(81, '8', 'I have a problem, i need to talk to Co-ordinator Sir, may i get an appointment. ', 'NOT_SET', '17303024', '2021-08-14 11:38:13'),
(82, '9', 'heep need.', 'NOT_SET', '17303024', '2021-08-14 11:40:26'),
(83, '10', 'i want to take course csc 445, how to do that?', 'NOT_SET', '17303024', '2021-08-14 12:03:38'),
(84, '11', 'I need the number of chairman sir?', 'NOT_SET', '17303024', '2021-08-14 12:04:00'),
(85, '12', 'what are the course i can take in the next semester?', 'NOT_SET', '17303024', '2021-08-14 12:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `is_done` tinyint(4) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  `dead_line` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `title`, `is_done`, `feedback`, `dead_line`, `created_at`) VALUES
(1, 6, 'work on blog site', 1, '', '2021-04-04 18:00:00', '2021-03-31 20:16:44'),
(2, 6, 'create task manager android app', 1, '', '2021-04-26 18:00:00', '2021-03-31 20:17:55'),
(3, 6, 'this one will be completed', 1, 'Great Work', '2021-04-05 18:00:00', '2021-03-31 20:48:14'),
(4, 6, 'need to do a lot of things within next 7 days. i don\'t know what to do bla bla bla', 1, 'nice', '2021-07-14 18:00:00', '2021-07-02 17:20:06'),
(9, 6, 'asssignmetns ', 1, '', '2021-08-02 18:00:00', '2021-07-30 16:13:48'),
(10, 6, 'Complete Practicum Report ', 0, NULL, '2021-09-14 18:00:00', '2021-08-14 11:36:38'),
(11, 6, 'Watch Scrum Video', 0, NULL, '2021-09-13 18:00:00', '2021-08-14 11:37:11'),
(12, 6, 'Do course offering.', 0, NULL, '2021-09-09 18:00:00', '2021-08-14 12:06:30'),
(13, 6, 'watch git workflow', 0, NULL, '2021-09-14 18:00:00', '2021-08-14 12:07:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ao`
--
ALTER TABLE `ao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--

-- Indexes for table `career_path`
--
ALTER TABLE `career_path`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_skill_list`
--
ALTER TABLE `student_skill_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_skill`
--
ALTER TABLE `sub_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`,`assigned_user_id`);

--
-- Indexes for table `ticket_chat`
--
ALTER TABLE `ticket_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ao`
--
ALTER TABLE `ao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_skill_list`
--
ALTER TABLE `student_skill_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_skill`
--
ALTER TABLE `sub_skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ticket_chat`
--
ALTER TABLE `ticket_chat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
