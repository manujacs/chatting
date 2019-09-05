-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2019 at 07:38 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE IF NOT EXISTS `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 4, 'Hi john', '2019-09-05 05:02:31', 1),
(2, 0, 4, 'Hello', '2019-09-05 05:09:02', 1),
(3, 2, 4, 'Hi Kavya How are you', '2019-09-05 05:13:03', 1),
(4, 3, 4, 'Hi Sachin', '2019-09-05 05:14:36', 1),
(5, 5, 4, 'Hi avi wru', '2019-09-05 05:15:27', 0),
(6, 4, 5, 'In home You??😃', '2019-09-05 05:17:31', 1),
(7, 1, 5, 'Hi\n', '2019-09-05 05:26:20', 1),
(8, 1, 5, 'Hi\n', '2019-09-05 05:26:21', 1),
(9, 1, 5, 'Hi\n', '2019-09-05 05:26:22', 1),
(10, 1, 5, 'Hi\n', '2019-09-05 05:26:22', 1),
(11, 4, 5, 'COming to city', '2019-09-05 05:26:49', 1),
(12, 5, 6, 'Whrer are you', '2019-09-05 05:35:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `username`, `email`, `password`, `mobile`) VALUES
(1, '', 'Manu', '', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396', ''),
(2, '', 'KavyaMurthy', '', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396', ''),
(3, '', 'Sachin', '', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396', ''),
(4, '', 'gururaj', '', '$2y$10$wbQtS0njZVdJ3cJrJZyQdOQZR8wyX4Nx8uxxo283GeGs7Ed8pnWA.', ''),
(5, '', 'avinash', '', '$2y$10$Dj9qT4AZgpHJ9q.Bc56xyuufOd1wZz6.F9F9QUPmLJUlqQEsIoBKa', ''),
(6, '', 'adarsh', '', '$2y$10$2MmDLB/YBD5wCrqcDwLeeubF2bhyCLt72a/OoZwuRkmWPo4wloUqm', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE IF NOT EXISTS `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 4, '2019-09-05 05:02:37', 'no'),
(2, 4, '2019-09-05 05:14:41', 'no'),
(3, 4, '2019-09-05 05:15:27', 'no'),
(4, 5, '2019-09-05 05:27:03', 'no'),
(5, 6, '2019-09-05 05:35:12', 'no'),
(6, 5, '2019-09-05 05:35:26', 'no'),
(7, 4, '2019-09-05 05:37:05', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
