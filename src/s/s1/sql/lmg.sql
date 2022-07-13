-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 01:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(111) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `email`, `password`, `name`) VALUES
(1, 'vector.pn@gmail.com', 'developer@15', 'Peter Njoroge'),
(2, 'test@test', 'test', 'test'),
(3, 'test@test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `eid` int(11) NOT NULL,
  `nm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `em` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`eid`, `nm`, `pn`, `em`, `p`, `tm`) VALUES
(1, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"34\",\"33\"]', '2021-10-24 02:37:34'),
(2, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"34\",\"33\"]', '2021-10-24 02:38:49'),
(3, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"33\",\"34\"]', '2021-10-24 09:11:46'),
(4, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"33\",\"34\"]', '2021-10-24 09:13:07'),
(5, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"33\",\"34\"]', '2021-10-24 09:13:18'),
(6, '', '', '', '', '2021-10-24 09:17:40'),
(7, '', '', '', '', '2021-10-24 09:23:31'),
(8, '', '', '', '', '2021-10-24 09:27:00'),
(9, '', '', '', '', '2021-10-24 09:29:31'),
(10, '', '', '', '', '2021-10-24 09:29:43'),
(11, '', '', '', '', '2021-10-24 09:30:38'),
(12, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"12\",\"22\",\"23\",\"24\",\"25\"]', '2021-10-24 13:58:47'),
(13, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '', '2021-10-24 14:24:10'),
(14, 'Peter Njoroge', '+254713772837', 'Vector.pn@gmail.com', '[\"24\",\"27\",\"26\"]', '2021-10-24 14:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gid` int(11) NOT NULL,
  `url` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gid`, `url`) VALUES
(3, 'files/Gallery/ca.jpeg'),
(4, 'files/Gallery/cs.jpeg'),
(5, 'files/Gallery/em.jpeg'),
(6, 'files/Gallery/ca.jpeg'),
(7, 'files/Gallery/cs.jpeg'),
(8, 'files/Gallery/em.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `loc` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `mid` varchar(111) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `loc`, `mid`) VALUES
(1, 'files//hotel_app_exploration_2x.jpg', '1'),
(2, 'files//Kiambu.jpg', '1'),
(3, 'files//Kiambu.png', '1'),
(4, 'files//hotel_app_exploration_2x.jpg', '1'),
(5, 'files//Kiambu.jpg', '1'),
(6, 'files//Kiambu.png', '1'),
(7, 'files//hotel_app_exploration_2x.jpg', '1'),
(8, 'files//Kiambu.jpg', '1'),
(9, 'files//Kiambu.png', '1'),
(10, 'files//hotel_app_exploration_2x.jpg', '10'),
(11, 'files//Kiambu.jpg', '10'),
(12, 'files//Kiambu.png', '10'),
(13, 'files//hotel_app_exploration_2x.jpg', '13'),
(14, 'files//Kiambu.jpg', '13'),
(15, 'files//Kiambu.png', '13'),
(16, 'files//hotel_app_exploration_2x.jpg', '16'),
(17, 'files//Kiambu.jpg', '16'),
(18, 'files//Kiambu.png', '16'),
(19, 'files//School-Bullying_Graphic-3.jpg', '19'),
(20, 'files//sphere.jpg', '19'),
(21, 'files//tree.jpg', '19'),
(22, 'files//School-Bullying_Graphic-3.jpg', '22'),
(23, 'files//sphere.jpg', '22'),
(24, 'files//tree.jpg', '22'),
(25, 'files//School-Bullying_Graphic-3.jpg', '25'),
(26, 'files//sphere.jpg', '25'),
(27, 'files//tree.jpg', '25'),
(28, 'files//School-Bullying_Graphic-3.jpg', '28'),
(29, 'files//sphere.jpg', '28'),
(30, 'files//tree.jpg', '28'),
(31, 'files//School-Bullying_Graphic-3.jpg', '31'),
(32, 'files//sphere.jpg', '31'),
(33, 'files//tree.jpg', '31'),
(34, 'files/Peter/School-Bullying_Graphic-3.jpg', '34'),
(35, 'files/Peter/sphere.jpg', '34'),
(36, 'files/Peter/tree.jpg', '34'),
(37, 'files/Peter/School-Bullying_Graphic-3.jpg', '37'),
(38, 'files/Peter/sphere.jpg', '37'),
(39, 'files/Peter/tree.jpg', '37'),
(40, 'files/Peter/School-Bullying_Graphic-3.jpg', '37'),
(41, 'files/Peter/sphere.jpg', '37'),
(42, 'files/Peter/tree.jpg', '37'),
(43, 'files/Peter/School-Bullying_Graphic-3.jpg', '40'),
(44, 'files/Peter/sphere.jpg', '40'),
(45, 'files/Peter/tree.jpg', '40'),
(46, 'files/Dayun/AQZhE7.jpg', '46'),
(47, 'files/Dayun/Ay0vsY.jpg', '46'),
(48, 'files/Dayun/download.jpg', '46'),
(49, 'files/Dayun/images (1).jpg', '46'),
(50, 'files/Dayun/images (5).jpg', '46'),
(51, 'files/Dayun/IMG-20210917-WA0007.jpg', '51'),
(52, 'files/Dayun/16320547763925395974536199255730.jpg', '52'),
(53, 'files/Dayun/16320547763925395974536199255730.jpg', '53'),
(54, 'files/online/images (2).jpg', '54'),
(55, 'files/online/images (4).jpg', '54'),
(56, 'files/online/images (5).jpg', '54'),
(57, 'files/mName/5e1a98c2bdf15.jpg', '57'),
(58, 'files/mName/Ay0vsY.jpg', '57'),
(59, 'files/mName/images (4).jpg', '57'),
(60, 'files/Peter/2.jpg', '60'),
(61, 'files/Peter/5e1a98c2bdf15.jpg', '61'),
(62, 'files/Peter/2013-zero-electric-motocycles.jpeg', '61'),
(63, 'files/Peter/AQZhE7.jpg', '61'),
(64, 'files/Peter/5e1a98c2bdf15.jpg', '61'),
(65, 'files/Peter/2013-zero-electric-motocycles.jpeg', '61'),
(66, 'files/Peter/AQZhE7.jpg', '61'),
(67, 'files/Peter/5e1a98c2bdf15.jpg', '64'),
(68, 'files/Peter/2013-zero-electric-motocycles.jpeg', '64'),
(69, 'files/Peter/AQZhE7.jpg', '64'),
(70, 'files/Boxer/images (4).jpg', '70'),
(71, 'files/Boxer/images (5).jpg', '70'),
(72, 'files/Boxer/Ay0vsY.jpg', '70'),
(73, 'files/Boxer/61aa8407a5bd1602ee90b81de99ab4d5.jpg', '73'),
(74, 'files/Boxer/bc5b3943d4de93c26df581f78f886a62.jpg', '73'),
(75, 'files/Boxer/images (3).jpg', '73'),
(76, 'files/Dayun/04_02_2016_Hageman_Harley_sporty_01.jpg', '76'),
(77, 'files/Dayun/e6e6a590c6cc7281efe1a2a0cab20f1e.jpg', '76'),
(78, 'files/Dayun/ossa-tr-280i.jpeg', '76'),
(79, 'files/Boxer/cbr150r-1587463146.jpg', '79'),
(80, 'files/Boxer/download (1).jpg', '79'),
(81, 'files/Boxer/download.jpg', '79'),
(82, 'files/axle alignment bearings/images.jpg', '82'),
(83, 'files/axle alignment bearings/istockphoto-1193247877-612x612.jpg', '82'),
(84, 'files/Gears/135496885-old-motorcycle-spare-parts-on-a-white-background-motorcycle-parts-that-are-damaged.jpg', '84'),
(85, 'files/Gears/istockphoto-521976870-612x612.jpg', '84'),
(86, 'files/Rotating drum box/images (1).jpg', '86'),
(87, 'files/Peter/0A0A0197-1024x683.jpg', '87'),
(88, 'files/Peter/0A0A0305-1024x683.jpg', '87'),
(89, 'files/Peter/0A0A0592-1-1024x683.jpg', '87'),
(90, 'files/Peter/0A0A0079-1024x683.jpg', '90'),
(91, 'files/Peter/0A0A0197-1024x683.jpg', '90'),
(92, 'files/Peter/0A0A0305-1024x683.jpg', '90'),
(93, 'files/Peter/0A0A0592-1-1024x683.jpg', '90'),
(94, 'files/Peter/0A0A0079-1024x683.jpg', '94'),
(95, 'files/Peter/0A0A0197-1024x683.jpg', '94'),
(96, 'files/Peter/0A0A0305-1024x683.jpg', '94'),
(97, 'files/Peter/0A0A0592-1-1024x683.jpg', '94'),
(98, 'files/Peter/0A0A0305-1024x683.jpg', '98'),
(99, 'files/Peter/0A0A0592-1-1024x683.jpg', '99'),
(100, 'files/Peter/0A0A0305-1024x683.jpg', '100'),
(101, 'files/Peter/0A0A0079-1024x683.jpg', '101'),
(102, 'files/Bajaj/0A0A0305-1024x683.jpg', '102'),
(103, 'files/Bajaj/0A0A0592-1-1024x683.jpg', '102'),
(104, 'files/Dayun/0A0A0592-1-1024x683.jpg', '104'),
(105, 'files/Bajaj/BMX150.png', '105'),
(106, 'files/SPARK/BMX150.png', '106'),
(107, 'files/Chain/mwatate screen.png', '107'),
(108, 'files/h8/construction.jpg', '108'),
(109, 'files/h8/Cyberbullying_Victimization_all_studies_2019.jpg', '108'),
(110, 'files/Conference Backdrops & AV supply/ca.jpeg', '110'),
(111, 'files/Pavillion Design Build/p.jpeg', '111'),
(112, 'files/Custom Design Stand/cs.jpeg', '112'),
(113, 'files/Exhibition stands Hire/es.jpeg', '113'),
(114, 'files/Event Management/em.jpeg', '114'),
(115, 'files/folio/p.jpeg', '115'),
(116, 'files/folio/ca.jpeg', '116'),
(117, 'files/folio/em.jpeg', '117'),
(118, 'files/folio/em.jpeg', '118'),
(119, 'files/Gallery/cs.jpeg', '119'),
(120, 'files/Gallery/cs.jpeg', '120'),
(121, 'files/Gallery/ca.jpeg', '120'),
(122, 'files/Gallery/cs.jpeg', '120'),
(123, 'files/Gallery/em.jpeg', '120'),
(124, 'files/Gallery/es.jpeg', '120');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `pid` int(11) NOT NULL,
  `description` varchar(111) NOT NULL,
  `img` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`pid`, `description`, `img`) VALUES
(2, 'dd', '116');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `img` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(222) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(222) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `img`, `price`, `description`, `type`, `name`) VALUES
(1, '13', '', '', '', ''),
(2, '16', '', '', '', ''),
(3, '19', '', '', '', ''),
(4, '22', '', '', '', ''),
(5, '25', '', '', '', ''),
(6, '28', '', '', '', ''),
(7, '31', '', '', '', ''),
(32, '98', '455', 'Njoroge', 'Motocycle', 'Peter'),
(34, '100', '5', 'Njoroge', 'Motocycle', 'Peter'),
(35, '101', '44', 'Njoroge', 'Motocycle', 'Peter'),
(36, '102', '10', 'Bajaj', 'Motocycle', 'Bajaj'),
(38, '105', '147690', 'BM150X', 'Motocycle', 'Bajaj'),
(39, '106', '220', 'BOXER', 'Spareparts', 'SPARK');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `sid` int(11) NOT NULL,
  `head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img` varchar(111) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`sid`, `head`, `description`, `img`) VALUES
(26, 'Conference Backdrops & AV supply', 'We also provide conference backdrops and audio visual installations.', '110'),
(27, 'Pavillion Design Build', 'At LMG Exhibitions, you get the best designers and carpenters who are dedicated to ensuring that your brand looks attractive from all ends. Our experienced team of designers and carpenters also helps in advising on the best materials and trendy designs in', '111'),
(28, 'Custom Design Stand', 'We do design and manufacture of stands using quality materials.We come up with latest and innovative designs that blend with the brand attributes of your organiztaion tailored to transform your ideas into reality.', '112'),
(29, 'Exhibition stands Hire', 'There are cases where it might be more relevant to hire than have full customized builds. We are here to provide solutions that meet all financial and time-related needs.', '113'),
(30, 'Event Management', 'At LMG we help to plan and organize exhibition events for you. Our team of experts are committed to ensure your event becomes successful.', '114');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
