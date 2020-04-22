-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2020 at 03:02 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13329670_id13221195_my_shooz`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mob_no` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin_code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `first_name`, `last_name`, `email`, `mob_no`, `address`, `city`, `state`, `pin_code`) VALUES
(3, 'as', 'ert', 'erty', 789, 'rtyui', 'tyuio', 'tyui', 45678),
(4, 'wert', 'wert', 'erty', 34567, 'erty', 'rtyu', 'tyu', 4567),
(5, 'fda', 'dfsa', 'ravi.alekhya2017@vitstudent.ac.in', 1234567890, 'fdsa', 'fdsa', '333', 2344),
(6, 'fgh', 'fghj', 'fghjk', 45678, 'fgh', 'fghj', 'ghj', 567),
(10862, 'alex', 'edsa', 'dkj', 999, 'jk', 'fjkdas', 'jkfsa', 122),
(10875, 'fsd', 'frs', 'peacealekhya@gmail.com', 837, 'dfajn', 'fjka', 'kj,dea', 873),
(10877, 'fdsq', 'foidslk', 'peacealekhya@gmail.com', 830, 'fjek', 'kjdfsa', 'dasfkj', 20384),
(10878, 'dfsa', 'fsda', 'peacealekhya@gmail.com', 839, 'fkan', 'kjfna', 'jkfda', 3893),
(10885, 'elk', 'je', 'abc@gmail.com', 389, 'jkj', 'jkjk', 'jkjk', 2892),
(10888, 'fsda', 'fes', 'abc@gmail.com', 233, 'dejk', 'hdjk', 'jkjk', 28929),
(10889, 'erty', 'erty', 'abc@gmail.com', 456, 'dfgh', 'fgh', 'fg', 567);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` float NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email_id`, `shoe_id`, `title`, `quantity`, `total_amount`, `created_on`) VALUES
(34, 'siddhant2807r@gmail.com', 5, 'Puma Smash v2 L2-puma-mixed-color-8', 3, 13500, '2020-04-16 07:31:53'),
(35, 'siddhant2807r@gmail.com', 6, 'Puma Smash v2-puma-black-10', 1, 5000, '2020-04-16 08:43:19'),
(36, 'siddhant2807r@gmail.com', 4, 'Puma Smash v2-puma-white-9', 1, 4500, '2020-04-16 08:43:23'),
(91, '', 5, 'Puma Smash v2 L2-puma-mixed-color-5', 1, 4500, '2020-04-21 04:01:04'),
(92, 'peacealekhya@gmail.com', 5, 'Puma Smash v2 L2-puma-mixed-color-5', 2, 9000, '2020-04-21 04:46:02'),
(93, 'peacealekhya@gmail.com', 7, 'Adidas Falcon-adidas-blue-7', 1, 2600, '2020-04-21 04:54:13'),
(95, 'abc@gmail.com', 9, 'Adidas Falcon-adidas-red-9', 2, 4800, '2020-04-22 06:50:34'),
(97, 'siddhant072000@gmail.com', 4, 'Puma Smash v2-puma-white-9', 1, 4500, '2020-04-22 09:23:13'),
(99, '', 6, 'Puma Smash v2-puma-black-6', 1, 5000, '2020-04-22 02:34:05'),
(100, 'tejas123@gmail.com', 5, 'Puma Smash v2 L2-puma-mixed-color-5', 4, 4500, '2020-04-22 02:37:20'),
(101, 'tejas123@gmail.com', 9, 'Adidas Falcon-adidas-red-9', 2, 4800, '2020-04-22 02:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(3) NOT NULL,
  `shoe_id` int(3) NOT NULL,
  `email_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `shoe_id`, `email_id`, `Headline`, `comment`, `rating`) VALUES
(1, 4, 'tejas123@gmail.com', 'dsfa', 'fdsafsa', 2),
(2, 5, 'tejas@gmail.com', 'good', 'product', 5),
(3, 6, 'tejas@gmail.com', 'hi', 'product', 3),
(4, 7, '', 'hi', 'good', 1),
(5, 5, 'tej@gmail.com', 'hi', 'hi', 5),
(6, 7, 'peacealekhya@gmail.com', 'good', 'good', 8),
(7, 9, 'peacealekhya@gmail.com', 'good', 'very good', 10);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` mediumint(9) NOT NULL,
  `shoe_id` int(255) NOT NULL,
  `email_id` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `shoe_id`, `email_id`) VALUES
(33, 5, 'peacealekhya@gmail.com'),
(34, 6, 'peacealekhya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notifications1`
--

CREATE TABLE `notifications1` (
  `id` int(11) NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datentime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications1`
--

INSERT INTO `notifications1` (`id`, `subject`, `message`, `status`, `email_id`, `datentime`) VALUES
(2, 'fifth', 'shoes', 1, 'ravi@gmail.com', '0000-00-00 00:00:00'),
(3, 'First', 'Notification', 1, 'ravi@gmail.com', '0000-00-00 00:00:00'),
(14, 'Hello', 'Hi', 0, 'alekhya@gmail.com', '0000-00-00 00:00:00'),
(15, 'fdas', '', 0, 'harmeetim99@gmail.com', '0000-00-00 00:00:00'),
(16, 'fdas', '', 0, 'jdesai375@gmail.com', '0000-00-00 00:00:00'),
(17, 'fdas', '', 1, 'peacealekhya@gmail.com', '0000-00-00 00:00:00'),
(18, 'fdas', '', 0, 'siddhant072000@gmail.com', '0000-00-00 00:00:00'),
(19, 'dfa', '', 0, 'harmeetim99@gmail.com', '0000-00-00 00:00:00'),
(20, 'dfa', '', 0, 'jdesai375@gmail.com', '0000-00-00 00:00:00'),
(21, 'dfa', '', 1, 'peacealekhya@gmail.com', '0000-00-00 00:00:00'),
(22, 'dfa', '', 0, 'siddhant072000@gmail.com', '0000-00-00 00:00:00'),
(23, 'This is test', '', 0, 'jdesai375@gmail.com', '0000-00-00 00:00:00'),
(24, 'This is test', '', 1, 'peacealekhya@gmail.com', '2020-04-21 13:42:02'),
(25, 'This is test', '', 0, 'siddhant072000@gmail.com', '0000-00-00 00:00:00'),
(26, 'New Stock', 'Purchase Now!', 1, 'abc@gmail.com', '2020-04-22 10:13:02'),
(27, 'New Stock', 'Purchase Now!', 0, 'harmeetim99@gmail.com', '2020-04-22 10:13:02'),
(28, 'New Stock', 'Purchase Now!', 0, 'jdesai375@gmail.com', '2020-04-22 10:13:02'),
(29, 'New Stock', 'Purchase Now!', 0, 'peacealekhya@gmail.com', '2020-04-22 10:13:02'),
(30, 'New Stock', 'Purchase Now!', 1, 'tejas123@gmail.com', '2020-04-22 10:13:02'),
(31, 'New Stock', 'Purchase Now!', 0, 'tejas@gmail.com', '2020-04-22 10:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `datentime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `email`, `amount`, `datentime`) VALUES
(1, 'asdfg123', 'abc@gmail.com', '5000', '2020-04-19 14:07:38'),
(2, 'ert', 'sdfgh', '1234', '2020-04-19 14:08:08'),
(3, 'qwe', 'sdf', '234', '2020-04-19 14:08:33'),
(4, 'rtyu', 'wer', '345', '2020-04-19 14:09:55'),
(18, '123', 'peacealekhya@gmail.com', '12000', '2020-04-19 09:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `shoes_details`
--

CREATE TABLE `shoes_details` (
  `id` int(3) NOT NULL,
  `shoename` varchar(35) CHARACTER SET latin1 NOT NULL,
  `brandname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `shoedescription` varchar(255) NOT NULL,
  `shoecolor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shoesize` int(5) NOT NULL,
  `price` int(11) NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  `rating` varchar(10) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `image` text CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoes_details`
--

INSERT INTO `shoes_details` (`id`, `shoename`, `brandname`, `shoedescription`, `shoecolor`, `gender`, `shoesize`, `price`, `link`, `rating`, `category`, `image`, `status`) VALUES
(4, 'Puma Smash v2', 'puma', 'drytfeuwyge hrjb isrkegcaxiwnkeljh axej akwxkehdbfw', 'white', 'Male', 9, 4500, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'casual', 'images/puma-smash-v2-l.jpg', 1),
(5, 'Puma Smash v2 L2', 'puma', 'ayresxtkcgvhbknjkm', 'mixed-color', 'Male', 8, 4500, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'sneaker', 'images/puma-smash-v2-l.jpg', 1),
(6, 'Puma Smash v2', 'puma', 'qzegdxhgvhbnnbghgdazdsfxhbn', 'black', 'Male', 10, 5000, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'sneaker', 'images/puma-smash-v2-l.jpg', 1),
(7, 'Adidas Falcon', 'adidas', 'Colorful and stylish, adidas Falcon shoes have a chunky silhouette and retro look that was inspired by the 90s. Choose from many different bold colors and patterns, available in a variety of sizes.', 'blue', 'Male', 9, 2600, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'formal', 'images/adidas-falcon.jpg', 1),
(8, 'Adidas Falcon', 'adidas', 'Colorful and stylish, adidas Falcon shoes have a chunky silhouette and retro look that was inspired by the 90s. Choose from many different bold colors and patterns, available in a variety of sizes.', 'red', 'Male', 8, 2400, 'https://www.dressinn.com/fashion/puma-smash-v2-l/136758564/p', '5', 'casual', 'images/adidas-falcon-red.jpg', 1),
(9, 'Adidas Falcon', 'adidas', 'fdsg', 'red', 'Male', 9, 2400, 'https://www.dressinn.com/fashion/puma-smash-v2-l/1...', '5', 'casual', 'images/adidas-falcon-red.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `email_id`, `phone_number`, `pincode`, `gender`, `password`) VALUES
('dheeraj', 'kumar', 'abc@gmail.com', 1234567890, 123456, 'male', '$2y$12$GWx9HYwmv8SqKhuVbHshTOHb6V9mehxItFtNrb4cYQnubqKVnVZBq'),
('harmeet ', 'singh', 'harmeetim99@gmail.com', 7988403621, 133001, 'male', '$2y$12$xsceipDFbkLG/IOvMzxGze8wwmqPLfStZgSAexqQXFaL2bOs/B3Wm'),
('Jay', 'Desai', 'jdesai375@gmail.com', 9428061610, 387002, 'male', '$2y$12$ajZxH4Pqkl/tAOeavcnQEe.bLuC/N9jKXqgDG9gMN0nYoy4FKbBwu'),
('Alekhya', 'Ravi', 'peacealekhya@gmail.com', 9600322588, 500036, 'female', '$2y$12$fcHnRlW1dqErRMUZoleomObmpIhQb8Rb81fQf5TEXVsDtqfWavjSa'),
('Siddhant ', 'Laller', 'siddhant072000@gmail.com', 8190847372, 136132, 'male', '$2y$12$ld5VjIAYN.SDcXpZyCABH.4mw/a/Dux7rZi7Y9tlhq7s7vPRtq75y'),
('abc', 'j', 'tej@gmail.com', 9822600415, 632015, 'male', '$2y$12$7W0vSmqS4GHwBgWBNR653eqHDXuEw/huvir6V3qwE7lCRCsQB.K9K'),
('Tejas', 'Jambhale', 'tejas123@gmail.com', 9822600411, 632014, 'male', '$2y$12$OTBekcBWD/mHmGOycqDI1uQm3DpkjWk5/VcSYNmOZ6jCLf5TIM6N2'),
('Tejas', 'Jambhale', 'tejas@gmail.com', 9822600411, 632014, 'male', '$2y$12$W/jbOm3YLWA9NN2BKS0eZe1s03tgITgVcJHcGBHbgYsJgGtd/iqJ2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoe_id` (`shoe_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoe_id` (`shoe_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `shoe_id` (`shoe_id`);

--
-- Indexes for table `notifications1`
--
ALTER TABLE `notifications1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoes_details`
--
ALTER TABLE `shoes_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10890;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notifications1`
--
ALTER TABLE `notifications1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `shoes_details`
--
ALTER TABLE `shoes_details`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`shoe_id`) REFERENCES `shoes_details` (`id`);

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`email_id`) REFERENCES `users` (`email_id`),
  ADD CONSTRAINT `favourites_ibfk_3` FOREIGN KEY (`shoe_id`) REFERENCES `shoes_details` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
