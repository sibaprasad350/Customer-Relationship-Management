-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 07:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('anwesh', '1234'),
('subham', '1234'),
('siba', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Name`, `Count`) VALUES
(1, 'Keyboard', 113),
(2, 'Mouse', 69),
(3, 'Screen', 55),
(4, 'Ram', 15),
(5, 'Speaker', 50),
(6, 'rom', 0),
(7, 'chip', 50),
(8, 'tv', 50),
(9, 'lcd', 50),
(33, 'ROM', 200);

-- --------------------------------------------------------

--
-- Table structure for table `products_sold`
--

CREATE TABLE `products_sold` (
  `Customer_name` varchar(30) DEFAULT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `warranty` int(11) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_sold`
--

INSERT INTO `products_sold` (`Customer_name`, `Product_id`, `warranty`, `product_name`, `date`) VALUES
('Anmol', 1, 50, 'Mouse', NULL),
('Parbhat', 1, 25, 'Mouse', NULL),
('papa', 2, 60, 'Keyboard', NULL),
('nri', 1, 50, 'Mouse', NULL),
('Anmol', 1, 50, 'Mouse\"2014-12-02 01:07:43', NULL),
('md', 1, 50, 'chd', '2014-12-02'),
('ps', 1, 20, 'Mouse', '2014-12-03'),
('appaji', 1, 20, 'Mouse', '2014-12-03'),
('1', 1, 20, 'key', '2014-12-03'),
('nope', 1, 50, 'Keyboard', '2014-12-03'),
('nopei', 1, 50, 'Keyboard', '2014-12-03'),
('real', 6, 2, 'Keyboard', '2014-12-03'),
('15', 2, 50, 'Mouse', '2014-12-03'),
('ISO-9001:2008 certified', 1, 33, 'Keyboard', '2014-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
