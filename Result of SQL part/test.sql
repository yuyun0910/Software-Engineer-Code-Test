-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2021 pada 12.03
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `CID` int(50) NOT NULL,
  `Name` text NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`CID`, `Name`, `Gender`, `Phone`) VALUES
(101, 'Dwi', 'Female', '091234567890'),
(102, 'Putri', 'Female', '082345678901'),
(103, 'Wahyu', 'Female', '083456789012'),
(104, 'Ningsih', 'Female', '084567890123'),
(105, 'Bagus', 'Male', '085678901234'),
(106, 'Adit', 'Male', '086789012345'),
(107, 'Pramu', 'Male', '087890123456'),
(108, 'Ditya', 'Male', '088901234567'),
(109, 'Admi', 'Male', '089012345678'),
(110, 'Adji', 'Male', '080123456789');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `PID` int(50) NOT NULL,
  `Name_Product` varchar(50) NOT NULL,
  `Unit Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`PID`, `Name_Product`, `Unit Price`) VALUES
(201, 'Gerry', '1000'),
(202, 'Salut', '3000'),
(203, 'Malkist', '4000'),
(205, 'Rinso', '7000'),
(206, 'Downy', '2000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `CID` int(50) NOT NULL,
  `PID` int(50) NOT NULL,
  `Time` datetime(6) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Total_Price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`CID`, `PID`, `Time`, `Quantity`, `Total_Price`) VALUES
(106, 206, '2021-04-18 15:10:49.000000', 5, 10000),
(109, 201, '2021-04-18 15:05:49.941000', 6, 6000),
(101, 203, '2021-04-18 15:10:28.578000', 8, 32000),
(102, 203, '2021-04-18 15:17:28.093000', 9, 36000),
(110, 206, '2021-04-18 15:22:28.175000', 10, 20000),
(108, 205, '2021-04-18 15:00:28.875000', 3, 21000),
(107, 201, '2021-04-18 15:20:28.342000', 4, 4000),
(106, 202, '2021-04-18 15:32:28.601000', 7, 21000),
(105, 203, '2021-04-18 15:25:28.638000', 1, 4000),
(104, 206, '2021-04-18 15:35:28.876000', 2, 4000),
(103, 205, '2021-04-18 15:30:28.746000', 5, 35000),
(103, 203, '2021-04-18 17:00:07.010000', 6, 24000),
(102, 206, '2021-04-18 16:00:07.000000', 7, 14000),
(107, 205, '2021-04-18 18:00:07.437000', 8, 56000),
(104, 201, '2021-04-18 19:00:07.174000', 9, 9000),
(101, 202, '2021-04-18 20:00:07.563000', 10, 30000),
(108, 203, '2021-04-18 21:00:07.573000', 3, 12000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `CID` (`CID`),
  ADD KEY `PID` (`PID`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `customer` (`CID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
