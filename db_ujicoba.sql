-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2026 at 07:37 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujicoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_ujicoba`
--

CREATE TABLE `tb_ujicoba` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_login` int(11) NOT NULL DEFAULT 1,
  `waktu_pertama` datetime NOT NULL,
  `waktu_terakhir` datetime NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_ujicoba`
--

INSERT INTO `tb_ujicoba` (`id`, `nama`, `email`, `total_login`, `waktu_pertama`, `waktu_terakhir`, `ip_address`) VALUES
(1, 'Dimas', 'dimas_ukin@gmail.com', 1, '2026-11-16 11:13:47', '2026-11-16 11:13:47', '::1'),
(2, 'Dimas', 'dimasukin@gmail.com', 1, '2026-11-16 11:46:09', '2026-11-16 11:46:09', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_ujicoba`
--
ALTER TABLE `tb_ujicoba`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ujicoba`
--
ALTER TABLE `tb_ujicoba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
