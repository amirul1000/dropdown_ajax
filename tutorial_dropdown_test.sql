-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2020 at 11:17 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial_dropdown_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kenderaan', NULL, 1, '0000-00-00 00:00:00', '2019-09-05 02:10:44'),
(3, 'Alatan Pakai Buang', NULL, 1, '2017-07-04 16:18:45', '2019-09-05 02:10:00'),
(4, 'Peralatan Dan Kelengkapan Pejabat', NULL, 1, '2017-11-16 16:05:31', '2019-09-05 02:08:39'),
(5, 'Peralatan Dan Kelengkapan ICT', NULL, 1, '2017-11-25 13:26:56', '2019-09-05 02:08:10'),
(6, 'Perabot', NULL, 1, '2019-09-18 17:41:20', '2019-09-18 17:41:20'),
(7, 'Alat tulis (konspa)', NULL, 1, '2019-09-30 04:33:08', '2019-09-30 04:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Komputer', NULL, 1, '0000-00-00 00:00:00', '2019-09-05 02:11:58'),
(2, 5, 'Pencetak', NULL, 1, '2017-11-16 16:15:20', '2019-09-05 02:11:31'),
(3, 4, 'Mesin Pejabat', NULL, 1, '2017-11-25 13:29:14', '2019-09-05 02:12:43'),
(4, 4, 'Peralatan Penyaman Udara', NULL, 1, '2019-09-05 02:13:36', '2019-09-05 02:13:36'),
(6, 6, 'Kabinet', NULL, 1, '2019-09-18 17:43:31', '2019-09-18 17:43:31'),
(7, 3, 'Toner', NULL, 1, '2019-09-30 04:34:15', '2019-09-30 04:34:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
