-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 12:39 AM
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
('0b166cc0-729c-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', 'fnb', '2545', '878787878', 'c', '2019-05-09 22:50:13', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 22:50:13', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('2596e3aa-7197-11e9-9e99-80fa5b45280e', 'User with email address (rewr@dsadsa) already exists', '32133', '3213', '213', '2332', '2019-05-08 15:42:39', 'User with email address (rewr@dsadsa) already exists', '2019-05-08 15:42:39', 'User with email address (rewr@dsadsa) already exists', 1),
('30cbde0e-7ee8-11e9-a700-80fa5b45280e', '2e50c1a4-7ee8-11e9-a700-80fa5b45280e', '32', '32', '323', '323', '2019-05-25 14:25:34', '2e50c1a4-7ee8-11e9-a700-80fa5b45280e', '2019-05-25 14:25:34', '2e50c1a4-7ee8-11e9-a700-80fa5b45280e', 1),
('3eb6bb63-7df8-11e9-b355-f48e38e878a3', '33c4a80a-7df8-11e9-b355-f48e38e878a3', 'FNB', '500', '12045335548745', 'Cheque', '2019-05-24 09:47:56', '33c4a80a-7df8-11e9-b355-f48e38e878a3', '2019-05-24 09:47:56', '33c4a80a-7df8-11e9-b355-f48e38e878a3', 1),
('4ff2c08b-7198-11e9-9e99-80fa5b45280e', '46af11e0-7198-11e9-9e99-80fa5b45280e', 'eqwrew', 'ewrwe', '332132', 'ewrewr', '2019-05-08 15:51:00', '46af11e0-7198-11e9-9e99-80fa5b45280e', '2019-05-08 15:51:00', '46af11e0-7198-11e9-9e99-80fa5b45280e', 1),
('557582c6-740e-11e9-934a-f48e38e878a3', '493894fc-740e-11e9-934a-f48e38e878a3', 'FNB', '500', '120154032145', 'Cheque', '2019-05-11 19:00:23', '493894fc-740e-11e9-934a-f48e38e878a3', '2019-05-11 19:00:23', '493894fc-740e-11e9-934a-f48e38e878a3', 1),
('5d9406df-6f66-11e9-bde7-f48e38e878a3', '598a9063-6f66-11e9-bde7-f48e38e878a3', '32432', '423432', '4324', '42343', '2019-05-05 20:48:25', '598a9063-6f66-11e9-bde7-f48e38e878a3', '2019-05-05 20:48:25', '598a9063-6f66-11e9-bde7-f48e38e878a3', 1),
('7b4b409a-6f65-11e9-bde7-f48e38e878a3', '606563b9-6f65-11e9-bde7-f48e38e878a3', 'FAB', 'FAB', '23232', 'FAB', '2019-05-05 20:42:06', '606563b9-6f65-11e9-bde7-f48e38e878a3', '2019-05-05 20:42:06', '606563b9-6f65-11e9-bde7-f48e38e878a3', 1),
('8c32ca5a-7ee9-11e9-a700-80fa5b45280e', '8855e70e-7ee9-11e9-a700-80fa5b45280e', 'ew', 'ew', '33', 'ew', '2019-05-25 14:35:16', '8855e70e-7ee9-11e9-a700-80fa5b45280e', '2019-05-25 14:35:16', '8855e70e-7ee9-11e9-a700-80fa5b45280e', 1),
('cb5495a9-7ee7-11e9-a700-80fa5b45280e', 'c40d6651-7ee7-11e9-a700-80fa5b45280e', 'e', 'e', '21', 'e', '2019-05-25 14:22:43', 'c40d6651-7ee7-11e9-a700-80fa5b45280e', '2019-05-25 14:22:43', 'c40d6651-7ee7-11e9-a700-80fa5b45280e', 1);

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
('1727dc2d-729c-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', 'John', 'Doka', '47878787878', 'Father', '2019-05-09 22:50:34', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 22:50:34', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('291b9f67-7197-11e9-9e99-80fa5b45280e', 'User with email address (rewr@dsadsa) already exists', '32133', '2133', '2133', '213', '2019-05-08 15:42:45', 'User with email address (rewr@dsadsa) already exists', '2019-05-08 15:42:45', 'User with email address (rewr@dsadsa) already exists', 1),
('32c803b8-7ee8-11e9-a700-80fa5b45280e', '2e50c1a4-7ee8-11e9-a700-80fa5b45280e', '323', '3232', '323', '323', '2019-05-25 14:25:37', '2e50c1a4-7ee8-11e9-a700-80fa5b45280e', '2019-05-25 14:25:37', '2e50c1a4-7ee8-11e9-a700-80fa5b45280e', 1),
('49728086-7df8-11e9-b355-f48e38e878a3', '33c4a80a-7df8-11e9-b355-f48e38e878a3', 'Sabelo', 'Ntombela', '92075540644674', 'Randburg', '2019-05-24 09:48:14', '33c4a80a-7df8-11e9-b355-f48e38e878a3', '2019-05-24 09:48:14', '33c4a80a-7df8-11e9-b355-f48e38e878a3', 1),
('6c927d48-740e-11e9-934a-f48e38e878a3', '493894fc-740e-11e9-934a-f48e38e878a3', 'Freedom', 'KHanyile', '920513322457', 'Friend', '2019-05-11 19:01:01', '493894fc-740e-11e9-934a-f48e38e878a3', '2019-05-11 19:01:01', '493894fc-740e-11e9-934a-f48e38e878a3', 1),
('80858a06-6f65-11e9-bde7-f48e38e878a3', '606563b9-6f65-11e9-bde7-f48e38e878a3', 'dfdsf', 'fdsfs', '3213', 'sd', '2019-05-05 20:42:15', '606563b9-6f65-11e9-bde7-f48e38e878a3', '2019-05-05 20:42:15', '606563b9-6f65-11e9-bde7-f48e38e878a3', 1),
('8efe8987-7ee9-11e9-a700-80fa5b45280e', '8855e70e-7ee9-11e9-a700-80fa5b45280e', 'ew', 'ew', 'ew', 'ew', '2019-05-25 14:35:21', '8855e70e-7ee9-11e9-a700-80fa5b45280e', '2019-05-25 14:35:21', '8855e70e-7ee9-11e9-a700-80fa5b45280e', 1),
('ce5b9398-7ee7-11e9-a700-80fa5b45280e', 'c40d6651-7ee7-11e9-a700-80fa5b45280e', '2', '2', '2', '2', '2019-05-25 14:22:48', 'c40d6651-7ee7-11e9-a700-80fa5b45280e', '2019-05-25 14:22:48', 'c40d6651-7ee7-11e9-a700-80fa5b45280e', 1);

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
('0255f480-729c-11e9-86f7-80fa5b45280e', '02559e87-729c-11e9-86f7-80fa5b45280e', 'Gerad', '', 'Boka', 'KZN', 'Not needed', '9654221114558', 'Male', 'South Africa', 'Durban', '0000', NULL, '2019-05-09 22:49:59', 'SYSTEM_WEB', '2019-05-09 22:49:59', 'SYSTEM_WEB', 1),
('2e50c1a4-7ee8-11e9-a700-80fa5b45280e', '2e4f37c6-7ee8-11e9-a700-80fa5b45280e', 'John', NULL, 'Doe', 'hgfh', 'Not needed', '3213', 'Male', 'South Africa', 'Johanesburg', '0000', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-25 14:25:29', 'SYSTEM_WEB', '2019-05-25 14:25:29', 'SYSTEM_WEB', 4),
('33c4a80a-7df8-11e9-b355-f48e38e878a3', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 'Nduduzo', 'Nduduzo', 'Khanyile', 'Gauteng', 'Not needed', '9.2072543350088E+14', 'Male', 'South Africa', 'Johannesburg', '0000', NULL, '2019-05-24 09:47:38', 'SYSTEM_WEB', '2019-05-24 09:47:38', 'SYSTEM_WEB', 4),
('35223af0-7f04-11e9-a700-80fa5b45280e', '3521db6c-7f04-11e9-a700-80fa5b45280e', 'Test New', 'Test New', 'new', 'hgfh', 'Not needed', '213', 'Female', 'Benin', 'Johanesburg', '0000', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-25 17:46:07', 'SYSTEM_WEB', '2019-05-25 17:46:07', 'SYSTEM_WEB', 4),
('3a566eea-7e63-11e9-8458-f48e38e878a3', '3a5492aa-7e63-11e9-8458-f48e38e878a3', 'Nduduzo', 'dsfds', 'Magwaza', 'Gauteng', 'Not needed', '11', 'Female', 'Botswana', 'Johannesburg', '0000', NULL, '2019-05-24 22:33:45', 'SYSTEM_WEB', '2019-05-24 22:33:45', 'SYSTEM_WEB', 4),
('46af11e0-7198-11e9-9e99-80fa5b45280e', '46ae4982-7198-11e9-9e99-80fa5b45280e', 'sadad', 'sadsad', 'dssadsa', '32dsad', 'Not needed', '213213', 'Male', 'South Africa', 'fdsfds', '0000', NULL, '2019-05-08 15:50:44', 'SYSTEM_WEB', '2019-05-08 15:50:44', 'SYSTEM_WEB', 1),
('473fe5bf-7ee8-11e9-a700-80fa5b45280e', '473f9c14-7ee8-11e9-a700-80fa5b45280e', 'John', '323', 'Doe', 'hgfh', 'Not needed', '3213', 'Male', 'South Africa', 'Johanesburg', '0000', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-25 14:26:11', 'SYSTEM_WEB', '2019-05-25 14:26:11', 'SYSTEM_WEB', 4),
('493894fc-740e-11e9-934a-f48e38e878a3', '490b9b92-740e-11e9-934a-f48e38e878a3', 'Nduduzo', 'dsfds', 'Magwaza', 'Gauteng', 'Not needed', '9.0084503154243E+17', 'Male', 'South Africa', 'Johannesburg', '0000', NULL, '2019-05-11 19:00:02', 'SYSTEM_WEB', '2019-05-11 19:00:02', 'SYSTEM_WEB', 1),
('598a9063-6f66-11e9-bde7-f48e38e878a3', '5989f18f-6f66-11e9-bde7-f48e38e878a3', 'Nduduzo', 'dsfds', 'Magwaza', 'Gauteng', 'Angular STREETS', '3432432', 'Male', 'South Africa', 'Johannesburg', '2194', NULL, '2019-05-05 20:48:19', 'SYSTEM_WEB', '2019-05-05 20:48:19', 'SYSTEM_WEB', 1),
('606563b9-6f65-11e9-bde7-f48e38e878a3', '60622a96-6f65-11e9-bde7-f48e38e878a3', 'Nduduzo', NULL, 'Magwaza', 'Gauteng', 'Angular STREETS', '3242343243', 'Male', 'South Africa', 'Johannesburg', '2194', NULL, '2019-05-05 20:41:21', 'SYSTEM_WEB', '2019-05-05 20:41:21', 'SYSTEM_WEB', 1),
('61e541de-7f0f-11e9-a700-80fa5b45280e', '61e4ec36-7f0f-11e9-a700-80fa5b45280e', 'John22', NULL, 'Doe22', 'hgfh', 'Not needed', '22', 'Female', 'South Africa', 'Johanesburg', '0000', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-25 19:06:06', 'SYSTEM_WEB', '2019-05-25 19:06:06', 'SYSTEM_WEB', 4),
('8855e70e-7ee9-11e9-a700-80fa5b45280e', '8853cc2c-7ee9-11e9-a700-80fa5b45280e', 'John', NULL, 'Doe', 'hgfh', 'Not needed', '4545', 'Male', 'South Africa', 'Johanesburg', '0000', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-25 14:35:10', 'SYSTEM_WEB', '2019-05-25 14:35:10', 'SYSTEM_WEB', 4),
('8d82242c-61af-11e9-ac92-80fa5b45280e', '8d81d1a0-61af-11e9-ac92-80fa5b45280e', 'lkjll', 'jkll', 'jkl', 'hgfh', 'hgfh', '78658', 'Female', 'South Africa', 'g', '566', NULL, '2019-04-18 09:57:03', 'SYSTEM_WEB', '2019-04-18 09:57:03', 'SYSTEM_WEB', 1),
('a39d846a-61b3-11e9-ac92-80fa5b452iie', '19c58f7b-6f68-11e9-bde7-f48e38e878a3', 'Nkuleko', 'Test', 'Testing', 'Gauteng', '', '925042254335466648', 'Male', 'South Africa', 'fdfd', '434', NULL, '2019-04-18 10:26:19', 'SYSTEM_WEB', '2019-04-18 10:26:19', 'SYSTEM_WEB', 1),
('af22bccf-7f16-11e9-a700-80fa5b45280e', 'af224651-7f16-11e9-a700-80fa5b45280e', 'John', NULL, 'Doe', 'hgfh', 'Not needed', '213132', 'Male', 'South Africa', 'Johanesburg', '0000', '', '2019-05-25 19:58:22', 'SYSTEM_WEB', '2019-05-25 19:58:22', 'SYSTEM_WEB', 4),
('c40d6651-7ee7-11e9-a700-80fa5b45280e', 'c40d0e11-7ee7-11e9-a700-80fa5b45280e', 'John', NULL, 'Ref', 'hgfh', 'Not needed', '213213', 'Female', 'South Africa', 'Johanesburg', '0000', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-25 14:22:31', 'SYSTEM_WEB', '2019-05-25 14:22:31', 'SYSTEM_WEB', 4);

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
  `DocumentCode` varchar(10) DEFAULT NULL,
  `ClientId` varchar(225) NOT NULL,
  `InvestmentId` varchar(255) DEFAULT NULL,
  `DocumentName` varchar(225) NOT NULL,
  `DocumentUrl` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`DocumentId`, `DocumentCode`, `ClientId`, `InvestmentId`, `DocumentName`, `DocumentUrl`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('17466d21-7f3d-11e9-a359-80fa5b45280e', 'a39d846a-6', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-26 00:33:17', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-26 00:33:17', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 0),
('54847806-7f3d-11e9-a359-80fa5b45280e', 'POP', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '1e5d8a52-71d3-11e9-ba03-f48e38e878a3', 'Proof of payment', 'http://localhost:8080/citgo-php-api/api/upload/uploads/15588236994.jpg', '2019-05-26 00:34:59', '19c58f7b-6f68-11e9-bde7-f48e38e878a3', '2019-05-26 00:34:59', '19c58f7b-6f68-11e9-bde7-f48e38e878a3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `InvestmentId` varchar(225) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
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

INSERT INTO `investment` (`InvestmentId`, `ClientId`, `Amount`, `Profit`, `Total`, `Name`, `Type`, `InvestmentDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('12213b75-7f1c-11e9-a700-80fa5b45280e', 'af22bccf-7f16-11e9-a700-80fa5b45280e', '6700', '0', '0', 'Share 1', 'Month-to-month', '2019-05-25 20:36:56', '2019-05-25 20:36:56', 'af22bccf-7f16-11e9-a700-80fa5b45280e', '2019-05-25 20:36:56', 'af22bccf-7f16-11e9-a700-80fa5b45280e', 2),
('1e5d8a52-71d3-11e9-ba03-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '25000', '0', '0', 'New makes', 'Month-to-month', '2019-05-08 22:51:29', '2019-05-08 22:51:29', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-08 22:51:29', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 2),
('40a86f1a-71d3-11e9-ba03-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '1200', '0', '0', 'New Investor', 'Yearly', '2019-05-08 22:52:27', '2019-05-08 22:52:27', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-08 22:52:27', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 2),
('5030a897-729f-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', '6000', '0', '0', 'test 2', 'Month-to-month', '2019-05-09 23:13:38', '2019-05-09 23:13:38', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 23:13:38', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('51253468-740f-11e9-934a-f48e38e878a3', '493894fc-740e-11e9-934a-f48e38e878a3', '5500', '0', '0', 'BEE Empower', 'Month-to-month', '2019-05-11 19:07:25', '2019-05-11 19:07:25', '493894fc-740e-11e9-934a-f48e38e878a3', '2019-05-11 19:07:25', '493894fc-740e-11e9-934a-f48e38e878a3', 2),
('5dd0671c-729e-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', '5000', '0', '0', 'Ndu car', 'Month-to-month', '2019-05-09 23:06:51', '2019-05-09 23:06:51', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 23:06:51', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('7dd60329-729f-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', '5600', '0', '0', 'test 4', 'Month-to-month', '2019-05-09 23:14:54', '2019-05-09 23:14:54', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 23:14:54', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('8f28a33b-72a1-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', '88888', '0', '0', 'test8888', 'Month-to-month', '2019-05-09 23:29:42', '2019-05-09 23:29:42', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 23:29:42', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('9ce8593f-701c-11e9-9519-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b45280e', '5000', '0', '0', 'Test Investment', 'Month-To-Month', '2019-05-06 18:33:00', '2019-05-06 18:33:00', '1', '2019-05-06 18:33:00', '1', 1),
('a3c27228-73f0-11e9-bd16-80fa5b45280e', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '752222', '0', '0', '752222 - test', 'Month-to-month', '2019-05-11 15:28:14', '2019-05-11 15:28:14', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-11 15:28:14', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 1),
('a4a5aba8-7f10-11e9-a700-80fa5b45280e', '61e541de-7f0f-11e9-a700-80fa5b45280e', '5000', '0', '0', 'Share 1', 'Month-to-month', '2019-05-25 19:15:08', '2019-05-25 19:15:08', '61e541de-7f0f-11e9-a700-80fa5b45280e', '2019-05-25 19:15:08', '61e541de-7f0f-11e9-a700-80fa5b45280e', 2),
('a5b72409-72a1-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', '77777', '0', '0', 'test777', 'Month-to-month', '2019-05-09 23:30:20', '2019-05-09 23:30:20', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 23:30:20', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('b675b281-729e-11e9-86f7-80fa5b45280e', '0255f480-729c-11e9-86f7-80fa5b45280e', '21321', '0', '0', 'test', 'Month-to-month', '2019-05-09 23:09:20', '2019-05-09 23:09:20', '0255f480-729c-11e9-86f7-80fa5b45280e', '2019-05-09 23:09:20', '0255f480-729c-11e9-86f7-80fa5b45280e', 1),
('c6c73ca2-729b-11e9-86f7-80fa5b45280e', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '5000', '0', '0', 'Ndu bawl one', 'Yearly', '2019-05-09 22:48:19', '2019-05-09 22:48:19', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-09 22:48:19', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 1),
('ce7eecb8-71d0-11e9-ba03-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '5000', '0', '0', 'Test from POSTMAN', 'Month-to-month', '2019-05-08 22:34:56', '2019-05-08 22:34:56', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-08 22:34:56', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 1),
('cfb1bc3f-7293-11e9-8d37-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '8000', '0', '0', 'BUY HOUSE', 'Yearly', '2019-05-09 21:51:18', '2019-05-09 21:51:18', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-09 21:51:18', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 1),
('d2507a51-701c-11e9-9519-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b45280e', '5000', '0', '0', 'Test Investment 2', 'Yearly', '2019-05-06 18:34:30', '2019-05-06 18:34:30', '1', '2019-05-06 18:34:30', '1', 1),
('d2507a51-701c-11e9-9519-f48e58e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b45280e', '600', '0', '0', 'Test Investment 2', 'Yearly', '2019-05-06 18:34:30', '2019-05-06 18:34:30', '1', '2019-05-06 18:34:30', '1', 1),
('f3c5ac5c-7293-11e9-8d37-f48e38e878a3', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '5000', '0', '0', 'NEW SOCCER KIT', 'Yearly', '2019-05-09 21:52:18', '2019-05-09 21:52:18', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', '2019-05-09 21:52:18', 'a39d846a-61b3-11e9-ac92-80fa5b452iie', 1);

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
('9ce8593f-701c-11e9-9519-f48e38e', 'f3c5ac5c-7293-11e9-8d37-f48e38e878a3', '3100', '2019-04-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e8', 'f3c5ac5c-7293-11e9-8d37-f48e38e878a3', '200', '2019-02-28 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e84', '1e5d8a52-71d3-11e9-ba03-f48e38e878a3', '4200', '2019-04-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e844', '1e5d8a52-71d3-11e9-ba03-f48e38e878a3', '1500', '2019-03-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87', 'f3c5ac5c-7293-11e9-8d37-f48e38e878a3', '1000', '2019-03-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87ee', 'c6c73ca2-729b-11e9-86f7-80fa5b45280e', '3100', '2019-04-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87eee', 'c6c73ca2-729b-11e9-86f7-80fa5b45280e', '450', '2019-03-31 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87h', '1e5d8a52-71d3-11e9-ba03-f48e38e878a3', '500', '2019-02-28 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87hhh', 'c6c73ca2-729b-11e9-86f7-80fa5b45280e', '300', '2019-02-28 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1),
('9ce8593f-701c-11e9-9519-f48e38e87klk', 'c6c73ca2-729b-11e9-86f7-80fa5b45280e', '3500', '2019-04-30 00:00:00', 'sys', '2019-05-08 16:15:08', 'sys', 1);

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
  `ModifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`Id`, `UserId`, `RoleId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, '19c58f7b-6f68-11e9-bde7-f48e38e878a3', '2', '2019-05-06 00:00:00', 'me', '2019-05-06 00:00:00', 'me', 1),
(2, '02559e87-729c-11e9-86f7-80fa5b45280e', '2', '2019-05-06 00:00:00', 'me', '2019-05-06 00:00:00', 'me', 1),
(3, '490b9b92-740e-11e9-934a-f48e38e878a3', '2', '2019-05-06 00:00:00', 'me', '2019-05-06 00:00:00', 'me', 1),
(4, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(5, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(6, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(7, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(8, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(9, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(10, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(11, '33c1cad0-7df8-11e9-b355-f48e38e878a3', '2', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', '0000-00-00 00:00:00', '33c1cad0-7df8-11e9-b355-f48e38e878a3', 1),
(12, '3a5492aa-7e63-11e9-8458-f48e38e878a3', '2', '0000-00-00 00:00:00', '3a5492aa-7e63-11e9-8458-f48e38e878a3', '0000-00-00 00:00:00', '3a5492aa-7e63-11e9-8458-f48e38e878a3', 1),
(13, '8853cc2c-7ee9-11e9-a700-80fa5b45280e', '2', '0000-00-00 00:00:00', '8853cc2c-7ee9-11e9-a700-80fa5b45280e', '2019-05-25 14:36:04', '8853cc2c-7ee9-11e9-a700-80fa5b45280e', 1),
(14, '3521db6c-7f04-11e9-a700-80fa5b45280e', '2', '0000-00-00 00:00:00', '3521db6c-7f04-11e9-a700-80fa5b45280e', '2019-05-25 17:55:27', '3521db6c-7f04-11e9-a700-80fa5b45280e', 1),
(15, '61e4ec36-7f0f-11e9-a700-80fa5b45280e', '2', '0000-00-00 00:00:00', '61e4ec36-7f0f-11e9-a700-80fa5b45280e', '2019-05-25 19:07:15', '61e4ec36-7f0f-11e9-a700-80fa5b45280e', 1),
(16, 'af224651-7f16-11e9-a700-80fa5b45280e', '2', '0000-00-00 00:00:00', 'af224651-7f16-11e9-a700-80fa5b45280e', '2019-05-25 20:08:03', 'af224651-7f16-11e9-a700-80fa5b45280e', 1);

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
('02559e87-729c-11e9-86f7-80fa5b45280e', 'gerad@mail.co.za', '025488455888', 'pass@123!', '2019-05-09 22:49:59', 'SYSTEM_WEB', '2019-05-09 22:49:59', 'SYSTEM_WEB', 1),
('19c58f7b-6f68-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!s', '2019-05-05 21:00:51', 'SYSTEM_WEB', '2019-05-05 21:00:51', 'SYSTEM_WEB', 1),
('2083b0d9-7197-11e9-9e99-80fa5b45280e', 'rewr@dsadsa', '321321', 'pass@123!', '2019-05-08 15:42:31', 'SYSTEM_WEB', '2019-05-08 15:42:31', 'SYSTEM_WEB', 1),
('2e4f37c6-7ee8-11e9-a700-80fa5b45280e', 'john.doe@mail.com3', '0725698888', 'pass@123!', '2019-05-25 14:25:29', 'SYSTEM_WEB', '2019-05-25 14:25:29', 'SYSTEM_WEB', 4),
('33c1cad0-7df8-11e9-b355-f48e38e878a3', 'freedom.khanyile1@gmail.com', '0748508258', 'pass@123!', '2019-05-24 09:47:38', 'SYSTEM_WEB', '2019-05-24 09:47:38', 'SYSTEM_WEB', 3),
('3521db6c-7f04-11e9-a700-80fa5b45280e', 'enw@mail.com', '3213', 'pass', '2019-05-25 17:46:07', 'SYSTEM_WEB', '2019-05-25 17:46:07', 'SYSTEM_WEB', 3),
('3a5492aa-7e63-11e9-8458-f48e38e878a3', 'magwaza@mail.com11', '0748508258', 'pass@123!', '2019-05-24 22:33:45', 'SYSTEM_WEB', '2019-05-24 22:33:45', 'SYSTEM_WEB', 3),
('46ae4982-7198-11e9-9e99-80fa5b45280e', 'ddadasd@dsdsad', '3213', 'pass@123!', '2019-05-08 15:50:44', 'SYSTEM_WEB', '2019-05-08 15:50:44', 'SYSTEM_WEB', 1),
('473f9c14-7ee8-11e9-a700-80fa5b45280e', 'john.doe@mail.com332', '0725698888', 'pass@123!', '2019-05-25 14:26:11', 'SYSTEM_WEB', '2019-05-25 14:26:11', 'SYSTEM_WEB', 4),
('490b9b92-740e-11e9-934a-f48e38e878a3', 'freedom.khanyile@ndu-system.net', '0748508258', 'pass@123!', '2019-05-11 19:00:02', 'SYSTEM_WEB', '2019-05-11 19:00:02', 'SYSTEM_WEB', 1),
('5989f18f-6f66-11e9-bde7-f48e38e878a3', 'freedom@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:48:19', 'SYSTEM_WEB', '2019-05-05 20:48:19', 'SYSTEM_WEB', 1),
('60622a96-6f65-11e9-bde7-f48e38e878a3', 'magwaza@mail.com', '0748508258', 'pass@123!', '2019-05-05 20:41:21', 'SYSTEM_WEB', '2019-05-05 20:41:21', 'SYSTEM_WEB', 1),
('61e4ec36-7f0f-11e9-a700-80fa5b45280e', 'john.doe@mail.com2', '0725698888', 'pass', '2019-05-25 19:06:06', 'SYSTEM_WEB', '2019-05-25 19:06:06', 'SYSTEM_WEB', 3),
('8853cc2c-7ee9-11e9-a700-80fa5b45280e', 'john.doe@mail.coms', '0725698888', 'pass', '2019-05-25 14:35:10', 'SYSTEM_WEB', '2019-05-25 14:35:10', 'SYSTEM_WEB', 3),
('89cb1440-7197-11e9-9e99-80fa5b45280e', 'sad@dsdsd3', '213', 'pass@123!', '2019-05-08 15:45:27', 'SYSTEM_WEB', '2019-05-08 15:45:27', 'SYSTEM_WEB', 1),
('8d81d1a0-61af-11e9-ac92-80fa5b45280e', 'jkk@tr', 'vc', 'pass@123!', '2019-04-18 09:57:03', 'SYSTEM_WEB', '2019-04-18 09:57:03', 'SYSTEM_WEB', 1),
('9b351084-61b0-11e9-ac92-80fa5b45280e', 'fsd@sAS', '4324', 'pass@123!', '2019-04-18 10:04:36', 'SYSTEM_WEB', '2019-04-18 10:04:36', 'SYSTEM_WEB', 1),
('a39d2479-61b3-11e9-ac92-80fa5b45280e', 'gfd@dsd', '434', 'pass@123!', '2019-04-18 10:26:19', 'SYSTEM_WEB', '2019-04-18 10:26:19', 'SYSTEM_WEB', 1),
('af224651-7f16-11e9-a700-80fa5b45280e', 'john.doe@mail.com33', '0725698888', 'pass', '2019-05-25 19:58:22', 'SYSTEM_WEB', '2019-05-25 19:58:22', 'SYSTEM_WEB', 3),
('b0e825d1-7197-11e9-9e99-80fa5b45280e', 'wee@dsdsad2332321.com', '321321', 'pass@123!', '2019-05-08 15:46:33', 'SYSTEM_WEB', '2019-05-08 15:46:33', 'SYSTEM_WEB', 1),
('b37eb2ca-61b0-11e9-ac92-80fa5b45280e', 'fsd@DSAD', '343', 'pass@123!', '2019-04-18 10:05:17', 'SYSTEM_WEB', '2019-04-18 10:05:17', 'SYSTEM_WEB', 1),
('c40d0e11-7ee7-11e9-a700-80fa5b45280e', 'john.doe@mail.com', '0725698888', 'pass@123!', '2019-05-25 14:22:31', 'SYSTEM_WEB', '2019-05-25 14:22:31', 'SYSTEM_WEB', 4),
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

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
