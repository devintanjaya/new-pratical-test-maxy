-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 07:46 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_maxy_academy`
--
CREATE DATABASE IF NOT EXISTS `test_maxy_academy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_maxy_academy`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_before_discount` double DEFAULT NULL,
  `price_after_discount` double DEFAULT NULL,
  `link_image` text,
  `deskripsi_barang` text,
  `keterangan` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `sku`, `nama`, `quantity`, `price_before_discount`, `price_after_discount`, `link_image`, `deskripsi_barang`, `keterangan`, `status`, `created`, `updated`) VALUES
(1, 'A0001', 'Test Barang 0001', 20, 12000000, 15000000, '', '', '', 1, '2024-01-16 20:44:07', '2024-01-16 20:44:07'),
(2, 'A0002', 'Test Barang 0002', 50, 15000000, 14000000, '', '', '', 1, '2024-01-16 20:44:07', '2024-01-16 20:44:07'),
(3, 'A00003', 'Test Barang 0003', 20, 30000000, 25000000, NULL, NULL, NULL, 1, '2024-01-17 11:19:06', '2024-01-17 11:19:06'),
(4, 'A00004', 'Test Barang 0004', 40, 30000000, 25000000, NULL, '', NULL, 1, '2024-01-17 11:42:42', '2024-01-17 11:42:42'),
(5, 'A00003', 'Test Barang 0003', 50, 10000000, 8000000, NULL, NULL, NULL, 0, '2024-01-17 11:44:04', '2024-01-17 11:44:04'),
(6, 'B00001', 'Test Barang 10001', 50, 50000000, 40000000, NULL, 'Test Barang', NULL, 1, '2024-01-17 12:12:10', '2024-01-17 12:12:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
