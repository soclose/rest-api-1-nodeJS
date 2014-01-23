-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2014 at 03:41 AM
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_rest_api`
--
CREATE DATABASE IF NOT EXISTS `db_rest_api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_rest_api`;

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE IF NOT EXISTS `master_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id_user`, `nama`, `alamat`, `telp`, `email`) VALUES
(1, 'nurjalih', 'jl.kh.hasyim ashari Gg.Kancil Rt.002/05 Neroktog Pinang Tangerang Banten', '089654903110', 'nurjalihjalih@gmail.com'),
(2, 'Syifah Naziah', 'Jl.Ranca Panggung no.78 Rt 009/03 Cililin Bandung Barat', '0899976876453', 'syifah@gmail.com'),
(6, 'Andri Yunosa', 'Batu Ceper Tangerang', '08967786543', 'andri@yunosa.com'),
(7, 'Hilman Maulana', 'Bandung Cililin', '08967786543', 'Hilman@maulana.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
