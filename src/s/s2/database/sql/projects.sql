-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 03:33 PM
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
-- Database: `dash`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `duration`, `description`, `created_at`, `updated_at`, `priority`) VALUES
(1, NULL, 'Design, fabrication and installation of HVAC at Universal Corporation Limited- installation of air conditioning plant and scheduled maintenance', '2022-07-18 06:52:59', '2022-07-18 06:52:59', NULL),
(2, NULL, 'Design, fabrication and installation of HVAC at Universal Corporation Limited- installation of air conditioning plant and scheduled maintenance', '2022-07-18 06:54:42', '2022-07-18 06:54:42', NULL),
(3, '2004 to Date', 'Design, fabrication and installation of HVAC at Universal Corporation Limited- installation of air conditioning plant and scheduled maintenance', '2022-07-18 06:57:21', '2022-07-18 06:57:21', NULL),
(4, 'one', 'one', '2022-07-25 08:26:47', '2022-07-25 08:26:47', NULL),
(5, '2019 to Date', 'Improvement of production area and QC air system at Nerix Pharma.', '2022-07-25 08:32:07', '2022-07-25 08:32:07', NULL),
(6, '2016 to Date', 'Design, fabrication, installation and maintenance of HVAC at Norbrook Kenya.', '2022-07-25 08:32:21', '2022-07-25 08:32:21', NULL),
(7, '1996 to Date', 'Air conditioning, plant rehabilitation, new installation and maintenance services at Hilton Hotel', '2022-07-25 08:32:33', '2022-07-25 08:32:33', NULL),
(8, '2019 to Date', 'Fabrication, installation and maintenance of Air conditioners at Nairobi west Hospital.', '2022-07-25 08:32:43', '2022-07-25 08:32:43', NULL),
(9, '2019 to Date', 'Fabrication, installation and maintenance of Air conditioners at Skylight Chemicals.', '2022-07-25 08:32:53', '2022-07-25 08:32:53', NULL),
(10, '2017 to 2018', 'Design, fabrication, installation and maintenance of air conditioning systems at Concepts Africa', '2022-07-25 08:33:38', '2022-07-25 08:33:38', NULL),
(11, '2007 to Date', 'Installation of Air conditioning system and maintenance plant at Canadian Embassy.', '2022-07-25 08:33:48', '2022-07-25 08:33:48', NULL),
(12, '1994 to 2018', 'Design, fabrication, installation and maintenance of HVAC at Lab & allied.', '2022-07-25 08:33:58', '2022-07-25 08:33:58', NULL),
(13, '2008 to 2015', 'General air conditioning and ventilation works at Norfolk Hotel 13. Ventilation system for drug manufacturing at a Sphinix pharmaceuticals.', '2022-07-25 08:34:07', '2022-07-25 08:34:07', NULL),
(14, '2012 to 2015', 'Ventilation system for drug manufacturing at Sphinix pharmaceuticals.', '2022-07-25 08:34:18', '2022-07-25 08:34:18', NULL),
(15, '2013 to 2014', 'Ventilation works at Ultravetis.', '2022-07-25 08:34:29', '2022-07-25 08:34:29', NULL),
(16, '2013 to 2014', 'Ventilation system for general offices at BDO.', '2022-07-25 08:34:40', '2022-07-25 08:34:40', NULL),
(17, '2012 to 2013', 'Dust extraction systems and air-conditioning for new 19 Plant at Cosmos Pharmaceuticals.', '2022-07-25 08:34:49', '2022-07-25 08:34:49', NULL),
(18, '2012 to 2013', 'Basement garage extraction system Refcon Limited.', '2022-07-25 08:34:58', '2022-07-25 08:34:58', NULL),
(19, '2008 to 2012', 'Ventilation system for Biodeal laboratories.', '2022-07-25 08:35:07', '2022-07-25 08:35:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
