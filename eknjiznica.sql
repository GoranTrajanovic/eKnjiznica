-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2020 at 04:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eknjiznica`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_username`, `admin_password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `knjige`
--

CREATE TABLE `knjige` (
  `id` int(11) NOT NULL,
  `knjiga_naslov` varchar(128) NOT NULL,
  `knjiga_autor` varchar(128) NOT NULL,
  `knjiga_vrsta` varchar(128) NOT NULL,
  `knjiga_kolicina` varchar(128) NOT NULL,
  `knjiga_date` varchar(128) NOT NULL,
  `knjiga_dostupno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `knjiznicar`
--

CREATE TABLE `knjiznicar` (
  `id` int(11) NOT NULL,
  `knjiznicar_name` varchar(128) NOT NULL,
  `knjiznicar_surname` varchar(128) NOT NULL,
  `knjiznicar_date` varchar(128) NOT NULL,
  `knjiznicar_username` varchar(128) NOT NULL,
  `knjiznicar_password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `knjiznicar`
--

INSERT INTO `knjiznicar` (`id`, `knjiznicar_name`, `knjiznicar_surname`, `knjiznicar_date`, `knjiznicar_username`, `knjiznicar_password`) VALUES
(1, 'Nova', 'Knjiznciraka', '2020-10-28', 'knjiznicarka1', 'knjiznicarka1');

-- --------------------------------------------------------

--
-- Table structure for table `posudjene_knjige`
--

CREATE TABLE `posudjene_knjige` (
  `posudba_ucenik_id` int(11) NOT NULL,
  `posudba_knjiga_id` int(11) NOT NULL,
  `br_preostalih_dana` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `propale_rezervacije`
--

CREATE TABLE `propale_rezervacije` (
  `propale_rezervacije_ucenik_id` int(11) NOT NULL,
  `propale_rezervacije_knjiga_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rezervirane_knjige`
--

CREATE TABLE `rezervirane_knjige` (
  `rezervirano_ucenik_id` int(11) NOT NULL,
  `rezervirano_knjiga_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ucenici`
--

CREATE TABLE `ucenici` (
  `id` int(11) NOT NULL,
  `ucenik_oznaka` varchar(128) NOT NULL,
  `ucenik_name` varchar(128) NOT NULL,
  `ucenik_surname` varchar(128) NOT NULL,
  `ucenik_email` varchar(128) NOT NULL,
  `ucenik_date` varchar(128) NOT NULL,
  `ucenik_username` varchar(128) NOT NULL,
  `ucenik_password` varchar(128) NOT NULL,
  `ucenik_br_posudjenih_knjiga` int(11) DEFAULT 0,
  `ucenik_br_rezervacija` int(11) DEFAULT 0,
  `ucenik_br_rezervacija_mjesecnih` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vrste`
--

CREATE TABLE `vrste` (
  `id` int(11) NOT NULL,
  `vrsta_ime` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjige`
--
ALTER TABLE `knjige`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knjiznicar`
--
ALTER TABLE `knjiznicar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posudjene_knjige`
--
ALTER TABLE `posudjene_knjige`
  ADD PRIMARY KEY (`posudba_ucenik_id`,`posudba_knjiga_id`);

--
-- Indexes for table `propale_rezervacije`
--
ALTER TABLE `propale_rezervacije`
  ADD PRIMARY KEY (`propale_rezervacije_ucenik_id`,`propale_rezervacije_knjiga_id`);

--
-- Indexes for table `rezervirane_knjige`
--
ALTER TABLE `rezervirane_knjige`
  ADD PRIMARY KEY (`rezervirano_ucenik_id`,`rezervirano_knjiga_id`);

--
-- Indexes for table `ucenici`
--
ALTER TABLE `ucenici`
  ADD PRIMARY KEY (`id`,`ucenik_oznaka`);

--
-- Indexes for table `vrste`
--
ALTER TABLE `vrste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knjige`
--
ALTER TABLE `knjige`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knjiznicar`
--
ALTER TABLE `knjiznicar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ucenici`
--
ALTER TABLE `ucenici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vrste`
--
ALTER TABLE `vrste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
