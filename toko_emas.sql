-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 12:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_emas`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`) VALUES
(1, '0,1gram', 125000),
(2, '0,2gram', 250000),
(3, '0,5gram', 550000),
(4, '1gram', 950000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat`, `Tanggal_Lahir`) VALUES
(1, 'agus', 'Taman Krakatau', '1995-08-17'),
(2, 'Ical', 'GSI', '1991-04-11'),
(3, 'maulana', 'PCI', '1989-05-11'),
(4, 'gusti', 'Pandeglang', '1988-06-04'),
(5, 'arsy', 'Cilegon', '1992-08-16'),
(6, 'bambang', 'Rakata', '1985-02-01'),
(7, 'widi', 'BKP', '1982-11-12'),
(8, 'ucok', 'Merak', '2000-06-06'),
(9, 'asep', 'Ciruas', '1996-06-11'),
(10, 'udin', 'GCI', '1987-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_karyawan`, `id_barang`, `nama_barang`, `jumlah_pembelian`, `total_pembelian`, `nama_pembeli`) VALUES
(1, 1, 1, '0,1gram', 1, 125000, 'Putri'),
(2, 1, 1, '0,1gram', 5, 650000, 'Albertus'),
(3, 1, 4, '1gram', 1, 950000, 'Dimas'),
(4, 1, 3, '0,5gram', 2, 1100000, 'Tubagus'),
(5, 1, 2, '0,2gram', 4, 1000000, 'Abrar'),
(6, 1, 3, '0,5gram', 1, 550000, 'inem'),
(7, 1, 1, '0,1gram', 1, 125000, 'bowo'),
(8, 1, 2, '0,2gram', 2, 500000, 'meimei'),
(9, 1, 3, '0,5gram', 1, 550000, 'cincong'),
(10, 1, 2, '0,2gram', 2, 500000, 'paijo'),
(11, 2, 3, '0,5gram', 1, 550000, 'mail'),
(12, 2, 3, '0,5gram', 1, 550000, 'mail'),
(13, 2, 3, '0,5gram', 2, 1100000, 'jamal'),
(14, 2, 4, '1gram', 2, 1900000, 'dodit'),
(15, 2, 1, '0,1gram', 6, 750000, 'acil'),
(16, 2, 2, '0,2gram', 4, 1000000, 'kilua'),
(17, 2, 3, '0,5gram', 9, 4950000, 'laki'),
(18, 2, 3, '0,5gram', 3, 1650000, 'maemunai'),
(19, 2, 3, '0,5gram', 5, 2750000, 'justin'),
(20, 2, 1, '0,1gram', 10, 1250000, 'kiki'),
(21, 3, 4, '1gram', 2, 1900000, 'sultan'),
(22, 3, 3, '0,5gram', 5, 2750000, 'cuer'),
(23, 3, 4, '1gram', 2, 1900000, 'raven'),
(24, 3, 1, '0,1gram', 15, 1875000, 'rafel'),
(25, 3, 2, '0,2gram', 7, 1750000, 'bisma'),
(26, 3, 2, '0,2gram', 12, 3000000, 'fauzan'),
(27, 3, 3, '0,5gram', 8, 4400000, 'gamal'),
(28, 3, 2, '0,2gram', 8, 2000000, 'rahmat'),
(29, 3, 4, '1gram', 5, 4750000, 'mark'),
(30, 3, 4, '1gram', 3, 2850000, 'jundan'),
(31, 4, 2, '0,2gram', 10, 2500000, 'mitra'),
(32, 4, 3, '0,5gram', 9, 4950000, 'nopal'),
(33, 4, 1, '0,1gram', 6, 750000, 'derry'),
(34, 4, 4, '1gram', 7, 6650000, 'khalid'),
(35, 4, 3, '0,5gram', 5, 2750000, 'hafiz'),
(36, 4, 2, '0,2gram', 8, 2000000, 'edi'),
(37, 4, 1, '0,1gram', 4, 500000, 'ariq'),
(38, 4, 4, '1gram', 10, 9500000, 'jaka'),
(39, 4, 3, '0,5gram', 6, 3300000, 'fizi'),
(40, 4, 1, '0,1gram', 7, 875000, 'ehsan'),
(41, 5, 1, '0,1gram', 9, 1125000, 'sandi'),
(42, 5, 1, '0,1gram', 8, 1000000, 'robi'),
(43, 5, 2, '0,2gram', 7, 1750000, 'mustafa'),
(44, 5, 2, '0,2gram', 6, 1500000, 'timothy'),
(45, 5, 3, '0,5gram', 8, 4400000, 'sisil'),
(46, 5, 3, '0,5gram', 7, 3850000, 'cardi'),
(47, 5, 4, '1gram', 3, 2850000, 'adri'),
(48, 5, 4, '1gram', 4, 3800000, 'riska'),
(49, 5, 2, '0,2gram', 3, 750000, 'tia'),
(50, 5, 3, '0,5gram', 1, 550000, 'bella'),
(51, 6, 1, '0,1gram', 1, 125000, 'miaw'),
(52, 6, 2, '0,2gram', 2, 500000, 'mbabwe'),
(53, 6, 3, '0,5gram', 4, 2200000, 'cimi'),
(54, 6, 4, '1gram', 2, 1900000, 'hiya'),
(55, 6, 1, '0,1gram', 5, 625000, 'ayih'),
(56, 6, 2, '0,2gram', 5, 1250000, 'hanya'),
(57, 6, 3, '0,5gram', 4, 2200000, 'diam'),
(58, 6, 4, '1gram', 4, 3800000, 'macan'),
(59, 6, 2, '0,2gram', 1, 250000, 'diah'),
(60, 6, 1, '0,1gram', 1, 125000, 'bapa'),
(61, 7, 1, '0,1gram', 1, 125000, 'leman'),
(62, 7, 2, '0,2gram', 1, 250000, 'endi'),
(63, 7, 3, '0,5gram', 1, 550000, 'faris'),
(64, 7, 4, '1gram', 1, 950000, 'efendi'),
(65, 7, 1, '0,1gram', 1, 125000, 'faisal'),
(66, 7, 2, '0,2gram', 1, 250000, 'hasan'),
(67, 7, 3, '0,5gram', 1, 550000, 'ferdi'),
(68, 7, 4, '1gram', 1, 950000, 'ligma'),
(69, 7, 4, '1gram', 1, 950000, 'balls'),
(70, 7, 2, '0,2gram', 1, 250000, 'kansas'),
(71, 8, 1, '0,1gram', 1, 125000, 'candice'),
(72, 8, 2, '0,2gram', 1, 250000, 'sugma'),
(73, 8, 3, '0,5gram', 1, 550000, 'deez'),
(74, 8, 4, '1gram', 1, 950000, 'dragon'),
(75, 8, 1, '0,1gram', 1, 125000, 'caty'),
(76, 8, 2, '0,2gram', 1, 250000, 'asuna'),
(77, 8, 3, '0,5gram', 1, 550000, 'kirito'),
(78, 8, 4, '1gram', 1, 950000, 'ronald'),
(79, 8, 4, '1gram', 1, 950000, 'diki'),
(80, 8, 3, '0,5gram', 1, 550000, 'riddick'),
(81, 9, 1, '0,1gram', 1, 125000, 'hani'),
(82, 9, 2, '0,2gram', 1, 250000, 'ulri'),
(83, 9, 3, '0,5gram', 1, 550000, 'andri'),
(84, 9, 4, '1gram', 1, 950000, 'corfo'),
(85, 9, 1, '0,1gram', 1, 125000, 'piero'),
(86, 9, 2, '0,2gram', 1, 250000, 'sokolof'),
(87, 9, 3, '0,5gram', 1, 550000, 'maemunah'),
(88, 9, 4, '1gram', 1, 950000, 'hendra'),
(89, 9, 1, '0,1gram', 1, 125000, 'heni'),
(90, 9, 2, '0,2gram', 1, 250000, 'omar'),
(91, 10, 1, '0,1gram', 1, 125000, 'allan'),
(92, 10, 2, '0,2gram', 1, 250000, 'bastian'),
(93, 10, 3, '0,5gram', 1, 550000, 'hatta'),
(94, 10, 4, '1gram', 1, 950000, 'karno'),
(95, 10, 1, '0,1gram', 1, 125000, 'harto'),
(96, 10, 4, '1gram', 4, 3800000, 'parto'),
(97, 10, 2, '0,2gram', 4, 1000000, 'leto'),
(98, 10, 3, '0,5gram', 4, 2200000, 'yanto'),
(99, 10, 3, '0,5gram', 6, 3300000, 'bento'),
(100, 10, 4, '1gram', 15, 14250000, 'alto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `nama_barang` (`nama_barang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `nama_karyawan` (`nama_karyawan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
