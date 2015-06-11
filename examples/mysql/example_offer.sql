-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2014 at 04:08 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `example_offer`
--

-- --------------------------------------------------------

--
-- Table structure for table `offer1`
--

CREATE TABLE IF NOT EXISTS `offer1` (
  `offerid` varchar(255) NOT NULL,
  `idplace` varchar(255) NOT NULL,
  `idproduct` varchar(255) NOT NULL,
  `idvendor` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`offerid`),
  KEY `idplace` (`idplace`),
  KEY `idproduct` (`idproduct`),
  KEY `idvendor` (`idvendor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer1`
--

INSERT INTO `offer1` (`offerid`, `idplace`, `idproduct`, `idvendor`, `price`) VALUES
('OF 01', 'PL 01', 'PR 01', 'VD 01', 100),
('OF 02', 'PL 01', 'PR 01', 'VD 02', 200),
('OF 03', 'PL 01', 'PR 02', 'VD 01', 300),
('OF 04', 'PL 01', 'PR 02', 'VD 02', 400),
('OF 05', 'PL 02', 'PR 01', 'VD 01', 500),
('OF 06', 'PL 02', 'PR 01', 'VD 02', 600),
('OF 07', 'PL 02', 'PR 02', 'VD 01', 700),
('OF 08', 'PL 02', 'PR 02', 'VD 02', 800);

-- --------------------------------------------------------

--
-- Table structure for table `offer2`
--

CREATE TABLE IF NOT EXISTS `offer2` (
  `idplace` varchar(255) NOT NULL,
  `idproduct` varchar(255) NOT NULL,
  `idvendor` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`idplace`,`idproduct`,`idvendor`),
  KEY `idproduct` (`idproduct`),
  KEY `idvendor` (`idvendor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer2`
--

INSERT INTO `offer2` (`idplace`, `idproduct`, `idvendor`, `price`) VALUES
('PL 01', 'PR 01', 'VD 01', 100),
('PL 01', 'PR 01', 'VD 02', 200),
('PL 01', 'PR 02', 'VD 01', 300),
('PL 01', 'PR 02', 'VD 02', 400),
('PL 02', 'PR 01', 'VD 01', 500),
('PL 02', 'PR 01', 'VD 02', 600),
('PL 02', 'PR 02', 'VD 01', 700),
('PL 02', 'PR 02', 'VD 02', 800);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `placeid` varchar(255) NOT NULL,
  `planename` varchar(255) NOT NULL,
  PRIMARY KEY (`placeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`placeid`, `planename`) VALUES
('PL 01', 'Place One'),
('PL 02', 'Place Two');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productid` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`) VALUES
('PR 01', 'Product One'),
('PR 02', 'Product Two');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorid` varchar(255) NOT NULL,
  `vendorname` varchar(255) NOT NULL,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorid`, `vendorname`) VALUES
('VD 01', 'Vendor One'),
('VD 02', 'Vendor Two');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offer1`
--
ALTER TABLE `offer1`
  ADD CONSTRAINT `offer1_ibfk_1` FOREIGN KEY (`idplace`) REFERENCES `place` (`placeid`),
  ADD CONSTRAINT `offer1_ibfk_2` FOREIGN KEY (`idproduct`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `offer1_ibfk_3` FOREIGN KEY (`idvendor`) REFERENCES `vendor` (`vendorid`);

--
-- Constraints for table `offer2`
--
ALTER TABLE `offer2`
  ADD CONSTRAINT `offer2_ibfk_1` FOREIGN KEY (`idplace`) REFERENCES `place` (`placeid`),
  ADD CONSTRAINT `offer2_ibfk_2` FOREIGN KEY (`idproduct`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `offer2_ibfk_3` FOREIGN KEY (`idvendor`) REFERENCES `vendor` (`vendorid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
