-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 07:15 PM
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
  `category_name` varchar(30) NOT NULL,
  `category_photo` varchar(500) NOT NULL,
  `category_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_photo`, `category_desc`) VALUES
(1, 'Flagship Smartphones', 'assets/images/category/flagship.jpg', 'The absolute best of the best. Get your hands-on the industry leading specifications and designs.\r\nGet the latest of SOC, AMOLED displays'),
(2, 'Camera-centric Smartphones', 'assets/images/category/photography.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus, erat et dignissim finibus, ipsum nisl dictum lacus, vitae tincidunt odio mi vitae arcu. Nunc metus nisl, viverra quis arcu eget, blandit gravida nulla. Maecenas ornare nec turpis id sollicitudin. Mauris posuere facilisis turpis vitae tempus. Donec sit amet congue sem. Nam imperdiet, nibh vel egestas molestie, nulla mi pretium est, quis mattis libero leo id orci. Praesent gravida neque ac fermentum pulvinar. In cursus interdum lacus ut fermentum. Duis rutrum a erat sit amet pharetra. Cras id interdum elit, vel rutrum magna. Etiam vestibulum luctus sem, ac feugiat ex pretium vitae. Etiam ut nisi vitae dolor interdum finibus. Proin pharetra mi ornare tortor tincidunt vehicula sed et tellus. Sed vitae pretium urna.'),
(3, 'Mid-Range Smartphones', 'assets/images/category/midrange.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus, erat et dignissim finibus, ipsum nisl dictum lacus, vitae tincidunt odio mi vitae arcu. Nunc metus nisl, viverra quis arcu eget, blandit gravida nulla. Maecenas ornare nec turpis id sollicitudin. Mauris posuere facilisis turpis vitae tempus. Donec sit amet congue sem. Nam imperdiet, nibh vel egestas molestie, nulla mi pretium est, quis mattis libero leo id orci. Praesent gravida neque ac fermentum pulvinar. In cursus interdum lacus ut fermentum. Duis rutrum a erat sit amet pharetra. Cras id interdum elit, vel rutrum magna. Etiam vestibulum luctus sem, ac feugiat ex pretium vitae. Etiam ut nisi vitae dolor interdum finibus. Proin pharetra mi ornare tortor tincidunt vehicula sed et tellus. Sed vitae pretium urna.'),
(4, 'Budget Smartphones', 'assets/images/category/budget.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus, erat et dignissim finibus, ipsum nisl dictum lacus, vitae tincidunt odio mi vitae arcu. Nunc metus nisl, viverra quis arcu eget, blandit gravida nulla. Maecenas ornare nec turpis id sollicitudin. Mauris posuere facilisis turpis vitae tempus. Donec sit amet congue sem. Nam imperdiet, nibh vel egestas molestie, nulla mi pretium est, quis mattis libero leo id orci. Praesent gravida neque ac fermentum pulvinar. In cursus interdum lacus ut fermentum. Duis rutrum a erat sit amet pharetra. Cras id interdum elit, vel rutrum magna. Etiam vestibulum luctus sem, ac feugiat ex pretium vitae. Etiam ut nisi vitae dolor interdum finibus. Proin pharetra mi ornare tortor tincidunt vehicula sed et tellus. Sed vitae pretium urna.');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `mobile_id` int(5) NOT NULL,
  `mobile_name` varchar(30) NOT NULL,
  `mobile_picture` varchar(500) NOT NULL,
  `brand_id` int(5) NOT NULL,
  `mobile_soc` varchar(50) NOT NULL,
  `mobile_display` varchar(300) NOT NULL,
  `mobile_camera` varchar(100) NOT NULL,
  `mobile_battery` varchar(20) NOT NULL,
  `mobile_amazon` varchar(500) NOT NULL,
  `mobile_flipkart` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobile_id`, `mobile_name`, `mobile_picture`, `brand_id`, `mobile_soc`, `mobile_display`, `mobile_camera`, `mobile_battery`, `mobile_amazon`, `mobile_flipkart`) VALUES
(1, 'Apple iPhone 11', 'assets/images/mobile/iphone11.jpg', 1, 'Apple A13 Bionic', 'Liquid Retina IPS LCD capacitive touchscreen, 6.1 in, 828 x 1792 pixels, 19.5:9 ratio (~326 ppi)', '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.4, 13mm (ultrawide)', '3110 mAh', 'https://www.amazon.in/Apple-iPhone-11-128GB-Purple/dp/B07XVLN7HH/ref=sr_1_1_sspa?keywords=iphone+11&qid=1570554390&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUDNPU0dKTFhMTVomZW5jcnlwdGVkSWQ9QTAxMzk3MTMyMDVEM0wwMURZNFZDJmVuY3J5cHRlZEFkSWQ9QTA0ODE0OTgyRksxUjVINFJETVVOJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'https://www.flipkart.com/apple-iphone-11-purple-128-gb/p/itm015ca57e6c86a?pid=MOBFKCTSR5UEP9FY&srno=s_1_1&otracker=search&otracker1=search&lid=LSTMOBFKCTSR5UEP9FYU3KWO0&fm=SEARCH&iid=da87f51d-eb16-4661-858f-fa13cfbb06fc.MOBFKCTSR5UEP9FY.SEARCH&ppt=sp&ppn=sp&ssid=9bszjhpufk0000001570554390947&qH=f6cdfdaa9f3c23f3'),
(2, 'Apple iPhone 11 Pro', 'assets/images/mobile/iphone11pro.jpg', 1, '', '', '', '', '', ''),
(3, 'Apple iPhone 11 Pro Max', 'assets/images/mobile/iphone11promax.jpg', 1, '', '', '', '', '', ''),
(4, 'OnePlus 7 Pro', 'assets/images/mobile/oneplus7pro.jpg', 2, '', '', '', '', '', ''),
(5, 'OnePlus 7T', 'assets/images/mobile/oneplus7t.jpg\r\n', 2, '', '', '', '', '', ''),
(6, 'Asus 6Z', 'assets/images/mobile/asus6z.jpg', 3, '', '', '', '', '', ''),
(7, 'Asus ROG Phone II', 'assets/images/mobile/asusrogphone2.jpg', 3, '', '', '', '', '', ''),
(8, 'Samsung Galaxy Note 10+', 'assets/images/mobile/galaxynote10+.jpg', 5, '', '', '', '', '', ''),
(9, 'Samsung Galaxy S10e', 'assets/images/mobile/galaxys10e.jpg', 5, '', '', '', '', '', ''),
(10, 'Samsung Galaxy A50', 'assets/images/mobile/galaxya50.jpg', 5, '', '', '', '', '', ''),
(11, 'Asus Zenfone Max M2', 'assets/images/mobile/asuszenfonemaxm2.jpg', 3, '', '', '', '', '', ''),
(12, 'Google Pixel 3XL', 'assets/images/mobile/pixel3xl.jpg', 4, 'Qualcomm SDM845 Snapdragon 845 (10 nm)', 'P-OLED capacitive touchscreen, 6.3 inches, 1440 x 2960 pixels, 18.5:9 ratio (~523 ppi)', '12.2 MP, f/1.8, 28mm (wide)', '3430 mAh', '', 'https://www.flipkart.com/google-pixel-3-xl-clearly-white-64-gb/p/itmfefgvxq82gm5g?pid=MOBF9GAPG9RWM3XH&srno=s_1_7&otracker=search&otracker1=search&lid=LSTMOBF9GAPG9RWM3XHN7XMPC&fm=SEARCH&iid=864b9aeb-4ea6-491e-9945-fca1c96004ea.MOBF9GAPG9RWM3XH.SEARCH&ppt=sp&ppn=sp&ssid=05uh2ruvls0000001570554218281&qH=4a0b855e623e873a'),
(13, 'Google Pixel 3a', 'assets/images/mobile/pixel3a.jpg', 4, '', '', '', '', '', ''),
(14, 'Xiaomi Redmi K20', 'assets/images/mobile/redmik20.jpg', 6, '', '', '', '', '', ''),
(15, 'Xiaomi Redmi Note 7 Pro', 'assets/images/mobile/redminote7pro.jpg', 6, '', '', '', '', '', ''),
(16, 'Xiaomi Redmi 8A', 'assets/images/mobile/redmi8a.jpg', 6, '', '', '', '', '', '');

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
