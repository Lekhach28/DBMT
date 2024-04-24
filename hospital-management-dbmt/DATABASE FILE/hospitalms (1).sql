-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2024 at 08:29 AM
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

    Create Database hospitalms;
    use hospitalms;

--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `admin_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`, `admin_id`) VALUES
('admin', 'admin123', 1);

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
  `doctorStatus` int(5) NOT NULL,
  `reason` varchar(250) DEFAULT NULL,
  `admin_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `BILLING_ID` int(10) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `TYPE` varchar(250) NOT NULL,
  `ID` int(10) NOT NULL,
  `AMOUNT` float NOT NULL,
  `BALANCE_AMOUNT` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `doctorname`, `email`, `spec`, `docFees`, `admin_id`) VALUES
('rishi', '123456', 'rishi yedlapalli', 'rishi@gmail.com', 'General', 500, 1),
('Vamshi', '123456', 'vamshi krishna madhavan', 'vamshi@gmail.com', 'Cardiologist', 600, 1),
('Lekha', '123456', 'lekha chittajallu', 'lekha@gmail.com', 'General', 400, 1),
('Praveen', '123456', 'praveen gurlinka', 'praveen@gmail.com', 'Gastroenterologist', 300, 1),
('Teja', '123456', 'teja akula', 'teja@gmail.com', 'Neurologist', 400, 1),
('Ashwitha', '123456', 'ashwitha reddy nimmala', 'ashwitha@gmail.com', 'Pediatrician', 700, 1),
('Spoorthy', '123456', 'spoorthy shivani pabba', 'spoorthy@gmail.com', 'Gynecologist', 500, 1),
('Dakshika', '123456', 'dakshika palanisamy', 'dakshika@gmail.com', 'Cardiologist', 400, 1),
('Sumanth', '123456', 'venkata sumanth reddy vangala', 'sumanth@gmail.com', 'Neurologist', 600, 1),
('Suchendra', '123456', 'suchendra reddy yalamakuru', 'suchendra@gmail.com', 'Gastroenterologist', 400, 1);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_details`
--

CREATE TABLE `insurance_details` (
  `INSURANCE_ID` int(11) NOT NULL,
  `PATIENT_ID` int(11) NOT NULL,
  `COVERAGE_PERCENT` int(11) NOT NULL,
  `INSURANCE_STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_details`
--

INSERT INTO `insurance_details` (`INSURANCE_ID`, `PATIENT_ID`, `COVERAGE_PERCENT`, `INSURANCE_STATUS`) VALUES
(1862814, 20, 60, 1),
(2157906, 19, 40, 0),
(2311347, 21, 70, 1),
(2311953, 26, 75, 0),
(2312126, 18, 50, 1),
(2313042, 27, 90, 1),
(2313313, 25, 50, 1),
(2313782, 24, 90, 0),
(2315011, 22, 60, 0),
(2344937, 23, 80, 1);

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
  `cpassword` varchar(30) NOT NULL,
  `admin_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`, `admin_id`) VALUES
(18, 'Rishi', 'Yedlapalli', 'Male', 'rishi@gmail.com', '9898989898', '123456', '123456', 1),
(19, 'Spoorthy Shivani', 'Pabba', 'Female', 'spoo@gmail.com', '8787878787', '123456', '123456', 1),
(20, 'Teja', 'Akula', 'Male', 'teja@gmail.com', '7676767676', '123456', '123456', 1),
(21, 'Lekha', 'Chittajallu', 'Female', 'lekha@gmail.com', '6565656565', '123456', '123456', 1),
(22, 'Praveen', 'Gurlinka', 'Male', 'praveen@gmail.com', '5454545454', '123456', '123456', 1),
(23, 'Vamshi Krishna', 'Madhavan', 'Male', 'vamshi@gmail.com', '4343434434', '123456', '123456', 1),
(24, 'Ashwitha Reddy', 'Nimmala', 'Female', 'ashwitha@gmail.com', '2323232323', '123456', '123456', 1),
(25, 'Dakshika', 'Palanisamy', 'Female', 'dakshika@gmail.com', '1212121211', '123456', '123456', 1),
(26, 'Venkata Sumanth Redd', 'Vangala', 'Male', 'venkata@gmail.com', '8989898989', '123456', '123456', 1),
(27, 'Suchendra Reddy', 'Yelamakuru', 'Male', 'suchendra@gmail.com', '7878787878', '123456', '123456', 1);

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
  `prescription` varchar(1000) NOT NULL,
  `presamt` varchar(15) NOT NULL,
  `PRESCRIPTION_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintb`
--
ALTER TABLE `admintb`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_ap_id` (`admin_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`BILLING_ID`),
  ADD KEY `fk_admin_al_id` (`PATIENT_ID`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD KEY `fk_admin_ap_id` (`admin_id`);

--
-- Indexes for table `insurance_details`
--
ALTER TABLE `insurance_details`
  ADD PRIMARY KEY (`INSURANCE_ID`),
  ADD KEY `fk_admin_aJ_id` (`PATIENT_ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fk_admin_2_id` (`admin_id`);

--
-- Indexes for table `prestb`
--
ALTER TABLE `prestb`
  ADD PRIMARY KEY (`PRESCRIPTION_ID`),
  ADD KEY `FK_pid` (`pid`),
  ADD KEY `FK_id` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintb`
--
ALTER TABLE `admintb`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `BILLING_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `prestb`
--
ALTER TABLE `prestb`
  MODIFY `PRESCRIPTION_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD CONSTRAINT `fk_ap_id` FOREIGN KEY (`admin_id`) REFERENCES `admintb` (`admin_id`);

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `fk_admin_al_id` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patreg` (`pid`);

--
-- Constraints for table `doctb`
--
ALTER TABLE `doctb`
  ADD CONSTRAINT `fk_admin_ap_id` FOREIGN KEY (`admin_id`) REFERENCES `admintb` (`admin_id`),
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admintb` (`admin_id`);

--
-- Constraints for table `insurance_details`
--
ALTER TABLE `insurance_details`
  ADD CONSTRAINT `fk_admin_aJ_id` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patreg` (`pid`);

--
-- Constraints for table `patreg`
--
ALTER TABLE `patreg`
  ADD CONSTRAINT `fk_admin_2_id` FOREIGN KEY (`admin_id`) REFERENCES `admintb` (`admin_id`);

--
-- Constraints for table `prestb`
--
ALTER TABLE `prestb`
  ADD CONSTRAINT `FK_id` FOREIGN KEY (`ID`) REFERENCES `appointmenttb` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
