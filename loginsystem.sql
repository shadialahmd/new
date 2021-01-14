-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2021 at 02:46 PM
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
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `note1` varchar(100) NOT NULL,
  `note2` varchar(100) NOT NULL,
  `available` varchar(100) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `fname`, `address`, `description`, `area`, `note1`, `note2`, `available`, `userid`) VALUES
(64, 'Translator 1', '217.165.61.76', 'Desc', 'Dubai', 'Note1', 'note2', 'y', 5),
(65, 'Translator  2', 'Al Yasmeen Bldg. Office 209 Salah Uddin Road Galadari Intersection Near Abu Hail Metro Station Deira', 'data', 'Ajman', 'n1', 'n3', 'y', 5),
(66, 'zxc', 'zxc', 'zxc', 'zxc', 'zxc', 'zxc', 'y', 5),
(67, '12', '22@xx.com', 'Lucky45', 'Jesse45', 'Bld Mihail 45, nr. 8 Bl 1, Sc 1, Ap 09', 'New York45', 'y', 5),
(68, '12', '22@xx.com', 'Lucky45', 'Jesse45', 'Bld Mihail 45, nr. 8 Bl 1, Sc 1, Ap 09', 'New York45', 'y', 5),
(69, 'lucky.jesse12', '123@ss.com', 'Lucky', 'Jesse123', 'Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09', 'New York', 'y', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(5, 'qw', 'qw@qw.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2020-12-27 09:18:44'),
(32, 'zx', 'zx@zx.com', 'e6c760b3216a51c656c5861d72d5bf62', '2021-01-11 10:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `usersinfo`
--

CREATE TABLE `usersinfo` (
  `id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `usersinfoid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersinfo`
--

INSERT INTO `usersinfo` (`id`, `birthdate`, `file_name`, `usersinfoid`) VALUES
(1, '2020-12-08', 'imgblog10.jpg', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `usersinfo`
--
ALTER TABLE `usersinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersinfoid` (`usersinfoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `usersinfo`
--
ALTER TABLE `usersinfo`
  ADD CONSTRAINT `usersinfo_ibfk_1` FOREIGN KEY (`usersinfoid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
