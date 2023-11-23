-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 06:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wa-bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `grp_list`
--

CREATE TABLE `grp_list` (
  `id` int(11) NOT NULL,
  `grpid` varchar(50) NOT NULL,
  `grpnm` varchar(200) NOT NULL,
  `tag` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecture_shedule`
--

CREATE TABLE `lecture_shedule` (
  `id` int(11) NOT NULL,
  `courseid` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` int(4) NOT NULL,
  `sem` int(1) NOT NULL,
  `link` varchar(200) NOT NULL,
  `meetingid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `shedule` time NOT NULL,
  `rundate` varchar(50) NOT NULL,
  `course` varchar(3) NOT NULL,
  `held` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grp_list`
--
ALTER TABLE `grp_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_shedule`
--
ALTER TABLE `lecture_shedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grp_list`
--
ALTER TABLE `grp_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lecture_shedule`
--
ALTER TABLE `lecture_shedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
