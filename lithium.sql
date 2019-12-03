-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 01:04 PM
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
(1, 'Flagship Smartphones', 'assets/images/category/flagship.jpg', 'The absolute best of the best! Get your hands on the bleeding edge of technology that fits in your pocket, with gorgeous higher refresh rate AMOLED displays, top of the line performance. When the amount of money you spend on a smartphone is immaterial, this is the right place to shop.'),
(2, 'Camera-centric Smartphones', 'assets/images/category/photography.jpg', 'A Smartphone that doubles as a camera, ‘cause the best camera is the one in your pocket. The perfect fit for aspiring & professional photographers, cinematographers. Discover the prowess of the cameras on the back of your smartphone to capture the streets at golden hour, create stunning documentaries & a lot more.\r\n'),
(3, 'Mid-Range Smartphones', 'assets/images/category/midrange.jpg', 'The smartphone that only retain what\'s essential for you, still being a worthy competitor against the flagship smartphones. If value to performace ratio is what matters to you, you\'re shopping in the right section.'),
(4, 'Budget Smartphones', 'assets/images/category/budget.jpg', 'Smartphones that go easy on your pocket, when value matters more than features. Provides you with the bare minimum, helping you out with the essential routine tasks that are to be carried out. ');

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
  `mobile_flipkart` varchar(500) NOT NULL,
  `mobile_review` varchar(500) NOT NULL,
  `mobile_pros` varchar(1000) NOT NULL,
  `mobile_cons` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobile_id`, `mobile_name`, `mobile_picture`, `brand_id`, `mobile_soc`, `mobile_display`, `mobile_camera`, `mobile_battery`, `mobile_amazon`, `mobile_flipkart`, `mobile_review`, `mobile_pros`, `mobile_cons`) VALUES
(1, 'Apple iPhone 11', 'assets/images/mobile/iphone11.jpg', 1, 'Apple A13 Bionic', 'Liquid Retina IPS LCD capacitive touchscreen, 6.1 in, 828 x 1792 pixels, 19.5:9 ratio (~326 ppi)', '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.4, 13mm (ultrawide)', '3110 mAh', 'https://www.amazon.in/Apple-iPhone-11-128GB-Purple/dp/B07XVLN7HH/ref=sr_1_1_sspa?keywords=iphone+11&qid=1570554390&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUDNPU0dKTFhMTVomZW5jcnlwdGVkSWQ9QTAxMzk3MTMyMDVEM0wwMURZNFZDJmVuY3J5cHRlZEFkSWQ9QTA0ODE0OTgyRksxUjVINFJETVVOJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'https://www.flipkart.com/apple-iphone-11-purple-128-gb/p/itm015ca57e6c86a?pid=MOBFKCTSR5UEP9FY&srno=s_1_1&otracker=search&otracker1=search&lid=LSTMOBFKCTSR5UEP9FYU3KWO0&fm=SEARCH&iid=da87f51d-eb16-4661-858f-fa13cfbb06fc.MOBFKCTSR5UEP9FY.SEARCH&ppt=sp&ppn=sp&ssid=9bszjhpufk0000001570554390947&qH=f6cdfdaa9f3c23f3', 'https://www.youtube.com/embed/De1I1XCa3V4', 'Decent Price, Solid Battery Life, Great Camera, Top of the line Performance', 'LCD Display isn\'t as good as the Pro version\'s AMOLED counterparts, Fast Charger is not included '),
(2, 'Apple iPhone 11 Pro', 'assets/images/mobile/iphone11pro.jpg', 1, 'Apple A13 Bionic', 'Super Retina XDR OLED capacitive touchscreen, 5.8 in, 1125 x 2436 pixels, 19.5:9 ratio (~458 ppi)', '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.0, 52mm (telephoto), 12 MP, f/2.4, 13mm (ultrawide)', '3046 mAh', 'https://www.amazon.in/Apple-iPhone-Pro-Max-64GB/dp/B07XVM1JFV/ref=sr_1_2_sspa?keywords=iphone+11+pro&qid=1570593857&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyQzhTUFg1TFQwNVRaJmVuY3J5cHRlZElkPUEwNzY5MTE3MVo1V1g1M1BDUVQ5OCZlbmNyeXB0ZWRBZElkPUEwMjc0NzY1QkRWOUc0QTdOTVkxJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', 'https://www.flipkart.com/apple-iphone-11-pro-midnight-green-64-gb/p/itm471de0d2e8474?pid=MOBFKCTSN3TG3RFJ&srno=s_1_4&otracker=search&lid=LSTMOBFKCTSN3TG3RFJWPVPDJ&fm=organic&iid=30a3255a-a86e-45e7-9d1f-17171c0fbfe3.MOBFKCTSN3TG3RFJ.SEARCH&ssid=dv2f8gj73k0000001570593851703&qH=2af92350bd5b683b', 'https://www.youtube.com/embed/DyX-QZZBgpw', 'Great Display, Solid Battery Life, Stellar Camera, Top of the line performance', 'Pricey, Only provides 64GB as base storage'),
(3, 'Apple iPhone 11 Pro Max', 'assets/images/mobile/iphone11promax.jpg', 1, 'Apple A13 Bionic', 'Super Retina XDR OLED capacitive touchscreen, 6.5 in, 1242 x 2688 pixels, 19.5:9 ratio (~458 ppi)', '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.0, 52mm (telephoto), 12 MP, f/2.4, 13mm (ultrawide)', '3969 mAh', 'https://www.amazon.in/Apple-iPhone-Pro-Max-64GB/dp/B07XVL4L3X/ref=sr_1_2_sspa?keywords=iphone+11+pro+max&qid=1570900517&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFGOTFEWVk0RUZRSEwmZW5jcnlwdGVkSWQ9QTA0NTYxNjgySVYzMEg5MEhWUFE5JmVuY3J5cHRlZEFkSWQ9QTAyNzQ4MjFXNzNMV0MyTUlaOUMmd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl', 'https://www.flipkart.com/apple-iphone-11-pro-max-space-grey-64-gb/p/itme0101031155f8?pid=MOBFKCTSKDMKCGQS&srno=s_1_7&otracker=search&otracker1=search&lid=LSTMOBFKCTSKDMKCGQSD5DKJQ&fm=SEARCH&iid=b2052e6f-643d-45fd-a1e2-8a7d54a90fb2.MOBFKCTSKDMKCGQS.SEARCH&ppt=sp&ppn=sp&ssid=9y5dyenmww0000001570900478980&qH=cccf07e7703b4b59', 'https://www.youtube.com/embed/JlyPE_tF3R0', 'Stellar display, Top of the line performance, Solid Battery Life, Amazing Camera array', 'Pricey, Only provides 64GB as base storage, A big phone for a lot of people '),
(4, 'OnePlus 7 Pro', 'assets/images/mobile/oneplus7pro.jpg', 2, 'Qualcomm SDM855 Snapdragon 855 (7 nm)', 'Fluid AMOLED capacitive touchscreen, 6.67 in, 1440 x 3120 pixels, 19.5:9 ratio (~516 ppi)', '48 MP, f/1.6, (wide), 8 MP, f/2.4, 78mm (telephoto), 16 MP, f/2.2, 13mm (ultrawide)', '4000 mAh', 'https://www.amazon.in/Test-Exclusive-603/dp/B07HG8SBDV/ref=sr_1_2?keywords=7+pro&qid=1570898705&smid=A35FCS7U51TK3C&sr=8-2', '', 'https://www.youtube.com/embed/z8AdxtkkQDo', 'Fluid 90Hz AMOLED display, In-Display FingerPrint scanner, Stellar Performance', 'Mediocre Camera array, Pricey, No IP water resistance'),
(5, 'OnePlus 7T', 'assets/images/mobile/oneplus7t.jpg\r\n', 2, 'Qualcomm SDM855 Snapdragon 855+ (7 nm)', 'Fluid AMOLED capacitive touchscreen, 6.55 in, 1080 x 2400 pixels, 20:9 ratio (~402 ppi)', '48 MP, f/1.6, 26mm (wide), 12 MP, f/2.2, 51mm (telephoto), 16 MP, f/2.2, 17mm (ultrawide)', '3800 mAh', 'https://www.amazon.in/Test-Exclusive-747/dp/B07DJCVTDN/ref=sr_1_2?keywords=7t&qid=1570898999&smid=A23AODI1X2CEAE&sr=8-2', '', 'https://www.youtube.com/embed/Ed2IF3jj-rE', 'Value for money, Fluid AMOLED 60Hz display, Stellar Performance, Frequent Android Updates with Oxygen OS', 'Mediocre Camera Array, Mediocre Battery Life, No IP water resistance'),
(6, 'Asus 6Z', 'assets/images/mobile/asus6z.jpg', 3, 'Qualcomm SDM855 Snapdragon 855 (7 nm)', 'IPS LCD capacitive touchscreen, 6.4 in, 1080 x 2340 pixels, 19.5:9 ratio (~403 ppi)', '48 MP, f/1.8, 26mm (wide), 13 MP, f/2.4, 11mm (ultrawide)', '5000 mAh', '', 'https://www.flipkart.com/asus-6z-silver-64-gb/p/itmfg5hgnxdyhhtj?pid=MOBFG5HFHZFBYSTB&srno=s_1_1&otracker=search&otracker1=search&lid=LSTMOBFG5HFHZFBYSTBTCTCNK&fm=SEARCH&iid=0d8b20fd-e7b5-49b4-a5eb-5debb3c1bf93.MOBFG5HFHZFBYSTB.SEARCH&ppt=sp&ppn=sp&ssid=hs7r14w1n40000001570899121109&qH=f10208bd289ca678', 'https://www.youtube.com/embed/desL7v-gBUk', 'Value for Money, Bezeless display, Stock Android OS, Solid Battery Lufe', 'After Sales Support is mediocre, Durability of the FLip-Up camera array'),
(7, 'Asus ROG Phone II', 'assets/images/mobile/asusrogphone2.jpg', 3, 'Qualcomm SDM855 Snapdragon 855+ (7 nm)', 'AMOLED capacitive touchscreen, 6.59 in, 1080 x 2340 pixels, 19.5:9 ratio (~391 ppi)', '48 MP, f/1.8, 26mm (wide), 13 MP, f/2.4, 11mm (ultrawide)', '6000 mAh', '', 'https://www.flipkart.com/asus-rog-phone-ii-black-128-gb/p/itm99be8e028a908?pid=MOBFK5TPW6UFVZGR&srno=s_1_1&otracker=search&otracker1=search&lid=LSTMOBFK5TPW6UFVZGRIIBD2S&fm=SEARCH&iid=03e0210a-73b9-4e0b-991d-07025318da60.MOBFK5TPW6UFVZGR.SEARCH&ppt=sp&ppn=sp&ssid=99lldrz0w00000001570899235683&qH=d64e66dd01753c29', 'https://www.youtube.com/embed/-Wwe5OW_jPE', 'Fluid 120Hz ANOLED display, Stellar Performance, Stock Android OS, Value for Money, Solid Battery Life, Front Stereo Speakers', 'Bulky in the hand, Mediocre Camera array, No IP water resistance'),
(8, 'Samsung Galaxy Note 10+', 'assets/images/mobile/galaxynote10+.jpg', 5, 'Qualcomm SDM855 Snapdragon 855 (7 nm)', 'Dynamic AMOLED capacitive touchscreen, 6.8 in, 1440 x 3040 pixels, 19:9 ratio (~498 ppi)', '12 MP, f/1.5-2.4, 27mm (wide), 12 MP, f/2.1, 52mm (telephoto), 16 MP, f/2.2, 12mm (ultrawide)', '4300 mAh', 'https://www.amazon.in/Samsung-Galaxy-Storage-Additional-Exchange/dp/B07PSHNKP6/ref=sr_1_3?keywords=note+10+plus&qid=1570899413&smid=A14CZOWI0VEHLG&sr=8-3', 'https://www.flipkart.com/samsung-galaxy-note-10-plus-aura-white-256-gb/p/itm79be235e2a592?pid=MOBFJFWV34VTRDGQ&lid=LSTMOBFJFWV34VTRDGQKO26FF&marketplace=FLIPKART&srno=s_1_7&otracker=search&otracker1=search&fm=SEARCH&iid=320fd523-818e-481d-bff2-9e06e0f17674.MOBFJFWV34VTRDGQ.SEARCH&ppt=sp&ppn=sp&qH=1aa07f13473cfee4', 'https://www.youtube.com/embed/NXN6ejswSR8', 'Excellent Build quality, S-Pen, Stellar Display, Top of the line Performance, Solid Battery Life', 'Pricey'),
(9, 'Samsung Galaxy S10e', 'assets/images/mobile/galaxys10e.jpg', 5, 'Qualcomm SDM855 Snapdragon 855 (7 nm)', 'Dynamic AMOLED capacitive touchscreen, 5.8 in, 1080 x 2280 pixels, 19:9 ratio (~438 ppi)', '12 MP, f/1.5-2.4, 26mm (wide), 16 MP, f/2.2, 12mm (ultrawide)', '3100 mAh', 'https://www.amazon.in/Samsung-Galaxy-SM-G970-Canary-Yellow/dp/B07P57DS41/ref=sr_1_13?keywords=s10e&qid=1570899537&sr=8-13', 'https://www.flipkart.com/samsung-galaxy-s10e-prism-white-128-gb/p/itmfdyp6zwrhdygn?pid=MOBFDNHAFPNTTYBD&srno=s_1_2&otracker=search&otracker1=search&lid=LSTMOBFDNHAFPNTTYBDORQX2Q&fm=SEARCH&iid=3ed5d254-649a-4d26-862e-81fa135252b4.MOBFDNHAFPNTTYBD.SEARCH&ppt=sp&ppn=sp&ssid=pehv35zsjk0000001570899525360&qH=294343d20e7dd9ab', 'https://www.youtube.com/embed/BEY8saQjboM', 'Extremely fast fingerprint sensor, Value for money, Color options to choose from', 'Mediocre battery life, Full HD+ dispay instead of a Quad HD display'),
(10, 'Samsung Galaxy A50', 'assets/images/mobile/galaxya50.jpg', 5, 'Exynos 9610 (10nm)', 'Super AMOLED capacitive touchscreen, 6.4 in, 1080 x 2340 pixels, 19.5:9 ratio (~403 ppi)', '25 MP, f/1.7, 26mm (wide), 8 MP, f/2.2, 13mm (ultrawide)', '4000 mAh', 'https://www.amazon.in/Samsung-Galaxy-Storage-Additional-Exchange/dp/B07KXC7WRG/ref=sr_1_1?keywords=a50&qid=1570899675&sr=8-1', 'https://www.flipkart.com/samsung-galaxy-a50-black-64-gb/p/itmfe4cs57gyhnkz?pid=MOBFE4CSUQHGWE9V&srno=s_1_1&otracker=search&otracker1=search&lid=LSTMOBFE4CSUQHGWE9VZGRI30&fm=SEARCH&iid=02d98419-5c93-4e27-83d6-cecde369a1ac.MOBFE4CSUQHGWE9V.SEARCH&ppt=sp&ppn=sp&ssid=92w61y8k8g0000001570899580393&qH=e0af5865757b3f2a', 'https://www.youtube.com/embed/tX2uPrm-jow', 'Adequate Performance, Value for money, Stellar Display', 'Mediocre Battery life, Mediocre Camera array'),
(12, 'Google Pixel 3XL', 'assets/images/mobile/pixel3xl.jpg', 4, 'Qualcomm SDM845 Snapdragon 845 (10 nm)', 'P-OLED capacitive touchscreen, 6.3 inches, 1440 x 2960 pixels, 18.5:9 ratio (~523 ppi)', '12.2 MP, f/1.8, 28mm (wide)', '3430 mAh', '', 'https://www.flipkart.com/google-pixel-3-xl-clearly-white-64-gb/p/itmfefgvxq82gm5g?pid=MOBF9GAPG9RWM3XH&srno=s_1_7&otracker=search&otracker1=search&lid=LSTMOBF9GAPG9RWM3XHN7XMPC&fm=SEARCH&iid=864b9aeb-4ea6-491e-9945-fca1c96004ea.MOBF9GAPG9RWM3XH.SEARCH&ppt=sp&ppn=sp&ssid=05uh2ruvls0000001570554218281&qH=4a0b855e623e873a', 'https://www.youtube.com/embed/E67Klqw2H-E', 'Top of the line Camera, Solid Performance, Smooth vanilla Android experience, Quick updates', 'Mediocre battery life, Hideous design'),
(13, 'Google Pixel 3a', 'assets/images/mobile/pixel3a.jpg', 4, 'Qualcomm SDM670 Snapdragon 670 (10 nm)', 'OLED capacitive touchscreen, 5.6 in, 1080 x 2220 pixels, 18.5:9 ratio (~441 ppi)', '12.2 MP, f/1.8, 28mm (wide)', '3000 mAh', '', 'https://www.flipkart.com/google-pixel-3a-just-black-64-gb/p/itmfgk4jfgstaack?pid=MOBFFGFP7UHHJUZU&srno=s_1_1&otracker=AS_QueryStore_OrganicAutoSuggest_0_4_na_na_pr&otracker1=AS_QueryStore_OrganicAutoSuggest_0_4_na_na_pr&lid=LSTMOBFFGFP7UHHJUZUW7182D&fm=SEARCH&iid=744c51bf-daff-40ef-8e20-5061558f3c0e.MOBFFGFP7UHHJUZU.SEARCH&ppt=sp&ppn=sp&ssid=dt9rxt5ysw0000001570899979525&qH=5adb9495cc91f1c5', 'https://www.youtube.com/embed/ZUcq70xYzUs', 'Value for money, Stellar Camera array, Great Display', 'Mediocre Performance, Mediocre Battery life'),
(14, 'Xiaomi Redmi K20', 'assets/images/mobile/redmik20.jpg', 6, 'Qualcomm SDM730 Snapdragon 730 (8 nm)', 'Super AMOLED capacitive touchscreen, 6.39 in, 1080 x 2340 pixels, 19.5:9 ratio (~403 ppi)', '48 MP, f/1.8, 26mm (wide), 8 MP, f/2.4, 53mm (telephoto), 13 MP, f/2.4, 12mm (ultrawide)', '4000 mAh', '', 'https://www.flipkart.com/redmi-k20-carbon-black-64-gb/p/itmfgfjtkpnd64gb?pid=MOBFG7UYRCCTB7BA&lid=LSTMOBFG7UYRCCTB7BAWBLU7M&marketplace=FLIPKART&srno=s_1_2&otracker=search&otracker1=search&fm=SEARCH&iid=32f391cd-bd45-47ef-bd78-49ccac0b376b.MOBFG7UYRCCTB7BA.SEARCH&ppt=sp&ppn=sp&ssid=g628nrwa5s0000001570900152914&qH=3caa85db42b2089e', 'https://www.youtube.com/embed/e0J66CtsAUA', 'Bezeless Display, Top of the line performance, Value for money', 'Mediocre Camera array, Durability of the pop-up camera '),
(15, 'Xiaomi Redmi Note 7 Pro', 'assets/images/mobile/redminote7pro.jpg', 6, 'Qualcomm SDM675 Snapdragon 675 (11 nm)', 'IPS LCD capacitive touchscreen, 6.3 in, 1080 x 2340 pixels, 19.5:9 ratio (~409 ppi)', '48 MP, f/1.8, (wide), 5 MP, f/2.4, depth sensor', '4000 mAh', 'https://www.amazon.in/Redmi-Note-Pro-Nebula-64GB/dp/B07VJJWC2F/ref=sr_1_4?keywords=redmi+note+7+pro&qid=1570900296&sr=8-4', 'https://www.flipkart.com/redmi-note-7-pro-neptune-blue-64-gb/p/itmfegkx8nbcze6t?pid=MOBFDXZ376XRTZXH&srno=s_1_1&otracker=AS_QueryStore_OrganicAutoSuggest_0_7_na_na_pr&otracker1=AS_QueryStore_OrganicAutoSuggest_0_7_na_na_pr&lid=LSTMOBFDXZ376XRTZXHNZ5V6Z&fm=SEARCH&iid=257b320a-e848-40b3-b514-5b234e310bd2.MOBFDXZ376XRTZXH.SEARCH&ppt=sp&ppn=sp&ssid=u90q52x9fk0000001570900275938&qH=c5a4e9df6cc18326', 'https://www.youtube.com/embed/vt6fkq3Fxkg', 'Value for money, Excellent Battery life, Great performance for the price', 'Ads in the software, MIUI is unpolished'),
(16, 'Xiaomi Redmi 8A', 'assets/images/mobile/redmi8a.jpg', 6, 'Qualcomm SDM439 Snapdragon 439 (12 nm)', 'IPS LCD capacitive touchscreen, 6.2 in, 720 x 1520 pixels, 19:9 ratio (~271 ppi)', '12 MP, f/1.8', '5000 mAh', '', 'https://www.flipkart.com/redmi-8a-midnight-black-32-gb/p/itme2e12a5859993?pid=MOBFKF98FFAAY8EB&srno=s_1_1&otracker=search&otracker1=search&lid=LSTMOBFKF98FFAAY8EBS8FFCJ&fm=SEARCH&iid=c51cfb05-24e7-41b2-ab2f-76396081529b.MOBFKF98FFAAY8EB.SEARCH&ppt=sp&ppn=sp&ssid=qmne3qtdu80000001570900328332&qH=99d66de0397dd2a3', 'https://www.youtube.com/embed/DLEUwicBkGg', 'Phenomenal battery life, Good Performance for the price', 'Mediocre display, Bad Camera performance');

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
