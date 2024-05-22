-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 03:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-11-10 01:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 1, 'anuj@gmail.com', '05/18/2017', '05/31/2017', '\"Lorem ipsum dolor sit amet, cpariatur. Excepteur sint ', '2017-05-13 19:01:10', 2, 'u', '2017-05-13 21:30:23'),
(9, 1, 'demo@test.com', '05/19/2017', '05/21/2017', 'demo test demo test', '2017-05-14 07:45:11', 1, NULL, '2017-05-14 07:47:45'),
(10, 5, 'abc@g.com', '05/22/2017', '05/24/2017', 'test test t test test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:26', 1, NULL, '2017-05-14 07:58:19'),
(11, 1, 'adv4607@gmail.com', '2024-04-01', '2024-04-10', 'test', '2024-04-14 12:51:35', 1, NULL, '2024-04-14 12:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'test', 'anuj@gmail.com', '21321312', 'teststtset', 'fsdgsdgsdgssgsgsdg', '2024-04-14 11:23:29', 1),
(2, 'test', 'anuj@gmail.com', '21321312', 'teststtset', 'fsdgsdgsdgssgsgsdg', '2024-04-14 11:23:29', 1),
(3, 'Archan Vadgama', 'adv4607@gmail.com', '7600056746', 'Test', 'Test description ', '2024-04-14 12:36:01', 1),
(4, 'Archan Vadgama', 'adv4607@gmail.com', '7600056746', 'dasd', 'asdasd', '2024-04-14 12:38:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `Issue` varchar(20) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `PostingDate` date NOT NULL,
  `UserEmail` varchar(20) NOT NULL,
  `AdminRemark` varchar(20) NOT NULL,
  `AdminremarkDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `Issue`, `Description`, `PostingDate`, `UserEmail`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, 'idk', 'wqeqweqwe', '2024-04-14', 'anuj@gmail.com', 'remark', '2024-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `detail` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `detail`, `type`) VALUES
(1, '										tset', 'terms'),
(2, 'privacy', 'privacy'),
(3, '										aboutus2', 'aboutus'),
(4, '										tset', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(20) NOT NULL,
  `PackageType` varchar(20) NOT NULL,
  `PackageLocation` varchar(20) NOT NULL,
  `PackagePrice` int(20) NOT NULL,
  `PackageFetures` varchar(20) NOT NULL,
  `PackageDetails` varchar(100) NOT NULL,
  `PackageImage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`) VALUES
(1, 'test package', 'holiday', 'manali', 455, 'xuasdn', 'asfaf', 'download (11).jpg'),
(2, 'test package2', 'ddas', 'adsa', 0, 'asd', 'asda', 'download (10).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(20) NOT NULL,
  `MobileNumber` int(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'test', 21321312, 'anuj@gmail.com', '', '2024-04-14 11:09:16', '2024-04-14 11:09:16'),
(2, 'Archan Vadgama', 2147483647, 'adv4607@gmail.com', 'a411b1887d60efc3022c', '2024-04-14 12:43:08', '2024-04-14 12:43:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
