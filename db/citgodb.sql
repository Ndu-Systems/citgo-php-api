-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 06:44 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citgodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankingdetails`
--

CREATE TABLE `bankingdetails` (
  `BankingDetailsId` varchar(225) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `BankName` varchar(225) NOT NULL,
  `BankBranch` varchar(225) NOT NULL,
  `AccountNumber` varchar(225) NOT NULL,
  `AccountType` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankingdetails`
--

INSERT INTO `bankingdetails` (`BankingDetailsId`, `ClientId`, `BankName`, `BankBranch`, `AccountNumber`, `AccountType`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('5d9406df-6f66-11e9-bde7-f48e38e878a3', '598a9063-6f66-11e9-bde7-f48e38e878a3', '32432', '423432', '4324', '42343', '2019-05-05 20:48:25', '598a9063-6f66-11e9-bde7-f48e38e878a3', '2019-05-05 20:48:25', '598a9063-6f66-11e9-bde7-f48e38e878a3', 1),
('7b4b409a-6f65-11e9-bde7-f48e38e878a3', '606563b9-6f65-11e9-bde7-f48e38e878a3', 'FAB', 'FAB', '23232', 'FAB', '2019-05-05 20:42:06', '606563b9-6f65-11e9-bde7-f48e38e878a3', '2019-05-05 20:42:06', '606563b9-6f65-11e9-bde7-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `BeneficiaryId` varchar(225) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Surname` varchar(225) NOT NULL,
  `IDNumber` varchar(225) NOT NULL,
  `Relation` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`BeneficiaryId`, `ClientId`, `Name`, `Surname`, `IDNumber`, `Relation`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('80858a06-6f65-11e9-bde7-f48e38e878a3', '606563b9-6f65-11e9-bde7-f48e38e878a3', 'dfdsf', 'fdsfs', '3213', 'sd', '2019-05-05 20:42:15', '606563b9-6f65-11e9-bde7-f48e38e878a3', '2019-05-05 20:42:15', '606563b9-6f65-11e9-bde7-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientinvestments`
--

CREATE TABLE `clientinvestments` (
  `Id` varchar(225) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `InvestmentId` varchar(225) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientinvestments`
--

INSERT INTO `clientinvestments` (`Id`, `ClientId`, `InvestmentId`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`, `StatusId`) VALUES
('3a84e55c-701d-11e9-9519-f48e38e878a3', '598a9063-6f66-11e9-bde7-f48e38e878a3', '9ce8593f-701c-11e9-9519-f48e38e878a3', '1', '2019-05-06 18:37:24', '1', '2019-05-06 18:37:24', 1),
('3a850421-701d-11e9-9519-f48e38e878a3', '598a9063-6f66-11e9-bde7-f48e38e878a3', 'd2507a51-701c-11e9-9519-f48e38e878a3', '1', '2019-05-06 18:37:24', '1', '2019-05-06 18:37:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientId` varchar(225) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `FirstName` varchar(225) NOT NULL,
  `MiddleName` varchar(225) DEFAULT NULL,
  `Surname` varchar(225) NOT NULL,
  `Province` varchar(225) NOT NULL,
  `Address` varchar(225) NOT NULL,
  `IDNumber` varchar(225) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `City` varchar(225) DEFAULT NULL,
  `PostCode` varchar(225) DEFAULT NULL,
  `ParentId` varchar(225) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientId`, `UserId`, `FirstName`, `MiddleName`, `Surname`, `Province`, `Address`, `IDNumber`, `Gender`, `City`, `PostCode`, `ParentId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('598a9063-6f66-11e9-bde7-f48e38e878a3', '5989f18f-6f66-11e9-bde7-f48e38e878a3', 'Nduduzo', 'dsfds', 'Magwaza', 'Gauteng', 'Angular STREETS', '3432432', 'Male', 'Johannesburg', '2194', NULL, '2019-05-05 20:48:19', 'SYSTEM_WEB', '2019-05-05 20:48:19', 'SYSTEM_WEB', 1),
('606563b9-6f65-11e9-bde7-f48e38e878a3', '60622a96-6f65-11e9-bde7-f48e38e878a3', 'Nduduzo', NULL, 'Magwaza', 'Gauteng', 'Angular STREETS', '3242343243', 'Male', 'Johannesburg', '2194', NULL, '2019-05-05 20:41:21', 'SYSTEM_WEB', '2019-05-05 20:41:21', 'SYSTEM_WEB', 1),
('8d82242c-61af-11e9-ac92-80fa5b45280e', '8d81d1a0-61af-11e9-ac92-80fa5b45280e', 'lkjll', 'jkll', 'jkl', 'hgfh', 'hgfh', '78658', 'Female', 'g', '566', NULL, '2019-04-18 09:57:03', 'SYSTEM_WEB', '2019-04-18 09:57:03', 'SYSTEM_WEB', 1),
('9b35f086-61b0-11e9-ac92-80fa5b45280e', '9b351084-61b0-11e9-ac92-80fa5b45280e', 'fsdf', 'fdsf', 'fdsff', 'fds', 'fds', '54354', 'Male', 'fdsf', '43', NULL, '2019-04-18 10:04:36', 'SYSTEM_WEB', '2019-04-18 10:04:36', 'SYSTEM_WEB', 1),
('a39d846a-61b3-11e9-ac92-80fa5b45280e', 'a39d2479-61b3-11e9-ac92-80fa5b45280e', 'hgfhh', 'gfh', 'hfgh', '4343', 'fdsfd', '545', 'Male', 'fdfd', '434', NULL, '2019-04-18 10:26:19', 'SYSTEM_WEB', '2019-04-18 10:26:19', 'SYSTEM_WEB', 1),
('b37f09ea-61b0-11e9-ac92-80fa5b45280e', 'b37eb2ca-61b0-11e9-ac92-80fa5b45280e', 'dsad', 'dsad', 'dasd', 'FSD', 'FDSF', '4324', 'Male', 'FDS', '432', NULL, '2019-04-18 10:05:17', 'SYSTEM_WEB', '2019-04-18 10:05:17', 'SYSTEM_WEB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientwithdrawals`
--

CREATE TABLE `clientwithdrawals` (
  `Id` varchar(225) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `WithdrawalId` varchar(225) NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `DocumentId` varchar(225) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `DocumentName` varchar(225) NOT NULL,
  `DocumentUrl` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `InvestmentId` varchar(225) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Profit` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) DEFAULT NULL,
  `Name` varchar(225) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `InvestmentDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment`
--

INSERT INTO `investment` (`InvestmentId`, `Amount`, `Profit`, `Total`, `Name`, `Type`, `InvestmentDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('9ce8593f-701c-11e9-9519-f48e38e878a3', '5000', '0', '0', 'Test Investment', 'Month-To-Month', '2019-05-06 18:33:00', '2019-05-06 18:33:00', '1', '2019-05-06 18:33:00', '1', 1),
('d2507a51-701c-11e9-9519-f48e38e878a3', '5000', '0', '0', 'Test Investment 2', 'Yearly', '2019-05-06 18:34:30', '2019-05-06 18:34:30', '1', '2019-05-06 18:34:30', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleId` int(11) NOT NULL,
  `Description` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `StatusId` int(11) NOT NULL,
  `Description` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `IsActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `TransactionHistoryId` varchar(225) NOT NULL,
  `Action` varchar(225) NOT NULL,
  `PayLoad` text NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(225) NOT NULL,
  `RoleId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `CellphoneNumber` varchar(225) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `CellphoneNumber`, `Password`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('19c58f7b-6f68-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 21:00:51', 'SYSTEM_WEB', '2019-05-05 21:00:51', 'SYSTEM_WEB', 1),
('5989f18f-6f66-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:48:19', 'SYSTEM_WEB', '2019-05-05 20:48:19', 'SYSTEM_WEB', 1),
('60622a96-6f65-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:41:21', 'SYSTEM_WEB', '2019-05-05 20:41:21', 'SYSTEM_WEB', 1),
('8d81d1a0-61af-11e9-ac92-80fa5b45280e', 'jkk@tr', 'vc', 'pass@123!', '2019-04-18 09:57:03', 'SYSTEM_WEB', '2019-04-18 09:57:03', 'SYSTEM_WEB', 1),
('9b351084-61b0-11e9-ac92-80fa5b45280e', 'fsd@sAS', '4324', 'pass@123!', '2019-04-18 10:04:36', 'SYSTEM_WEB', '2019-04-18 10:04:36', 'SYSTEM_WEB', 1),
('a39d2479-61b3-11e9-ac92-80fa5b45280e', 'gfd@dsd', '434', 'pass@123!', '2019-04-18 10:26:19', 'SYSTEM_WEB', '2019-04-18 10:26:19', 'SYSTEM_WEB', 1),
('b37eb2ca-61b0-11e9-ac92-80fa5b45280e', 'fsd@DSAD', '343', 'pass@123!', '2019-04-18 10:05:17', 'SYSTEM_WEB', '2019-04-18 10:05:17', 'SYSTEM_WEB', 1),
('f1dc8dbf-6f67-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:59:44', 'SYSTEM_WEB', '2019-05-05 20:59:44', 'SYSTEM_WEB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `WithdrawalId` varchar(225) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `WidrawnAmount` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) DEFAULT NULL,
  `Name` varchar(225) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `InvestmentDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankingdetails`
--
ALTER TABLE `bankingdetails`
  ADD PRIMARY KEY (`BankingDetailsId`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`BeneficiaryId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientId`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`StatusId`);

--
-- Indexes for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD PRIMARY KEY (`TransactionHistoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
