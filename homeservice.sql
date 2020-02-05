-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2019 at 02:17 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `name` varchar(50) NOT NULL,
  `mob_no` text NOT NULL,
  `date` date NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`name`, `mob_no`, `date`, `pin_code`, `place`, `address`, `time`) VALUES
('reevan', '9945412121', '2019-11-06', 576117, 'udupi', '3-27 near garden house attur north post', '13:23:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `carpenter`
--

DROP TABLE IF EXISTS `carpenter`;
CREATE TABLE IF NOT EXISTS `carpenter` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carpenter`
--

INSERT INTO `carpenter` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-13', 9945412121, 'reevan', 576117, 'udupi', '15:21:00.000000'),
(2, '3-27 near garden house attur north post', '2019-11-15', 9945412121, 'reevan', 576117, 'karkala', '12:31:00.000000'),
(3, '3-27 near garden house attur north post', '2019-11-07', 9945412121, 'shravan', 576117, 'udupi', '14:12:00.000000'),
(4, '3-27 near garden house attur north post', '2019-11-10', 9945412121, 'kruthi', 123456, 'mangalore', '00:02:00.000000'),
(5, 'hampankatta mangalore', '2019-10-29', 9984523614, 'pratyush', 572192, 'mangalore', '13:21:00.000000'),
(6, 'jodrasthe, karkala', '2019-12-19', 7458621256, 'shreyan', 576117, 'karkala', '00:12:00.000000'),
(7, 'nalkubeedi ,udupi', '2019-11-03', 8456257984, 'shobhith', 574698, 'udupi', '12:31:00.000000'),
(8, 'vidyagiri,mangalore', '2019-11-29', 7486215693, 'shanthkumar', 546231, 'mangalore', '02:12:00.000000'),
(9, 'ananthashayana, karkala', '2019-11-27', 8456365986, 'sourabh', 579842, 'karkala', '15:13:00.000000'),
(10, 'bailoor, udupi', '2019-11-26', 9808767765, 'rithik', 541354, 'udupi', '02:12:00.000000'),
(11, 'attur, karkala taluk, udupi district, karnataka', '2019-11-17', 9808767765, 'cutinho', 576117, 'karkala', '02:12:00.000000'),
(12, 'mangalore', '2019-11-05', 7458621256, 'chris', 578964, 'mangalore', '14:21:00.000000'),
(13, 'mijar, mangalore', '2019-11-28', 7458621256, 'rishika', 578963, 'mangalore', '14:31:00.000000'),
(14, 'doopadakatte, karkala', '2019-11-19', 9808767765, 'adarsh', 576117, 'karkala', '00:22:00.000000'),
(15, 'Mangalore', '2019-11-12', 9808767765, 'praveen', 546328, 'mangalore', '00:21:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `cleaner`
--

DROP TABLE IF EXISTS `cleaner`;
CREATE TABLE IF NOT EXISTS `cleaner` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleaner`
--

INSERT INTO `cleaner` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-21', 9945412121, 'reevan', 576117, 'udupi', '13:21:00.000000'),
(2, 'moodbidri', '2019-11-12', 9945412121, 'ss', 576117, 'mangalore', '22:32:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `electrician`
--

DROP TABLE IF EXISTS `electrician`;
CREATE TABLE IF NOT EXISTS `electrician` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electrician`
--

INSERT INTO `electrician` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-18', 9945412121, 'reevan', 576117, 'udupi', '02:32:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `gardener`
--

DROP TABLE IF EXISTS `gardener`;
CREATE TABLE IF NOT EXISTS `gardener` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gardener`
--

INSERT INTO `gardener` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-12', 9945412121, 'reevan', 576117, 'udupi', '02:32:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic`
--

DROP TABLE IF EXISTS `mechanic`;
CREATE TABLE IF NOT EXISTS `mechanic` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanic`
--

INSERT INTO `mechanic` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-15', 9945412121, 'reevan', 576117, 'udupi', '15:12:00.000000'),
(2, '3-27 near garden house attur north post', '2019-11-11', 9945412121, 'hbjb', 576117, 'udupi', '12:31:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `painter`
--

DROP TABLE IF EXISTS `painter`;
CREATE TABLE IF NOT EXISTS `painter` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `painter`
--

INSERT INTO `painter` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-21', 9945412121, 'reevan', 576117, 'udupi', '14:13:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `pest`
--

DROP TABLE IF EXISTS `pest`;
CREATE TABLE IF NOT EXISTS `pest` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pest`
--

INSERT INTO `pest` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-18', 9945412121, 'reevan', 576117, 'udupi', '14:31:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `plumber`
--

DROP TABLE IF EXISTS `plumber`;
CREATE TABLE IF NOT EXISTS `plumber` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plumber`
--

INSERT INTO `plumber` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-15', 9945412121, 'reevan', 576117, 'udupi', '14:13:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
CREATE TABLE IF NOT EXISTS `salon` (
  `no` int(4) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pin_code` int(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon`
--

INSERT INTO `salon` (`no`, `address`, `date`, `mob_no`, `name`, `pin_code`, `place`, `time`) VALUES
(1, '3-27 near garden house attur north post', '2019-11-19', 9945412121, 'reevan', 576117, 'udupi', '13:21:00.000000'),
(2, '3-27 near garden house attur north post', '2019-11-26', 9945412121, 'zascsd', 576117, 'udupi', '14:31:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`name`) VALUES
('carpenter'),
('cleaner'),
('gardener'),
('painter'),
('mechanic'),
('electrician'),
('pest'),
('salon'),
('plumber');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `pass`) VALUES
('reevan', '1234'),
('admin', '1234'),
('rishika', '1234'),
('chris', 'wwww'),
('aaa', '1234'),
('reevan1', '1234'),
('aaaa', '1234'),
('kruthi', 'kruthi'),
('suresh', 'sourab'),
('reeev', '1234'),
('christo', 'Christopher10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
