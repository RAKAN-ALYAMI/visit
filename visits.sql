-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 أكتوبر 2024 الساعة 20:33
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visits`
--

-- --------------------------------------------------------

--
-- بنية الجدول `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `device_type` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `visit_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `referer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `visits`
--

INSERT INTO `visits` (`id`, `ip_address`, `country`, `device_type`, `browser`, `visit_time`, `referer`) VALUES
(1, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 16:21:37', NULL),
(2, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 16:28:24', NULL),
(3, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 16:29:25', NULL),
(4, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 16:38:39', NULL),
(5, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 16:38:39', NULL),
(6, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 16:38:40', NULL),
(7, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:24:19', NULL),
(8, '127.0.0.1', '', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:25:19', NULL),
(9, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:55:00', NULL),
(10, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:55:03', NULL),
(11, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:57:30', NULL),
(12, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:57:32', NULL),
(13, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:58:21', NULL),
(14, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 17:58:22', NULL),
(15, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:01:01', NULL),
(16, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:01:06', NULL),
(17, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:01:09', NULL),
(18, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:02:11', NULL),
(19, NULL, NULL, NULL, NULL, '2024-10-12 18:08:29', 'غير معروف'),
(20, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:08:29', NULL),
(21, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:09:44', 'غير معروف'),
(22, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:09:46', 'غير معروف'),
(23, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:10:06', 'غير معروف'),
(24, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:12:13', 'http://example.com'),
(25, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:13:41', 'غير معروف'),
(26, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:15:50', 'غير معروف'),
(27, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:32:10', 'غير معروف'),
(28, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:32:14', 'غير معروف'),
(29, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:32:20', 'غير معروف'),
(30, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:32:22', 'غير معروف'),
(31, '127.0.0.1', 'غير معروف', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0', '2024-10-12 18:32:24', 'غير معروف');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
