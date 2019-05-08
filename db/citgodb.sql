-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 04:16 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
('2596e3aa-7197-11e9-9e99-80fa5b45280e', 'User with email address (rewr@dsadsa) already exists', '32133', '3213', '213', '2332', '2019-05-08 15:42:39', 'User with email address (rewr@dsadsa) already exists', '2019-05-08 15:42:39', 'User with email address (rewr@dsadsa) already exists', 1),
('4ff2c08b-7198-11e9-9e99-80fa5b45280e', '46af11e0-7198-11e9-9e99-80fa5b45280e', 'eqwrew', 'ewrwe', '332132', 'ewrewr', '2019-05-08 15:51:00', '46af11e0-7198-11e9-9e99-80fa5b45280e', '2019-05-08 15:51:00', '46af11e0-7198-11e9-9e99-80fa5b45280e', 1),
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
('291b9f67-7197-11e9-9e99-80fa5b45280e', 'User with email address (rewr@dsadsa) already exists', '32133', '2133', '2133', '213', '2019-05-08 15:42:45', 'User with email address (rewr@dsadsa) already exists', '2019-05-08 15:42:45', 'User with email address (rewr@dsadsa) already exists', 1),
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
  `Country` varchar(100) DEFAULT NULL,
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

INSERT INTO `clients` (`ClientId`, `UserId`, `FirstName`, `MiddleName`, `Surname`, `Province`, `Address`, `IDNumber`, `Gender`, `Country`, `City`, `PostCode`, `ParentId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('46af11e0-7198-11e9-9e99-80fa5b45280e', '46ae4982-7198-11e9-9e99-80fa5b45280e', 'sadad', 'sadsad', 'dssadsa', '32dsad', 'Not needed', '213213', 'Male', 'Eswatini', 'fdsfds', '0000', NULL, '2019-05-08 15:50:44', 'SYSTEM_WEB', '2019-05-08 15:50:44', 'SYSTEM_WEB', 1),
('598a9063-6f66-11e9-bde7-f48e38e878a3', '5989f18f-6f66-11e9-bde7-f48e38e878a3', 'Nduduzo', 'dsfds', 'Magwaza', 'Gauteng', 'Angular STREETS', '3432432', 'Male', NULL, 'Johannesburg', '2194', NULL, '2019-05-05 20:48:19', 'SYSTEM_WEB', '2019-05-05 20:48:19', 'SYSTEM_WEB', 1),
('606563b9-6f65-11e9-bde7-f48e38e878a3', '60622a96-6f65-11e9-bde7-f48e38e878a3', 'Nduduzo', NULL, 'Magwaza', 'Gauteng', 'Angular STREETS', '3242343243', 'Male', NULL, 'Johannesburg', '2194', NULL, '2019-05-05 20:41:21', 'SYSTEM_WEB', '2019-05-05 20:41:21', 'SYSTEM_WEB', 1),
('8d82242c-61af-11e9-ac92-80fa5b45280e', '8d81d1a0-61af-11e9-ac92-80fa5b45280e', 'lkjll', 'jkll', 'jkl', 'hgfh', 'hgfh', '78658', 'Female', NULL, 'g', '566', NULL, '2019-04-18 09:57:03', 'SYSTEM_WEB', '2019-04-18 09:57:03', 'SYSTEM_WEB', 1),
('9b35f086-61b0-11e9-ac92-80fa5b45280e', '9b351084-61b0-11e9-ac92-80fa5b45280e', 'fsdf', 'fdsf', 'fdsff', 'fds', 'fds', '54354', 'Male', NULL, 'fdsf', '43', NULL, '2019-04-18 10:04:36', 'SYSTEM_WEB', '2019-04-18 10:04:36', 'SYSTEM_WEB', 1),
('a39d846a-61b3-11e9-ac92-80fa5b45280e', 'a39d2479-61b3-11e9-ac92-80fa5b45280e', 'hgfhh', 'gfh', 'hfgh', '4343', 'fdsfd', '545', 'Male', NULL, 'fdfd', '434', NULL, '2019-04-18 10:26:19', 'SYSTEM_WEB', '2019-04-18 10:26:19', 'SYSTEM_WEB', 1),
('b37f09ea-61b0-11e9-ac92-80fa5b45280e', 'b37eb2ca-61b0-11e9-ac92-80fa5b45280e', 'dsad', 'dsad', 'dasd', 'FSD', 'FDSF', '4324', 'Male', NULL, 'FDS', '432', NULL, '2019-04-18 10:05:17', 'SYSTEM_WEB', '2019-04-18 10:05:17', 'SYSTEM_WEB', 1);

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
('d2507a51-701c-11e9-9519-f48e38e878a3', '5000', '0', '0', 'Test Investment 2', 'Yearly', '2019-05-06 18:34:30', '2019-05-06 18:34:30', '1', '2019-05-06 18:34:30', '1', 1),
('d2507a51-701c-11e9-9519-f48e58e878a3', '600', '0', '0', 'Test Investment 2', 'Yearly', '2019-05-06 18:34:30', '2019-05-06 18:34:30', '1', '2019-05-06 18:34:30', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `ProfitId` varchar(255) NOT NULL,
  `InvestmentId` varchar(255) NOT NULL,
  `ProfitAmount` decimal(20,0) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(255) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(255) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`ProfitId`, `InvestmentId`, `ProfitAmount`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('9ce8593f-701c-11e9-9519-f48e38e87eee', '9ce8593f-701c-11e9-9519-f48e38e878a3', '450', '2019-03-31 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87hhh', '9ce8593f-701c-11e9-9519-f48e38e878a3', '300', '2019-02-28 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87klk', '9ce8593f-701c-11e9-9519-f48e38e878a3', '750', '2019-04-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1);

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

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleId`, `Description`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(2, 'Client', '2019-05-06 21:48:02', 'me', '2019-05-06 21:48:02', 'me', 1);

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
  `PayLoad` text,
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

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`Id`, `UserId`, `RoleId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, '19c58f7b-6f68-11e9-bde7-f48e38e878a3', '2', '2019-05-06 00:00:00', 'me', '2019-05-06 00:00:00', 'me', 1);

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
('2083b0d9-7197-11e9-9e99-80fa5b45280e', 'rewr@dsadsa', '321321', 'pass@123!', '2019-05-08 15:42:31', 'SYSTEM_WEB', '2019-05-08 15:42:31', 'SYSTEM_WEB', 1),
('46ae4982-7198-11e9-9e99-80fa5b45280e', 'ddadasd@dsdsad', '3213', 'pass@123!', '2019-05-08 15:50:44', 'SYSTEM_WEB', '2019-05-08 15:50:44', 'SYSTEM_WEB', 1),
('5989f18f-6f66-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:48:19', 'SYSTEM_WEB', '2019-05-05 20:48:19', 'SYSTEM_WEB', 1),
('60622a96-6f65-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:41:21', 'SYSTEM_WEB', '2019-05-05 20:41:21', 'SYSTEM_WEB', 1),
('89cb1440-7197-11e9-9e99-80fa5b45280e', 'sad@dsdsd3', '213', 'pass@123!', '2019-05-08 15:45:27', 'SYSTEM_WEB', '2019-05-08 15:45:27', 'SYSTEM_WEB', 1),
('8d81d1a0-61af-11e9-ac92-80fa5b45280e', 'jkk@tr', 'vc', 'pass@123!', '2019-04-18 09:57:03', 'SYSTEM_WEB', '2019-04-18 09:57:03', 'SYSTEM_WEB', 1),
('9b351084-61b0-11e9-ac92-80fa5b45280e', 'fsd@sAS', '4324', 'pass@123!', '2019-04-18 10:04:36', 'SYSTEM_WEB', '2019-04-18 10:04:36', 'SYSTEM_WEB', 1),
('a39d2479-61b3-11e9-ac92-80fa5b45280e', 'gfd@dsd', '434', 'pass@123!', '2019-04-18 10:26:19', 'SYSTEM_WEB', '2019-04-18 10:26:19', 'SYSTEM_WEB', 1),
('b0e825d1-7197-11e9-9e99-80fa5b45280e', 'wee@dsdsad2332321.com', '321321', 'pass@123!', '2019-05-08 15:46:33', 'SYSTEM_WEB', '2019-05-08 15:46:33', 'SYSTEM_WEB', 1),
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
-- Indexes for table `clientinvestments`
--
ALTER TABLE `clientinvestments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientId`);

--
-- Indexes for table `clientwithdrawals`
--
ALTER TABLE `clientwithdrawals`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentId`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`InvestmentId`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`ProfitId`);

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
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`WithdrawalId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
