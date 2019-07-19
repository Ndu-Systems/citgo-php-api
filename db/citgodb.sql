-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 11:46 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
  `AccountHolder` varchar(50) NOT NULL,
  `BankBranch` varchar(225) NOT NULL,
  `AccountNumber` varchar(225) NOT NULL,
  `AccountType` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankingdetails`
--

INSERT INTO `bankingdetails` (`BankingDetailsId`, `ClientId`, `BankName`, `AccountHolder`, `BankBranch`, `AccountNumber`, `AccountType`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('1eaf52e5-9c8b-11e9-9298-0050560103a9', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 'Capitec Bank', 'FH Zulu', '470 010', '25851475580524', 'Current', '2019-07-02 07:34:54', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '2019-07-02 07:45:38', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 1),
('23a91b91-aa50-11e9-adc5-0050560103a9', 'f40c1d42-aa4f-11e9-adc5-0050560103a9', 'Capitec Bank', 'Samukelisiwe Mbatha', '470 010', '1523548272', 'Savings', '2019-07-19 20:07:58', 'f40c1d42-aa4f-11e9-adc5-0050560103a9', '2019-07-19 20:07:58', 'f40c1d42-aa4f-11e9-adc5-0050560103a9', 1),
('2dd81119-a557-11e9-9298-0050560103a9', '0935bdf1-a557-11e9-9298-0050560103a9', 'ABSA Bank', 'NF Ncube', '632 005', '9165193703', 'Savings', '2019-07-13 12:15:46', '0935bdf1-a557-11e9-9298-0050560103a9', '2019-07-13 12:15:46', '0935bdf1-a557-11e9-9298-0050560103a9', 1),
('367be676-a3d9-11e9-9298-0050560103a9', '12e02eae-a3d9-11e9-9298-0050560103a9', 'Capitec Bank', 'Noden Judith Mbadamana', '470 010', '1469370954', 'Savings', '2019-07-11 14:41:32', '12e02eae-a3d9-11e9-9298-0050560103a9', '2019-07-11 14:41:32', '12e02eae-a3d9-11e9-9298-0050560103a9', 1),
('39b92cac-aa30-11e9-adc5-0050560103a9', '1db34924-aa30-11e9-adc5-0050560103a9', 'FNB', 'Ndumiso sibiya ', '250 655', '62784142732', 'Savings', '2019-07-19 16:19:31', '1db34924-aa30-11e9-adc5-0050560103a9', '2019-07-19 16:19:31', '1db34924-aa30-11e9-adc5-0050560103a9', 1),
('3aedd191-9d02-11e9-9298-0050560103a9', 'f00a2e2e-9d01-11e9-9298-0050560103a9', 'Capitec Bank', 'Meluleki Khumalo', '470 010', '1191245924', 'Savings', '2019-07-02 21:47:31', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-02 21:47:31', 'f00a2e2e-9d01-11e9-9298-0050560103a9', 1),
('42310128-a89f-11e9-adc5-0050560103a9', '184e393f-a89f-11e9-adc5-0050560103a9', 'Capitec Bank', 'Thembelihle ', '470 010', '1550283888', 'Savings', '2019-07-17 16:29:17', '184e393f-a89f-11e9-adc5-0050560103a9', '2019-07-17 16:29:17', '184e393f-a89f-11e9-adc5-0050560103a9', 1),
('51812902-aa35-11e9-adc5-0050560103a9', 'fba5699a-aa34-11e9-adc5-0050560103a9', 'Capitec Bank', 'Thandanani S Shabangu', '470 010', '1216559951', 'Savings', '2019-07-19 16:55:58', 'fba5699a-aa34-11e9-adc5-0050560103a9', '2019-07-19 16:55:58', 'fba5699a-aa34-11e9-adc5-0050560103a9', 1),
('57b474d9-a5b6-11e9-9298-0050560103a9', '38455b50-a5b6-11e9-9298-0050560103a9', 'Capitec Bank', 'PHINDILE MIRRIAM', '470 010', '1413212121', 'Savings', '2019-07-13 23:36:58', '38455b50-a5b6-11e9-9298-0050560103a9', '2019-07-13 23:36:58', '38455b50-a5b6-11e9-9298-0050560103a9', 1),
('5898b401-aa52-11e9-adc5-0050560103a9', '2f28d8e3-aa52-11e9-adc5-0050560103a9', 'Capitec Bank', 'Samukelisiwe Mbatha ', '470 010', '1523548272', 'Savings', '2019-07-19 20:23:46', '2f28d8e3-aa52-11e9-adc5-0050560103a9', '2019-07-19 20:23:46', '2f28d8e3-aa52-11e9-adc5-0050560103a9', 1),
('5cb85f3d-a59d-11e9-9298-0050560103a9', '03fbda75-a59d-11e9-9298-0050560103a9', 'Standard Bank', 'VELAPHI E ZULU', '051 001', '301732272', 'Savings', '2019-07-13 20:38:09', '03fbda75-a59d-11e9-9298-0050560103a9', '2019-07-13 20:38:09', '03fbda75-a59d-11e9-9298-0050560103a9', 1),
('6e6f96cb-9d8b-11e9-9298-0050560103a9', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 'Capitec Bank', 'Innocentia ntombifuthi mpondombe', '470 010', '1553009000', 'Savings', '2019-07-03 14:09:39', 'f3cbe683-9d8a-11e9-9298-0050560103a9', '2019-07-03 14:09:39', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 1),
('7445e9aa-9d03-11e9-9298-0050560103a9', '69577f94-9d03-11e9-9298-0050560103a9', 'Bank of Athens', 'Ndumiso', '410 506', '321231243432', 'Savings', '2019-07-02 21:56:17', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-02 21:56:17', '69577f94-9d03-11e9-9298-0050560103a9', 1),
('7e63fff6-a89d-11e9-adc5-0050560103a9', '5187f946-a89d-11e9-adc5-0050560103a9', 'FNB', 'Sthandiwe mhawukile mpofana', '250 655', '62721649046', 'Current', '2019-07-17 16:16:39', '5187f946-a89d-11e9-adc5-0050560103a9', '2019-07-17 16:16:39', '5187f946-a89d-11e9-adc5-0050560103a9', 1),
('9ab277db-a6cb-11e9-9298-0050560103a9', '557f3799-a6cb-11e9-9298-0050560103a9', 'Capitec Bank', 'NG Gabotlhaelwe', '470 010', '1144698349', 'Savings', '2019-07-15 08:41:41', '557f3799-a6cb-11e9-9298-0050560103a9', '2019-07-15 08:41:41', '557f3799-a6cb-11e9-9298-0050560103a9', 1),
('a09ef376-a816-11e9-adc5-0050560103a9', '6718640f-a816-11e9-adc5-0050560103a9', 'FNB', 'Sthandiwe mhawukile mpofana', '250 655', '62721649046', 'Current', '2019-07-17 00:11:14', '6718640f-a816-11e9-adc5-0050560103a9', '2019-07-17 00:11:14', '6718640f-a816-11e9-adc5-0050560103a9', 1),
('a35c71c2-a24b-11e9-9298-0050560103a9', '65a7b96b-a24b-11e9-9298-0050560103a9', 'ABSA Bank', 'Martha winnies Duduzile', '632 005', '4084348268', 'Current', '2019-07-09 15:15:35', '65a7b96b-a24b-11e9-9298-0050560103a9', '2019-07-09 15:15:35', '65a7b96b-a24b-11e9-9298-0050560103a9', 1),
('a47917e1-9d84-11e9-9298-0050560103a9', '76aaac5d-9d84-11e9-9298-0050560103a9', 'Capitec Bank', 'Mr SH Ngubane', '470 010', '1404962253', 'Savings', '2019-07-03 13:21:03', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-10 11:50:54', '76aaac5d-9d84-11e9-9298-0050560103a9', 1),
('a729bd21-9f1b-11e9-9298-0050560103a9', '699e37fe-9f1b-11e9-9298-0050560103a9', 'FNB', 'Zamokuhle Luthuli', '250 655', '62330984586', 'Savings', '2019-07-05 13:54:32', '699e37fe-9f1b-11e9-9298-0050560103a9', '2019-07-05 13:54:32', '699e37fe-9f1b-11e9-9298-0050560103a9', 1),
('ac9cc11c-a8ca-11e9-adc5-0050560103a9', '826ee80b-a8ca-11e9-adc5-0050560103a9', 'Standard Bank', 'Bongani Zwane', '051 001', '56441738', 'Savings', '2019-07-17 21:40:04', '826ee80b-a8ca-11e9-adc5-0050560103a9', '2019-07-17 21:40:04', '826ee80b-a8ca-11e9-adc5-0050560103a9', 1),
('ad858787-a93b-11e9-adc5-0050560103a9', '679914ac-a93b-11e9-adc5-0050560103a9', 'Capitec Bank', 'Elsie silungile luvuno', '470 010', '1236338640', 'Savings', '2019-07-18 11:08:59', '679914ac-a93b-11e9-adc5-0050560103a9', '2019-07-18 11:08:59', '679914ac-a93b-11e9-adc5-0050560103a9', 1),
('ada1cf68-a20a-11e9-9298-0050560103a9', '90ac2f4f-a20a-11e9-9298-0050560103a9', 'FNB', 'Sifiso Ndlanzi', '250 655', '111111111', 'Savings', '2019-07-09 07:30:35', '90ac2f4f-a20a-11e9-9298-0050560103a9', '2019-07-09 07:30:35', '90ac2f4f-a20a-11e9-9298-0050560103a9', 1),
('b61f0679-a7b8-11e9-9298-0050560103a9', '83b4a5b0-a7b8-11e9-9298-0050560103a9', 'Standard Bank', 'Thandukwazi Richman Ncube ', '051 001', '10093694306', 'Current', '2019-07-16 12:58:58', '83b4a5b0-a7b8-11e9-9298-0050560103a9', '2019-07-16 12:58:58', '83b4a5b0-a7b8-11e9-9298-0050560103a9', 1),
('cc6eee09-9d87-11e9-9298-0050560103a9', '8705eb63-9d87-11e9-9298-0050560103a9', 'Standard Bank', 'Lettie Vangile Kunene', '051 001', '42753422', 'Current', '2019-07-03 13:43:38', '8705eb63-9d87-11e9-9298-0050560103a9', '2019-07-03 13:43:38', '8705eb63-9d87-11e9-9298-0050560103a9', 1),
('ce9e8abb-a24c-11e9-9298-0050560103a9', '65a7b96b-a24b-11e9-9298-0050560103a9', 'ABSA Bank', 'Martha winnies Duduzile ', '632 005', '4084348268', 'Current', '2019-07-09 15:23:57', '65a7b96b-a24b-11e9-9298-0050560103a9', '2019-07-09 15:23:57', '65a7b96b-a24b-11e9-9298-0050560103a9', 1),
('d59e4025-a88e-11e9-adc5-0050560103a9', '9281c3c6-a88e-11e9-adc5-0050560103a9', 'Capitec Bank', 'Thembelihle Shinga ', '470 010', '1550283888', 'Savings', '2019-07-17 14:31:43', '9281c3c6-a88e-11e9-adc5-0050560103a9', '2019-07-17 14:31:43', '9281c3c6-a88e-11e9-adc5-0050560103a9', 1),
('dd42c84e-9e6e-11e9-9298-0050560103a9', 'c27eb948-9e6e-11e9-9298-0050560103a9', 'FNB', '956899568958', '250 655', '995096959', 'Savings', '2019-07-04 17:17:40', 'c27eb948-9e6e-11e9-9298-0050560103a9', '2019-07-04 17:21:46', 'c27eb948-9e6e-11e9-9298-0050560103a9', 1),
('dd9922b4-a84e-11e9-adc5-0050560103a9', 'c46552f5-a84e-11e9-adc5-0050560103a9', 'Nedbank', 'Minenhle', '198 765', '1090908425', 'Savings', '2019-07-17 06:53:49', 'c46552f5-a84e-11e9-adc5-0050560103a9', '2019-07-17 06:53:49', 'c46552f5-a84e-11e9-adc5-0050560103a9', 1),
('ddce711a-a76b-11e9-9298-0050560103a9', '26a85cce-a76b-11e9-9298-0050560103a9', 'Nedbank', 'Sabelo Siphesihle Biyela', '198 765', '1560095601', 'Current', '2019-07-16 03:48:53', '26a85cce-a76b-11e9-9298-0050560103a9', '2019-07-16 03:48:53', '26a85cce-a76b-11e9-9298-0050560103a9', 1),
('f14f8abb-9c88-11e9-9298-0050560103a9', 'da1e961a-9c88-11e9-9298-0050560103a9', 'ABSA Bank', 'Wiseman Ncube', '632 005', '9046681617', 'Savings', '2019-07-02 07:19:18', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-02 07:19:18', 'da1e961a-9c88-11e9-9298-0050560103a9', 1),
('f9517af1-9fbb-11e9-9298-0050560103a9', 'bee1d476-9fbb-11e9-9298-0050560103a9', 'FNB', 'benzile', '250 655', '62704868366', 'Savings', '2019-07-06 09:02:10', 'bee1d476-9fbb-11e9-9298-0050560103a9', '2019-07-06 09:02:10', 'bee1d476-9fbb-11e9-9298-0050560103a9', 1),
('f9a7e1aa-a4de-11e9-9298-0050560103a9', '82edea57-a4de-11e9-9298-0050560103a9', 'Capitec Bank', 'Nandipha Botha', '470 010', '1344489891', 'Savings', '2019-07-12 21:55:18', '82edea57-a4de-11e9-9298-0050560103a9', '2019-07-12 21:55:18', '82edea57-a4de-11e9-9298-0050560103a9', 1),
('fd2d9cc9-a8c5-11e9-adc5-0050560103a9', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', 'Capitec Bank', 'L.S khuzwayo', '470 010', '1609142304', 'Savings', '2019-07-17 21:06:32', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', '2019-07-17 21:06:32', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', 1);

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
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`BeneficiaryId`, `ClientId`, `Name`, `Surname`, `IDNumber`, `Relation`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('0a6c3b4f-9c89-11e9-9298-0050560103a9', 'da1e961a-9c88-11e9-9298-0050560103a9', 'dudu', 'ncube', '8208060581080', 'spouse', '2019-07-02 07:20:01', 'ncubem@webmail.co.za', '2019-07-02 07:20:01', 'ncubem@webmail.co.za', 1),
('12dd3fa0-9d8c-11e9-9298-0050560103a9', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 'Velapi william ', 'Mpondombe', '19400205', 'parent', '2019-07-03 14:14:14', 'f3cbe683-9d8a-11e9-9298-0050560103a9', '2019-07-03 14:14:14', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 1),
('12dd66f1-9d8c-11e9-9298-0050560103a9', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 'Jabulie flominah', 'Mpondombi', '19730414', 'sibling', '2019-07-03 14:14:14', 'f3cbe683-9d8a-11e9-9298-0050560103a9', '2019-07-03 14:14:14', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 1),
('1ab48dbd-a84f-11e9-adc5-0050560103a9', 'c46552f5-a84e-11e9-adc5-0050560103a9', 'Minenhle', 'Khumalo', '9703225620087', 'sibling', '2019-07-17 06:55:31', 'c46552f5-a84e-11e9-adc5-0050560103a9', '2019-07-17 06:55:31', 'c46552f5-a84e-11e9-adc5-0050560103a9', 1),
('20437b6c-aa36-11e9-adc5-0050560103a9', 'fba5699a-aa34-11e9-adc5-0050560103a9', 'Hlobisile Ntombizile', 'Shabangu', '9304220276080', 'spouse', '2019-07-19 17:01:45', 'fba5699a-aa34-11e9-adc5-0050560103a9', '2019-07-19 17:01:45', 'fba5699a-aa34-11e9-adc5-0050560103a9', 1),
('293ca899-9f1c-11e9-9298-0050560103a9', '699e37fe-9f1b-11e9-9298-0050560103a9', 'Phumzile', 'Luthuli', '9605180745082', 'sibling', '2019-07-05 13:58:11', '699e37fe-9f1b-11e9-9298-0050560103a9', '2019-07-05 13:58:11', '699e37fe-9f1b-11e9-9298-0050560103a9', 1),
('293ceb8e-9f1c-11e9-9298-0050560103a9', '699e37fe-9f1b-11e9-9298-0050560103a9', 'Nobuhle', 'Luthuli', '0010251038088', 'sibling', '2019-07-05 13:58:11', '699e37fe-9f1b-11e9-9298-0050560103a9', '2019-07-05 13:58:11', '699e37fe-9f1b-11e9-9298-0050560103a9', 1),
('2c486c2f-a3db-11e9-9298-0050560103a9', '12e02eae-a3d9-11e9-9298-0050560103a9', 'Thabisile', 'Mlinganiso', '0006150875083', 'child', '2019-07-11 14:55:34', '12e02eae-a3d9-11e9-9298-0050560103a9', '2019-07-11 14:55:34', '12e02eae-a3d9-11e9-9298-0050560103a9', 1),
('31089877-a24d-11e9-9298-0050560103a9', '65a7b96b-a24b-11e9-9298-0050560103a9', 'Asibulele lethumpilo sbongakonke', 'Buthelezi', '0610235359086', 'child', '2019-07-09 15:26:43', '65a7b96b-a24b-11e9-9298-0050560103a9', '2019-07-09 15:26:43', '65a7b96b-a24b-11e9-9298-0050560103a9', 1),
('3108f62d-a24d-11e9-9298-0050560103a9', '65a7b96b-a24b-11e9-9298-0050560103a9', 'Asonwabe sbongakonke siyavuya', 'Buthelezi', '0912145751083', 'child', '2019-07-09 15:26:43', '65a7b96b-a24b-11e9-9298-0050560103a9', '2019-07-09 15:26:43', '65a7b96b-a24b-11e9-9298-0050560103a9', 1),
('3ec16fd6-9c8b-11e9-9298-0050560103a9', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 'Sabelo', 'Zulu', '9035684256680', 'sibling', '2019-07-02 07:35:47', 'ufketn@gmail.com', '2019-07-02 07:35:47', 'ufketn@gmail.com', 1),
('3ec1a589-9c8b-11e9-9298-0050560103a9', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 'Samu', 'Zondo', '20136846746884', 'child', '2019-07-02 07:35:47', 'ufketn@gmail.com', '2019-07-02 07:35:47', 'ufketn@gmail.com', 1),
('46828b72-9d88-11e9-9298-0050560103a9', '8705eb63-9d87-11e9-9298-0050560103a9', 'Sinethemba', 'Kunene', '9612120565083', 'child', '2019-07-03 13:47:03', '8705eb63-9d87-11e9-9298-0050560103a9', '2019-07-03 13:47:03', '8705eb63-9d87-11e9-9298-0050560103a9', 1),
('4682b135-9d88-11e9-9298-0050560103a9', '8705eb63-9d87-11e9-9298-0050560103a9', 'Sinenhlanhla', 'Kunene', '9612120564086', 'child', '2019-07-03 13:47:03', '8705eb63-9d87-11e9-9298-0050560103a9', '2019-07-03 13:47:03', '8705eb63-9d87-11e9-9298-0050560103a9', 1),
('46b22800-a8c6-11e9-adc5-0050560103a9', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', 'Makhosazane', 'Madi', '8312090646086', 'parent', '2019-07-17 21:08:35', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', '2019-07-17 21:08:35', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', 1),
('4fe84aa0-a7b9-11e9-9298-0050560103a9', '83b4a5b0-a7b8-11e9-9298-0050560103a9', 'Sthembele', 'Ncube', '9307181033085', 'sibling', '2019-07-16 13:03:16', '83b4a5b0-a7b8-11e9-9298-0050560103a9', '2019-07-16 13:03:16', '83b4a5b0-a7b8-11e9-9298-0050560103a9', 1),
('51c277ed-a557-11e9-9298-0050560103a9', '0935bdf1-a557-11e9-9298-0050560103a9', 'Ntombeziningi', 'Ncube', '7905080663084', 'sibling', '2019-07-13 12:16:46', '0935bdf1-a557-11e9-9298-0050560103a9', '2019-07-13 12:16:46', '0935bdf1-a557-11e9-9298-0050560103a9', 1),
('5441501d-9fbc-11e9-9298-0050560103a9', 'bee1d476-9fbb-11e9-9298-0050560103a9', 'bongani ndabezinhle iminathi', 'nkosi', '1501055808089', 'child', '2019-07-06 09:04:42', 'bee1d476-9fbb-11e9-9298-0050560103a9', '2019-07-06 09:04:42', 'bee1d476-9fbb-11e9-9298-0050560103a9', 1),
('5bdb56a1-a76c-11e9-9298-0050560103a9', '26a85cce-a76b-11e9-9298-0050560103a9', 'Snethemba', 'Mncwabe', '9707140242083', 'spouse', '2019-07-16 03:52:25', '26a85cce-a76b-11e9-9298-0050560103a9', '2019-07-16 03:52:25', '26a85cce-a76b-11e9-9298-0050560103a9', 1),
('70b6d603-9cf8-11e9-9298-0050560103a9', 'da1e961a-9c88-11e9-9298-0050560103a9', 'Duduzile', 'Ncube', '8208060581080', 'spouse', '2019-07-02 20:37:26', 'da1e17f3-9c88-11e9-9298-0050560103a9', '2019-07-02 20:37:26', 'da1e17f3-9c88-11e9-9298-0050560103a9', 1),
('7bbdb673-a59e-11e9-9298-0050560103a9', '03fbda75-a59d-11e9-9298-0050560103a9', 'Lucas Jabulani', 'Zulu', '8203225295080', 'sibling', '2019-07-13 20:46:11', '03fbda75-a59d-11e9-9298-0050560103a9', '2019-07-13 20:46:11', '03fbda75-a59d-11e9-9298-0050560103a9', 1),
('7c89db18-aa52-11e9-adc5-0050560103a9', '2f28d8e3-aa52-11e9-adc5-0050560103a9', 'Khathide', 'Kubeka', '8705245493081', 'spouse', '2019-07-19 20:24:46', '2f28d8e3-aa52-11e9-adc5-0050560103a9', '2019-07-19 20:24:46', '2f28d8e3-aa52-11e9-adc5-0050560103a9', 1),
('855ccb9d-9d03-11e9-9298-0050560103a9', '69577f94-9d03-11e9-9298-0050560103a9', 'Sthe', 'Tembe', '672162761721', 'grandchild', '2019-07-02 21:56:45', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-04 17:55:15', '69577f94-9d03-11e9-9298-0050560103a9', 1),
('86f2adb9-a93c-11e9-adc5-0050560103a9', '679914ac-a93b-11e9-adc5-0050560103a9', 'Nehemia zibonele', 'Luvuno', '19630118', 'spouse', '2019-07-18 11:15:03', '679914ac-a93b-11e9-adc5-0050560103a9', '2019-07-18 11:15:03', '679914ac-a93b-11e9-adc5-0050560103a9', 1),
('86f2d3dd-a93c-11e9-adc5-0050560103a9', '679914ac-a93b-11e9-adc5-0050560103a9', 'Sikhunjuliwe halalisani ', 'Luvuno', '19950324', 'child', '2019-07-18 11:15:03', '679914ac-a93b-11e9-adc5-0050560103a9', '2019-07-18 11:15:03', '679914ac-a93b-11e9-adc5-0050560103a9', 1),
('86f30179-a93c-11e9-adc5-0050560103a9', '679914ac-a93b-11e9-adc5-0050560103a9', 'Nqobile nompilo', 'Luvuno', '19960406', 'child', '2019-07-18 11:15:03', '679914ac-a93b-11e9-adc5-0050560103a9', '2019-07-18 11:15:03', '679914ac-a93b-11e9-adc5-0050560103a9', 1),
('8887dc0b-aa50-11e9-adc5-0050560103a9', 'f40c1d42-aa4f-11e9-adc5-0050560103a9', 'Khathide ', 'Kubeka', '8705245493081', 'spouse', '2019-07-19 20:10:47', 'f40c1d42-aa4f-11e9-adc5-0050560103a9', '2019-07-19 20:10:47', 'f40c1d42-aa4f-11e9-adc5-0050560103a9', 1),
('8b0faa56-9d03-11e9-9298-0050560103a9', '69577f94-9d03-11e9-9298-0050560103a9', 'Sthe', 'Tembe', '672162761721', 'child', '2019-07-02 21:56:55', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-02 21:56:55', '69577f94-9d03-11e9-9298-0050560103a9', 1),
('9422cce8-a6ce-11e9-9298-0050560103a9', '557f3799-a6cb-11e9-9298-0050560103a9', 'Naledi', 'Tities', '8807250834082', 'spouse', '2019-07-15 09:02:59', '557f3799-a6cb-11e9-9298-0050560103a9', '2019-07-15 09:02:59', '557f3799-a6cb-11e9-9298-0050560103a9', 1),
('96242c49-9e6f-11e9-9298-0050560103a9', 'c27eb948-9e6e-11e9-9298-0050560103a9', 'test 3', 'demo', '9119846088376', 'child', '2019-07-04 17:22:50', 'c27e56a3-9e6e-11e9-9298-0050560103a9', '2019-07-04 17:22:50', 'c27e56a3-9e6e-11e9-9298-0050560103a9', 1),
('b682883a-a89d-11e9-adc5-0050560103a9', '5187f946-a89d-11e9-adc5-0050560103a9', 'Sthandiwe ', 'Mpofana', '9202026658081', 'child', '2019-07-17 16:18:13', '5187f946-a89d-11e9-adc5-0050560103a9', '2019-07-17 16:18:13', '5187f946-a89d-11e9-adc5-0050560103a9', 1),
('bea7f73a-9d84-11e9-9298-0050560103a9', '76aaac5d-9d84-11e9-9298-0050560103a9', 'Thina', 'Zondo', '11111111111', 'parent', '2019-07-03 13:21:47', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-03 13:21:47', '76aaac5d-9d84-11e9-9298-0050560103a9', 1),
('c28af9fc-a20a-11e9-9298-0050560103a9', '90ac2f4f-a20a-11e9-9298-0050560103a9', 'Sifiso', 'Ndlanzi', '9102165453080', 'child', '2019-07-09 07:31:10', '90ac2f4f-a20a-11e9-9298-0050560103a9', '2019-07-09 07:31:10', '90ac2f4f-a20a-11e9-9298-0050560103a9', 1),
('d4076887-a89f-11e9-adc5-0050560103a9', '184e393f-a89f-11e9-adc5-0050560103a9', 'Phumlile', 'Luthuli', '8707300613082', 'parent\'s sibling', '2019-07-17 16:33:22', '184e393f-a89f-11e9-adc5-0050560103a9', '2019-07-17 16:33:22', '184e393f-a89f-11e9-adc5-0050560103a9', 1),
('d42399e2-a8ca-11e9-adc5-0050560103a9', '826ee80b-a8ca-11e9-adc5-0050560103a9', 'Bongiwe', 'Mncibi', '981006000', 'spouse', '2019-07-17 21:41:10', '826ee80b-a8ca-11e9-adc5-0050560103a9', '2019-07-17 21:41:10', '826ee80b-a8ca-11e9-adc5-0050560103a9', 1),
('db6e86a2-9c8c-11e9-9298-0050560103a9', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 'Dudu', 'Zondo', '94854653357', 'parent\'s sibling', '2019-07-02 07:47:20', '0e1c909d-9c8b-11e9-9298-0050560103a9', '2019-07-02 07:47:36', '0e1c909d-9c8b-11e9-9298-0050560103a9', 1),
('dcdb30d7-9d03-11e9-9298-0050560103a9', 'f00a2e2e-9d01-11e9-9298-0050560103a9', 'SILINDILE. L', 'KHUMALO ', '8708180828089', 'sibling', '2019-07-02 21:59:12', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-02 21:59:12', 'f00a2e2e-9d01-11e9-9298-0050560103a9', 1),
('eb4830ea-a5fb-11e9-9298-0050560103a9', '38455b50-a5b6-11e9-9298-0050560103a9', 'AYANDA HLULEKILE ', 'SIBIYA ', '9003090613089', 'sibling', '2019-07-14 07:55:01', '3844e083-a5b6-11e9-9298-0050560103a9', '2019-07-14 07:55:01', '3844e083-a5b6-11e9-9298-0050560103a9', 1),
('ebf883a4-9e6e-11e9-9298-0050560103a9', 'c27eb948-9e6e-11e9-9298-0050560103a9', 'test 2', 'demo', '909847675899984', 'sibling', '2019-07-04 17:18:05', 'c27eb948-9e6e-11e9-9298-0050560103a9', '2019-07-04 17:22:20', 'c27eb948-9e6e-11e9-9298-0050560103a9', 1),
('f538941d-9c8c-11e9-9298-0050560103a9', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 'Thona', 'Zondo', '84578033357', 'parent', '2019-07-02 07:48:03', '0e1c909d-9c8b-11e9-9298-0050560103a9', '2019-07-02 07:48:03', '0e1c909d-9c8b-11e9-9298-0050560103a9', 1),
('fcc3a739-a816-11e9-adc5-0050560103a9', '6718640f-a816-11e9-adc5-0050560103a9', 'Sthandiwe ', 'Mpofana ', '9202026658081', 'sibling', '2019-07-17 00:13:49', '6718640f-a816-11e9-adc5-0050560103a9', '2019-07-17 00:13:49', '6718640f-a816-11e9-adc5-0050560103a9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `bonusId` varchar(225) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `ParentId` varchar(225) DEFAULT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`bonusId`, `Amount`, `ClientId`, `ParentId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('1d7b095f-a648-11e9-9298-0050560103a9', '1500', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '03fbda75-a59d-11e9-9298-0050560103a9', '2019-07-14 17:00:27', 'SYS', '2019-07-14 17:00:27', 'SYS', 1),
('35cf9de6-9e81-11e9-9298-0050560103a9', '2500', 'new', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-04 19:29:00', 'SYS', '2019-07-04 19:29:00', 'SYS', 1),
('3bacf3b2-9e81-11e9-9298-0050560103a9', '1000', '8705eb63-9d87-11e9-9298-0050560103a9', 'f3cbe683-9d8a-11e9-9298-0050560103a9', '2019-07-04 19:29:10', 'SYS', '2019-07-04 19:29:10', 'SYS', 1),
('3d07da74-a2db-11e9-9298-0050560103a9', '250', 'new', '65a7b96b-a24b-11e9-9298-0050560103a9', '2019-07-10 08:23:31', 'SYS', '2019-07-10 08:23:31', 'SYS', 1),
('5992c122-9e81-11e9-9298-0050560103a9', '500', 'new', '8705eb63-9d87-11e9-9298-0050560103a9', '2019-07-04 19:30:00', 'SYS', '2019-07-04 19:30:00', 'SYS', 1),
('a25d3c19-a8d5-11e9-adc5-0050560103a9', '250', 'da1e961a-9c88-11e9-9298-0050560103a9', '184e393f-a89f-11e9-adc5-0050560103a9', '2019-07-17 22:58:31', 'SYS', '2019-07-17 22:58:31', 'SYS', 1),
('a52e17b5-9d6c-11e9-9298-0050560103a9', '1000', 'da1e961a-9c88-11e9-9298-0050560103a9', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-03 10:29:16', 'SYS', '2019-07-03 10:29:16', 'SYS', 1),
('ab34a3a8-a8d5-11e9-adc5-0050560103a9', '250', 'da1e961a-9c88-11e9-9298-0050560103a9', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', '2019-07-17 22:58:46', 'SYS', '2019-07-17 22:58:46', 'SYS', 1),
('cbd238ac-a73f-11e9-9298-0050560103a9', '500', 'new', '0935bdf1-a557-11e9-9298-0050560103a9', '2019-07-15 22:33:25', 'SYS', '2019-07-15 22:33:25', 'SYS', 1),
('d7fcb24c-a89b-11e9-adc5-0050560103a9', '500', 'da1e961a-9c88-11e9-9298-0050560103a9', '26a85cce-a76b-11e9-9298-0050560103a9', '2019-07-17 16:04:50', 'SYS', '2019-07-17 16:04:50', 'SYS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientId` varchar(225) NOT NULL,
  `ClientRef` int(10) NOT NULL,
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
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientId`, `ClientRef`, `UserId`, `FirstName`, `MiddleName`, `Surname`, `Province`, `Address`, `IDNumber`, `Gender`, `Country`, `City`, `PostCode`, `ParentId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('00bbec0f-871b-11e9-bdcc-005056010374', 2, '00bb958f-871b-11e9-bdcc-005056010388', 'Admin', NULL, 'Citgo', 'hgfh', 'This is Admin one', '25856666', 'Male', 'South Africa', 'Johanesburg', '0000', '', '2019-06-05 00:49:25', 'SYSTEM_WEB', '2019-07-17 06:53:36', '00bb958f-871b-11e9-bdcc-005056010388', 4),
('03fbda75-a59d-11e9-9298-0050560103a9', 24, '03fb7022-a59d-11e9-9298-0050560103a9', 'VELAPHI ERICK', NULL, 'ZULU ', 'Mpumalanga ', 'N/A', '8705285288086', 'Male', 'South Africa', 'Ermelo', '0000', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-13 20:35:40', 'SYSTEM_WEB', '2019-07-13 20:35:40', 'SYSTEM_WEB', 4),
('0935bdf1-a557-11e9-9298-0050560103a9', 23, '092cf8e7-a557-11e9-9298-0050560103a9', 'Nelisiwe Florence', NULL, 'Ncube', 'kzn', 'N/A', '7706050840086', 'Female', 'South Africa', 'durban', '0000', 'new', '2019-07-13 12:14:44', 'SYSTEM_WEB', '2019-07-13 12:14:44', 'SYSTEM_WEB', 4),
('0e1ccd78-9c8b-11e9-9298-0050560103a9', 4, '0e1c909d-9c8b-11e9-9298-0050560103a9', 'Saziso', NULL, 'Test', 'Gauteng', 'N/A', '9368468935568', 'Male', 'South Africa', 'Johannesburg', '0000', '', '2019-07-02 07:34:26', 'SYSTEM_WEB', '2019-07-17 13:30:18', '0e1c909d-9c8b-11e9-9298-0050560103a9', 3),
('0f8ca003-a10a-11e9-9298-0050560103a9', 15, '0f8c45eb-a10a-11e9-9298-0050560103a9', 'THOKOZANI LANGA', NULL, 'SUKAZI', 'Mpumalanga', 'N/A', '9105106351081', 'Male', 'South Africa', 'Ermelo', '0000', 'new', '2019-07-08 00:53:39', 'SYSTEM_WEB', '2019-07-08 00:53:39', 'SYSTEM_WEB', 4),
('12e02eae-a3d9-11e9-9298-0050560103a9', 19, '12dfd4c7-a3d9-11e9-9298-0050560103a9', 'Judy', NULL, 'Mbadamana', 'KZN', 'N/A', '6207080814085', 'Female', 'South Africa', 'Harding', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-11 14:40:33', 'SYSTEM_WEB', '2019-07-11 14:40:33', 'SYSTEM_WEB', 4),
('184e393f-a89f-11e9-adc5-0050560103a9', 33, '184d88f4-a89f-11e9-adc5-0050560103a9', 'Thembelihle ', NULL, 'Shinga ', 'KwaZulu Natal', 'N/A', '9808196259086', 'Male', 'South Africa', 'Durban', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-17 16:28:07', 'SYSTEM_WEB', '2019-07-17 16:28:07', 'SYSTEM_WEB', 4),
('1db34924-aa30-11e9-adc5-0050560103a9', 40, '1db23050-aa30-11e9-adc5-0050560103a9', 'Ndumiso protus ', NULL, 'Sibiya ', 'Kwazulu-natal ', 'N/A', '9111315764088', 'Male', 'South Africa', 'Umlazi', '0000', 'new', '2019-07-19 16:18:44', 'SYSTEM_WEB', '2019-07-19 16:18:44', 'SYSTEM_WEB', 4),
('26a85cce-a76b-11e9-9298-0050560103a9', 27, '26a7db2b-a76b-11e9-9298-0050560103a9', 'Sabelo', NULL, 'BIYELA', 'KwaZulu-Natal', 'N/A', '9006115875088', 'Male', 'South Africa', 'Pietermaritzburg', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-16 03:43:46', 'SYSTEM_WEB', '2019-07-16 03:43:46', 'SYSTEM_WEB', 4),
('2f28d8e3-aa52-11e9-adc5-0050560103a9', 43, '2f289a42-aa52-11e9-adc5-0050560103a9', 'Samukelisiwe', NULL, 'Mbatha', 'KwaZulu-Natal', 'N/A', '9509280973083', 'Female', 'South Africa', 'Ladysmith', '0000', 'new', '2019-07-19 20:22:36', 'SYSTEM_WEB', '2019-07-19 20:22:36', 'SYSTEM_WEB', 4),
('38455b50-a5b6-11e9-9298-0050560103a9', 25, '3844e083-a5b6-11e9-9298-0050560103a9', 'PHINDILE MIRRIAM', NULL, 'SIBIYA', 'KWAZULU-NATAL', 'N/A', '8610310785082', 'Female', 'South Africa', 'MTUBATUBA', '0000', 'new', '2019-07-13 23:36:05', 'SYSTEM_WEB', '2019-07-13 23:36:05', 'SYSTEM_WEB', 4),
('392b4b44-9fbe-11e9-9298-0050560103a9', 14, '392b08ca-9fbe-11e9-9298-0050560103a9', 'Gugu Portia', NULL, 'Sibanyoni', 'Mpumalanga ', 'N/A', '9008270232089', 'Female', 'South Africa', 'Ermelo ', '0000', 'new', '2019-07-06 09:18:16', 'SYSTEM_WEB', '2019-07-06 09:18:16', 'SYSTEM_WEB', 4),
('3d16fb4d-aa2f-11e9-adc5-0050560103a9', 39, '3d1699d4-aa2f-11e9-adc5-0050560103a9', 'Ndumiso protus', NULL, 'Sibiya', 'Kwazulu-natal', 'N/A', '9112315764088', 'Male', 'South Africa', 'Umlazi', '0000', 'new', '2019-07-19 16:12:27', 'SYSTEM_WEB', '2019-07-19 16:12:27', 'SYSTEM_WEB', 4),
('5187f946-a89d-11e9-adc5-0050560103a9', 32, '51878f09-a89d-11e9-adc5-0050560103a9', 'Sthandiwe ', NULL, 'Mpofana ', 'Eastern Cape', 'N/A', '9202026658081', 'Male', 'South Africa', 'Bizana', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-17 16:15:24', 'SYSTEM_WEB', '2019-07-17 16:15:24', 'SYSTEM_WEB', 4),
('557f3799-a6cb-11e9-9298-0050560103a9', 26, '557ed786-a6cb-11e9-9298-0050560103a9', 'Neo', NULL, 'Gabotlhaelwe', 'Northwest', 'N/A', '8204075459081', 'Male', 'South Africa', 'Mafikeng', '0000', 'new', '2019-07-15 08:39:45', 'SYSTEM_WEB', '2019-07-15 08:39:45', 'SYSTEM_WEB', 4),
('65a7b96b-a24b-11e9-9298-0050560103a9', 18, '65a72d5e-a24b-11e9-9298-0050560103a9', 'MarthaWinnies Duduzile', NULL, 'Buthelezi', 'Kwazulu natal', 'N/A', '7212080435088', 'Female', 'South Africa', 'Newcastle', '0000', 'new', '2019-07-09 15:13:52', 'SYSTEM_WEB', '2019-07-09 15:13:52', 'SYSTEM_WEB', 4),
('6718640f-a816-11e9-adc5-0050560103a9', 29, '671810c9-a816-11e9-adc5-0050560103a9', 'Sthandiwe', NULL, 'Mpofana', 'Eastern Cape', 'N/A', '9202026658081', 'Male', 'South Africa', 'Bizana', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-17 00:09:38', 'SYSTEM_WEB', '2019-07-17 00:09:38', 'SYSTEM_WEB', 4),
('679914ac-a93b-11e9-adc5-0050560103a9', 38, '6798af17-a93b-11e9-adc5-0050560103a9', 'Elsie Silungile', NULL, 'Luvuno', 'Kwazulu natal ', 'N/A', '6712250544081.', 'Female', 'South Africa', 'Newcastle ', '0000', 'new', '2019-07-18 11:07:01', 'SYSTEM_WEB', '2019-07-18 11:07:01', 'SYSTEM_WEB', 4),
('69577f94-9d03-11e9-9298-0050560103a9', 6, '69573a39-9d03-11e9-9298-0050560103a9', 'NdumisoTest', NULL, 'MtheTest', 'GP', 'N/A', '989877878', 'Male', 'South Africa', 'Johanesburg', '0000', 'new', '2019-07-02 21:55:58', 'SYSTEM_WEB', '2019-07-02 22:05:03', '69573a39-9d03-11e9-9298-0050560103a9', 3),
('699e37fe-9f1b-11e9-9298-0050560103a9', 12, '699dc24f-9f1b-11e9-9298-0050560103a9', 'Zamokuhle', NULL, 'Luthuli', 'KZN', 'N/A', '9406085780088', 'Male', 'South Africa', 'Waterloo', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-05 13:52:49', 'SYSTEM_WEB', '2019-07-05 13:52:49', 'SYSTEM_WEB', 4),
('76aaac5d-9d84-11e9-9298-0050560103a9', 7, '76aa3741-9d84-11e9-9298-0050560103a9', 'Saziso', NULL, 'Ngubane', 'Gauteng', 'N/A', '9505085920089', 'Male', 'South Africa', 'Johannesburg', '0000', 'new', '2019-07-03 13:19:46', 'SYSTEM_WEB', '2019-07-03 13:19:46', 'SYSTEM_WEB', 4),
('826ee80b-a8ca-11e9-adc5-0050560103a9', 35, '826e78d0-a8ca-11e9-adc5-0050560103a9', 'Bongani', NULL, 'Zwane', 'KZN', 'N/A', '9407125416089', 'Male', 'South Africa', 'Nquthu', '0000', 'new', '2019-07-17 21:38:53', 'SYSTEM_WEB', '2019-07-17 21:38:53', 'SYSTEM_WEB', 4),
('82edea57-a4de-11e9-9298-0050560103a9', 22, '82ed47b1-a4de-11e9-9298-0050560103a9', 'Nandipha', NULL, 'Botha', 'Free State ', 'N/A', '8109020523081', 'Female', 'South Africa', 'Bloemfontein ', '0000', 'new', '2019-07-12 21:51:59', 'SYSTEM_WEB', '2019-07-12 21:51:59', 'SYSTEM_WEB', 4),
('83b4a5b0-a7b8-11e9-9298-0050560103a9', 28, '83b431fb-a7b8-11e9-9298-0050560103a9', 'Thandukwazi', NULL, 'Ncube', 'KZN', 'N/A', '8210275677083', 'Male', 'South Africa', 'Durban', '0000', 'new', '2019-07-16 12:57:33', 'SYSTEM_WEB', '2019-07-16 12:57:33', 'SYSTEM_WEB', 4),
('8705eb63-9d87-11e9-9298-0050560103a9', 8, '87057b6f-9d87-11e9-9298-0050560103a9', 'Lettie vangile', NULL, 'Kunene', 'Kwazulu natal', 'N/A', '6909080647080', 'Female', 'South Africa', 'Newcastle ', '0000', 'new', '2019-07-03 13:41:42', 'SYSTEM_WEB', '2019-07-03 13:41:42', 'SYSTEM_WEB', 4),
('90ac2f4f-a20a-11e9-9298-0050560103a9', 17, '90ab9c5f-a20a-11e9-9298-0050560103a9', 'Sifiso', NULL, 'Ndlanzi', 'KwaZulu-Natal', 'N/A', '9102165453080', 'Male', 'South Africa', 'Westville', '0000', 'new', '2019-07-09 07:29:47', 'SYSTEM_WEB', '2019-07-09 07:29:47', 'SYSTEM_WEB', 4),
('9281c3c6-a88e-11e9-adc5-0050560103a9', 31, '92813a93-a88e-11e9-adc5-0050560103a9', 'Thembelihle ', NULL, 'Shinga', 'KwaZulu Natal', 'N/A', '9808196259086', 'Male', 'South Africa', 'Durban', '0000', 'new', '2019-07-17 14:29:50', 'SYSTEM_WEB', '2019-07-17 14:29:50', 'SYSTEM_WEB', 4),
('980d8848-9f12-11e9-9298-0050560103a9', 11, '980d340e-9f12-11e9-9298-0050560103a9', 'Provider', NULL, 'Nyoni', 'Mpumalanga', 'N/A', '9311280784085', 'Female', 'South Africa', 'Elukwatini', '0000', 'new', '2019-07-05 12:49:42', 'SYSTEM_WEB', '2019-07-05 12:49:42', 'SYSTEM_WEB', 4),
('bee1d476-9fbb-11e9-9298-0050560103a9', 13, 'bee142af-9fbb-11e9-9298-0050560103a9', 'benzile', NULL, 'kubheka', 'kwazulu natal', 'N/A', '8510080492085', 'Female', 'South Africa', 'Newcastle ', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-06 09:00:32', 'SYSTEM_WEB', '2019-07-06 09:00:32', 'SYSTEM_WEB', 4),
('c27eb948-9e6e-11e9-9298-0050560103a9', 10, 'c27e56a3-9e6e-11e9-9298-0050560103a9', 'citgo', NULL, 'test', 'GAUTENG', 'N/A', '9104895680097', 'Female', 'South Africa', 'JOHANNESBURG', '0000', 'new', '2019-07-04 17:16:55', 'SYSTEM_WEB', '2019-07-04 17:22:00', 'c27e56a3-9e6e-11e9-9298-0050560103a9', 3),
('c46552f5-a84e-11e9-adc5-0050560103a9', 30, 'c464f834-a84e-11e9-adc5-0050560103a9', 'Minenhle', NULL, 'Sabatha', 'Kwazulu natal', 'N/A', '9703225620087', 'Male', 'South Africa', 'Ulundi', '0000', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-17 06:53:06', 'SYSTEM_WEB', '2019-07-17 06:53:06', 'SYSTEM_WEB', 4),
('cc4ec376-a8c5-11e9-adc5-0050560103a9', 34, 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', 'Lebohang', NULL, 'Khuzwayo', 'Eastern Cape', 'N/A', '0011135652086', 'Male', 'South Africa', 'Port Elizabeth', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-17 21:05:10', 'SYSTEM_WEB', '2019-07-17 21:05:10', 'SYSTEM_WEB', 4),
('cda824d1-a13f-11e9-9298-0050560103a9', 16, 'cda7a12d-a13f-11e9-9298-0050560103a9', 'Andilr', NULL, 'Madlala', 'Free State', 'N/A', '9405065079081', 'Male', 'South Africa', 'Bloemfontein', '0000', 'new', '2019-07-08 07:18:21', 'SYSTEM_WEB', '2019-07-08 07:18:21', 'SYSTEM_WEB', 4),
('da1e961a-9c88-11e9-9298-0050560103a9', 3, 'da1e17f3-9c88-11e9-9298-0050560103a9', 'Wiseman ', NULL, 'Ncube', 'kzn', 'N/A', '7703015443080', 'Male', 'South Africa', 'Newcastle', '0000', '', '2019-07-02 07:18:40', 'SYSTEM_WEB', '2019-07-02 07:18:40', 'SYSTEM_WEB', 4),
('dc6e0f41-a8d1-11e9-adc5-0050560103a9', 36, 'dc6dced0-a8d1-11e9-adc5-0050560103a9', 'Sthandiwe ', NULL, 'Mpofana ', 'Eastern Cape ', 'N/A', '9202026658081', 'Male', 'South Africa', 'Bizana', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-17 22:31:31', 'SYSTEM_WEB', '2019-07-17 22:31:31', 'SYSTEM_WEB', 4),
('e306454e-a427-11e9-9298-0050560103a9', 21, 'e305cf82-a427-11e9-9298-0050560103a9', 'Bongani michael', NULL, 'Nzimande', 'Kwazulu natal', 'N/A', '7109305520084', 'Male', 'South Africa', 'Durban', '0000', 'new', '2019-07-12 00:04:43', 'SYSTEM_WEB', '2019-07-12 00:04:43', 'SYSTEM_WEB', 4),
('e5a332a4-a3e6-11e9-9298-0050560103a9', 20, 'e5a2d54f-a3e6-11e9-9298-0050560103a9', 'Xolani ', NULL, 'Mdlalose ', 'KwaZulu-Natal ', 'N/A', '8601055670084', 'Male', 'South Africa', 'Newcastle ', '0000', 'new', '2019-07-11 16:19:30', 'SYSTEM_WEB', '2019-07-11 16:19:30', 'SYSTEM_WEB', 4),
('e5ba0b7b-a911-11e9-adc5-0050560103a9', 37, 'e5b9bf70-a911-11e9-adc5-0050560103a9', 'Goodman Mthokozisi ', NULL, 'Dlamini ', 'Kwazulu natal', 'N/A', '8608245320082', 'Male', 'South Africa', 'Pietermaritzburg ', '0000', 'new', '2019-07-18 06:09:54', 'SYSTEM_WEB', '2019-07-18 06:09:54', 'SYSTEM_WEB', 4),
('f00a2e2e-9d01-11e9-9298-0050560103a9', 5, 'f009dacb-9d01-11e9-9298-0050560103a9', 'MELULEKI ', NULL, 'KHUMALO', 'KwaZulu Natal', 'N/A', '9005265831081', 'Male', 'South Africa', 'Ulundi', '0000', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-02 21:45:25', 'SYSTEM_WEB', '2019-07-02 21:45:25', 'SYSTEM_WEB', 4),
('f3cbe683-9d8a-11e9-9298-0050560103a9', 9, 'f3cb9107-9d8a-11e9-9298-0050560103a9', 'Innocentia ntombifuthi', NULL, 'Mpondombe', 'Kwazulu natal', 'N/A', '8112190503081', 'Female', 'South Africa', 'Newcastle', '0000', '8705eb63-9d87-11e9-9298-0050560103a9', '2019-07-03 14:06:13', 'SYSTEM_WEB', '2019-07-03 14:06:13', 'SYSTEM_WEB', 4),
('f40c1d42-aa4f-11e9-adc5-0050560103a9', 42, 'f40be177-aa4f-11e9-adc5-0050560103a9', 'Samukelisiwe', NULL, 'Mbatha', 'KwaZulu-Natal', 'N/A', '9509280973083', 'Female', 'South Africa', 'Ladysmith', '0000', '184e393f-a89f-11e9-adc5-0050560103a9', '2019-07-19 20:06:38', 'SYSTEM_WEB', '2019-07-19 20:06:38', 'SYSTEM_WEB', 4),
('fba5699a-aa34-11e9-adc5-0050560103a9', 41, 'fba4f1a1-aa34-11e9-adc5-0050560103a9', 'Thandanani Sibanisezwe', NULL, 'Shabangu', 'Mpumalanga', 'N/A', '8710045924087', 'Male', 'South Africa', 'Ermelo', '0000', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-19 16:53:34', 'SYSTEM_WEB', '2019-07-19 16:53:34', 'SYSTEM_WEB', 4);

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
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`DocumentId`, `DocumentCode`, `ClientId`, `InvestmentId`, `DocumentName`, `DocumentUrl`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('00597e95-a63e-11e9-9298-0050560103a9', 'POP', '03fbda75-a59d-11e9-9298-0050560103a9', 'f0621714-a5a4-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/1563112083IMG-20190714-WA0003.jpg', '2019-07-14 15:48:03', '03fb7022-a59d-11e9-9298-0050560103a9', '2019-07-14 15:48:03', '03fb7022-a59d-11e9-9298-0050560103a9', 1),
('183c3ee0-9c8a-11e9-9298-0050560103a9', 'POP', 'da1e961a-9c88-11e9-9298-0050560103a9', 'da0bb1af-9c89-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/1562045253156204519237943160057.jpg', '2019-07-02 07:27:33', 'da1e17f3-9c88-11e9-9298-0050560103a9', '2019-07-02 07:27:33', 'da1e17f3-9c88-11e9-9298-0050560103a9', 1),
('1c45d5ba-9c8a-11e9-9298-0050560103a9', 'POP', 'da1e961a-9c88-11e9-9298-0050560103a9', 'da0bb1af-9c89-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/1562045260156204519237943160057.jpg', '2019-07-02 07:27:40', 'da1e17f3-9c88-11e9-9298-0050560103a9', '2019-07-02 07:27:40', 'da1e17f3-9c88-11e9-9298-0050560103a9', 1),
('1e0693a9-a8d5-11e9-adc5-0050560103a9', 'POP', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', 'e4728163-a8c6-11e9-adc5-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/15633968891563396856511-1513578342.jpg', '2019-07-17 22:54:49', 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', '2019-07-17 22:54:49', 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', 1),
('2f38285e-a252-11e9-9298-0050560103a9', 'POP', '65a7b96b-a24b-11e9-9298-0050560103a9', 'be11f6cd-a24f-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/15626809471562680928233-169953908.jpg', '2019-07-09 16:02:27', '65a72d5e-a24b-11e9-9298-0050560103a9', '2019-07-09 16:02:27', '65a72d5e-a24b-11e9-9298-0050560103a9', 1),
('7b22ba01-a8cd-11e9-adc5-0050560103a9', 'POP', '184e393f-a89f-11e9-adc5-0050560103a9', 'cf6c42f0-a8a9-11e9-adc5-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/1563393609IMG_20190717_181335.jpg', '2019-07-17 22:00:09', '184d88f4-a89f-11e9-adc5-0050560103a9', '2019-07-17 22:00:09', '184d88f4-a89f-11e9-adc5-0050560103a9', 1),
('7d5095ec-9e73-11e9-9298-0050560103a9', 'POP', '8705eb63-9d87-11e9-9298-0050560103a9', '19ce0174-9d89-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/15622554471562255419666535852033.jpg', '2019-07-04 17:50:47', '87057b6f-9d87-11e9-9298-0050560103a9', '2019-07-04 17:50:47', '87057b6f-9d87-11e9-9298-0050560103a9', 1),
('7f4050a1-a167-11e9-9298-0050560103a9', 'POP', '69577f94-9d03-11e9-9298-0050560103a9', '6c7e5307-a167-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/156258014915625801394708007223047582972747.jpg', '2019-07-08 12:02:30', '69573a39-9d03-11e9-9298-0050560103a9', '2019-07-08 12:02:30', '69573a39-9d03-11e9-9298-0050560103a9', 1),
('80929a76-a886-11e9-adc5-0050560103a9', 'POP', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '4a7d507b-a886-11e9-adc5-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/156336312434da0c640112447e9ca590e9017c2d3e.jpg', '2019-07-17 13:32:04', '0e1c909d-9c8b-11e9-9298-0050560103a9', '2019-07-17 13:32:04', '0e1c909d-9c8b-11e9-9298-0050560103a9', 1),
('85aaf340-9e75-11e9-9298-0050560103a9', 'POP', '76aaac5d-9d84-11e9-9298-0050560103a9', 'a8ded624-9d88-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/15622563201562256288148-707720858.jpg', '2019-07-04 18:05:20', '76aa3741-9d84-11e9-9298-0050560103a9', '2019-07-04 18:05:20', '76aa3741-9d84-11e9-9298-0050560103a9', 1),
('89a661e2-9e75-11e9-9298-0050560103a9', 'POP', '76aaac5d-9d84-11e9-9298-0050560103a9', 'a8ded624-9d88-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/15622563261562256288148-707720858.jpg', '2019-07-04 18:05:26', '76aa3741-9d84-11e9-9298-0050560103a9', '2019-07-04 18:05:26', '76aa3741-9d84-11e9-9298-0050560103a9', 1),
('a6b65c8f-9d09-11e9-9298-0050560103a9', 'POP', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '88bb75f2-9d05-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/15621000381562099912040696808984.jpg', '2019-07-02 22:40:38', 'f009dacb-9d01-11e9-9298-0050560103a9', '2019-07-02 22:40:38', 'f009dacb-9d01-11e9-9298-0050560103a9', 1),
('db3e3173-a6c5-11e9-9298-0050560103a9', 'POP', '0935bdf1-a557-11e9-9298-0050560103a9', '2b708689-a55c-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/1563170432Screenshot_20190715-073938.jpg', '2019-07-15 08:00:32', '092cf8e7-a557-11e9-9298-0050560103a9', '2019-07-15 08:00:32', '092cf8e7-a557-11e9-9298-0050560103a9', 1),
('e01535c3-9e73-11e9-9298-0050560103a9', 'POP', 'f3cbe683-9d8a-11e9-9298-0050560103a9', 'fdb40c8e-9d99-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/156225561215622555665751989361481.jpg', '2019-07-04 17:53:32', 'f3cb9107-9d8a-11e9-9298-0050560103a9', '2019-07-04 17:53:32', 'f3cb9107-9d8a-11e9-9298-0050560103a9', 1),
('fb661fe9-a866-11e9-adc5-0050560103a9', 'POP', '26a85cce-a76b-11e9-9298-0050560103a9', '63bc7be2-a76d-11e9-9298-0050560103a9', 'Proof of payment', 'https://citgoafrica.com/api/api/upload/uploads/1563349586Proof_Of_Payment.pdf', '2019-07-17 09:46:26', '26a7db2b-a76b-11e9-9298-0050560103a9', '2019-07-17 09:46:26', '26a7db2b-a76b-11e9-9298-0050560103a9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `InvestmentId` varchar(225) NOT NULL,
  `Ref` varchar(15) NOT NULL,
  `ClientId` varchar(225) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Profit` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) DEFAULT NULL,
  `Name` varchar(225) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `InvestmentDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL,
  `bankId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment`
--

INSERT INTO `investment` (`InvestmentId`, `Ref`, `ClientId`, `Amount`, `Profit`, `Total`, `Name`, `Type`, `InvestmentDate`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`, `bankId`) VALUES
('066d25dc-a1ea-11e9-9298-0050560103a9', 'CTG7-2', '76aaac5d-9d84-11e9-9298-0050560103a9', '5000', '0', '0', 'Share 2', '12', '2019-07-09 03:36:51', '2019-07-09 03:36:51', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-09 03:37:10', '76aaac5d-9d84-11e9-9298-0050560103a9', 5, 3),
('109e0be3-a8d7-11e9-adc5-0050560103a9', 'CTG32-1', '5187f946-a89d-11e9-adc5-0050560103a9', '20000', '0', '0', 'Share 1', '12', '2019-07-17 23:08:46', '2019-07-17 23:08:46', '5187f946-a89d-11e9-adc5-0050560103a9', '2019-07-17 23:08:46', '5187f946-a89d-11e9-adc5-0050560103a9', 2, NULL),
('19ce0174-9d89-11e9-9298-0050560103a9', 'CTG8-1', '8705eb63-9d87-11e9-9298-0050560103a9', '10000', '0', '0', 'Share 1', '12', '2019-07-03 13:52:58', '2019-07-03 13:52:58', '8705eb63-9d87-11e9-9298-0050560103a9', '2019-07-04 19:29:59', '87057b6f-9d87-11e9-9298-0050560103a9', 1, NULL),
('22f6a6af-aa53-11e9-adc5-0050560103a9', 'CTG41-1', 'fba5699a-aa34-11e9-adc5-0050560103a9', '50000', '0', '0', 'Share 1', '12', '2019-07-19 20:29:25', '2019-07-19 20:29:25', 'fba5699a-aa34-11e9-adc5-0050560103a9', '2019-07-19 20:31:18', 'fba5699a-aa34-11e9-adc5-0050560103a9', 2, 1),
('27db5572-a818-11e9-adc5-0050560103a9', 'CTG29-1', '6718640f-a816-11e9-adc5-0050560103a9', '20000', '0', '0', 'Share 1', '12', '2019-07-17 00:22:11', '2019-07-17 00:22:11', '6718640f-a816-11e9-adc5-0050560103a9', '2019-07-17 00:22:25', '6718640f-a816-11e9-adc5-0050560103a9', 2, 1),
('2b708689-a55c-11e9-9298-0050560103a9', 'CTG23-1', '0935bdf1-a557-11e9-9298-0050560103a9', '10000', '0', '0', 'Share 1', '12', '2019-07-13 12:51:29', '2019-07-13 12:51:29', '0935bdf1-a557-11e9-9298-0050560103a9', '2019-07-15 22:33:25', '092cf8e7-a557-11e9-9298-0050560103a9', 1, 1),
('4a7d507b-a886-11e9-adc5-0050560103a9', 'CTG4-1', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '100000', '0', '0', 'Share 1', '12', '2019-07-17 13:30:34', '2019-07-17 13:30:34', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '2019-07-17 13:33:07', '0e1c909d-9c8b-11e9-9298-0050560103a9', 1, 1),
('4d9d52e7-9e6f-11e9-9298-0050560103a9', 'CTG10-1', 'c27eb948-9e6e-11e9-9298-0050560103a9', '10000', '0', '0', 'Share 1', '12', '2019-07-04 17:20:49', '2019-07-04 17:20:49', 'c27eb948-9e6e-11e9-9298-0050560103a9', '2019-07-04 17:21:01', 'c27eb948-9e6e-11e9-9298-0050560103a9', 2, 3),
('529a78cc-9d85-11e9-9298-0050560103a9', 'CTG7-1', '76aaac5d-9d84-11e9-9298-0050560103a9', '50000', '0', '0', 'Share 1', '12', '2019-07-03 13:25:55', '2019-07-03 13:25:55', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-03 13:49:16', '76aaac5d-9d84-11e9-9298-0050560103a9', 5, NULL),
('5fe2356c-9c8c-11e9-9298-0050560103a9', 'CTG4-2', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '50000', '0', '0', 'Share 2', '12', '2019-07-02 07:43:52', '2019-07-02 07:43:52', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '2019-07-02 07:44:09', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 5, 1),
('63bc7be2-a76d-11e9-9298-0050560103a9', 'CTG27-1', '26a85cce-a76b-11e9-9298-0050560103a9', '10000', '0', '0', 'Share 1', '12', '2019-07-16 03:59:47', '2019-07-16 03:59:47', '26a85cce-a76b-11e9-9298-0050560103a9', '2019-07-17 16:04:50', '26a7db2b-a76b-11e9-9298-0050560103a9', 1, 3),
('6c7a2b7b-9e62-11e9-9298-0050560103a9', 'CTG6-1', '69577f94-9d03-11e9-9298-0050560103a9', '85888', '0', '0', 'Share 1', '12', '2019-07-04 15:48:37', '2019-07-04 15:48:37', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-04 15:48:48', '69577f94-9d03-11e9-9298-0050560103a9', 5, 1),
('6c7e5307-a167-11e9-9298-0050560103a9', 'CTG6-1', '69577f94-9d03-11e9-9298-0050560103a9', '5255', '0', '0', 'Share 1', '12', '2019-07-08 12:01:58', '2019-07-08 12:01:58', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-08 12:02:30', '69577f94-9d03-11e9-9298-0050560103a9', 3, 1),
('784bc35d-9e62-11e9-9298-0050560103a9', 'CTG6-2', '69577f94-9d03-11e9-9298-0050560103a9', '50000', '0', '0', 'Share 2', '12', '2019-07-04 15:48:57', '2019-07-04 15:48:57', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-04 15:49:10', '69577f94-9d03-11e9-9298-0050560103a9', 5, 3),
('842ccf50-9e61-11e9-9298-0050560103a9', 'CTG6-1', '69577f94-9d03-11e9-9298-0050560103a9', '15000', '0', '0', 'Share 1', '12', '2019-07-04 15:42:07', '2019-07-04 15:42:07', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-04 15:44:58', '69577f94-9d03-11e9-9298-0050560103a9', 5, NULL),
('8459a500-9e61-11e9-9298-0050560103a9', 'CTG6-1', '69577f94-9d03-11e9-9298-0050560103a9', '15000', '0', '0', 'Share 1', '12', '2019-07-04 15:42:08', '2019-07-04 15:42:08', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-04 15:43:45', '69577f94-9d03-11e9-9298-0050560103a9', 5, 1),
('88bb75f2-9d05-11e9-9298-0050560103a9', 'CTG5-1', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '20000', '0', '0', 'Share 1', '12', '2019-07-02 22:11:10', '2019-07-02 22:11:10', 'f00a2e2e-9d01-11e9-9298-0050560103a9', '2019-07-03 10:29:16', 'f009dacb-9d01-11e9-9298-0050560103a9', 1, 1),
('8ac8d33d-9c8b-11e9-9298-0050560103a9', 'CTG4-1', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '6000', '0', '0', 'Share 1', '12', '2019-07-02 07:37:55', '2019-07-02 07:37:55', '0e1ccd78-9c8b-11e9-9298-0050560103a9', '2019-07-02 07:43:27', '0e1ccd78-9c8b-11e9-9298-0050560103a9', 5, 1),
('a8ded624-9d88-11e9-9298-0050560103a9', 'CTG7-1', '76aaac5d-9d84-11e9-9298-0050560103a9', '50000', '0', '0', 'Share 1', '12', '2019-07-03 13:49:48', '2019-07-03 13:49:48', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-04 19:28:59', '76aa3741-9d84-11e9-9298-0050560103a9', 1, 1),
('b1e8edd0-a7bf-11e9-9298-0050560103a9', 'CTG28-1', '83b4a5b0-a7b8-11e9-9298-0050560103a9', '10000', '0', '0', 'Share 1', '12', '2019-07-16 13:48:57', '2019-07-16 13:48:57', '83b4a5b0-a7b8-11e9-9298-0050560103a9', '2019-07-16 13:51:47', '83b4a5b0-a7b8-11e9-9298-0050560103a9', 2, 1),
('b4466aa2-9d04-11e9-9298-0050560103a9', 'CTG6-1', '69577f94-9d03-11e9-9298-0050560103a9', '12333', '0', '0', 'Share 1', '12', '2019-07-02 22:05:14', '2019-07-02 22:05:14', '69577f94-9d03-11e9-9298-0050560103a9', '2019-07-02 22:05:22', '69577f94-9d03-11e9-9298-0050560103a9', 5, 1),
('b5571371-a6d7-11e9-9298-0050560103a9', 'CTG26-1', '557f3799-a6cb-11e9-9298-0050560103a9', '5000', '0', '0', 'Share 1', '12', '2019-07-15 10:08:20', '2019-07-15 10:08:20', '557f3799-a6cb-11e9-9298-0050560103a9', '2019-07-15 10:13:58', '557f3799-a6cb-11e9-9298-0050560103a9', 5, 1),
('be11f6cd-a24f-11e9-9298-0050560103a9', 'CTG18-1', '65a7b96b-a24b-11e9-9298-0050560103a9', '5000', '0', '0', 'Share 1', '12', '2019-07-09 15:44:58', '2019-07-09 15:44:58', '65a7b96b-a24b-11e9-9298-0050560103a9', '2019-07-10 08:23:31', '65a72d5e-a24b-11e9-9298-0050560103a9', 1, 1),
('cf6c42f0-a8a9-11e9-adc5-0050560103a9', 'CTG33-1', '184e393f-a89f-11e9-adc5-0050560103a9', '5000', '0', '0', 'Share 1', '12', '2019-07-17 17:44:49', '2019-07-17 17:44:49', '184e393f-a89f-11e9-adc5-0050560103a9', '2019-07-17 22:58:31', '184d88f4-a89f-11e9-adc5-0050560103a9', 1, 3),
('da0bb1af-9c89-11e9-9298-0050560103a9', 'CTG3-1', 'da1e961a-9c88-11e9-9298-0050560103a9', '200000', '0', '0', 'Share 1', '12', '2019-07-02 07:25:49', '2019-07-02 07:25:49', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-02 07:28:58', 'da1e17f3-9c88-11e9-9298-0050560103a9', 1, 1),
('da0bb1af-9c89-11e9-9298-005056010777\r\n', 'CTG3-1', 'da1e961a-9c88-11e9-9298-0050560103a9', '100000', '0', '0', 'Share 1', '12', '2019-07-02 07:25:49', '2019-07-02 07:25:49', 'da1e961a-9c88-11e9-9298-0050560103a9', '2019-07-02 07:28:58', 'da1e17f3-9c88-11e9-9298-0050560103a9', 1, 1),
('e4728163-a8c6-11e9-adc5-0050560103a9', 'CTG34-1', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', '5000', '0', '0', 'Share 1', '12', '2019-07-17 21:13:00', '2019-07-17 21:13:00', 'cc4ec376-a8c5-11e9-adc5-0050560103a9', '2019-07-17 22:58:46', 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', 1, 3),
('f0621714-a5a4-11e9-9298-0050560103a9', 'CTG24-1', '03fbda75-a59d-11e9-9298-0050560103a9', '30000', '0', '0', 'Share 1', '12', '2019-07-13 21:32:23', '2019-07-13 21:32:23', '03fbda75-a59d-11e9-9298-0050560103a9', '2019-07-14 17:00:27', '03fb7022-a59d-11e9-9298-0050560103a9', 1, 3),
('f557882b-9d84-11e9-9298-0050560103a9', 'CTG7-1', '76aaac5d-9d84-11e9-9298-0050560103a9', '50000', '0', '0', 'Share 1', '12', '2019-07-03 13:23:18', '2019-07-03 13:23:18', '76aaac5d-9d84-11e9-9298-0050560103a9', '2019-07-03 13:23:40', '76aaac5d-9d84-11e9-9298-0050560103a9', 5, 1),
('fdb40c8e-9d99-11e9-9298-0050560103a9', 'CTG9-1', 'f3cbe683-9d8a-11e9-9298-0050560103a9', '20000', '0', '0', 'Share 1', '12', '2019-07-03 15:53:52', '2019-07-03 15:53:52', 'f3cbe683-9d8a-11e9-9298-0050560103a9', '2019-07-04 19:29:09', 'f3cb9107-9d8a-11e9-9298-0050560103a9', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `ProfitId` varchar(255) NOT NULL,
  `InvestmentId` varchar(255) NOT NULL,
  `ProfitAmount` decimal(20,0) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(255) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(255) NOT NULL,
  `StatusId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleId` int(11) NOT NULL,
  `Description` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleId`, `Description`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(1, 'Admin', '2019-05-06 21:48:02', 'me', '2019-05-06 21:48:02', 'me', 1),
(2, 'Client', '2019-05-06 21:48:02', 'me', '2019-05-06 21:48:02', 'me', 1);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `StatusId` int(11) NOT NULL,
  `Description` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
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
  `PayLoad` text DEFAULT NULL,
  `UserId` varchar(225) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
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
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`Id`, `UserId`, `RoleId`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
(2, '00bb958f-871b-11e9-bdcc-005056010388', '1\r\n', '2019-06-05 00:49:56', '00bb958f-871b-11e9-bdcc-0050560103a9', '2019-06-05 00:49:56', '00bb958f-871b-11e9-bdcc-0050560103a9', 1),
(3, 'da1e17f3-9c88-11e9-9298-0050560103a9', '2', '2019-07-02 07:23:41', 'da1e17f3-9c88-11e9-9298-0050560103a9', '2019-07-02 07:23:41', 'da1e17f3-9c88-11e9-9298-0050560103a9', 1),
(4, '0e1c909d-9c8b-11e9-9298-0050560103a9', '2', '2019-07-02 07:36:14', '0e1c909d-9c8b-11e9-9298-0050560103a9', '2019-07-02 07:36:14', '0e1c909d-9c8b-11e9-9298-0050560103a9', 1),
(5, '69573a39-9d03-11e9-9298-0050560103a9', '2', '2019-07-02 22:03:58', '69573a39-9d03-11e9-9298-0050560103a9', '2019-07-02 22:03:58', '69573a39-9d03-11e9-9298-0050560103a9', 1),
(6, 'f009dacb-9d01-11e9-9298-0050560103a9', '2', '2019-07-02 22:06:29', 'f009dacb-9d01-11e9-9298-0050560103a9', '2019-07-02 22:06:29', 'f009dacb-9d01-11e9-9298-0050560103a9', 1),
(7, '76aa3741-9d84-11e9-9298-0050560103a9', '2', '2019-07-03 13:22:14', '76aa3741-9d84-11e9-9298-0050560103a9', '2019-07-03 13:22:14', '76aa3741-9d84-11e9-9298-0050560103a9', 1),
(8, '87057b6f-9d87-11e9-9298-0050560103a9', '2', '2019-07-03 13:49:31', '87057b6f-9d87-11e9-9298-0050560103a9', '2019-07-03 13:49:31', '87057b6f-9d87-11e9-9298-0050560103a9', 1),
(9, 'f3cb9107-9d8a-11e9-9298-0050560103a9', '2', '2019-07-03 14:50:05', 'f3cb9107-9d8a-11e9-9298-0050560103a9', '2019-07-03 14:50:05', 'f3cb9107-9d8a-11e9-9298-0050560103a9', 1),
(10, 'c27e56a3-9e6e-11e9-9298-0050560103a9', '2', '2019-07-04 17:19:58', 'c27e56a3-9e6e-11e9-9298-0050560103a9', '2019-07-04 17:19:58', 'c27e56a3-9e6e-11e9-9298-0050560103a9', 1),
(11, '699dc24f-9f1b-11e9-9298-0050560103a9', '2', '2019-07-05 13:58:28', '699dc24f-9f1b-11e9-9298-0050560103a9', '2019-07-05 13:58:28', '699dc24f-9f1b-11e9-9298-0050560103a9', 1),
(12, '90ab9c5f-a20a-11e9-9298-0050560103a9', '2', '2019-07-09 07:31:40', '90ab9c5f-a20a-11e9-9298-0050560103a9', '2019-07-09 07:31:40', '90ab9c5f-a20a-11e9-9298-0050560103a9', 1),
(13, '65a72d5e-a24b-11e9-9298-0050560103a9', '2', '2019-07-09 15:40:03', '65a72d5e-a24b-11e9-9298-0050560103a9', '2019-07-09 15:40:03', '65a72d5e-a24b-11e9-9298-0050560103a9', 1),
(14, '12dfd4c7-a3d9-11e9-9298-0050560103a9', '2', '2019-07-11 14:56:59', '12dfd4c7-a3d9-11e9-9298-0050560103a9', '2019-07-11 14:56:59', '12dfd4c7-a3d9-11e9-9298-0050560103a9', 1),
(15, '092cf8e7-a557-11e9-9298-0050560103a9', '2', '2019-07-13 12:20:47', '092cf8e7-a557-11e9-9298-0050560103a9', '2019-07-13 12:20:47', '092cf8e7-a557-11e9-9298-0050560103a9', 1),
(16, '03fb7022-a59d-11e9-9298-0050560103a9', '2', '2019-07-13 21:08:54', '03fb7022-a59d-11e9-9298-0050560103a9', '2019-07-13 21:08:54', '03fb7022-a59d-11e9-9298-0050560103a9', 1),
(17, '3844e083-a5b6-11e9-9298-0050560103a9', '2', '2019-07-14 07:48:48', '3844e083-a5b6-11e9-9298-0050560103a9', '2019-07-14 07:48:48', '3844e083-a5b6-11e9-9298-0050560103a9', 1),
(18, '557ed786-a6cb-11e9-9298-0050560103a9', '2', '2019-07-15 09:12:56', '557ed786-a6cb-11e9-9298-0050560103a9', '2019-07-15 09:12:56', '557ed786-a6cb-11e9-9298-0050560103a9', 1),
(19, '26a7db2b-a76b-11e9-9298-0050560103a9', '2', '2019-07-16 03:53:29', '26a7db2b-a76b-11e9-9298-0050560103a9', '2019-07-16 03:53:29', '26a7db2b-a76b-11e9-9298-0050560103a9', 1),
(20, '83b431fb-a7b8-11e9-9298-0050560103a9', '2', '2019-07-16 13:04:33', '83b431fb-a7b8-11e9-9298-0050560103a9', '2019-07-16 13:04:33', '83b431fb-a7b8-11e9-9298-0050560103a9', 1),
(21, '671810c9-a816-11e9-adc5-0050560103a9', '2', '2019-07-17 00:14:27', '671810c9-a816-11e9-adc5-0050560103a9', '2019-07-17 00:14:27', '671810c9-a816-11e9-adc5-0050560103a9', 1),
(22, 'c464f834-a84e-11e9-adc5-0050560103a9', '2', '2019-07-17 06:56:21', 'c464f834-a84e-11e9-adc5-0050560103a9', '2019-07-17 06:56:21', 'c464f834-a84e-11e9-adc5-0050560103a9', 1),
(23, '51878f09-a89d-11e9-adc5-0050560103a9', '2', '2019-07-17 16:18:31', '51878f09-a89d-11e9-adc5-0050560103a9', '2019-07-17 16:18:31', '51878f09-a89d-11e9-adc5-0050560103a9', 1),
(24, '184d88f4-a89f-11e9-adc5-0050560103a9', '2', '2019-07-17 16:39:12', '184d88f4-a89f-11e9-adc5-0050560103a9', '2019-07-17 16:39:12', '184d88f4-a89f-11e9-adc5-0050560103a9', 1),
(25, 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', '2', '2019-07-17 21:09:20', 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', '2019-07-17 21:09:20', 'cc4e7fb1-a8c5-11e9-adc5-0050560103a9', 1),
(26, '826e78d0-a8ca-11e9-adc5-0050560103a9', '2', '2019-07-17 21:41:39', '826e78d0-a8ca-11e9-adc5-0050560103a9', '2019-07-17 21:41:39', '826e78d0-a8ca-11e9-adc5-0050560103a9', 1),
(27, 'dc6dced0-a8d1-11e9-adc5-0050560103a9', '2', '2019-07-17 22:32:42', 'dc6dced0-a8d1-11e9-adc5-0050560103a9', '2019-07-17 22:32:42', 'dc6dced0-a8d1-11e9-adc5-0050560103a9', 1),
(28, 'e5b9bf70-a911-11e9-adc5-0050560103a9', '2', '2019-07-18 06:13:56', 'e5b9bf70-a911-11e9-adc5-0050560103a9', '2019-07-18 06:13:56', 'e5b9bf70-a911-11e9-adc5-0050560103a9', 1),
(29, 'fba4f1a1-aa34-11e9-adc5-0050560103a9', '2', '2019-07-19 17:03:21', 'fba4f1a1-aa34-11e9-adc5-0050560103a9', '2019-07-19 17:03:21', 'fba4f1a1-aa34-11e9-adc5-0050560103a9', 1),
(30, '2f289a42-aa52-11e9-adc5-0050560103a9', '2', '2019-07-19 20:32:49', '2f289a42-aa52-11e9-adc5-0050560103a9', '2019-07-19 20:32:49', '2f289a42-aa52-11e9-adc5-0050560103a9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `CellphoneNumber` varchar(225) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `CellphoneNumber`, `Password`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`) VALUES
('00bb958f-871b-11e9-bdcc-005056010388', 'admin@citgoafrica.com', '888888888', 'pass', '2019-06-05 00:49:25', 'SYSTEM_WEB', '2019-06-05 00:49:25', 'SYSTEM_WEB', 3),
('03fb7022-a59d-11e9-9298-0050560103a9', 'erickzulu99@gmail.com', '0714375582', 'pass@123!', '2019-07-13 20:35:40', 'SYSTEM_WEB', '2019-07-13 20:35:40', 'SYSTEM_WEB', 3),
('092cf8e7-a557-11e9-9298-0050560103a9', 'Ncubemanelly@gmail.com', '0814980860', 'Mancube@1997', '2019-07-13 12:14:44', 'SYSTEM_WEB', '2019-07-13 12:14:44', 'SYSTEM_WEB', 3),
('0e1c909d-9c8b-11e9-9298-0050560103a9', 'ufketn@gmail.com', '0837475017', 'Sazee0712@', '2019-07-02 07:34:26', 'SYSTEM_WEB', '2019-07-02 07:34:26', 'SYSTEM_WEB', 3),
('0f8c45eb-a10a-11e9-9298-0050560103a9', 'thokozanilanga@gmail.com', '0724863465', 'pass@123!', '2019-07-08 00:53:39', 'SYSTEM_WEB', '2019-07-08 00:53:39', 'SYSTEM_WEB', 4),
('12dfd4c7-a3d9-11e9-9298-0050560103a9', 'mbadamanajudy@gmail.com', '0833282830', 'Luyolo@07', '2019-07-11 14:40:33', 'SYSTEM_WEB', '2019-07-11 14:40:33', 'SYSTEM_WEB', 3),
('184d88f4-a89f-11e9-adc5-0050560103a9', '2016417368@ufs4life.ac.za', '0810757811', 'Money@2020', '2019-07-17 16:28:07', 'SYSTEM_WEB', '2019-07-17 16:28:07', 'SYSTEM_WEB', 3),
('1db23050-aa30-11e9-adc5-0050560103a9', 'mkhwantshinyuswa@gmai.com', '0615425604', 'pass@123!', '2019-07-19 16:18:44', 'SYSTEM_WEB', '2019-07-19 16:18:44', 'SYSTEM_WEB', 4),
('26a7db2b-a76b-11e9-9298-0050560103a9', 'sahmenziwa@gmail.com', '0780449984', 'Siphesihle123!', '2019-07-16 03:43:46', 'SYSTEM_WEB', '2019-07-16 03:43:46', 'SYSTEM_WEB', 3),
('2f289a42-aa52-11e9-adc5-0050560103a9', '2014208660@ufs4life.ac.za', '0822613297', 'pass@123!', '2019-07-19 20:22:36', 'SYSTEM_WEB', '2019-07-19 20:22:36', 'SYSTEM_WEB', 3),
('3844e083-a5b6-11e9-9298-0050560103a9', 'SMALLGUL7@GMAIL.COM', '0788415439', 'Phindile1.', '2019-07-13 23:36:05', 'SYSTEM_WEB', '2019-07-13 23:36:05', 'SYSTEM_WEB', 3),
('392b08ca-9fbe-11e9-9298-0050560103a9', 'guguportia@outlook.com', '0605079203', 'pass@123!', '2019-07-06 09:18:16', 'SYSTEM_WEB', '2019-07-06 09:18:16', 'SYSTEM_WEB', 4),
('3d1699d4-aa2f-11e9-adc5-0050560103a9', 'mkhwantshinyuswa@gmail.com', '0615425604', 'pass@123!', '2019-07-19 16:12:27', 'SYSTEM_WEB', '2019-07-19 16:12:27', 'SYSTEM_WEB', 4),
('51878f09-a89d-11e9-adc5-0050560103a9', 'ndiwe039@gmail.com', '0614264143', 'Stha@5430', '2019-07-17 16:15:24', 'SYSTEM_WEB', '2019-07-17 16:15:24', 'SYSTEM_WEB', 3),
('557ed786-a6cb-11e9-9298-0050560103a9', 'neowagabotlhaelwe@gmail.com', '0725654091', 'Neozene@82', '2019-07-15 08:39:45', 'SYSTEM_WEB', '2019-07-15 08:39:45', 'SYSTEM_WEB', 3),
('65a72d5e-a24b-11e9-9298-0050560103a9', 'tozybuthelezi@gmail.com', '0844726794', 'Asilwazi@1023', '2019-07-09 15:13:52', 'SYSTEM_WEB', '2019-07-09 15:13:52', 'SYSTEM_WEB', 3),
('671810c9-a816-11e9-adc5-0050560103a9', 'ndiwe791@gmail.com', '0787910359', 'pass@123!', '2019-07-17 00:09:38', 'SYSTEM_WEB', '2019-07-17 00:09:38', 'SYSTEM_WEB', 3),
('6798af17-a93b-11e9-adc5-0050560103a9', 'elsieluvuno4@gmail.com', '0726934643', 'pass@123!', '2019-07-18 11:07:01', 'SYSTEM_WEB', '2019-07-18 11:07:01', 'SYSTEM_WEB', 4),
('69573a39-9d03-11e9-9298-0050560103a9', 'mrnnmthembu@gmail.com', '0725698888', 'Mth3mbu123!', '2019-07-02 21:55:58', 'SYSTEM_WEB', '2019-07-02 21:55:58', 'SYSTEM_WEB', 3),
('699dc24f-9f1b-11e9-9298-0050560103a9', 'shembeboy@gmail.com', '0721154419', 'Lthzam00$', '2019-07-05 13:52:49', 'SYSTEM_WEB', '2019-07-05 13:52:49', 'SYSTEM_WEB', 3),
('76aa3741-9d84-11e9-9298-0050560103a9', 'sazee0712@gmail.com', '0837475018', 'Sazee0712@', '2019-07-03 13:19:46', 'SYSTEM_WEB', '2019-07-03 13:19:46', 'SYSTEM_WEB', 3),
('826e78d0-a8ca-11e9-adc5-0050560103a9', 'bonganimxolisi74@gmail.com', '0820603149', 'pass@123!', '2019-07-17 21:38:53', 'SYSTEM_WEB', '2019-07-17 21:38:53', 'SYSTEM_WEB', 3),
('82ed47b1-a4de-11e9-9298-0050560103a9', 'nandiphabotha3@gmail.com', '0614668467', 'pass@123!', '2019-07-12 21:51:59', 'SYSTEM_WEB', '2019-07-12 21:51:59', 'SYSTEM_WEB', 4),
('83b431fb-a7b8-11e9-9298-0050560103a9', 'mattandyncube@gmail.com', '0797267702', '$mattandY07', '2019-07-16 12:57:33', 'SYSTEM_WEB', '2019-07-16 12:57:33', 'SYSTEM_WEB', 3),
('87057b6f-9d87-11e9-9298-0050560103a9', 'lettiekunene25@gmail.com', '0829768950', 'Kunene@0908', '2019-07-03 13:41:42', 'SYSTEM_WEB', '2019-07-03 13:41:42', 'SYSTEM_WEB', 3),
('90ab9c5f-a20a-11e9-9298-0050560103a9', 'sfisondlazi@gmail.com', '0784538217', 'CFiso@1998', '2019-07-09 07:29:47', 'SYSTEM_WEB', '2019-07-09 07:29:47', 'SYSTEM_WEB', 3),
('92813a93-a88e-11e9-adc5-0050560103a9', 'lihlet908@gmail.com', '0817180450', 'pass@123!', '2019-07-17 14:29:50', 'SYSTEM_WEB', '2019-07-17 14:29:50', 'SYSTEM_WEB', 4),
('980d340e-9f12-11e9-9298-0050560103a9', 'providerbonnah@gmail.com', '0720933656', 'pass@123!', '2019-07-05 12:49:42', 'SYSTEM_WEB', '2019-07-05 12:49:42', 'SYSTEM_WEB', 4),
('bee142af-9fbb-11e9-9298-0050560103a9', 'kubhekabenzile@gmail.com', '0724230259', 'pass@123!', '2019-07-06 09:00:32', 'SYSTEM_WEB', '2019-07-06 09:00:32', 'SYSTEM_WEB', 4),
('c27e56a3-9e6e-11e9-9298-0050560103a9', 'citgoafrica@gmail.com', '0765217054', 'Sazee0712@', '2019-07-04 17:16:55', 'SYSTEM_WEB', '2019-07-04 17:16:55', 'SYSTEM_WEB', 3),
('c464f834-a84e-11e9-adc5-0050560103a9', 'minenhlekhum@gmail.com', '0720213453', 'Mini@1997', '2019-07-17 06:53:06', 'SYSTEM_WEB', '2019-07-17 06:53:06', 'SYSTEM_WEB', 3),
('cc4e7fb1-a8c5-11e9-adc5-0050560103a9', 'khuzwayolebohang@gmail.com', '0634875161', 'pass@123!', '2019-07-17 21:05:10', 'SYSTEM_WEB', '2019-07-17 21:05:10', 'SYSTEM_WEB', 3),
('cda7a12d-a13f-11e9-9298-0050560103a9', 'andilemadlala471@gmail.com', '+27715554839', 'pass@123!', '2019-07-08 07:18:21', 'SYSTEM_WEB', '2019-07-08 07:18:21', 'SYSTEM_WEB', 4),
('da1e17f3-9c88-11e9-9298-0050560103a9', 'ncubem@webmail.co.za', '+27736663016', 'pass@123!', '2019-07-02 07:18:40', 'SYSTEM_WEB', '2019-07-02 07:18:40', 'SYSTEM_WEB', 3),
('dc6dced0-a8d1-11e9-adc5-0050560103a9', 'ndiwe5430@gmail.com', '0835144080', 'pass@123!', '2019-07-17 22:31:31', 'SYSTEM_WEB', '2019-07-17 22:31:31', 'SYSTEM_WEB', 3),
('e305cf82-a427-11e9-9298-0050560103a9', 'nzimandebs@gmail.com', '0648282674', 'pass@123!', '2019-07-12 00:04:43', 'SYSTEM_WEB', '2019-07-12 00:04:43', 'SYSTEM_WEB', 4),
('e5a2d54f-a3e6-11e9-9298-0050560103a9', 'spokesxtu@yahoo.com', '0783238552', 'pass@123!', '2019-07-11 16:19:30', 'SYSTEM_WEB', '2019-07-11 16:19:30', 'SYSTEM_WEB', 4),
('e5b9bf70-a911-11e9-adc5-0050560103a9', 'mthoko860824@gmail.com', '+27659629687', '@Mthoko24', '2019-07-18 06:09:54', 'SYSTEM_WEB', '2019-07-18 06:09:54', 'SYSTEM_WEB', 3),
('f009dacb-9d01-11e9-9298-0050560103a9', 'khumalomelukeli@gmail.com', '0762330633', '1990@Lizwi', '2019-07-02 21:45:25', 'SYSTEM_WEB', '2019-07-02 21:45:25', 'SYSTEM_WEB', 3),
('f3cb9107-9d8a-11e9-9298-0050560103a9', 'budula@webmail.co.za', '0789406103', 'Mpondombi@8119', '2019-07-03 14:06:13', 'SYSTEM_WEB', '2019-07-03 14:06:13', 'SYSTEM_WEB', 3),
('f40be177-aa4f-11e9-adc5-0050560103a9', 'samumbatha22@gmail.com', 'O822613297', 'pass@123!', '2019-07-19 20:06:38', 'SYSTEM_WEB', '2019-07-19 20:06:38', 'SYSTEM_WEB', 4),
('fba4f1a1-aa34-11e9-adc5-0050560103a9', 'sibanisezweshabangu@yahoo.com', '0761850437', 'Nyembezi@0437', '2019-07-19 16:53:34', 'SYSTEM_WEB', '2019-07-19 16:53:34', 'SYSTEM_WEB', 3);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `WithdrawalId` varchar(225) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CreateUserId` varchar(225) NOT NULL,
  `ModifyDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ModifyUserId` varchar(225) NOT NULL,
  `StatusId` int(11) NOT NULL,
  `ClientId` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`WithdrawalId`, `Amount`, `CreateDate`, `CreateUserId`, `ModifyDate`, `ModifyUserId`, `StatusId`, `ClientId`) VALUES
('ec669146-aa66-11e9-a9d0-48f17f8d4d88', '200', '2019-07-19 22:51:04', '222', '2019-07-19 22:51:04', '222', 1, 'da1e961a-9c88-11e9-9298-0050560103a9'),
('ec669146-aa66-11e9-a9d0-48f17f8d4d89\r\n', '15000', '2019-07-19 22:51:04', '222', '2019-07-19 22:51:04', '222', 1, 'da1e961a-9c88-11e9-9298-0050560103a9');

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
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`bonusId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientId`),
  ADD UNIQUE KEY `ClientRef` (`ClientRef`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientRef` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
