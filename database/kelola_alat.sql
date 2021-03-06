-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 05:54 PM
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
-- Database: `sionlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(225) NOT NULL,
  `satuan_alat` varchar(225) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_minimal` int(11) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `pendanaan` varchar(225) NOT NULL,
  `harga` int(11) NOT NULL,
  `kondisi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_alat`
--

INSERT INTO `kelola_alat` (`id`, `nama_alat`, `satuan_alat`, `kategori`, `stok`, `stok_minimal`, `lokasi`, `pendanaan`, `harga`, `kondisi`) VALUES
(5, '1', '3', '1', 2, 5, '3', '3', 10000000, 'rusak'),
(6, '2', '1', '4', 2, 5, '5', '3', 10000000, 'rusak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
