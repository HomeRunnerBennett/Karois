-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 08:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
CREATE DATABASE IF NOT EXISTS shopping;
--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Dumb-Bells', 'Little Weights for Arms and Wrists', '2022-01-14 02:53:46', NULL),
(2, 'Bar-Bells', 'Big Weights For Biceps and Chests', '2022-01-14 02:54:11', NULL),
(3, 'Yoga Mats', 'For Yoga', '2022-01-14 02:54:22', NULL),
(4, 'Weight-bench', 'For lifting Bar-Bells', '2022-01-14 02:54:42', NULL),
(5, 'Smart Watch', 'A smart Watch', '2022-01-14 02:55:09', NULL),
(6, 'Goggles', 'For swimming', '2022-01-14 02:55:26', NULL),
(7, 'Running Shoes', 'Sneakers best for running', '2022-01-14 02:55:44', NULL),
(8, 'Information', 'for Information page', '2022-01-14 02:59:34', NULL),
(9, 'Wanted', 'for Wanted Page', '2022-01-14 02:59:45', NULL),
(10, 'Workshop', 'For the Workshop', '2022-01-14 02:59:59', NULL),
(11, 'Gallery', 'Showcase', '2022-01-14 03:00:09', NULL),
(12, 'Featured', 'For The Featured Products', '2022-01-14 03:00:54', NULL),
(13, 'Home', 'for Home Latest', '2022-01-14 03:01:19', NULL),
(14, 'Skipping Rope', 'Skipping Ropes', '2022-01-14 03:34:27', NULL),
(15, 'Featured', 'featured', '2022-01-14 09:34:53', NULL),
(16, 'smart headbands', 'headbands', '2022-01-14 09:40:52', NULL),
(17, 'smart goggles', 'goggles', '2022-01-14 09:41:24', NULL),
(18, 'smartTech', 'smart technology', '2022-01-14 10:20:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:51:11'),
(6, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:57:52'),
(7, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:59:02'),
(8, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:59:59'),
(9, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:00:32'),
(10, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:03:03'),
(11, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:03:57'),
(12, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(8, 1, 7, '1 KG Dum-Bells', 'Under Armor', 4500, 5000, 'For Both Wrists and Lower Arms', 'istockphoto-483660615-612x612.jpg', 'istockphoto-483660615-612x612.jpg', 'istockphoto-483660615-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:11:40', NULL),
(9, 14, 25, 'Skipping Rope Lean', 'Under Armor', 4500, 5000, 'Cardio', 'istockphoto-168277309-612x612.jpg', 'istockphoto-168277309-612x612.jpg', 'istockphoto-168277309-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:13:09', NULL),
(10, 2, 8, 'Bar Bells 3000', 'Bar Charm', 8500, 10000, 'For Biceps and Chest', 'istockphoto-531520849-612x612.jpg', 'istockphoto-531520849-612x612.jpg', 'istockphoto-531520849-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:15:32', NULL),
(11, 3, 9, 'Yoga Mat', 'Yoga For  All', 4500, 5000, 'For Yoga', 'istockphoto-149027826-612x612.jpg', 'istockphoto-149027826-612x612.jpg', 'istockphoto-149027826-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:17:01', NULL),
(12, 4, 10, 'Flat Bench', 'Benches', 40000, 45000, 'For lifting Weights', 'istockphoto-839965720-612x612.jpg', 'istockphoto-839965720-612x612.jpg', 'istockphoto-839965720-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:18:16', NULL),
(13, 5, 12, 'Smart Watch', 'Smart Watches', 25000, 30000, 'For Monitoring Vitals', 'istockphoto-915454448-612x612.jpg', 'istockphoto-915454448-612x612.jpg', 'istockphoto-915454448-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:19:19', NULL),
(14, 6, 13, 'Goggles', 'Swim', 3500, 4000, 'For Pool Exercises', 'istockphoto-599132502-612x612.jpg', 'istockphoto-599132502-612x612.jpg', 'istockphoto-599132502-612x612.jpg', 1000, 'In Stock', '2022-01-14 05:20:33', NULL),
(15, 7, 14, 'Running Sneakers', 'Nike', 15000, 20000, 'Best For Running', 'istockphoto-623270836-612x612.jpg', 'istockphoto-623270836-612x612.jpg', 'istockphoto-623270836-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:12:09', NULL),
(16, 8, 15, 'Latest Jumping Ropes', 'Under Armor', 15000, 20000, 'Great For your legs', 'istockphoto-614650894-612x612.jpg', 'istockphoto-614650894-612x612.jpg', 'istockphoto-614650894-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:17:24', NULL),
(17, 8, 16, 'Benefits of Dumbells', 'Under Armor', 4500, 5000, 'They Help with Agility and Wrist', 'istockphoto-1180763491-612x612.jpg', 'istockphoto-1180763491-612x612.jpg', 'istockphoto-1180763491-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:19:12', NULL),
(18, 8, 15, '1 KG Dum-Bells', 'Under Armor', 4500, 5000, 'For Your Arms', 'istockphoto-1169337759-612x612.jpg', 'istockphoto-1169337759-612x612.jpg', 'istockphoto-1169337759-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:20:41', NULL),
(19, 8, 15, 'Skipping Rope Lean', 'Under Armor', 3500, 4000, 'Cardio Excersice', 'istockphoto-481079317-612x612.jpg', 'istockphoto-481079317-612x612.jpg', 'istockphoto-481079317-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:21:38', NULL),
(20, 8, 15, 'Bar Bells 3000', 'Under Armor', 15000, 20000, 'For Chest and Biceps', 'istockphoto-1092171750-612x612.jpg', 'istockphoto-1092171750-612x612.jpg', 'istockphoto-1092171750-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:22:36', NULL),
(22, 8, 26, 'Advantages Of Jumping Rope', 'Under Armor', 40000, 45000, 'For Arms and Chest', 'istockphoto-1210325977-612x612.jpg', 'istockphoto-1210325977-612x612.jpg', 'istockphoto-1210325977-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:43:39', NULL),
(23, 9, 17, 'Inclined Bench', 'Bar Charm', 30000, 50000, 'Second Hand Bench', 'istockphoto-839965720-612x612.jpg', 'istockphoto-839965720-612x612.jpg', 'istockphoto-839965720-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:56:35', NULL),
(24, 9, 17, 'Swimming Goggles', 'Under Armor', 3500, 4000, 'For indoor Swimming', 'istockphoto-92894883-612x612.jpg', 'istockphoto-92894883-612x612.jpg', 'istockphoto-92894883-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:57:39', NULL),
(25, 9, 17, 'Yoga Mat lite', 'Under Armor', 25000, 30000, 'For Indoor Yoga', 'istockphoto-1155199783-612x612.jpg', 'istockphoto-1155199783-612x612.jpg', 'istockphoto-1155199783-612x612.jpg', 1000, 'In Stock', '2022-01-14 06:58:40', NULL),
(26, 10, 18, 'Inclined Bench 1995', 'Under Armor', 15000, 20000, 'A Vintage product fixed for a customer.', 'istockphoto-153744785-612x612.jpg', 'istockphoto-153744785-612x612.jpg', 'istockphoto-153744785-612x612.jpg', 1000, 'In Stock', '2022-01-14 08:47:15', NULL),
(28, 10, 27, 'Smart Watch 2010', 'Under Armor', 8500, 10000, 'Fixed For a Struggling customer', 'istockphoto-1157775252-612x612.jpg', 'istockphoto-1157775252-612x612.jpg', 'istockphoto-1157775252-612x612.jpg', 1000, 'In Stock', '2022-01-14 08:50:26', NULL),
(29, 10, 18, 'Inclined Bench 2000', 'Under Armor', 25000, 45000, 'Fixed For a Regular Customer', 'istockphoto-95291586-612x612.jpg', 'istockphoto-95291586-612x612.jpg', 'istockphoto-95291586-612x612.jpg', 1000, 'In Stock', '2022-01-14 08:52:32', NULL),
(30, 10, 27, 'Smart Watch 2004', 'Under Armor', 25000, 30000, 'Fixed to resell', 'istockphoto-1130693402-612x612.jpg', 'istockphoto-1130693402-612x612.jpg', '', 1000, 'In Stock', '2022-01-14 08:53:31', NULL),
(31, 18, 12, 'Smart Watch Pro', 'Under Armor', 40000, 50000, 'For Rich people', 'istockphoto-915454448-612x612.jpg', 'istockphoto-915454448-612x612.jpg', 'istockphoto-915454448-612x612.jpg', 1000, 'In Stock', '2022-01-14 10:31:57', NULL),
(32, 18, 13, 'Goggle Pro', 'Under Armor', 15000, 30000, 'For swimmers in profession', 'istockphoto-157605739-612x612.jpg', 'istockphoto-157605739-612x612.jpg', 'istockphoto-157605739-612x612.jpg', 1000, 'In Stock', '2022-01-14 10:33:04', NULL),
(33, 18, 14, 'Running Shoe Pro', 'Under Armor', 25000, 30000, 'For Treadmill running', 'istockphoto-1172886559-612x612.jpg', 'istockphoto-1172886559-612x612.jpg', 'istockphoto-1172886559-612x612.jpg', 1000, 'In Stock', '2022-01-14 10:34:26', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales`
-- (See below for the actual view)
--
CREATE TABLE `sales` (
`orderId` int(11)
,`productId` int(11)
,`productPrice` int(11)
,`quantity` int(11)
,`orderDate` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(7, 1, 'dumbells', '2022-01-14 03:01:58', NULL),
(8, 2, 'barbells', '2022-01-14 03:02:07', NULL),
(9, 3, 'yoga mats', '2022-01-14 03:02:16', NULL),
(10, 4, 'flat benches', '2022-01-14 03:02:37', NULL),
(11, 4, 'inclined benches', '2022-01-14 03:02:50', NULL),
(12, 18, 'Smart Tech Watch', '2022-01-14 03:03:11', '14-01-2022 03:51:23 PM'),
(13, 18, 'Smart Tech Goggles', '2022-01-14 03:03:23', '14-01-2022 03:51:48 PM'),
(14, 18, 'Smart Tech Shoes', '2022-01-14 03:03:38', '14-01-2022 03:52:07 PM'),
(15, 8, 'latest Products', '2022-01-14 03:04:02', NULL),
(16, 8, 'latest News', '2022-01-14 03:04:13', NULL),
(17, 9, 'Second-hand', '2022-01-14 03:04:30', NULL),
(18, 10, 'fixed', '2022-01-14 03:04:41', NULL),
(19, 11, 'catalog', '2022-01-14 03:04:55', NULL),
(20, 12, 'featured', '2022-01-14 03:05:08', NULL),
(21, 13, 'home-featured', '2022-01-14 03:05:22', NULL),
(22, 5, 'Smart', '2022-01-14 03:20:44', NULL),
(23, 6, 'Smart', '2022-01-14 03:20:52', NULL),
(24, 7, 'Smart', '2022-01-14 03:21:00', NULL),
(25, 14, 'skippingrope', '2022-01-14 03:34:38', NULL),
(26, 8, 'News', '2022-01-14 06:40:12', NULL),
(27, 10, 'fixed2', '2022-01-14 08:49:04', NULL),
(28, 15, 'side', '2022-01-14 09:36:02', NULL),
(29, 15, 'main', '2022-01-14 09:36:16', NULL),
(30, 16, 'headbands', '2022-01-14 09:41:07', NULL),
(31, 16, 'goggles', '2022-01-14 09:41:44', '14-01-2022 03:38:02 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'sachin@s.com', 0x3a3a3100000000000000000000000000, '2021-01-02 08:20:52', '02-01-2021 01:53:17 PM', 1),
(25, 'shashank@s.com', 0x3a3a3100000000000000000000000000, '2021-01-03 09:25:01', NULL, 1),
(26, 'shashank@s.com', 0x3a3a3100000000000000000000000000, '2021-01-03 10:50:33', NULL, 1),
(27, 'sachin@s.com', 0x3a3a3100000000000000000000000000, '2021-01-05 15:41:03', NULL, 1),
(28, 'sachin@s.com', 0x3a3a3100000000000000000000000000, '2021-01-07 07:46:11', '07-01-2021 01:29:18 PM', 1),
(29, 'shashank@s.com', 0x3a3a3100000000000000000000000000, '2021-01-08 06:18:21', NULL, 1),
(30, 'ben@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-13 09:29:17', NULL, 1),
(31, 'ben@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-13 09:29:24', NULL, 1),
(32, 'ben@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-13 09:30:11', '13-01-2022 11:31:29 PM', 1),
(33, 'mel@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-13 18:02:26', NULL, 1),
(34, 'mel@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-13 18:03:54', '14-01-2022 02:05:43 PM', 1),
(35, 'mel@gmail.com', 0x3a3a3100000000000000000000000000, '2022-01-14 10:42:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Bennett Mikwala', 'ben@gmail.com', 888218366, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-13 09:29:07', NULL),
(2, 'Melvin Kaunde', 'mel@gmail.com', 888218366, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-13 18:02:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `date`, `count`) VALUES
(3, '2021-01-06', 4),
(4, '2021-02-02', 2),
(5, '2021-03-02', 7),
(6, '2021-01-07', 26),
(7, '2021-01-08', 9),
(8, '2021-01-19', 1),
(9, '2022-01-12', 96),
(10, '2022-01-13', 134),
(11, '2022-01-14', 133);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

-- --------------------------------------------------------

--
-- Structure for view `sales`
--
DROP TABLE IF EXISTS `sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales`  AS SELECT `o`.`id` AS `orderId`, `p`.`id` AS `productId`, `p`.`productPrice` AS `productPrice`, `o`.`quantity` AS `quantity`, `o`.`orderDate` AS `orderDate` FROM (`orders` `o` left join `products` `p` on(`p`.`id` = `o`.`productId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
