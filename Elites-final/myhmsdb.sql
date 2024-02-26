-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Katli', 'lebusa', 'Male', 'katli@gmail.com', '8838489464', 'Zinhle', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Katli',' lebusa', 'Male', 'katli@gmail.com', '8838489464', 'Zinhle', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'molemo', 'Mokena', 'Male', 'molemo@gmail@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Jozi', 'Kapoora', 'Female', 'jozi@gmail.com', '9768946252', 'Thato', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Lebo', 'lebusa', 'Male', 'lebo@gmail.com', '8838489464', 'Zinhle', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Katli', 'lebusa', 'Male', 'katli@gmail.com', '8838489464', 'Zinhle', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'mokena', 'Female', 'alia@gmail.com', '8976897689', 'Zinhle', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gauta', 'Shaka', 'Male', 'gauta@gmail.com', '9070897653', 'Zinhle', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Katli', 'Lebusa', 'Male', 'katli@gmail.com', '8838489464', 'Zinhle', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Mosia', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Zinhle', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Thabane', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Thabane', 'Male', 'william@gmail.com', '8683619153', 'Thato', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '0784567789', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '089977886', 'Good Job, Pal'),
('Anthi', 'anathi@gmail.com', '0997888879', 'How can I reach you?'),
('Noma, 'noma@gmail.com', '0788979967', 'Love your site'),
('Vuyo', 'vuyo@gmail.com', '0977768978', 'Want some coffee?'),
('Katli', 'katli@gmail.com', '0898989898', 'Good service'),
('thabo', 'thabo@gmail.com', '0979776868', 'Love your service'),
('molemo', molemo@gmail.com', '087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '0869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('king', 'king123', 'king@gmail.com', 'General', 500),
('Millicent', 'millicent123', 'millicent@gmail.com', 'Cardiologist', 600),
('Zinhle', 'zinhle123', 'zinhle@gmail.com', 'General', 700),
('Nono', 'Nono123', 'nono@gmail.com', 'Pediatrician', 550),
('Steven', 'steven123', 'steven@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abby', 'abby123', 'abby@gmail.com', 'Neurologist', 1500),
('Tate', 'tate123', 'tate@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Marvin', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),


-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Millicent', 1, 11, 'Katli', 'lebusa', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Zinhle', 2, 8, 'Katli', 'lebusa', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Steven', 3, 12, 'molemo', 'Mokena', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Abby', 4, 13, 'Jozi', 'Kapoora', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
