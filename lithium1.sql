-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2019 at 01:19 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

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
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(5) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `brand_logo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_logo`) VALUES
(1, 'Apple', 'assets/images/logo/apple.jpg'),
(2, 'OnePlus', 'assets/images/logo/oneplus.jpg'),
(3, 'Asus', 'assets/images/logo/asus.jpg'),
(4, 'Google', 'assets/images/logo/google.jpg'),
(5, 'Samsung', 'assets/images/logo/samsung.jpg'),
(6, 'Xiaomi', 'assets/images/logo/xiaomi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(5) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Flagship Smartphones');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `mobile_id` int(5) NOT NULL,
  `mobile_name` varchar(30) NOT NULL,
  `mobile_picture` varchar(500) NOT NULL,
  `brand_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobile_id`, `mobile_name`, `mobile_picture`, `brand_id`) VALUES
(1, 'Apple iPhone 11', 'assets/images/mobile/iphone11.jpeg', 1),
(2, 'Apple iPhone 11 Pro', 'assets/images/mobile/iphone11pro.jpeg', 1),
(3, 'Apple iPhone 11 Pro Max', 'assets/images/mobile/iphone11promax.jpeg', 1),
(4, 'OnePlus 7 Pro', 'assets/images/mobile/oneplus7pro.jpg', 2),
(5, 'OnePlus 7T', 'assets/images/mobile/oneplus7t.jpg\r\n', 2),
(6, 'Asus 6Z', 'assets/images/mobile/asus6z.jpg', 3),
(7, 'Asus ROG Phone II', 'assets/images/mobile/asusrogphone2.jpg', 3),
(8, 'Samsung Galaxy Note 10+', 'assets/images/mobile/galaxynote10+.jpg', 5),
(9, 'Samsung Galaxy S10e', 'assets/images/mobile/galaxys10e.jpg', 5),
(10, 'Samsung Galaxy A50', 'assets/images/mobile/galaxya50.jpg', 5),
(11, 'Asus Zenfone Max M2', 'assets/images/mobile/asuszenfonemaxm2.jpg', 3),
(12, 'Google Pixel 3XL', 'assets/images/mobile/pixel3xl.jpg', 4),
(13, 'Google Pixel 3a', 'assets/images/mobile/pixel3a.jpg', 4),
(14, 'Xiaomi Redmi K20', 'assets/images/mobile/redmik20.jpg', 6),
(15, 'Xiaomi Redmi Note 7 Pro', 'assets/images/mobile/redminote7pro.jpg', 6),
(16, 'Xiaomi Redmi 8A', 'assets/images/mobile/redmi8a.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_category`
--

CREATE TABLE `mobile_category` (
  `mobile_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`mobile_id`),
  ADD KEY `brand_id` (`brand_id`);

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
-- Constraints for table `mobile`
--
ALTER TABLE `mobile`
  ADD CONSTRAINT `mobile_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`);

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
