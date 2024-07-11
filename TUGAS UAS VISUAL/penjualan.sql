-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2024 at 06:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `Id` int(8) NOT NULL,
  `Nik` int(16) DEFAULT NULL,
  `Name` char(100) DEFAULT NULL,
  `Telp` char(20) DEFAULT NULL,
  `Email` char(100) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Member` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`Id`, `Nik`, `Name`, `Telp`, `Email`, `Alamat`, `Member`) VALUES
(1, 56789, 'Arsyad', '089876543211', 'arsyad07@gmail.com', 'sahurai', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `Id` int(8) NOT NULL,
  `Name` char(100) DEFAULT NULL,
  `Diskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`Id`, `Name`, `Diskripsi`) VALUES
(1, 'Pcs', 'Pices'),
(2, 'Kg', 'Kilo gram'),
(3, 'Bok', 'Bok'),
(4, 'Dus', 'Dus'),
(5, 'lsn', 'Lusin'),
(6, 'krgg', 'karungs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
