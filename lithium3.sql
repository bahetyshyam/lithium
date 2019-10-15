-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 08:18 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lithium`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobile_category`
--

CREATE TABLE `mobile_category` (
  `mobile_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_category`
--

INSERT INTO `mobile_category` (`mobile_id`, `category_id`) VALUES
(1, 3),
(2, 2),
(2, 1),
(3, 2),
(3, 1),
(6, 3),
(7, 1),
(13, 4),
(13, 2),
(12, 2),
(4, 1),
(5, 3),
(10, 4),
(8, 2),
(8, 1),
(9, 3),
(16, 4),
(14, 4),
(15, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobile_category`
--
ALTER TABLE `mobile_category`
  ADD KEY `category_id` (`category_id`),
  ADD KEY `mobile_id` (`mobile_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobile_category`
--
ALTER TABLE `mobile_category`
  ADD CONSTRAINT `mobile_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `mobile_category_ibfk_2` FOREIGN KEY (`mobile_id`) REFERENCES `mobile` (`mobile_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
