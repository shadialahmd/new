-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2021 at 03:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `souqps`
--

-- --------------------------------------------------------

--
-- Table structure for table `land`
--

CREATE TABLE `land` (
  `id` int(10) NOT NULL,
  `add_id` int(10) NOT NULL,
  `header` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `land_on` varchar(100) NOT NULL,
  `governorate` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `about` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `valid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land`
--

INSERT INTO `land` (`id`, `add_id`, `header`, `area`, `price`, `land_on`, `governorate`, `city`, `address`, `street`, `about`, `create_date`, `update_date`, `user_id`, `valid`) VALUES
(3, 1, 'q', 'q', 12, 'q', 'q', 'q', 'q', '', 'q', '2021-01-19 00:00:00', '2021-01-13 00:00:00', 12, 12),
(4, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:17:44', '2021-01-13 12:17:44', 5, 1),
(5, 1, '12', '12', 12, '12', '5', '6', '7', '', '9121212', '2021-01-13 12:18:05', '2021-01-13 12:18:05', 5, 1),
(6, 1, '12', '12', 12, '12', '5', '6', '7', '', '9121212', '2021-01-13 12:18:19', '2021-01-13 12:18:19', 5, 1),
(7, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:27:37', '2021-01-13 12:27:37', 5, 1),
(8, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:28:39', '2021-01-13 12:28:39', 5, 1),
(9, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:32:06', '2021-01-13 12:32:06', 5, 1),
(10, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:32:10', '2021-01-13 12:32:10', 5, 1),
(11, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:34:22', '2021-01-13 12:34:22', 5, 1),
(12, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:34:33', '2021-01-13 12:34:33', 5, 1),
(13, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:36:41', '2021-01-13 12:36:41', 5, 1),
(14, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:36:51', '2021-01-13 12:36:51', 5, 1),
(15, 1, '1', '2', 3, '4', '5', '6', '7', '', '9', '2021-01-13 12:36:59', '2021-01-13 12:36:59', 5, 1),
(16, 1, '1', '2', 4, '3', '5', '6', '7', '', '9', '2021-01-13 12:56:44', '2021-01-13 12:56:44', 5, 1),
(17, 1, '1', '2', 4, '3', '5', '6', '7', '', '9', '2021-01-13 12:56:48', '2021-01-13 12:56:48', 5, 1),
(18, 1, '1', '2', 4, '3', '5', '6', '7', '', '9', '2021-01-13 12:56:51', '2021-01-13 12:56:51', 5, 1),
(19, 1, '', '', 0, '', '5', '6', '7', '', '9', '2021-01-13 13:00:15', '2021-01-13 13:00:15', 5, 1),
(20, 1, '1', '2', 3, '2', '5', '6', '7', '', '9', '2021-01-13 13:00:39', '2021-01-13 13:00:39', 5, 1),
(21, 1, '1', '2', 3, '2', '5', '6', '7', '', '9', '2021-01-13 13:00:54', '2021-01-13 13:00:54', 5, 1),
(22, 1, '1', '2', 3, '2', '5', '6', '7', '', '9', '2021-01-13 13:00:58', '2021-01-13 13:00:58', 5, 1),
(23, 1, '1', '2', 3, '2', '5', '6', '7', '', '9', '2021-01-13 13:01:03', '2021-01-13 13:01:03', 5, 1),
(24, 1, '', '', 0, '', '5', '6', '7', '', '9', '2021-01-13 13:01:28', '2021-01-13 13:01:28', 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `land`
--
ALTER TABLE `land`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
