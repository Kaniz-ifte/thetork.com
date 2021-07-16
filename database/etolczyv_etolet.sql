-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 23, 2020 at 12:25 AM
-- Server version: 10.3.25-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etolczyv_etolet`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898980, 'admin@gmail.com', '829312dae7d871e02a368ba139c035ea', '2019-08-05 07:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateID` int(5) NOT NULL,
  `CityName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `CountryID`, `StateID`, `CityName`, `EnterDate`) VALUES
(1, 1, 1, 'Moghbazar', '2020-08-22 13:44:07'),
(19, 1, 1, 'Adabor', '2020-09-06 18:23:45'),
(21, 1, 1, 'Badda', '2020-09-06 18:24:15'),
(22, 1, 1, 'Bangshal', '2020-09-06 18:24:30'),
(23, 1, 1, 'Biman Bandar', '2020-09-06 19:31:56'),
(24, 1, 1, 'Cantonment ', '2020-09-06 19:32:11'),
(25, 1, 1, 'chawkbazar', '2020-09-06 19:32:33'),
(26, 1, 1, 'Dakshinkhan', '2020-09-06 19:32:54'),
(27, 1, 1, 'Darus Salam', '2020-09-06 19:33:05'),
(28, 1, 1, 'Demra', '2020-09-06 19:33:16'),
(29, 1, 1, 'Dhanmondi ', '2020-09-06 19:33:24'),
(30, 1, 1, 'Gazipur Sadar', '2020-09-06 19:34:24'),
(31, 1, 1, 'Gendaria', '2020-09-06 19:34:38'),
(32, 1, 1, 'Gulshan', '2020-09-06 19:34:46'),
(33, 1, 1, 'Hazaribagh', '2020-09-06 19:34:59'),
(34, 1, 1, 'Jatrabari ', '2020-09-06 19:35:09'),
(35, 1, 1, 'Kadamtali ', '2020-09-06 19:35:21'),
(36, 1, 1, 'Kafrul', '2020-09-06 19:35:28'),
(38, 1, 1, 'kalabagan', '2020-09-06 19:36:50'),
(39, 1, 1, 'Kamrangirchar', '2020-09-06 19:37:18'),
(40, 1, 1, 'Keraniganj', '2020-09-06 19:37:27'),
(41, 1, 1, 'khilgaon', '2020-09-06 19:37:38'),
(42, 1, 1, 'khilkhet', '2020-09-06 19:37:51'),
(43, 1, 1, 'kotwali', '2020-09-06 19:38:09'),
(45, 1, 1, 'Mirpur', '2020-09-06 19:38:48'),
(47, 1, 1, 'Mohammadpur', '2020-09-06 19:40:13'),
(48, 1, 1, 'Motijheel', '2020-09-06 19:40:24'),
(49, 1, 1, 'Narayanganj Sadar', '2020-09-06 19:40:36'),
(50, 1, 1, 'New Market', '2020-09-06 19:40:53'),
(51, 1, 1, 'Pallabi', '2020-09-06 19:41:02'),
(52, 1, 1, 'Lalbagh', '2020-09-06 19:41:28'),
(59, 1, 1, 'Motijheel', '2020-09-06 19:47:53'),
(62, 1, 1, 'paltan', '2020-09-06 19:49:58'),
(63, 1, 1, 'Ramna', '2020-09-06 19:50:06'),
(64, 1, 1, 'Rampura', '2020-09-06 19:50:16'),
(65, 1, 1, 'Sabujbagh', '2020-09-06 19:50:38'),
(66, 1, 1, 'Savar', '2020-09-06 19:50:43'),
(67, 1, 1, 'Shahabagh', '2020-09-06 19:50:54'),
(68, 1, 1, 'Sher-e-Bangla Nagar', '2020-09-06 19:51:08'),
(69, 1, 1, 'Sutrapur', '2020-09-06 19:51:17'),
(70, 1, 1, 'Tejgaon', '2020-09-06 19:51:28'),
(71, 1, 1, 'Turag', '2020-09-06 19:51:39'),
(72, 1, 1, 'Uttara', '2020-09-06 19:51:46'),
(73, 1, 1, 'Uttar Khan', '2020-09-06 19:51:58'),
(74, 1, 9, 'Moulavibazar', '2020-10-13 15:55:12'),
(75, 1, 9, 'Sreemangal', '2020-10-13 15:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblconfirmusers`
--

CREATE TABLE `tblconfirmusers` (
  `ID` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `confirmationDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblconfirmusers`
--

INSERT INTO `tblconfirmusers` (`ID`, `uid`, `PropertyID`, `confirmationDate`) VALUES
(5, 8, 629126491, '2020-08-21 07:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `ID` int(10) NOT NULL,
  `CountryName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`ID`, `CountryName`, `EnterDate`) VALUES
(1, 'Bangladesh', '2020-09-06 10:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `PropertyID` int(10) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryNumber` varchar(200) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `PropertyID`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryNumber`, `EnquiryDate`, `Status`, `Remark`, `RemarkDate`) VALUES
(1, 1, 'Akash Chandra', 'ac@gmail.com', 7894561239, 'When I will come to you to see the property', '283495176', '2019-08-13 05:36:13', 'Answer', 'Fine You will come tomorrow morning i.e 17 aug', '2019-08-16 11:17:25'),
(2, 2, 'Ramesh Kumar', 'ramesh@gmail.com', 8989889898, 'Give me best prices of this property', '295692123', '2019-08-16 11:58:27', NULL, NULL, NULL),
(3, 2, 'Akash', 'akash@gmail.com', 5656565656, 'hgfhf gy f ', '611895685', '2019-08-18 16:02:03', NULL, NULL, NULL),
(4, 4, 'Simple user', 'testuser2@gmail.com', 1231231231, 'Test Enquiry', '558385754', '2019-09-30 19:00:26', 'Answer', 'This is for testing', '2019-09-30 19:28:09'),
(5, 2, 'Simple user', 'testuser2@gmail.com', 1231231231, 'I want some discount on this property.', '203492977', '2019-09-30 19:33:22', NULL, NULL, NULL),
(6, 6, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'i want to see', '196331073', '2020-08-22 13:51:42', 'Answer', 'ok you can meet tomorrow', '2020-08-22 13:53:26'),
(7, 6, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916066, 'testing the second pahse on datasbe anmdn server . lets see ', '122973832', '2020-08-24 16:04:43', NULL, NULL, NULL),
(8, 6, 'Adil Hossain', '', 1712916066, 'final testing ', '958515200', '2020-08-24 16:27:01', NULL, NULL, NULL),
(9, 6, 'Mokles', 'adilhossain227@gmail.com', 1712916066, 'bhai abasha ta dekhbo ', '587376661', '2020-08-26 13:45:16', NULL, NULL, NULL),
(10, 1, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'basha ta dekhte chai ', '845027020', '2020-08-29 07:37:22', NULL, NULL, NULL),
(11, 1, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'Testing for Etolet \r\n', '758959603', '2020-09-07 18:52:16', NULL, NULL, NULL),
(12, 10, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'if you have received this txt . txt me back in my number .', '984538031', '2020-09-13 06:56:33', NULL, NULL, NULL),
(13, 11, 'Adil', 'adilhossain227@gmail.com', 1712916062, 'Test from app sms ', '684185609', '2020-10-02 16:32:25', NULL, NULL, NULL),
(14, 16, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'test', '102756118', '2020-10-02 17:06:54', NULL, NULL, NULL),
(15, 16, 'Adil', 'adilhossain227@gmail.com', 1712916062, 'Test', '238163764', '2020-10-02 17:09:30', NULL, NULL, NULL),
(16, 24, 'Adil', 'adilhossain227@gmail.com', 1712916062, 'App test', '782798469', '2020-10-02 17:10:28', NULL, NULL, NULL),
(17, 11, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'app test', '906123044', '2020-10-02 17:12:06', NULL, NULL, NULL),
(18, 59, 'bn,m ', '', 0, ' /.', '791827012', '2020-10-28 15:30:03', NULL, NULL, NULL),
(19, 59, 'bn,m ', '', 0, ' /.', '317975446', '2020-10-28 15:30:05', NULL, NULL, NULL),
(20, 59, 'bn,m ', '', 0, ' /.', '550022047', '2020-10-28 15:30:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `UserRemark` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Publish` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`id`, `UserId`, `PropertyId`, `UserRemark`, `PostingDate`, `Is_Publish`) VALUES
(1, 3, 1, 'This review is for testing.', '2019-09-20 19:15:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnid`
--

CREATE TABLE `tblnid` (
  `ID` int(11) NOT NULL,
  `uid` int(20) NOT NULL,
  `idpic1` varchar(200) NOT NULL,
  `idpic2` varchar(200) NOT NULL,
  `uservarified` int(10) NOT NULL,
  `adminvarified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnid`
--

INSERT INTO `tblnid` (`ID`, `uid`, `idpic1`, `idpic2`, `uservarified`, `adminvarified`) VALUES
(14, 28, 'f3ccdd27d2000e3f9255a7e3e2c488001601242090.jpg', '156005c5baf40ff51a327f1c34f2975b1601242090.jpg', 1, 0),
(15, 31, '7ee4f3304a30ee8998a209c609b7d2551602357533.jpg', '8e7a55a195b739769b54ce6cc983fc5d1602357533.jpg', 1, 0),
(16, 40, '2a681cbc28ce0bd299c98f972b8f814a1603702910.jpg', '14998bd8031323dac77ee7f4adf457611603702910.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblotp`
--

CREATE TABLE `tblotp` (
  `ID` int(11) NOT NULL,
  `MobileNumber` int(11) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblotp`
--

INSERT INTO `tblotp` (`ID`, `MobileNumber`, `otp`) VALUES
(12, 1712916062, '1234567'),
(22, 1625975405, '777443'),
(23, 1912004779, '288753'),
(25, 1959518188, '479637'),
(27, 1677646240, '518139'),
(31, 0, '667248'),
(32, 1628911080, '795836'),
(35, 1797010484, '4674810'),
(36, 1711831044, '2457075'),
(37, 1925468846, '2003727'),
(38, 1727104949, '4514814'),
(39, 1673913832, '2067865'),
(40, 1720350163, '5338857'),
(41, 1711004845, '2266469'),
(43, 1303764510, '4904564'),
(44, 1734176953, '3607135'),
(45, 1677221960, '1938914'),
(46, 1934399677, '5317885'),
(47, 1552351009, '6068875'),
(48, 1712672234, '2243516'),
(49, 1760290155, '2393647'),
(50, 1715238657, '3796881'),
(52, 1713304850, '4727159'),
(53, 1787168676, '2646410'),
(54, 1715488996, '1949809'),
(55, 1719118554, '2045447'),
(56, 1671750174, '1848549'),
(57, 1947434511, '4439581'),
(58, 1711160143, '6117149'),
(59, 1676767735, '5849791');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'E-Tolet is an e-commerce rental site which intents to create a bridge between the house owners & tenants. We develop a relationship between house owners and tenants and provide house rental services to our valuable customers. E-Tolet app & website provides all vacant residences and properties to those who need them. This site is operating all over the Dhaka city and soon to cover whole Bangladesh. Home is a place where people finds security and soundness. Our belief is to give quality and secured services in renting properties to all of our customers & clients. Our site allows anyone to rent in his or her region simply and conveniently. E-Tolet connects millions of house owners and rentals in Bangladesh every month by delivering remarkable user experience on the site. Every Bangladeshi can find properties to rent on www.etolet.net.', 'info@gmsil.com', 8989899898, '2020-10-24 16:30:58'),
(2, 'contactus', 'Contact Us', 'Plot #41 & 43,Road #5/1, Block #B, Banasree , East Rampura, Dhaka-1219', 'contact@etolet.net', 1777617054, '2020-09-04 02:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `ID` int(11) NOT NULL,
  `uid` int(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `paymentNumber` int(11) NOT NULL,
  `trnxID` varchar(50) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `paymentDate` datetime NOT NULL,
  `adminConfirm` int(5) NOT NULL,
  `ownerPayment` int(10) NOT NULL,
  `ownerPaymentDate` datetime NOT NULL,
  `ownerTrnxID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`ID`, `uid`, `type`, `paymentNumber`, `trnxID`, `PropertyID`, `paymentDate`, `adminConfirm`, `ownerPayment`, `ownerPaymentDate`, `ownerTrnxID`) VALUES
(1, 5, 'baskh', 1711523099, 'AD23145698', 838670647, '2020-08-29 09:09:28', 1, 0, '0000-00-00 00:00:00', ''),
(5, 22, 'baskh', 1959518188, 'AD23145699', 780669755, '2020-09-14 19:39:52', 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblproperty`
--

CREATE TABLE `tblproperty` (
  `ID` int(10) NOT NULL,
  `UserID` char(20) DEFAULT NULL,
  `PropertyTitle` mediumtext DEFAULT NULL,
  `PropertDescription` mediumtext DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Bedrooms` varchar(200) DEFAULT NULL,
  `Bathrooms` varchar(200) DEFAULT NULL,
  `Floors` varchar(200) DEFAULT NULL,
  `Garages` varchar(200) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `RentorsalePrice` varchar(120) DEFAULT NULL,
  `BeforePricelabel` varchar(120) DEFAULT NULL,
  `AfterPricelabel` varchar(120) DEFAULT NULL,
  `PropertyID` varchar(120) DEFAULT NULL,
  `CenterCooling` char(4) DEFAULT NULL,
  `Balcony` char(4) DEFAULT NULL,
  `PetFriendly` char(4) DEFAULT NULL,
  `Barbeque` char(4) DEFAULT NULL,
  `FireAlarm` char(4) DEFAULT NULL,
  `ModernKitchen` char(4) DEFAULT NULL,
  `Storage` char(4) DEFAULT NULL,
  `Dryer` char(4) DEFAULT NULL,
  `Heating` char(4) DEFAULT NULL,
  `Pool` char(4) DEFAULT NULL,
  `Laundry` char(4) DEFAULT NULL,
  `Sauna` varchar(4) DEFAULT NULL,
  `Gym` char(4) DEFAULT NULL,
  `Elevator` char(4) DEFAULT NULL,
  `DishWasher` char(4) DEFAULT NULL,
  `EmergencyExit` char(4) DEFAULT NULL,
  `FeaturedImage` varchar(200) DEFAULT NULL,
  `GalleryImage1` varchar(200) DEFAULT NULL,
  `GalleryImage2` varchar(200) DEFAULT NULL,
  `GalleryImage3` varchar(200) DEFAULT NULL,
  `GalleryImage4` varchar(200) DEFAULT NULL,
  `GalleryImage5` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `City` varchar(220) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `ZipCode` varchar(200) DEFAULT NULL,
  `Neighborhood` varchar(200) DEFAULT NULL,
  `hide` int(3) NOT NULL,
  `ListingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproperty`
--

INSERT INTO `tblproperty` (`ID`, `UserID`, `PropertyTitle`, `PropertDescription`, `Type`, `Status`, `Location`, `Bedrooms`, `Bathrooms`, `Floors`, `Garages`, `Area`, `Size`, `RentorsalePrice`, `BeforePricelabel`, `AfterPricelabel`, `PropertyID`, `CenterCooling`, `Balcony`, `PetFriendly`, `Barbeque`, `FireAlarm`, `ModernKitchen`, `Storage`, `Dryer`, `Heating`, `Pool`, `Laundry`, `Sauna`, `Gym`, `Elevator`, `DishWasher`, `EmergencyExit`, `FeaturedImage`, `GalleryImage1`, `GalleryImage2`, `GalleryImage3`, `GalleryImage4`, `GalleryImage5`, `Address`, `Country`, `City`, `State`, `ZipCode`, `Neighborhood`, `hide`, `ListingDate`) VALUES
(9, '17', 'Gentle Breeze', 'Previous id: 838670647', 'Apartments', '10001-20000', 'Dhaka', '3', '3', '', '2', '1200', '1200', '15000', '', '', 'R-001', '1', '1', '1', '', '1', '', '', '', '', '', '', '', '', '1', '', '', '6e3bfda26e219cb42f6d6cc0650ca2811599580528.jpg', 'a54dee63574a2246657101f8a228447d1599580528.jpg', 'd1d8db7fc9b33efb54386ff1267715d01599580528.jpg', '47825f589b52ab5a7c501b72e77641551599580528.jpg', 'fa362d605e918667997bb7f58e60c11d1599580528.jpg', '3b589e740533c0b3b0941abb5ad93a781599580528.jpg', 'H-12, Road-5/1, Block-A, Banasree', '1', 'Rampura', '1', '1219', 'Banasree', 1, '2020-09-08 15:55:28'),
(10, '17', 'Peace Dawn', 'Previous id: 780669755', 'Apartments', '10001-20000', 'Dhaka', '2', '2', '', '', '1100', '1100', '18000', '', '', 'G-001', '1', '', '', '', '1', '', '', '', '', '', '', '', '1', '1', '', '', '66e039a93e819c2c08aabd4c77e09f631599706414.jpg', '265478d92f240c2d563c97f04a08789c1599706414.jpg', '3b589e740533c0b3b0941abb5ad93a781599706414.jpg', 'fa362d605e918667997bb7f58e60c11d1599706414.jpg', '6e3bfda26e219cb42f6d6cc0650ca2811599706414.jpg', 'b7ef1e96e85eddbc0383198e863277ac1599706414.jpg', '33/2, Rahaman Mansion, Post Office Road', '1', 'Gulshan', '1', '1212', 'Middle Badda', 1, '2020-09-10 02:53:34'),
(11, '20', 'Office/House for Rent', '372339772', 'Apartments', '80001-90000', 'Gulshan, Dhaka', '3', '2', '4th', 'no', '3200', '3200', '80000', '', '', 'G-002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2b1090656b4c7a87cc035f126a29e6811599925318.jpg', 'ccaf462d54b107ef651ba4aea5c698ad1599924504jpeg', 'e5e892f7ef840e22ddc74e19e6a9e6dd1599924504jpeg', '0a5e508e360bd6fd4bfc7cffdcfe435e1599924504jpeg', '57c2cb9075c612c927f88d8f2833cee01599924504.jpg', 'd034d66a6c032fae10df1979166438611599924504.jpg', 'House-60/B, Road-131, Gulshan-1', '1', 'Gulshan', '1', '1212', ' Gulshan Lake Circle-1', 0, '2020-09-12 15:28:24'),
(16, '24', 'Chowdhury Apartment', '642859612', 'Apartments', '20001-30000', 'Dhaka', '2', '2', 'Ground', 'no', '1100', '', '24000', '', '', 'M-001', '', '1', '', '1', '', '1', '1', '1', '1', '1', '', '1', '', '1', '', '', '392866d66f0ea60bd9cb7bd50f6b53b61600757978.JPG', 'b6b7d33b4e4fa3cb41fe1495653b07ca1600757978.JPG', '09a0f123ac0fd267f44ae0baa30d5e471600757978.JPG', '41c2824b7af6d0519b60ce5064ef3c4b1600757978.JPG', '48070cc2191a01eb7375148aa06a187d1600757978.JPG', '9c03d5d8259ff8b465cef2da67264f071600757978.JPG', 'New Eskaton Road,  Biam Goli', '1', 'Moghbazar', '1', '1205', 'Banglamotors', 0, '2020-09-22 06:59:38'),
(17, '25', 'Small Flat available for rent Small family/bechelor (Banasree B Block)', '785371534\r\n2 flats available for Small family/bechelor\r\nTo-Let (october 1st)\r\nRampura Banasree ,Block-B , Road 2 , dhaka 1219.\r\n(5th floor)\r\n# Two bed , Two bath , Balcony, Drawing/Dining -Rent 13.5k + utilities. (Prepaid Gas)\r\n\r\n# Two  bed , one bath , Balcony, Drawing/Dining \r\n-Rent 12.5k + utilities. (Prepaid Gas)\r\n', 'Apartments', '10001-20000', 'Banasree block b road 2 house 29, dhaka 1219', '2', '2', '5th', 'Yes', '1000', '400', '13500', '', '', 'R-002', '', '1', '1', '1', '', '1', '1', '1', '1', '1', '', '', '', '', '', '', 'f789497385428afa2412731bed5f8dd01600903070.jpg', 'c902c76569ac71a58a3ca5f259ed66de1600903070.jpg', '6943b6c7699ba2d051277afc136cb2611600903070.jpg', 'a8354e76882ccc2d2eceb2d321ffb54b1600903070.jpg', 'c362585aa7a2384340af77204f7f1d5d1600903070.jpg', '68a7138e2f580634495b6aeecb6c8b7c1600903070.jpg', 'Banasree house 29/b road 2 dhaka 1219', '1', 'Rampura', '1', '1219', 'Banasree', 0, '2020-09-23 23:17:50'),
(24, '28', 'Luxurious flat(Spadina) for tolet', 'Luxurious flat in uttara is ready for rent in a 9 storied building. Flat is in 1st and 2nd floor.  The flat is 2400 sft south facing. 3 bed, 3 bath, 3 verendah, spacious drawing, dining, living space as well as kitchen and servent bed & toilet. The floor is made of Italian white marbles.  all bath and kitchen fitted with geysers for hot water.  Lift, generator, cc camera and gym on roof top. 1 car parking. 24/7 security guard with intercom and Wifi connection.  Rent 70000/- plus 10000/- for service charge. H# 2, R# 12/A Sector 10,Uttara, Dhaka. \r\nContact:  K. M. Abdullah Addad', 'Apartments', '80001-90000', 'Addad  H# 2, R# 12/A Sector 10,Uttara, Dhaka.', '3', '3', '8', '1', '2400', '2400', '80000', '', '', 'U-001', '', '1', '1', '1', '', '1', '1', '1', '', '1', '1', '1', '', '', '1', '', 'f47454d1d3644127f42070181a8b9afc1601240887.jpg', '2f95a5b013de24775c07d49865a08b6c1601240887.jpg', '8b3825fbdca530fa277eba09ffff951c1601240887.jpg', 'd41d8cd98f00b204e9800998ecf8427e1601240887', 'd41d8cd98f00b204e9800998ecf8427e1601240887', 'd41d8cd98f00b204e9800998ecf8427e1601240887', 'H# 2, R# 12/A Sector 10,Uttara, Dhaka. ', '1', 'Uttara', '1', '1230', '', 0, '2020-09-27 21:08:07'),
(29, '29', 'Showroom Space for Rent', '137093228', 'Commercial Space', '80001-90000', 'Banasree, Block-G, Main Road', '0', '0', '0', '0', '2600', '2600', '80000', '', '', 'R-003', '', '', '', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '5c8fb4d6347f02737833343e3c8642e41601708848.jpg', '023a6c9a27a15fe31719314b5132a9ea1601708848.jpg', '977201815ecd6a7da775bc86a48109ef1601708848.jpg', 'd012af4da381b39218ac72724e9b12641601708848.jpg', '5c8fb4d6347f02737833343e3c8642e41601708848.jpg', 'cfee8db94d75c3539f1881c698cc2e811601708848.jpg', 'Main Road, Block-G, Banasree', '1', 'Rampura', '1', '1219', 'Banasree', 0, '2020-10-03 07:07:28'),
(31, '30', 'Medium Apartment for Rent at Banasree', '652966559', 'Apartments', '10001-20000', 'Banasree', '2', '2', '4', '1', '1035', '', '15000', '', '', 'R-004', '', '1', '1', '1', '', '1', '1', '', '1', '1', '', '1', '', '1', '', '', 'fcfcf491dc2ca9ebcaa54da367643b111604673514.jpg', 'a98d6019ca8077a505b65ae72108c4e61604673543.jpg', 'b218104fac33c0f47d3f72310d7b1cad1604673560.jpg', '88cfd9aa3594ea1db8a665386d722f781604673586.jpg', '595e2fef33628b328209f8fa55d0e4071601825888.jpg', '5802465d6bf8dcf17f705b799e2c5f841604673604.jpg', 'Titas Road (5/1), Block-B, Banasree', '1', 'Rampura', '1', '1219', 'Banasree', 0, '2020-10-04 15:38:08'),
(32, '29', 'Small Flat for Rent at Hajaribag', '266870197', 'Apartments', '0-10000', 'Hajaribag', '1', '2', '0', '0', '800', '', '10000', '', '', 'H-001', '', '', '', '1', '', '', '1', '', '1', '', '', '1', '', '', '', '', '68c4bb215833886dff5b618a93c513c81601915356jpeg', '8f7360cedf29a6dda15e5c79915941d11601915417jpeg', '593979a910518d129e4580aa4af5b2b11601915457jpeg', '6b9380a5d303b0795db7d42706812a741601915498jpeg', '9a7914bba3ef6b957abd50c0aa3c3e391601915522jpeg', '0e17e924b6ea058a8d6ce65d18c3295d1601915550jpeg', 'House-10/B, Gonoktuli Lane 1, BDR 1 no gate', '1', 'Hazaribagh', '1', '1209', 'Gonoktuli Lane 1', 0, '2020-10-05 13:24:07'),
(33, '32', 'Office Space for Rent (3rd Floor)', '695736961', 'Commercial Space', '30001-40000', 'Rampura', '', '', '3', '', '1100', '', '35000', '', '', 'R-005', '1', '', '', '', '1', '', '', '', '', '1', '1', '', '', '', '', '', '49a021945df5c75b1f98b7391210884c1601996786jpeg', '1e0e9fe9b38c151852303b3b75d7ab1f1601996786jpeg', '49a021945df5c75b1f98b7391210884c1602078240jpeg', '895be80f779603a93664e0ee477e287b1601996786jpeg', '40d6faf13aec86fdb8d1ad2d249432941601996786jpeg', 'ddda683acb4ff0fd0f0ce488962758a91601996786jpeg', 'Beside Abul Hotel, Rampura DIT Road', '1', 'Rampura', '1', '1219', 'Beside Abul Hotel, Rampura DIT Road', 0, '2020-10-06 15:06:26'),
(34, '32', 'Office Space for Rent (5th Floor)', '937118836', 'Commercial Space', '30001-40000', 'Rampura', '', '', '5', '', '1100', '', '30000', '', '', 'R-006', '1', '', '', '', '1', '', '', '', '', '1', '1', '', '', '', '1', '1', 'ddda683acb4ff0fd0f0ce488962758a91601996968jpeg', '40d6faf13aec86fdb8d1ad2d249432941601996968jpeg', '895be80f779603a93664e0ee477e287b1601996968jpeg', '49a021945df5c75b1f98b7391210884c1602078065jpeg', '1e0e9fe9b38c151852303b3b75d7ab1f1601996968jpeg', '49a021945df5c75b1f98b7391210884c1601996968jpeg', 'Beside Abul Hotel, Rampura DIT Road', '1', 'Rampura', '1', '1219', 'Beside Abul Hotel, Rampura DIT Road', 0, '2020-10-06 15:09:28'),
(35, '32', 'Flat for Rent (Radiant Camellia) at Banasree', '364584247', 'Apartments', '20001-30000', 'Banasree', '3', '2', '2', '1', '17000', '', '23000', '', '', 'R-007', '', '1', '', '1', '', '1', '1', '1', '1', '1', '1', '1', '', '1', '', '', 'd6f1f36f7feafb5128b58221958753dc1601997656jpeg', 'c6c57fd03e191573c474be3f6798ce471601997656jpeg', '91ef6ba8966b856b4e5117577078b7401601997656jpeg', '97dee7c294a88a82a2d0005685c068601601997656jpeg', 'd3606a863d97c3c72410e4fa57d0fa5e1601997656jpeg', 'c97054182dbd619f693131453bd056cc1601997656jpeg', 'Flat-2C, Road-5/1, Block-A', '1', 'Rampura', '1', '1219', 'Titas Road', 0, '2020-10-06 15:20:56'),
(36, '31', '1350 sqf Apartment', '498768407\r\nA brand new 1500 sqft apartment is available for rent from November 2020 for family. 3 bed, 3 toilets, 2 verandah, 1 living, dining and kitchen. Please contact or inbox for more info. Contact : 01675049496,01711004845 Facilities :* Lift* Generator* Gas & water* 24/7 security. Address: 180/6/A/1,Bank Colony, Titas Road, East Rampura , Dhaka 1219', 'Apartments', '10001-20000', 'Bank Colony, Titas Road, East Rampura', '3', '3', '2', '0', '1350', '0', '20000', '', '', 'R-008', '', '1', '', '1', '', '1', '1', '', '', '1', '1', '1', '', '1', '1', '', '3c5b0117df519ea0e9437a026fe1cadd1602266554.jpg', '3c84e00bd7a6fd1f962ba1f32bcca7771602358988.jpg', 'f12a79ee9a3c59f63cb69e82deec1bc31602359103.jpg', '2a91f100362a7199f94507d3f2b7cb7b1602359181.jpg', '70009a3284e670ea09e912c703094d4b1602359049.jpg', 'daa3559ea528e5c14e34c373bfef9a781602359238.jpg', 'House# 180/6/A/1, Bank Colony, Titas Road', '1', 'Rampura', '1', '1219', 'Banasree C Extension', 1, '2020-10-09 18:02:34'),
(37, '31', '780 sqf Apartment', '729479982\r\nA brand new 780 sqft apartment is available for rent from November 2020 for family.2 bed 2 toilets 1 verandah 1 living, dining and kitchen please contact or inbox for more info contact: 01675049496, 01711004845 Facilities :* Lift* Generator* Gas & water* 24/7 security address: 180/6/A/1, Bank Colony, Titas Road, East Rampura, Dhaka 1219', 'Apartments', '10001-20000', 'Bank Colony, Titas Road, East Rampura', '2', '2', '5', '0', '780', '0', '14000', '', '', 'R-009', '', '1', '', '1', '', '1', '1', '', '', '1', '', '1', '', '1', '1', '', '3c5b0117df519ea0e9437a026fe1cadd1602358248.jpg', '1a8bf674eb5002168145702a2227c5e31602358248.jpg', '2407b3e0ba24dc976976dde4964d866a1602358248.jpg', '01a130e1bc48ee9c7d767a089c39a75e1602358248.jpg', 'e0726a5f47d0bbea428a06830b2d11a11602358248.jpg', 'c4456e612f4ee2702344b029baae59671602358248.jpg', 'House # 180/6/A/1 Nilma', '1', 'Rampura', '1', '1219', 'Banasree C Extension', 0, '2020-10-10 19:30:48'),
(38, '35', 'Hotel Tea Heaven Sreemangal', '446647489\r\nHotels at Sreemangal \r\n', 'Hotels', '0-10000', 'Sreemangal', '1', '1', '0', '0', '0', '0', '3000', '', '', 'S-001', '1', '1', '1', '', '1', '', '1', '', '1', '1', '1', '', '1', '1', '1', '', '8d77b6779b435246e0b6d0c16b7bb7d11602605102.jpg', 'dacfad0ca86ac0ec30befe55e3430fde1602605102.png', 'b1b9497906a1a0c0fc639a1fc0a0a7c11602605102.jpg', 'd41d8cd98f00b204e9800998ecf8427e1602605102', 'd41d8cd98f00b204e9800998ecf8427e1602605102', 'd41d8cd98f00b204e9800998ecf8427e1602605102', 'Moulavibazar', '1', 'Sreemangal', '9', '1212', 'sreemangal', 0, '2020-10-13 16:05:02'),
(54, '36', 'Medium Apartment for Bachelors (Male)', 'Location: Gulshan Badda Link Road, Adarsha Nogor, Near Abul Hotel, Middle Badda.\r\nSeparate pay for home servant, No hidden phone charge option', 'Bachelors', '10001-20000', 'Badda', '2', '2', '6', '0', '0', '0', '16500', '', '', 'B-001', '', '1', '', '1', '', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '', '55a0f2fc29e9f0e832ba13a385a240671603206811.jpg', '6dae5f803cbb3695609c9a9ec0d378bf1603206811.jpg', '0a5170a827f709c77d8151da39aafc161603206811.jpg', 'b12008de4647aba1d53a491704805ebc1603206811.jpg', '19341ee39fde55ab95f7dadcebe4977d1603206811.jpg', 'ba387a011eed7df3b241e0892cc10bf61603206811.jpg', 'Gulshan Badda Link Road, Adorsha Nogor, Near Abul Hotel, Middle Badda.', '1', 'Badda', '1', '1212', 'Abul Hotel (Adarsha Nogor)', 0, '2020-10-20 15:13:31'),
(55, '38', 'Office Space at Rupayan Millenium Square', '667871322\r\nLocation: 69/70, Pragati Sharani, 10/C\r\n1450 sf with negotiable price at 45/- per sf + 5/- service charge per sf\r\n10% reduction for 1st year \r\n3 running lifts\r\n', 'Commercial Space', '10001-20000', 'Badda', '', '3', '10', '1', '1450', '', '70000', '', '', 'B-002', '', '', '1', '', '1', '', '', '1', '1', '1', '1', '', '', '1', '1', '1', '0243019c15d7c6c96eb11063c55c2c231603348617.jpg', '0243019c15d7c6c96eb11063c55c2c231603348617.jpg', '0243019c15d7c6c96eb11063c55c2c231603348617.jpg', 'd41d8cd98f00b204e9800998ecf8427e1603348617', 'd41d8cd98f00b204e9800998ecf8427e1603348617', 'd41d8cd98f00b204e9800998ecf8427e1603348617', '69/70 Pragati Sharani, 10/C', '1', 'Badda', '1', '1212', 'Gulshan', 0, '2020-10-22 06:36:57'),
(56, '39', '1170 SFT Apartment for Rent at Aftabnagar', '569802642\r\nService charge 2500/-Garage bill 2000/-', 'Apartments', '20001-30000', 'Aftabnagar', '3', '2', '1', '1', '1170', '', '18000', '', '', 'B-003', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1ec7f25899683be8ebf12599756b8afc1603877869.jpg', '292e80c84cef302262df970e7c64d4fc1603877869.jpg', '256df1b05170600d337ced74c92623e31603877869.jpg', '9e8bf74bd22326e79e1c655a6deb125b1603877869.jpg', 'f0bb3aaba657f50a48f15971860b55ea1603877869.jpg', '7c8afe3ae93bc776075212a3b80b73ab1603877869.jpg', 'Rahmania Tower, House-34, Main Road, Block-B, Aftabnagar', '1', 'Badda', '1', '1212', 'Jahurul Islam City', 0, '2020-10-28 09:37:49'),
(57, '39', '2380 SFT Apartment for Rent at Aftabnagar', '260231163\r\nService charge 3500/-Garage bill 2000/-', 'Apartments', '30001-40000', 'Aftabnagar', '5', '5', '4', '1', '2380', '', '35000', '', '', 'B-004', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '389a92228a14210428702555376ce0e51603879384.jpg', 'ffb2057a7c935e63efed1c71c61b1aa21603879384.jpg', '014c18cb04e3858db1eb16bca516f0791603879384.jpg', '225053c704f3af78075ca67baec8bf991603879384.jpg', '38d0005f641bee8a9aaadce95b0fdcc91603879384.jpg', '7a5c917b8f9d9ac8c1d4536117196be51603879384.jpg', 'Rahmania Tower, House-34, Main Road, Block-B', '1', 'Badda', '1', '1212', 'Jahurul Islam City', 0, '2020-10-28 10:03:04'),
(58, '39', '1205 SFT Apartment for Rent at Aftabnagar', '695892297\r\nService charge 2500/-Garage bill 2000/-', 'Apartments', '10001-20000', 'Aftabnagar', '3', '3', '1', '1', '1205', '', '20000', '', '', 'B-005', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '9a2a98bbafd685f4785de73fe93eee051603879745.jpg', 'ea06c3c159516d5ad36ff71908fdee541603879745.jpg', '58301838c07528be3c4ccb53927e13fa1603879745.jpg', 'acb3dcb491c958095d3d4facc9bfa9581603879745.jpg', '934da2615c7ce2f7e9e0d42e93047b371603879745.jpg', '2985072980f0d2a45b5052af841dab1d1603879745.jpg', 'Rahmania Tower, House-35, Main Road, Block-B', '1', 'Badda', '1', '1212', 'Jahurul Islam City', 0, '2020-10-28 10:09:05'),
(59, '42', '1900 sft Flat for Rent at Uttara', 'Rent 40K including car park facility', 'Apartments', '30001-40000', 'Uttara', '4', '4', '1', '1', '1900', '', '40000', '', '', 'U-002', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '864a9a7d5c606682d6b7ca4785df6a011603880953.jpg', '588b9c1dc4dfb42f2ec096145e056f191603880953.jpg', '72bd8ad305dddd276ddad4b6f20440961603880953.jpg', 'd00fabf6d9bc7ff4253558a051c77b371603880953.jpg', 'b6872829a0337aafc3ff7bee8072cede1603880953.jpg', '13226245f9f0283cc8282c12a5d898fb1603880953.jpg', 'Aforz villa,road 16,house 82,sector 14,uttara model town,uttara,dhaka', '1', 'Uttara', '1', '1230', 'uttara model town', 0, '2020-10-28 10:29:13'),
(60, '39', 'Medium Flat for Rent at Adabor', 'à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦à¦ªà§à¦°à§‡à¦° à¦†à¦¦à¦¾à¦¬à¦°à§‡ à¦¤à§ƒà¦¤à§€à§Ÿ à¦¤à¦²à¦¾à§Ÿ\r\nà¦¦à¦•à§à¦·à¦¿à¦¨ à¦ªà§‚à¦°à§à¦¬à¦®à§à¦–à§€ à¦•à¦°à§à¦£à¦¾à¦° à¦«à§à¦²à§à¦¯à¦¾à¦Ÿ à¦­à¦¾à§œà¦¾\r\nà¦¨à¦­à§‡à¦®à§à¦¬à¦°/à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦®à¦¾à¦¸à§‡ à¦ªà¦¾à¦°à§à¦•à¦¿à¦‚à¦¸à¦¹ à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦à¦ªà§à¦°à§‡à¦° à¦†à¦¦à¦¾à¦¬à¦°à§‡ à¦¦à¦•à§à¦·à¦¿à¦£ à¦ªà§‚à¦°à§à¦¬à¦®à§à¦–à§€ à¦†à¦²à§‹ à¦¬à¦¾à¦¤à¦¾à¦¸à§‡ à¦ªà¦°à¦¿à¦ªà§‚à¦°à§à¦£ à¦¤à§ƒà¦¤à§€à§Ÿ à¦¤à¦²à¦¾à¦° à¦•à¦°à§à¦£à¦¾à¦° à¦«à§à¦²à§à¦¯à¦¾à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¹à¦¬à§‡à¥¤ \r\nà§© à¦¬à§‡à¦¡ à¦°à§à¦®\r\nà§§ à¦²à¦¿à¦­à¦¿à¦‚ à¦°à§à¦®\r\nà§§ à¦¡à¦¾à¦‡à¦¨à¦¿à¦‚ à¦°à§à¦®\r\nà§§ à¦¡à§à¦°à¦‡à¦‚ à¦°à§à¦®\r\nà§© à¦¬à¦¾à¦¥/à¦Ÿà§Ÿà¦²à§‡à¦Ÿ (à§¨à¦Ÿà¦¿ à¦à¦Ÿà¦¾à¦š à¦¹à¦¾à¦‡ à¦•à¦®à§‹à¦¡, à§§à¦Ÿà¦¿ à¦•à¦®à¦¨ à¦ªà§à¦¯à¦¾à¦¨)\r\nà¦¬à¦¾à¦¥à¦°à§à¦®/à¦Ÿà§Ÿà¦²à§‡à¦Ÿà§‡ à¦—à¦°à¦® à¦ªà¦¾à¦¨à¦¿à¦°  à¦—à¦¿à¦œà¦¾à¦° à¦²à¦¾à¦—à¦¾à¦¨à§‹\r\nà§ªà¦Ÿà¦¿ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾ (à§© à¦¬à§‡à¦¡à§‡à¦° à¦¸à¦¾à¦¥à§‡ à§© à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾, à¦°à¦¾à¦¨à§à¦¨à¦¾ à¦˜à¦°à§‡à¦“ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾)\r\nà§§à¦Ÿà¦¿ à¦ªà¦¾à¦°à§à¦•à¦¿à¦‚( à¦—à§à¦¯à¦¾à¦°à§‡à¦œ)\r\nà¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦¥à¦¾à¦‡ à¦œà¦¾à¦¨à¦¾à¦²à¦¾ à¦“ à¦¦à¦°à¦œà¦¾à§Ÿ à¦®à¦¸à¦•à§à¦‡à¦Ÿà§‹ à¦¨à§‡à¦Ÿ à¦²à¦¾à¦—à¦¾à¦¨à§‹\r\nà¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦°à§à¦®à§‡ à§¨à§ªÃ—à§¨à§ª à¦‡à¦žà§à¦šà¦¿ à¦¬à§œ à¦“ à¦®à§‹à¦Ÿà¦¾ à¦Ÿà¦¾à¦‡à¦²à¦¸ \r\nà¦²à¦¿à¦«à¦Ÿ, à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°, à¦¸à§‹à¦²à¦¾à¦° à¦ªà§à¦¯à¦¾à¦¨à§‡à¦², à¦¬à§ˆà¦¦à§à¦¯à§à¦¤à¦¿à¦• à¦Ÿà§à¦°à¦¾à¦¨à§à¦¸à¦«à¦°à¦®à¦¾à¦° \r\nà§¨à§ª à¦˜à¦¨à§à¦Ÿà¦¾ à§¨ à¦œà¦¨ à¦¸à¦¿à¦•à¦¿à¦‰à¦°à¦¿à¦Ÿà¦¿ à¦—à¦¾à¦°à§à¦¡ à¦“ à¦²à¦¿à¦«à¦Ÿà¦®à§à¦¯à¦¾à¦¨à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾\r\nà¦¸à¦¿à¦à§œà¦¿ à¦§à§‹à§Ÿà¦¾ à¦®à§‡à¦¾à¦›à¦¾ à¦ªà¦°à¦¿à¦¸à§à¦•à¦¾à¦°à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à¦¾à¦œà§‡à¦° à¦¬à§à§Ÿà¦¾à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾\r\nà¦¸à¦•à¦¾à¦² à¦¥à§‡à¦•à§‡ à¦¸à¦¨à§à¦§à§à¦¯à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦›à¦¾à¦¦ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾\r\nà¦¨à¦¤à§à¦¨ à¦²à¦¾à¦‡à¦¨à§‡ à¦ªà¦¾à¦‡à¦ªà§‡à¦° à¦—à§à¦¯à¦¾à¦¸à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾, à¦šà¦¾à¦ª à¦¬à§‡à¦¶ à¦­à¦¾à¦²à§‹\r\nà¦¨à¦¤à§à¦¨ à¦²à¦¾à¦‡à¦¨à§‡à¦° à¦ªà¦¾à¦¨à¦¿à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾, à¦ªà¦¾à¦¨à¦¿à¦° à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦¨à§‡à¦‡\r\nà¦¸à¦¬à¦¸à¦®à§Ÿ à¦¬à¦¿à¦¦à§à¦¯à§à§Ž à¦à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾\r\nà¦¨à¦¤à§à¦¨ à¦ªà¦¿à¦š à¦¢à¦¾à¦²à¦¾ à¦°à¦¾à¦¸à§à¦¤à¦¾\r\nà¦¬à¦¾à§œà¦¿à¦° à¦•à¦¾à¦›à¦¾à¦•à¦¾à¦›à¦¿ à¦®à¦¸à¦œà¦¿à¦¦, à¦®à¦¾à¦¦à¦¾à¦°à¦¾à¦¸à¦¾, à¦¬à¦¾à¦œà¦¾à¦°, à¦¸à§à¦•à§à¦²\r\nà¦¦à¦•à§à¦·à¦¿à¦£ à¦ªà§‚à¦°à§à¦¬ à¦®à§à¦–à§€ à¦†à¦²à§‹ à¦¬à¦¾à¦¤à¦¾à¦¸à§‡ à¦ªà¦°à¦¿à¦ªà§‚à¦°à§à¦£ à¦«à§à¦²à§à¦¯à¦¾à¦Ÿ\r\nà¦¸à¦•à¦¾à¦² à¦¥à§‡à¦•à§‡ à¦¬à¦¿à¦•à¦¾à¦² à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾à§Ÿ à¦°à§‹à¦¦ à¦“ à¦†à¦²à§‹ à¦¥à¦¾à¦•à§‡à¥¤\r\nà¦­à¦¾à§œà¦¾à¦ƒ à§§à§¯,à§¦à§¦à§¦/- (à¦‰à¦¨à¦¿à¦¶ à¦¹à¦¾à¦œà¦¾à¦°) à¦Ÿà¦¾à¦•à¦¾ \r\n(à¦¨à§‹à¦Ÿà¦ƒ à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸ à¦šà¦¾à¦°à§à¦œ, à¦¬à¦¿à¦¦à§à¦¯à§à§Ž à¦¬à¦¿à¦², à¦—à§à¦¯à¦¾à¦¸ à¦¬à¦¿à¦² à¦¦à¦¿à¦¤à§‡ à¦¹à¦¬à§‡)\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à¦ƒ à§¦à§§à§­à§§à§§à§ªà§ªà§¨à§¨à§¦à§¦, à¦‡à¦¨à¦¬à¦•à§à¦¸', 'Apartments', '10001-20000', 'Adabor, Mohammadpur', '3', '3', '2', '0', '1200', '', '19000', '', '', 'M-002', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '8dc1d3054d0a61fcc6e490f05ef0471b1604857893.jpg', '2dc619269f23e51457243db8b83ea3071604857893.jpg', 'dfce7ac265678ea58266db64998b87041604857893.jpg', 'deedcdb37465eb541aefdba6e003aa1f1604857893.jpg', '149b0f1fbf165f374bb054cf6029a3631604857893.jpg', '2313ffb0880698518403efbd348996fc1604857893.jpg', 'Adabor, Mohammadpur', '1', 'Mohammadpur', '1', '1207', 'Shyamoli', 0, '2020-11-08 17:51:33'),
(61, '39', '3 Female seats for rent at Lalmatia', '#à§©_à¦¸à¦¿à¦Ÿ_à¦­à¦¾à§œà¦¾_à¦¹à¦¬à§‡à¥¤(à¦œà¦°à§à¦°à¦¿ à¦­à¦¿à¦¤à§à¦¤à¦¿à¦¤à§‡)\r\n(female)\r\nà¦²à¦¾à¦²à¦®à¦¾à¦Ÿà¦¿à§Ÿà¦¾à§Ÿ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦°/ à¦œà¦¾à¦¨à§à§Ÿà¦¾à¦°à¦¿ à¦¥à§‡à¦•à§‡ à¦®à§‡à§Ÿà§‡à¦¦à§‡à¦° à¦«à§à¦²à§à¦¯à¦¾à¦Ÿà§‡ à§© à¦¸à¦¿à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¦à§‡à§Ÿà¦¾ à¦¹à¦¬à§‡à¥¤ à¦•à§‡à¦“ à¦šà¦¾à¦‡à¦²à§‡ à¦…à¦²à§à¦ª à¦Ÿà¦¾à¦•à¦¾à§Ÿ à¦¶à§à¦§à§ à¦®à¦¾à¦²à¦¾à¦®à¦¾à¦² à¦°à¦¾à¦–à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨à¥¤\r\nâ˜…à¦à¦Ÿà¦¾à¦¸à§à¦Ÿ à¦¬à¦¾à¦¥à¦°à§à¦® à¦“ à¦¬à§‡à¦²à¦•à¦¨à¦¿ à¦°à§Ÿà§‡à¦›à§‡à¥¤ \r\nâ˜…à§¨à§ª à¦˜à¦¨à§à¦Ÿà¦¾ à¦¬à¦¿à¦¦à§à¦¯à§à§Ž, à¦ªà¦¾à¦¨à¦¿, à¦—à§à¦¯à¦¾à¦¸, à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°, à¦“à§Ÿà¦¾à¦‡à¦«à¦¾à¦‡ à¦“ à¦«à§à¦°à¦¿à¦œ à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦°à§Ÿà§‡à¦›à§‡à¥¤\r\nâ˜…à¦…à¦¤à§à¦¯à¦¨à§à¦¤ à¦®à¦¨à§‹à¦°à¦® à¦†à¦²à§‹à¦¬à¦¾à¦¤à¦¾à¦¸à¦ªà§‚à¦°à§à¦£ à¦“ à¦ªà§œà¦¾à¦¶à§‹à¦¨à¦¾à¦° à¦‰à¦ªà¦¯à§‹à¦—à§€ à¦ªà¦°à¦¿à¦¬à§‡à¦¶à¥¤\r\nâ˜…à¦¸à¦¿à¦•à¦¿à¦‰à¦°à¦¿à¦Ÿà¦¿ à¦“ à¦ªà¦¾à¦°à§à¦•à¦¿à¦‚ à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦°à§Ÿà§‡à¦›à§‡à¥¤\r\n#à¦¸à¦¿à¦Ÿ_à¦­à¦¾à§œà¦¾ : à§©à§¨à§¦à§¦,à§©à§ªà§¦à§¦ à¦Ÿà¦¾à¦•à¦¾à¥¤\r\nà¦²à§‹à¦•à§‡à¦¶à¦¨: à¦•à¦¾à¦œà¦¿ à¦¨à¦œà¦°à§à¦² à¦‡à¦¸à¦²à¦¾à¦® à¦°à§‹à¦¡, à¦²à¦¾à¦²à¦®à¦¾à¦Ÿà¦¿à§Ÿà¦¾, à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦à¦ªà§à¦°à¥¤ \r\nà¦†à¦—à§à¦°à¦¹à§€à¦°à¦¾ à¦‡à¦¨à¦¬à¦•à§à¦¸ à¦•à¦°à§à¦¨ à¦…à¦¥à¦¬à¦¾,\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— : 01316987751', 'Bachelors', '0-10000', 'Lalmatia', '', '', '0', '1', '0', '', '3400', '', '', 'M-003', '', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'ccab09d257a6d59be039cfb9a555d6dd1604858362.jpg', 'ca09c4146558a6761f26fe79f69249741604858362.jpg', '626b711d03dfc05bab496b2379173f7a1604858362.jpg', 'b8438108cfd2b5b6688154bda2bf3c6f1604858362.jpg', 'e6e4c44af24f1b81c17fb95636723e601604858362.jpg', 'd41d8cd98f00b204e9800998ecf8427e1604858362', 'Lalmatia', '1', 'Mohammadpur', '1', '1207', 'Kazi Nazrul Islam Road, Lalmatia', 0, '2020-11-08 17:59:22'),
(62, '39', 'Small Flat (2 rooms) for Rent at Mohammadpur', 'à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦¥à§‡à¦•à§‡ à¦¬à¦¾à¦¸à¦¾ à¦­à¦¾à§œà¦¾à¦ƒ\r\n5 à¦¤à¦²à¦¾=8500 à¦Ÿà¦¾à¦•à¦¾\r\nà¦ªà¦¾à¦¨à¦¿-à¦«à§à¦°à¦¿\r\nà¦—à§à¦¯à¦¾à¦¸=à¦à¦²à¦ªà¦¿à¦œà¦¿ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®(LPG à¦¸à¦¿à¦²à¦¿à¦¨à§à¦¡à¦¾à¦° à¦²à¦¾à¦—à¦¿à§Ÿà§‡ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à¦¬à§‡ à¦¬à¦¿à¦¨à¦¾à¦®à§‚à¦²à§à¦¯à§‡)\r\nà¦¬à¦¿à¦¦à§à¦¯à§à§Ž=à¦ªà§à¦°à¦¿à¦ªà§‡à¦‡à¦¡ à¦®à¦¿à¦Ÿà¦¾à¦°\r\n-à¦¸à¦¿à¦¸à¦¿à¦Ÿà¦¿à¦­à¦¿ à¦à¦¬à¦‚ à§¨à§ª à¦˜à¦£à§à¦Ÿà¦¾ à¦—à¦¾à¦°à§à¦¡à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦†à¦›à§‡\r\n-à¦¬à¦¾à¦¸à¦¾à¦° à¦šà¦¾à¦°à¦¿à¦¦à¦¿à¦• à¦–à§‹à¦²à¦¾,à¦†à¦²à§‹ à¦¬à¦¾à¦¤à¦¾à¦¸à§‡à¦° à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦¨à§‡à¦‡\r\n-à¦¬à¦¾à¦¸à¦¾ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¨à¦¤à§à¦¨\r\n-à¦ªà¦¾à¦¨à¦¿à¦° à¦¸à¦‚à¦•à¦Ÿ à¦¸à¦¾à¦§à¦¾à¦°à¦£à¦¤ à¦¹à§Ÿ à¦¨à¦¾\r\ngoogle map\r\n\r\n(à¦à¦‡ à¦²à§‹à¦•à¦¶à¦¨à§‡à¦° à¦…à¦ªà¦œà¦¿à¦Ÿ à¦¬à¦¿à¦²à§à¦¡à¦¿à¦‚à¦Ÿà¦¾)\r\nDetails in the photo.For more information call the numbers mentioned in the photo', 'Apartments', '0-10000', 'Mohammadpur', '1', '1', '4', '0', '0', '', '8500', '', '', 'M-004', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '7256a65bf59e8c880ce1b743d108378b1604859611.jpg', '025a956b67095b4536e094485b87e9801604859611.jpg', 'd2e268a89428be08971d730b66bd39b71604859611.jpg', 'fccd4f11a3fb4f5f7cea77628170e2551604859611.jpg', '8a9b80adbb1544eb1a8a3839b6f78e1b1604859611.jpg', '2fe20eb43548fdd6a3d5e95fcf21d27e1604859611.jpg', '4/A, R-1, B-C, Sat Masjid Housing, Mohammadpur', '1', 'Mohammadpur', '1', '1207', 'Sat Masjid Housing', 0, '2020-11-08 18:20:11'),
(63, '39', '1050 sqft Flat for Rent at Uttara', '2 bed 2 bath 2 baranda combined dining drawing new flat\r\nLPG gas, water 500, elec per use, no other service charge\r\nsec 10, R-9, H-5 er opposite e road er 6 ta house por 41 no house\r\n01303765399, 01671506876', 'Apartments', '10001-20000', 'Uttara', '2', '2', '3', '0', '1050', '', '13000', '', '', 'U-003', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '6fdc5a224dc170704698a1c2598e0a151604900064.jpg', '354c28bf3a13ed2ec0b49aa8702895501604900064.jpg', 'a9d4d4618a63e2b12360e684e39817d81604900064.jpg', 'bc87df9f78d94d9666d76db5fed7d2451604900064.jpg', '4af7d4ae28b8f27f196fa3702ff972001604900064.jpg', 'd41d8cd98f00b204e9800998ecf8427e1604900064', 'Uttara sector 9 road 6 house 41', '1', 'Uttara', '1', '1230', 'Uttara', 0, '2020-11-09 05:34:24'),
(64, '39', 'Room (for Female) rent in Jhigatola from December', '#Room rent in  #Jhigatola, #Dhanmondi.   \r\n  From #December\r\n #One_Room available for (girls/couple)\r\nRent: 7000(excluding bill )\r\n Facilities :\r\n     #attached bath \r\n     #balcony \r\n     #fully tiles\r\n     #security\r\n     #fridge\r\n     #wifi\r\n     #no gathering ( 3rooms flatâ€”only 3 member ) \r\n     #beside main road\r\n     #enough air & light\r\n     #3rd floor \r\n     #guest allowed \r\n                #Contact:01811882515', 'Sublet', '0-10000', 'Jhigatola, Dhanmondi', '1', '', '3', '', '', '', '7000', '', '', 'D-001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5750f962f0b30c05e36bc720829fab9d1604914176.jpg', 'f0a44c74fa85f355a2364a7ac0e88bf41604914176.jpg', 'a205eea9ce3801dfb809d058f09a616a1604914176.jpg', 'b744ca33f6ae24cde23c91903c4819071604914176.jpg', '3e3e67bb3b0256b017d1ab89fe2bf7ec1604914176.jpg', 'd41d8cd98f00b204e9800998ecf8427e1604914176', 'Main Road, Jhigatola, Dhanmondi', '1', 'Dhanmondi ', '1', '1212', 'Jhigatola', 0, '2020-11-09 09:29:36'),
(65, '39', 'Sublet/Seats(2) Available at Lalmatia (Only Female)', 'à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦¥à§‡à¦•à§‡ à§§ à¦°à§à¦®/à§¨ à¦¸à¦¿à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¹à¦¬à§‡( à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦®à§‡à§Ÿà§‡ à¦›à¦¾à¦¤à§à¦°à§€/ à¦šà¦¾à¦•à§à¦°à§€à¦œà§€à¦¬à§€)\r\nà¦²à§‹à¦•à§‡à¦¶à¦¨ - à¦œà¦¾à¦•à¦¿à¦° à¦¹à§‹à¦¸à§‡à¦¨ à¦°à§‹à¦¡( à¦•à¦¿à¦‚ à¦–à¦¾à¦²à§‡à¦¦ à¦‡à¦¨à§à¦¸à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦à¦° à¦ªà¦¾à¦¶à§‡),à¦²à¦¾à¦²à¦®à¦¾à¦Ÿà¦¿à§Ÿà¦¾, à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦à¦ªà§à¦° \r\nà¦­à¦¾à§œà¦¾ - à§©à§«à§¦à§¦(à¦à¦• à¦¸à¦¿à¦Ÿ) / à§­à§¦à§¦à§¦ ( à§§ à¦°à§à¦®) (à¦•à¦¾à¦°à§‡à¦¨à§à¦Ÿ à¦¬à¦¿à¦²,à¦¨à§‡à¦Ÿ à¦¬à¦¿à¦² à¦¸à¦¹)\r\nà¦¬à¦¿.à¦¦à§à¦°: à¦…à¦¤à§à¦¯à¦¨à§à¦¤ à¦¨à¦¿à¦°à¦¿à¦¬à¦¿à¦²à¦¿ à¦ªà¦°à¦¿à¦¬à§‡à¦¶, à¦®à¦¾à¦¨à§à¦· à¦•à¦®', 'Sublet', '0-10000', 'Lalmatia', '1', '1', '0', '0', '0', '', '7000', '', '', 'M-005', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'aa12591cd59a73eff2cb5a2d59e2d0591604915417.jpg', 'ba9beb3b531614ee2b11af7483f461251604915417.jpg', '117ff64522e5e3fe4f0b89a71b2006421604915417.jpg', '117ff64522e5e3fe4f0b89a71b2006421604915417.jpg', '117ff64522e5e3fe4f0b89a71b2006421604915417.jpg', '117ff64522e5e3fe4f0b89a71b2006421604915417.jpg', 'Zakir hossain road, opposite of king khalid institute', '1', 'Mohammadpur', '1', '1207', '', 0, '2020-11-09 09:50:17'),
(66, '39', 'Sublet available  (Boys) at Jhigatola', '#à¦šà¦²à¦¤à¦¿/à¦†à¦—à¦¾à¦®à§€ à¦®à¦¾à¦¸ à¦¥à§‡à¦•à§‡ à¦¸à§à¦¨à§à¦¦à¦° à¦“ à¦¨à¦¿à¦°à¦¿à¦¬à¦¿à¦²à¦¿ à¦ªà¦°à¦¿à¦¬à§‡à¦¶à§‡ à¦¬à§à¦¯à¦¾à¦šà§‡à¦²à¦° à¦›à§‡à¦²à§‡à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à¦®à§‡à¦¸à§‡ à¦à¦• à¦°à§à¦®/à¦¸à¦¿à¦Ÿ  à¦­à¦¾à¦¡à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤\r\n#à¦ à¦¿à¦•à¦¾à¦¨à¦¾: à¦¸à¦¾à¦²à§‡à¦• à¦—à¦¾à¦°à§à¦¡à§‡à¦¨ à¦•à¦¾à¦à¦šà¦¾ à¦¬à¦¾à¦œà¦¾à¦°à§‡à¦° à¦•à¦¾à¦›à§‡,\r\nà¦¨à¦¤à§à¦¨ à¦°à¦¾à¦¸à§à¦¤à¦¾, à¦œà¦¿à¦—à¦¾à¦¤à¦²à¦¾à¥¤\r\n#à¦­à¦¾à¦¡à¦¼à¦¾: à§®à§«à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾à¥¤\r\n#à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—: 01521-214381 / 01916-908002\r\n#à¦¬à¦¿à¦¶à§‡à¦· à¦¦à§à¦°à¦·à§à¦Ÿà¦¬à§à¦¯: à¦¯à¦¾à¦°à¦¾ à¦¸à¦¿à¦°à¦¿à¦¯à¦¼à¦¾à¦¸ à¦•à§‡à¦¬à¦² à¦®à¦¾à¦¤à§à¦° à¦¤à¦¾à¦°à¦¾à¦‡ à¦‡à¦¨à¦¬à¦•à§à¦¸à§‡ à¦®à§‡à¦¸à§‡à¦œ à¦¦à¦¿à¦¬à§‡à¦¨ à¦…à¦¥à¦¬à¦¾ à¦¸à¦°à¦¾à¦¸à¦°à¦¿ à¦•à¦² à¦¦à¦¿à¦¬à§‡à¦¨à¥¤ à¦…à¦¹à§‡à¦¤à§à¦• à¦¬à¦¿à¦°à¦•à§à¦¤ à¦¨à¦¾ à¦•à¦°à¦¾à¦° à¦œà¦¨à§à¦¯ à¦…à¦—à§à¦°à¦¿à¦® à¦§à¦¨à§à¦¯à¦¬à¦¾à¦¦à¥¤', 'Sublet', '0-10000', 'Jhigatola, Dhanmondi', '1', '1', '0', '0', '0', '', '8500', '', '', 'D-002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e39d284b05aa0001897a7717b7fc90901604915781.jpg', '7bc33da70c0fb7afd2e379f97d119e6e1604915781.jpg', 'e620c9d97f5b2bcdb057183c9a282b7b1604915781.jpg', 'd41d8cd98f00b204e9800998ecf8427e1604915781', 'd41d8cd98f00b204e9800998ecf8427e1604915781', 'd41d8cd98f00b204e9800998ecf8427e1604915781', 'Salek Garden Kacha Bazar, Notun Rasta', '1', 'Dhanmondi ', '1', '1212', '', 0, '2020-11-09 09:56:21'),
(67, '39', 'Seat available for Girls at Shyamoli', 'à¦šà¦²à¦¤à¦¿ à¦®à¦¾à¦¸/ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦°  à¦®à¦¾à¦¸ à¦¥à§‡à¦•à§‡ #à¦®à§‡à§Ÿà§‡à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ #à¦à¦•à¦°à§à¦® à¦¸à¦¾à¦¬à¦²à§‡à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¹à¦¬à§‡à¥¤ à¦à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¬à¦¾à¦¸à¦¾à¥¤ à¦šà¦¤à§à¦°à§à¦¥ à¦¤à¦²à¦¾à§Ÿà¥¤ à¦¦à¦¾à¦°à§‹à§Ÿà¦¾à¦¨,à¦²à¦¿à¦°à§à¦ªà¦Ÿ, à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦•à¦®,à¦¨à¦¿à¦œà¦¸à§à¦¬ à¦¡à¦¿à¦ªà§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦–à¦¾à¦¬à¦¾à¦° à¦ªà¦¾à¦¨à¦¿,à¦—à§à¦¯à¦¾à¦¸,à¦¬à¦¿à¦¦à§à¦¯à§à§Ž,à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°,à¦“à§Ÿà¦¾à¦‡à¦«à¦¾à¦‡, à¦«à§à¦°à¦¿à¦œ,à¦¬à§à§Ÿà¦¾ à¦¸à¦¹ à¦¸à¦•à¦² à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤ à¦­à¦¾à§œà¦¾ à§®à§¦à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾ (à¦¸à¦•à¦² à¦¬à¦¿à¦² à¦¸à¦¹)à¥¤ à¦¬à¦¿à¦¶à¦¾à¦² à¦à¦•à¦Ÿà¦¾ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾ à¦à¦Ÿà¦¾à¦·à§à¦Ÿà¥¤ à¦¬à¦¾à¦¥à¦°à§à¦® à¦°à§à¦®à§‡à¦° à¦¸à¦¾à¦®à¦¨à§‡à¦‡à¥¤ à¦²à§‹à¦•à§‡à¦¶à¦¨à¦ƒ à¦¶à§à¦¯à¦¾à¦®à¦²à§€ à§¨ à¦¨à¦‚ à¦°à§‹à¦¡à¥¤ à¦•à¦¾à¦œà§€ à¦…à¦«à¦¿à¦¸ à¦¬à¦¾à¦œà¦¾à¦°à§‡à¦° à¦ªà¦¾à¦¶à§‡à§· à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤ à¦œà¦¾à¦¨à¦¤à§‡ à¦«à§‹à¦¨ à¦•à¦°à§à¦¨à¦ƒ 01722298838.', 'Bachelors', '0-10000', 'Shyamoli', '1', '1', '0', '0', '0', '', '8000', '', '', 'M-006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5c8ade0bd1e12bbc4f8915f426dd3f81604916168.jpg', '237f0b2470cf3b155af618437a549a731604919010.jpg', 'c5c8ade0bd1e12bbc4f8915f426dd3f81604916168.jpg', '87d1f1032205b344f37717a58fdd6eff1604918976.jpg', '466abc5a20cc530e5beb8cf10b60b0341604918988.jpg', '91c15e781b13aee0ae5faba19bb744141604918999.jpg', 'Road-2, Shyamoli', '1', 'Mohammadpur', '1', '1212', '', 0, '2020-11-09 10:02:48'),
(68, '39', 'Seat available for a Girl at Shankar', 'Fridge, wifi, gas, water, maid\r\nAll service charge included', 'Bachelors', '0-10000', 'Shankar', '1', '1', '3', '0', '0', '', '2500', '', '', 'D-003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2670195a9f87ac04a099a163cbe173b21604916440.jpg', '3e71f4b21415a7e56fa1cd79ca30b95d1604916440.jpg', 'db006ac6afa78eca0e4d7cc9c9a59b111604916440.jpg', '2670195a9f87ac04a099a163cbe173b21604916440.jpg', '3e71f4b21415a7e56fa1cd79ca30b95d1604916440.jpg', 'db006ac6afa78eca0e4d7cc9c9a59b111604916440.jpg', 'Shankar, Dhanmondi', '1', 'Dhanmondi ', '1', '1212', '', 0, '2020-11-09 10:07:20'),
(69, '39', 'Sublet for a Girl available at Dhanmondi (flat size 1100, total 4)', 'â˜…#à¦®à§‡à§Ÿà§‡à¦¦à§‡à¦°_à¦œà¦¨à§à¦¯_à¦°à§à¦® â˜… (à§§ à¦²à¦¾ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦¥à§‡à¦•à§‡)\r\n à§© à¦Ÿà¦¿ à¦¬à§‡à¦¡ à¦°à§à¦®à§‡à¦° à¦à¦•à¦Ÿà¦¿ à¦«à§à¦¯à¦¾à¦®à¦¿à¦²à¦¿ à¦¬à¦¾à¦¸à¦¾à§Ÿ à§§ à¦Ÿà¦¿ à¦¸à¦¿à¦™à§à¦—à§‡à¦² à¦¬à§‡à¦¡ à¦°à§à¦® à¦¸à¦¾à¦¬à¦²à§‡à¦Ÿ à¦­à¦¾à§œà¦¾ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à¦¬à§‡à¥¤\r\nðŸŒ»à¦°à§à¦® à¦•à¦¨à§à¦¡à¦¿à¦¶à¦¨à¦ƒ-à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦°à§à¦® à¦­à¦¾à§œà¦¾ à§«à§«à§¦à§¦  à¦Ÿà¦¾à¦•à¦¾, à¦¸à¦¬ à¦¬à¦¿à¦² (à¦—à§à¦¯à¦¾à¦¸,à¦ªà¦¾à¦¨à¦¿,à¦¬à¦¿à¦¦à§à¦¯à§à§Ž,à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°, à¦¸à¦¿à¦•à¦¿à¦‰à¦°à¦¿à¦Ÿà¦¿, à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¨à§‡à¦Ÿ,à¦®à§Ÿà¦²à¦¾à¦° à¦¬à¦¿à¦²,à¦¸à¦°à§à¦­à¦¿à¦¸ à¦šà¦¾à¦°à§à¦œ) à¦¸à¦¹à¥¤à¦°à§à¦®à§‡ à¦ªà§à¦°à¦šà§à¦° à¦†à¦²à§‹ à¦¬à¦¾à¦¤à¦¾à¦¸ à¦†à¦¸à§‡à¥¤\r\nà¦°à§à¦®à§‡ à¦à¦•à¦Ÿà¦¿ à¦¬à§œ à¦œà¦¾à¦¨à¦¾à¦²à¦¾ à¦°à§Ÿà§‡à¦›à§‡à¥¤ à¦°à§à¦®à§‡à¦° à¦šà¦¾à¦°à¦ªà¦¾à¦¶ à¦–à§‹à¦²à¦¾à¦®à§‡à¦²à¦¾, à¦†à¦¶à§‡à¦ªà¦¾à¦¶à§‡ à¦•à§‹à¦¨ à¦¬à¦¿à¦²à§à¦¡à¦¿à¦‚ à¦¨à§‡à¦‡à¥¤à¦°à§à¦®à§‡à¦° à¦†à§Ÿà¦¤à¦¨ à¦¬à§‡à¦¶ à¦¬à§œà¥¤\r\n#à¦²à§‹à¦•à§‡à¦¶à¦¨à¦ƒ-\r\nðŸ ,à¦¸à¦¾à¦¦à§‡à¦•à¦–à¦¾à¦¨ à¦°à§‹à¦¡,à¦°à¦¾à§Ÿà§‡à¦° à¦¬à¦¾à¦œà¦¾à¦°,à¦§à¦¾à¦¨à¦®à¦¨à§à¦¡à¦¿à¥¤ ðŸ \r\nðŸ¢à§§à§¦ à¦¤à¦²à¦¾ à¦­à¦¬à¦¨à§‡à¦° à§® à¦¤à¦²à¦¾ à¦¤à§‡ à¦«à§à¦²à§à¦¯à¦¾à¦Ÿà¥¤\r\n #à¦¸à§à¦¬à¦¿à¦§à¦¾à¦¸à¦®à§‚à¦¹à¦ƒ-\r\nðŸµà§¨à§ª à¦˜à¦¨à§à¦Ÿà¦¾ #à¦—à§à¦¯à¦¾à¦¸,à¦ªà¦¾à¦¨à¦¿,à¦¬à¦¿à¦¦à§à¦¯à§à§Ž, à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°, à¦²à¦¿à¦«à¦Ÿ,à¦¸à¦¿à¦•à¦¿à¦‰à¦°à¦¿à¦Ÿà¦¿à¥¤\r\nðŸ’ à¦«à§à¦°à¦¿à¦œà¥¤ \r\nðŸµà¦“à§Ÿà¦¾à¦¶à¦°à§à¦® à¦¬à§à§Ÿà¦¾ à¦•à§à¦²à¦¿à¦¨ à¦•à¦°à§‡ à¦¦à¦¿à¦¬à§‡à¥¤(à¦•à¦°à§‹à¦¨à¦¾ à¦ªà¦°à¦¿à¦¸à§à¦¥à¦¿à¦¤à¦¿à¦¤à§‡ à¦¬à§à§Ÿà¦¾à¦° à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸ à¦¬à¦¨à§à¦§ à¦°à§Ÿà§‡à¦›à§‡à¥¤) \r\nðŸµà¦ªà§œà¦¾à¦¶à§‹à¦¨à¦¾à¦° à¦‰à¦ªà¦¯à§‹à¦—à§€ à¦ªà¦°à¦¿à¦¬à§‡à¦¶,family  à¦¬à¦¾à¦¸à¦¾         à¦¹à¦²à§‡à¦“ #à¦…à¦¤à¦¿à¦¥à¦¿_à¦¸à¦®à¦¾à¦—à¦¨_à¦•à¦®à¥¤\r\n          #à¦¬à¦¾à¦¸à¦¾à§Ÿ_à¦•à§‹à¦¨_à¦¬à¦¾à¦šà§à¦šà¦¾_à¦¨à§‡à¦‡à¥¤#à¦ªà¦°à¦¿à¦¬à¦¾à¦°à§‡_à§¨_à¦œà¦¨_à¦¸à¦¦à¦¸à§à¦¯(à¦¸à§à¦¬à¦¾à¦®à§€-à¦¸à§à¦¤à§à¦°à§€)\r\nðŸµà¦–à§‹à¦²à¦¾à¦®à§‡à¦²à¦¾,à¦ªà¦°à¦¿à¦·à§à¦•à¦¾à¦° à¦ªà¦°à¦¿à¦šà§à¦›à¦¨à§à¦¨,à¦¨à¦¿à¦°à¦¿à¦¬à¦¿à¦²à¦¿  à¦“ #à¦–à§à¦¬à¦‡_à¦¬à¦¨à§à¦§à§à¦¤à§à¦¬à¦ªà§‚à¦°à§à¦£ à¦ªà¦°à¦¿à¦¬à§‡à¦¶à¥¤\r\nðŸµà¦°à§à¦®à§‡à¦° à¦ªà¦¾à¦¶à§‡à¦‡ à¦“à§Ÿà¦¾à¦¶à¦°à§à¦®,à¦“à§Ÿà¦¾à¦¶à¦°à§à¦® à¦ªà¦¾à¦¶à§‡à¦° à¦°à§à¦®à§‡à¦° à§§ à¦œà¦¨  à¦«à¦¿à¦®à§‡à¦² à¦®à§‡à¦®à§à¦¬à¦¾à¦°à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¶à§‡à§Ÿà¦¾à¦° à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nðŸµwifi\r\nðŸµà¦¡à¦¾à¦¬à¦² à¦²à¦¿à¦«à¦Ÿà¥¤\r\nðŸµ à§§à§§à§¦à§¦ à¦¸à§à¦•à§Ÿà¦¾à¦° à¦«à¦¿à¦Ÿ à¦à¦° à¦¬à¦¾à¦¸à¦¾à§Ÿ, à¦¸à¦¬ à¦®à¦¿à¦²à¦¿à§Ÿ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ  à§ª (à¦šà¦¾à¦°) à¦œà¦¨ à¦¸à¦¦à¦¸à§à¦¯ à¦¥à¦¾à¦•à¦¾ à¦¹à¦¬à§‡à¥¤\r\nðŸ²à¦¬à¦¿à¦ƒà¦¦à§à¦°à¦ƒ  à¦°à¦¾à¦¨à§à¦¨à¦¾ à¦¨à¦¿à¦œà§‡à¦•à§‡ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡!\r\n( à¦°à§à¦®à¦Ÿà¦¿à¦° à¦œà¦¨à§à¦¯ à¦à¦•à¦œà¦¨ à¦¸à¦¦à¦¸à§à¦¯ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯)\r\n#à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à¦ƒ- à¦‡à¦¨à¦¬à¦•à§à¦¸ à¦•à¦°à§à¦¨ à¦…à¦¥à¦¬à¦¾ à¦«à§‹à¦¨ - 01906133233à¥¤', 'Sublet', '0-10000', 'Dhanmondi', '1', '1', '7', '0', '1100', '', '5500', '', '', 'D-004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6085c3c4b0b61d3a93b134b1d4938e521604916816.jpg', '3805ae9cbc2b9262bc563167cdfad5df1604916816.jpg', '4aea5060717d3de3baf4f30ab56a2e7d1604916816.jpg', 'a6cfc1fb7b80ed97af62988b8b7331af1604916816.jpg', '035fa40c3671ccfd6462357989c1ee201604916816.jpg', '0f6b55c8636cbd41dacc099b56b40f0f1604916816.jpg', 'Sadek Khan Road, Rayer Bazar, Dhanmondi', '1', 'Dhanmondi ', '1', '1212', '', 0, '2020-11-09 10:13:36'),
(70, '39', 'Sublet (Girl) available from Dec at Sukrabad', 'attach bath, baranda', 'Sublet', '0-10000', 'Sukrabad', '1', '1', '0', '0', '0', '', '9000', '', '', 'D-005', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4e422eb9c2d71bd46f786d5b0e66f2a71604919108.jpg', '9ed5eeba071800ac4e0bad6a42d34d651604919119.jpg', '70ec2b82cdf4076bcb8d876a1808d3211604919129.jpg', '70ec2b82cdf4076bcb8d876a1808d3211604919141.jpg', '9ed5eeba071800ac4e0bad6a42d34d651604919153.jpg', '4e422eb9c2d71bd46f786d5b0e66f2a71604919162.jpg', 'Sukrabad, Dhanmondi', '1', 'Dhanmondi ', '1', '1209', '', 0, '2020-11-09 10:39:50'),
(71, '39', 'Seat for Boys  at Dhanmondi', 'gas and water included\r\nmodhubazar, dhanmondi-10/A', 'Sublet', '0-10000', 'Dhanmondi', '1', '1', '0', '0', '0', '', '3300', '', '', 'D-006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '53ba7e6387cb4960c476c1c084658c8d1604918780.jpg', 'b4e5406f48d488fc39d668f284a9d5db1604918780.jpg', '53ba7e6387cb4960c476c1c084658c8d1604918780.jpg', 'b4e5406f48d488fc39d668f284a9d5db1604918780.jpg', 'c64a0352e4a870cf261e76f662c84b681604919606.jpg', 'd41d8cd98f00b204e9800998ecf8427e1604918780', 'Modhubazar, Dhanmondi-10/A', '1', 'Dhanmondi ', '1', '1207', '', 0, '2020-11-09 10:46:20'),
(72, '39', 'Seat (Female) available at Sukrabad', 'I need a female room mate in Jigatola dhanmondi,walking distance from ULAB university.\r\nFacilities:\r\nApartment house\r\nLift\r\nWiFi \r\nFridge\r\nA big room with Attached washroom and balcony \r\nCan also use my stuffs\r\nWant a friendly female roommate \r\nRent4500 including all \r\nAnd ami basai khub kom thaki amr boner basai thaki besi so dekha jabe je thakbe se most of the time ekai room niye aram a thakbe', 'Bachelors', '0-10000', 'Sukrabad', '1', '1', '0', '0', '0', '', '4500', '', '', 'D-007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd74807f8b9eac5f9ebe5a5d6ebf6770e1604919509.jpg', '4bddd95383ed2b84aa66a97fe71c6fc11604919509.jpg', 'a492dc5b77f6d1c6ac53e7a6b37c73e51604919509.jpg', 'cc209bc8f45574e0aaedbc24f1b09b091604919509.jpg', '9dde3ef7c3cc4f6e8582ed60e6e1071e1604919509.jpg', '1cf2041d264d985c9e72c428983c15211604919509.jpg', 'Jigatola dhanmondi,walking distance from ULAB university', '1', 'Dhanmondi ', '1', '1209', '', 0, '2020-11-09 10:58:29'),
(73, '39', 'Sublet for Boys at Mohammadpur', 'One RoomðŸ¡\r\nFrom December (3rd floor)\r\nThe room has attached belcony. Peaceful environment and we prefer job holder or student. Its 3 room including flat where only 2 people are living in full flat.\r\nRent #6500tk (Including gass, water, security)+electricity. Mohammadia Housing Limited, Road: 02, Mohammadpur\r\n#contact:_01318635768,_01712127128', 'Sublet', '0-10000', 'Mohammadpur', '1', '1', '3', '0', '0', '', '6500', '', '', 'M-007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7f810769aae2c466cf827519d9913c7c1604919939.jpg', '4d6a05bd2beca684015a403b6e61bb4e1604919939.jpg', 'b19a5c0bcb525316dadfdc19cee3cc181604919939.jpg', '7f810769aae2c466cf827519d9913c7c1604919939.jpg', '4d6a05bd2beca684015a403b6e61bb4e1604919939.jpg', 'b19a5c0bcb525316dadfdc19cee3cc181604919939.jpg', 'Road-2, Mohammadia Housing Limited, Mohammadpur', '1', 'Mohammadpur', '1', '1207', '', 0, '2020-11-09 11:05:39'),
(74, '39', 'Room (Female) Rent at Uttara Sector-11', 'TO-LET  UTTARA\r\nSECT-11, Road-8, (4th floor)\r\nRoom / Seat Available \r\nONLY FOR FEMALE\r\n1 Room-2 Seat Masterbed (attach balcony+washroom) Seat rent 4500/5000/= Available from November \r\nAt Luxury FLAT. 16+SUPER FACILITIES FREE\r\n+8801716778514', 'Sublet', '0-10000', 'Uttara', '1', '1', '4', '', '0', '', '10000', '', '', 'U-004', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '1', '', '1', '', '194a015ae5abf1673dd8604a9b24f7291605504507.jpg', '9077ad0fa7519cc5414cc57682ef52761605504507.jpg', '3ffcd8ebdaa4f400f497d985f191e0ea1605504507.jpg', '6dfa23031b17e8c9603a6d937a452b191605504507.jpg', 'd41d8cd98f00b204e9800998ecf8427e1605504507', 'd41d8cd98f00b204e9800998ecf8427e1605504507', 'SECT-11, Road-8, (4th floor)', '1', 'Uttara', '1', '1230', '', 0, '2020-11-16 05:28:27'),
(75, '39', 'Room (Female) Available at Uttara Sector 11', 'TO-LET  UTTARASECTOR-11,R-8, (4th floor) ONLY FOR FEMALE-------------------* 1 room 3 seats rent per seat 3500/= Available* At first visit then decision. Reasonable price all includedAt Luxury FLAT. 16+SUPER FACILITIES FREE01716778514', 'Sublet', '10001-20000', 'Uttara', '1', '1', '4', '', '0', '', '10500', '', '', 'U-005', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '1', '', '1', '', '2c007526b7080bdf0fa523090f35c67e1605505113.jpg', '5e9b9f1ac9cc9b100b46c40f62fc68c71605505113.jpg', '520b3fba60fcb42c9c9cd35ae14554f31605505113.jpg', '2bcf97a4a18fa649a3004dcd85a9c7921605505113.jpg', 'c01432a4a670496dff80ada4df9164391605505113.jpg', 'd41d8cd98f00b204e9800998ecf8427e1605505113', 'SECTOR-11,R-8, (4th floor) ', '1', 'Uttara', '1', '1230', 'Uttara', 0, '2020-11-16 05:38:33'),
(76, '39', 'Room Rent at New Elephant Road', 'New_Elefent_Road , near by katabon mosjid. #Sub_Let , #one_room , Vara 13000tk only. Balcony and bathroom attached. 24 hours wifi available,, complete safety ensured.  Mobile : 01611774111', 'Sublet', '10001-20000', 'New Elephant Road', '1', '1', '3', '', '0', '', '13000', '', '', 'N-001', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'a1616a2d09a44623c59c4cda63d58c8b1605508987.jpg', 'f744d968223c3a31062b7325ff947c5f1605508987.jpg', '860bc34b6a7361f471111a5a3bdea9711605508987.jpg', '3de7c6775f3d6b8c899da6d8e15a337d1605508987.jpg', '70bf8205dfaa3d6ac722bf9600dab52f1605508987.jpg', '643b91d8019e3f386a75a87cac99abfa1605508987.jpg', 'New_Elefent_Road , near by katabon mosjid', '1', 'New Market', '1', '1205', '', 0, '2020-11-16 06:43:07'),
(77, '39', 'Room (Female) Available at Uttara Sector 11', 'TO-LET  UTTARA\r\nSECT-11, Road-8, (4th floor)\r\nRoom / Seat Available \r\nONLY FOR FEMALE\r\n1 Room-2 Seat semi masterbed rent 4200/ 4500/= seat (Attach balcony) Available from December .  At Luxury FLAT. 16+SUPER FACILITIES FREE 01716778514', 'Sublet', '0-10000', 'Uttara', '1', '1', '4', '', '0', '', '9000', '', '', 'U-006', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '50a6598ed7a331fd00778232331c964e1605509471.jpg', 'edf25689ceb5b3c4d584a997955df6fc1605509471.jpg', '0cac594eaa5fa1dfec35828f02844b4a1605509471.jpg', '8b886e25d0578cd1ac12cfd62a1c32f91605509471.jpg', 'ea5b6ba9acb0072d5cf18f413f54a9e51605509471.jpg', 'a33e04ce66edc25704f56d49b1980eb91605509471.jpg', 'SECT-11, Road-8', '1', 'Uttara', '1', '1230', '', 0, '2020-11-16 06:51:11'),
(78, '39', '1350 sqft Luxurious Flat fpr Rent at Uttara Sector-11', 'To-let from November 2020\r\n Interior paint works are going on (NEW BUILDING)\r\nFlat for Rent in UTTARA, Sector 11\r\n**1st floor to 7th floor( except 2nd floor)**\r\n1350 square feet per flat\r\n3 bedroon, 1 dinner room with handwash sink, 1 drawing room , both north and south verandas available, 3 Bathroom (2 attached 1 common) and Kitchen.\r\nMonthly Rent:22000BDT Only ( service charge 6000tk)\r\nAddress: House -35, Road -10B , Sector 11\r\nContact: Rokon 01751722656', 'Apartments', '20001-30000', 'Uttara', '3', '3', '3', '', '1350', '', '28000', '', '', 'U-007', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'c5cb05d34a46b6b8b0728598fb5e3e7e1605511214.jpg', '449ca140538772420649eef8887bc6111605511214.jpg', '384894b25851a843690a8df2ffc2f68e1605511214.jpg', '998b021baf65129489c5a33eb612d6a71605511214.jpg', 'fe39cbe90e8a50407fe4eb47f7135be41605511214.jpg', 'd3cb4e1ecd333a96b42fb7f98ff624001605511214.jpg', 'Address: House -35, Road -10B , Sector 11 Contact: Rokon 01751722656', '1', 'Uttara', '1', '1230', '', 0, '2020-11-16 07:20:14'),
(79, '39', '2700 sqft Luxurious Flat for Rent at Uttara Sector-11', 'Luxury Apartment for Family living \r\n2700 square ft\r\n4 Bedroom attached bathrooms, Both North and South have 2 Bedroom with Verandas, Dining room, Drawing room , Kitchen with servant room and bathroom. \r\nMonthly Rent: 40000BDT and Service charge 8000taka.\r\nService Charges including water +Wi-Fi + all rooms have fan+ 16 cc camera+2 watch man for security+ Security by finger print for entrance+ Fire fighting system + Thunder protector + Seating room for guest+ 8 person capacity Korean lift+ Common filtered water in ground floor +common space clean by cleaner +Car parking and  whole flat back up electricity by 50 kva generator except Air Conditioner . Address: House -35, Road -10B , Sector 11 Contact: Rokon 01751722656', 'Apartments', '40001-50000', 'Uttara', '4', '4', '2', '', '2700', '', '48000', '', '', 'U-008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5cb05d34a46b6b8b0728598fb5e3e7e1605524009.jpg', '384894b25851a843690a8df2ffc2f68e1605524009.jpg', 'd93527f84a29c798c1239c8a5e52cacf1605524009.jpg', '998b021baf65129489c5a33eb612d6a71605524009.jpg', 'fe39cbe90e8a50407fe4eb47f7135be41605524009.jpg', '32b8564a862e05cf2b2b6122da07b8aa1605524009.jpg', 'Address: House -35, Road -10B , Sector 11 Contact: Rokon 01751722656', '1', 'Uttara', '1', '1230', '', 0, '2020-11-16 10:53:29'),
(80, '39', 'Small Luxurious Flat for Rent at Uttara Sector 11', 'To-let from November 2020\r\n Interior paint works are going on (NEW BUILDING)\r\nFlat for Rent in UTTARA, Sector 11\r\n**Ground Floor and 8th Floor** for Rent\r\n1 Single bedroom with Kitchen and Bathroom\r\nMonthly Rent 15000BDT Only.\r\nAddress: House -35, Road -10B , Sector 11\r\nContact: Rokon 01751722656', 'Apartments', '10001-20000', 'Uttara', '1', '1', '0', '', '0', '', '15000', '', '', 'U-009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5cb05d34a46b6b8b0728598fb5e3e7e1605524224.jpg', '449ca140538772420649eef8887bc6111605524224.jpg', '998b021baf65129489c5a33eb612d6a71605524224.jpg', 'fe39cbe90e8a50407fe4eb47f7135be41605524224.jpg', '10863849c1f5c00e471516730b27e14e1605524224.jpg', 'cdce0e4e9242aa583cf5c888534265c01605524224.jpg', 'Address: House -35, Road -10B , Sector 11 Contact: Rokon 01751722656', '1', 'Uttara', '1', '1230', '', 0, '2020-11-16 10:57:04'),
(81, '39', 'Sublet for small family at Uttara House Building', '#à¦¸à¦¾à¦¬à¦²à§‡à¦Ÿ à¦¸à§à¦¨à§à¦¦à¦° à¦ªà¦°à¦¿à¦¬à§‡à¦¶à§‡, à¦¹à¦¾à¦¸à¦¬à§‡à¦¨à§à¦¡ à¦“à¦¯à¦¼à¦¾à¦‡à¦« \"à¦šà¦¾à¦° à¦¤à¦²à¦¾à¦¯à¦¼\" à¦à¦• à¦°à§à¦® Sub Let à¦¦à§‡à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤ \r\nà¦‰à¦“à¦°à¦¾ à¦¹à¦¾à¦‰à¦œ à¦¬à¦¿à¦²à§à¦¡à¦¿à¦‚, à§® à¦¨à¦‚ à¦¸à§‡à¦•à§à¦Ÿà¦° à¦°à§‡à¦²à¦²à¦¾à¦‡à¦¨à§‡à¦° à¦ªà¦¾à¦¶à§‡à¥¤\r\nà¦¸à¦¬ à¦¸à¦¹ Rent: 7000/-___01966611103\r\n#Uttara #rent #à¦­à¦¾à§œà¦¾ #female', 'Sublet', '0-10000', 'Uttara', '1', '1', '3', '', '0', '', '7000', '', '', 'U-010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bf73e3a3ac22643dc6998ecae6069d381605524684.jpg', '8cc9e419f15d38859f2cd2a04ed62b121605524684.jpg', 'de592d1279723b8e37aeaf46dac450e51605524684.jpg', 'bf73e3a3ac22643dc6998ecae6069d381605524684.jpg', '8cc9e419f15d38859f2cd2a04ed62b121605524684.jpg', 'de592d1279723b8e37aeaf46dac450e51605524684.jpg', 'Uttara House Building, Sector-8, Beside Railline', '1', 'Uttara', '1', '1230', '', 0, '2020-11-16 11:04:44'),
(82, '39', '3200 SF Office Space For Rent at Gulshan-2', 'Modern Fully Commercial Building 3200 SF Office Space For Rent Gulshan-2.\r\n It is a 12 Storied Modern Commercial  Building.This is 4th Floor.Bachman 1 Car parking.2 Lift and Generator available.C.C TV 24 hours High  Security Service.\r\nMonthly Rent-120,000.00 Tk. without Service Charge,Service Charge-10000.00 Tk.\r\n3 Month Advance, 2 years Contace.\r\nThis Building for visit and information Please,Call me.........\r\nM-01718587728.\r\n', 'Commercial Space', '100001-200000', 'Gulshan, Dhaka', '0', '0', '4', '1', '3200', '', '130000', '', '', 'G-003', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '8e98516de1188007c9751a6934a892c21605529708.jpg', 'c8fbf212eaa72af538aeec5e05abd0621605529708.jpg', 'ee0c18ecdc4cdcb196ca0f040cfbafd61605529708.jpg', '1866da6fa009bd3ca3b1bd76ae4cca1e1605529708.jpg', '7fa9a4b75f77f01692c63d6e0d7d430e1605529708.jpg', '972844967b8969f1f545a7cad95b43a41605529708.jpg', 'Gulshan-2', '1', 'Gulshan', '1', '1212', '', 0, '2020-11-16 12:28:28'),
(83, '39', 'Seat (Female) available at Jasimuddin, Uttara', 'Need 1 Female roommate from Nov/Dec\r\nMaster bedroom big bath & belcony (2nd floor)\r\nRent 3500 including gas,current, water,moila (Room rent 7000 per person 3500)\r\nWell environment & secure \r\nLocation:Near Jasimuddin, Uttara, \r\nbeside sec-04 ( kosai bazar railgate)\r\n', 'Bachelors', '0-10000', 'Uttara', '1', '1', '2', '', '0', '', '3500', '', '', 'U-011', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2ee5be2a0d0b1e1266501facf51da9731605530058.jpg', '60a01ae6253648d1ef1a300070749bfb1605530058.jpg', 'ea966298fde81ff227ed128e08655e001605530058.jpg', '84e4b20eba2116ea5010b6b5e111720e1605530058.jpg', 'e8b50f5120b6cc34d140004eefac65e61605530058.jpg', '3299714b9d2f8a6f8ace181a114a015c1605530058.jpg', 'Location:Near Jasimuddin, Uttara,  beside sec-04 ( kosai bazar railgate)', '1', 'Uttara', '1', '1230', 'Jashimuddin', 0, '2020-11-16 12:34:18'),
(84, '39', '1345 SQFT Office Space for Rent at Surma Tower 4th Floor (Negotiable)', 'à¦¸à§à¦°à¦®à¦¾ à¦Ÿà¦¾à¦“à§Ÿà¦¾à¦° à¦¢à¦¾à¦•à¦¾à¦° à¦ªà§à¦°à¦¾à¦£à¦•à§‡à¦¨à§à¦¦à§à¦° à¦ªà§à¦°à¦¾à¦¨ à¦ªà¦²à§à¦Ÿà¦¨à§‡ à¦…à¦¬à¦¸à§à¦¥à¦¿à¦¤à¥¤ à¦¯à¦¾à¦° à¦¦à¦•à§à¦·à¦¿à¦¨à§‡ à¦ªà§à¦°à¦¾à¦¤à¦¨ à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦¸à§à¦ªà§‹à¦°à§à¦Ÿà¦¸ à¦•à¦¾à¦‰à¦¨à§à¦¸à¦¿à¦² à¦­à¦¬à¦¨, à¦¸à¦®à§à¦®à§à¦–à§‡ à§§à§§à§¦ à¦«à¦¿à¦Ÿ à¦°à¦¾à¦¸à§à¦¤à¦¾ à¦à¦¬à¦‚ à¦œà¦¾à¦¤à§€à§Ÿ à¦¸à§à¦Ÿà§‡à¦¡à¦¿à§Ÿà¦¾à¦® à¦…à¦¬à¦¸à§à¦¥à¦¿à¦¤à¥¤ à¦ªà§‚à¦°à§à¦¬ à¦ªà¦¾à¦¶à§‡ à¦¦à§ˆà¦¨à¦¿à¦• à¦¬à¦¾à¦‚à¦²à¦¾ à¦®à§‹à§œ à¦à¦¬à¦‚ à¦®à¦¤à¦¿à¦à¦¿à¦² à¦…à¦«à¦¿à¦¸ à¦ªà¦¾à§œà¦¾à¥¤\r\nà¦¸à§à¦°à¦®à¦¾ à¦Ÿà¦¾à¦“à§Ÿà¦¾à¦°à§‡à¦° à¦¨à¦¿à¦®à§à¦¨à§‹à¦•à§à¦¤ à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯à¦¿à¦• à¦«à§à¦²à§‹à¦° à¦—à§à¦²à§‹ à¦­à¦¾à§œà¦¾ à¦¦à§‡à§Ÿà¦¾ à¦¹à¦¬à§‡à¦ƒ\r\nà§§) à§«à¦® à¦¤à¦²à¦¾ (à¦†à¦¨à§à¦®à¦¾à¦¨à¦¿à¦• à§§à§©à§ªà§« à¦¸à§à¦•à§Ÿà¦¾à¦° à¦«à¦¿à¦Ÿ)\r\n\r\n\r\nà¦­à¦¾à§œà¦¾,à¦…à¦—à§à¦°à¦¿à¦® à¦à¦¬à¦‚ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¯à¦¾à¦¬à¦¤à§€à§Ÿ à¦¬à¦¿à¦·à§Ÿà¦¾à¦¦à¦¿ à¦‰à¦­à§Ÿ à¦ªà¦•à§à¦·à§‡à¦° à¦†à¦²à§‹à¦šà¦¨à¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£ à¦•à¦°à¦¾ à¦¹à¦¬à§‡à¥¤\r\n\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à¦ƒ\r\nà¦¨à§à¦°à§à¦² à¦†à¦®à¦¿à¦¨\r\nà¦œà§‡à¦¨à¦¾à¦°à§‡à¦² à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦¾à¦°\r\nà¦¸à§à¦°à¦®à¦¾ à¦Ÿà¦¾à¦“à§Ÿà¦¾à¦°\r\n\r\nà¦•à¦®à¦°à§‡à¦¡ à¦®à¦¨à¦¿ à¦¸à¦¿à¦‚à¦¹ à¦°à§‹à¦¡ (à¦²à§‡à¦­à§‡à¦² à§¨à§§)\r\nà§«à§¯/à§¨ à¦ªà§à¦°à¦¾à¦¨ à¦ªà¦²à§à¦Ÿà¦¨ à¦¢à¦¾à¦•à¦¾-à§§à§¦à§¦à§¦à¥¤\r\nà¦®à§‹à¦¬à¦¾à¦‡à¦² â€“ à§¦à§§à§¯à§§à§®à§¬à§¬à§§à§«à§®à§¯, à§¦à§§à§­à§®à§¬à§¬à§¬à§¬à§¯à§®à§¦\r\nà¦Ÿà§‡à¦²à¦¿à¦«à§‹à¦¨- à§¯à§«à§§à§«à§¯à§§à§ª-à§«, à§¯à§«à§®à§¨à§¦à§¬à§¬à¥¤', 'Commercial Space', '100001-200000', 'Purana Paltan', '0', '0', '4', '0', '1345', '', '107000', '', '', 'p-001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0602c92e855c58f449b15abcb7fdd6341605679733.jpg', '65f87cf9103ce737ecc0c2ffe3f4e6a31605679733.jpg', '404169e8ddf2606549b1dee261fbb2ab1605679733.jpg', '588b74c0d8b08537a65d0ab536c3a81d1605679733.jpg', 'd86bd5d8df329e3321e5668b78cc7d361605679733.jpg', '5d24fbb5371000a143f1eafa72b474c71605679733.jpg', '59/2, Surma Tower, Comrade Moni Singha Road, Purana Paltan, Dhaka-1000', '1', 'paltan', '1', '1000', '', 0, '2020-11-18 06:08:53');
INSERT INTO `tblproperty` (`ID`, `UserID`, `PropertyTitle`, `PropertDescription`, `Type`, `Status`, `Location`, `Bedrooms`, `Bathrooms`, `Floors`, `Garages`, `Area`, `Size`, `RentorsalePrice`, `BeforePricelabel`, `AfterPricelabel`, `PropertyID`, `CenterCooling`, `Balcony`, `PetFriendly`, `Barbeque`, `FireAlarm`, `ModernKitchen`, `Storage`, `Dryer`, `Heating`, `Pool`, `Laundry`, `Sauna`, `Gym`, `Elevator`, `DishWasher`, `EmergencyExit`, `FeaturedImage`, `GalleryImage1`, `GalleryImage2`, `GalleryImage3`, `GalleryImage4`, `GalleryImage5`, `Address`, `Country`, `City`, `State`, `ZipCode`, `Neighborhood`, `hide`, `ListingDate`) VALUES
(85, '39', '5533 SQFT Office Space for Rent at Surma Tower 12th Floor (Negotiable)', 'à¦¸à§à¦°à¦®à¦¾ à¦Ÿà¦¾à¦“à§Ÿà¦¾à¦° à¦¢à¦¾à¦•à¦¾à¦° à¦ªà§à¦°à¦¾à¦£à¦•à§‡à¦¨à§à¦¦à§à¦° à¦ªà§à¦°à¦¾à¦¨ à¦ªà¦²à§à¦Ÿà¦¨à§‡ à¦…à¦¬à¦¸à§à¦¥à¦¿à¦¤à¥¤ à¦¯à¦¾à¦° à¦¦à¦•à§à¦·à¦¿à¦¨à§‡ à¦ªà§à¦°à¦¾à¦¤à¦¨ à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦¸à§à¦ªà§‹à¦°à§à¦Ÿà¦¸ à¦•à¦¾à¦‰à¦¨à§à¦¸à¦¿à¦² à¦­à¦¬à¦¨, à¦¸à¦®à§à¦®à§à¦–à§‡ à§§à§§à§¦ à¦«à¦¿à¦Ÿ à¦°à¦¾à¦¸à§à¦¤à¦¾ à¦à¦¬à¦‚ à¦œà¦¾à¦¤à§€à§Ÿ à¦¸à§à¦Ÿà§‡à¦¡à¦¿à§Ÿà¦¾à¦® à¦…à¦¬à¦¸à§à¦¥à¦¿à¦¤à¥¤ à¦ªà§‚à¦°à§à¦¬ à¦ªà¦¾à¦¶à§‡ à¦¦à§ˆà¦¨à¦¿à¦• à¦¬à¦¾à¦‚à¦²à¦¾ à¦®à§‹à§œ à¦à¦¬à¦‚ à¦®à¦¤à¦¿à¦à¦¿à¦² à¦…à¦«à¦¿à¦¸ à¦ªà¦¾à§œà¦¾à¥¤\r\nà¦¸à§à¦°à¦®à¦¾ à¦Ÿà¦¾à¦“à§Ÿà¦¾à¦°à§‡à¦° à¦¨à¦¿à¦®à§à¦¨à§‹à¦•à§à¦¤ à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯à¦¿à¦• à¦«à§à¦²à§‹à¦° à¦—à§à¦²à§‹ à¦­à¦¾à§œà¦¾ à¦¦à§‡à§Ÿà¦¾ à¦¹à¦¬à§‡à¦ƒ\r\n\r\nà§§à§© à¦¤à¦²à¦¾ (à¦†à¦¨à§à¦®à¦¾à¦¨à¦¿à¦• à§«à§«à§©à§© à¦¸à§à¦•à§Ÿà¦¾à¦° à¦«à¦¿à¦Ÿ)\r\n\r\nà¦­à¦¾à§œà¦¾,à¦…à¦—à§à¦°à¦¿à¦® à¦à¦¬à¦‚ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¯à¦¾à¦¬à¦¤à§€à§Ÿ à¦¬à¦¿à¦·à§Ÿà¦¾à¦¦à¦¿ à¦‰à¦­à§Ÿ à¦ªà¦•à§à¦·à§‡à¦° à¦†à¦²à§‹à¦šà¦¨à¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£ à¦•à¦°à¦¾ à¦¹à¦¬à§‡à¥¤\r\n\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à¦ƒ\r\nà¦¨à§à¦°à§à¦² à¦†à¦®à¦¿à¦¨\r\nà¦œà§‡à¦¨à¦¾à¦°à§‡à¦² à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦¾à¦°\r\nà¦¸à§à¦°à¦®à¦¾ à¦Ÿà¦¾à¦“à§Ÿà¦¾à¦°\r\n\r\nà¦•à¦®à¦°à§‡à¦¡ à¦®à¦¨à¦¿ à¦¸à¦¿à¦‚à¦¹ à¦°à§‹à¦¡ (à¦²à§‡à¦­à§‡à¦² à§¨à§§)\r\nà§«à§¯/à§¨ à¦ªà§à¦°à¦¾à¦¨ à¦ªà¦²à§à¦Ÿà¦¨ à¦¢à¦¾à¦•à¦¾-à§§à§¦à§¦à§¦à¥¤\r\nà¦®à§‹à¦¬à¦¾à¦‡à¦² â€“ à§¦à§§à§¯à§§à§®à§¬à§¬à§§à§«à§®à§¯, à§¦à§§à§­à§®à§¬à§¬à§¬à§¬à§¯à§®à§¦\r\nà¦Ÿà§‡à¦²à¦¿à¦«à§‹à¦¨- à§¯à§«à§§à§«à§¯à§§à§ª-à§«, à§¯à§«à§®à§¨à§¦à§¬à§¬à¥¤', 'Commercial Space', '100001-200000', 'Purana Paltan', '', '', '12', '', '5533', '', '442000', '', '', 'p-002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0602c92e855c58f449b15abcb7fdd6341605679971.jpg', '861b605de0b32fdcf4bb4b824fb899f61605679971.jpg', '86e7587e99fdd85d2c4f6c3e7b48d16d1605679971.jpg', '5d24fbb5371000a143f1eafa72b474c71605679971.jpg', '987ae563150304f7d2ce31086c5b0df91605679971.jpg', 'd86bd5d8df329e3321e5668b78cc7d361605679971.jpg', '59/2, Surma Tower, Comrade Moni Singha Road, Purana Paltan, Dhaka-1000', '1', 'paltan', '1', '1000', '', 0, '2020-11-18 06:12:51'),
(86, '39', 'Sublet Rent at Goran for Couple/Girls (5th Floor)', 'à¦¸à¦¾à¦¬-à¦²à§‡à¦Ÿ (à§¦à§§ à¦²à¦¾ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦°, à§¨à§¦à§¨à§¦ à¦¥à§‡à¦•à§‡)\r\n-------------------------- \r\nà¦†à¦—à¦¾à¦®à§€ à§§ à¦²à¦¾ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦°, à§¨à§¦à§¨à§¦ à¦¥à§‡à¦•à§‡ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦Ÿà¦¾à¦‡à¦¸à¦•à§ƒà¦¤ à¦…à¦¤à§à¦¯à¦¾à¦§à§à¦¨à¦¿à¦• à¦«à§à¦²à§à¦¯à¦¾à¦Ÿà§‡ à¦®à¦¾à¦·à§à¦Ÿà¦¾à¦° à¦¬à§‡à¦¡ à¦­à¦¾à§œà¦¾ à¦¹à¦¬à§‡à¥¤\r\nà¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦¸à§à¦¶à¦¿à¦•à§à¦·à¦¿à¦¤ à¦“ à¦°à§à¦šà¦¿à¦¶à§€à¦² à¦•à¦°à§à¦®à¦œà§€à¦¬à¦¿ à¦¨à¦¾à¦°à§€, à¦›à¦¾à¦¤à§à¦°à§€ à¦“ à¦¸à§à¦¬à¦¾à¦®à§€-à¦¸à§à¦¤à§à¦°à§€ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à¦¬à§‡à¦¨à¥¤ \r\nà¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¸à¦®à§‚à¦¹à¦ƒ à¦à¦Ÿà¦¾à¦¸à§à¦Ÿ à¦¬à¦¾à¦¥à¦°à§à¦® à¦“ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾, à¦«à§à¦°à§€à¦œ à¦¸à§à¦¬à¦¿à¦§à¦¾, à¦°à¦¾à¦‰à¦¡à¦¾à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾, à¦®à§‡à¦‡à¦¨ à¦¸à§œà¦•à§‡à¦° à¦ªà¦¾à¦¶à§‡, à¦¸à¦°à§à¦¬à¦¾à¦•à§à¦·à¦¨à¦¿à¦• à¦¨à¦¿à¦°à¦¾à¦ªà¦¤à§à¦¤à¦¾, à¦šà¦¾à¦°à¦ªà¦¾à¦¶ à¦–à§‹à¦²à¦¾à¦®à§‡à¦²à¦¾ à¦ªà¦°à¦¿à¦¬à§‡à¦¶, à§¨à§ª à¦˜à¦¨à§à¦Ÿà¦¾ à¦—à§à¦¯à¦¾à¦¸, à¦¬à¦¿à¦¦à§à¦¯à§à§Ž, à¦ªà¦¾à¦¨à¦¿ à¦¸à§à¦¬à¦¿à¦§à¦¾, à¦¬à¦¿à¦¶à¦¾à¦² à¦›à¦¾à¦¦ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾à¥¤ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¨à¦¤à§à¦¨ à¦“ à¦…à¦¤à§à¦¯à¦¾à¦§à§à¦¨à¦¿à¦• à¦«à§à¦²à§à¦¯à¦¾à¦Ÿà¥¤ \r\nà§¬ à¦¤à¦²à¦¾ (à¦²à¦¿à¦«à¦Ÿ à¦¨à§‡à¦‡) \r\nà¦­à¦¾à§œà¦¾à¦ƒ à§«à§¦à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾ à¦®à¦¾à¦¤à§à¦°à¥¤\r\nà¦¸à¦¬à¦§à¦°à¦¨à§‡à¦° à¦¬à¦¿à¦² à¦…à¦°à§à¦§à§‡à¦• à¦¦à¦¿à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦ à¦¿à¦•à¦¾à¦¨à¦¾à¦ƒ à¦—à§‹à§œà¦¾à¦¨ (à¦¨à¦¬à¦¾à¦¬à§€ à¦®à§‹à§œ à¦ªà¦¾à¦¨à¦¿à¦° à¦ªà¦¾à¦®à§à¦ª) à¦–à¦¿à¦²à¦—à¦¾à¦à¦“, à¦¢à¦¾à¦•à¦¾à¥¤\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à¦ƒ 01814874621', 'Sublet', '0-10000', 'Goran', '1', '1', '5', '', '', '', '5000', '', '', 'k-001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'daf5ed448bcc7ce1e27a71ec1e6616021605708566.jpg', '31b66e5840d8eee4f303cabae8ae98c01605708566.jpg', '82fc3244eb6fa8c3445bff3a2d82c4071605708566.jpg', 'f9d782568acf50160cd43fcaee6a3a611605708566.jpg', '7bcd82ecb9d405d83516b1af28e1644e1605708566.jpg', '30bb3ab62b6a1e1c32e76c293707132d1605708566.jpg', 'Goran, Nobabi Mor Water Pump, Khilgao, Contact-01814874621', '1', 'khilgaon', '1', '1219', '', 0, '2020-11-18 14:09:26'),
(87, '39', '1,654 sqft Flat Rent at Uttara Sector 18', 'To Let for family \r\nFlat location :Uttara sector 18,Rajuk apartment project\r\nsize:1,654sq feet,south east facing\r\n3 bed, 4bath,4 varanda,with garage facilities \r\nflat no:701,A-Dolonchapa(building no 12)\r\nRent:12,000Tk/month(utility/any bill not included in rent)\r\nservice charge:1000Tk/month(for lift +security) \r\ngas:cylinder use korte hbe\r\nwater:150-200tk /month ', 'Apartments', '10001-20000', 'Uttara', '3', '4', '7', '1', '1654', '', '12000', '', '', 'U-012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bdd9c5a5e51550567349f23c806bd0ef1605709502.jpg', '84c9b950e2532aab8b6141aa7fefb74d1605709502.jpg', '6e22534df4bdb7b1b0c8d362ece21ecb1605709502.jpg', '9725264c04b7b53478cbed1d5e461a401605709502.jpg', 'ad36b11a0db0a5e78d3edb5e96d442be1605709502.jpg', '1109e0bee3c84dc60c12ab5cf98824f71605709502.jpg', 'flat no:701,A-Dolonchapa(building no 12)', '1', 'Uttara', '1', '1230', '', 0, '2020-11-18 14:25:02'),
(88, '39', 'Flat Rent at South Banasree from Jan 2021', 'à¦¦à¦•à§à¦·à¦¿à¦¨ à¦¬à¦¨à¦¶à§à¦°à§€à¦° à¦¸à¦¨à§à¦¨à¦¿à¦•à¦Ÿà§‡ à¦ªà¦¶à§à¦šà¦¿à¦® à¦¨à¦¨à§à¦¦à§€à¦ªà¦¾à¦¡à¦¼à¦¾ à¦ªà¦¾à¦¨à¦¿à¦° à¦ªà¦¾à¦®à§à¦ªà§‡à¦° à¦¨à¦¿à¦•à¦Ÿâ€Œ à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¸à¦¡à¦¼à¦•à§‡à¦° à¦ªà¦¾à¦¶à§‡ à¦¸à¦¾à¦¤ à¦¤à¦²à¦¾ à¦¬à¦¾à¦¡à¦¼à¦¿à¦° à§­à¦® à¦¤à¦²à¦¾à¦° à¦¦à¦•à§à¦·à¦¿à¦¨à¦ªà¦¾à¦¶à§‡ à§¨ à¦¬à§‡à¦¡, à§§ à¦¡à§à¦°à¦¯à¦¼à¦¿à¦‚, à§§ à¦¡à¦¾à¦‡à¦¨à¦¿à¦‚, à§¨ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾ à¦“ à§¨ à¦¬à¦¾à¦¥à¦°à§à¦® (à§§à¦Ÿà¦¿à¦¤à§‡ à¦¹à¦¾à¦‡ à¦•à¦®à§‹à¦¡) à¦¬à¦¿à¦¶à¦¿à¦·à§à¦Ÿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦Ÿà¦¾à¦‡à¦²à¦¸ à¦•à¦°à¦¾ à¦«à§à¦²à§à¦¯à¦¾à¦Ÿ à¦­à¦¾à¦¡à¦¼à¦¾ à¦¦à§‡à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤ à¦­à¦¾à¦¡à¦¼à¦¾ à§®,à§¦à§¦à§¦/- + à¦—à§à¦¯à¦¾à¦¸ à¦¬à¦¿à¦² + à¦•à¦¾à§à¦°à§‡à¦¨à§à¦Ÿ à¦¬à¦¿à¦² + à¦ªà¦¾à¦¨à¦¿à¦° à¦¬à¦¿à¦² à§©à§¦à§¦/- (à§§à¦²à¦¾ à¦œà¦¾à¦¨à§à¦¯à¦¼à¦¾à¦°à¦¿ à§¨à§¦à§¨à§§ à¦¥à§‡à¦•à§‡)à¥¤ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—: à§¦à§§à§­à§§à§§-à§¯à§¦à§§à§§à§«à§¬, à§¦à§§à§­à§©à§©-à§¨à§¨à§­à§©à§­à§ªà¥¤\r\nà¦¬à¦¾à¦‡à¦• à¦ªà¦¾à¦°à§à¦•à¦¿à¦‚ à¦à¦° à¦¸à§à¦¬à§à¦¯à¦¾à¦¬à¦¸à§à¦¥à¦¾ à¦†à¦›à§‡à¥¤ à¦²à¦¿à¦«à¦Ÿ à¦¨à¦¾à¦‡à¥¤\r\nGoogle maps link:\r\nhttps://maps.app.goo.gl/bNNNj5eYVow8uofH8', 'Apartments', '0-10000', 'Banasree', '2', '2', '6', '', '', '', '80000', '', '', 'R-010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '59995473abccc85ecacb3de5f3deb1911605712278.jpg', '5536406e70ec4e7b2328cc717848faf91605712278.jpg', 'c9ec5bc32c9858fd0aedab3841a713f81605712278.jpg', 'f57fc3fa06dc283ccec425ec29f022ce1605712278.jpg', '2b000b2e65ebd43e79cf6edb7f1737761605712278.jpg', 'd297eeff4a5f9d703ca30719873c32d11605712278.jpg', 'East Nandipara Water Pump Near Main Road, South Banasree', '1', 'Rampura', '1', '1219', '', 0, '2020-11-18 15:11:18'),
(89, '39', 'Flat Rent at South Banasree from Jan 2021', 'à¦¦à¦•à§à¦·à¦¿à¦¨ à¦¬à¦¨à¦¶à§à¦°à§€à¦° à¦¸à¦¨à§à¦¨à¦¿à¦•à¦Ÿà§‡ à¦ªà¦¶à§à¦šà¦¿à¦® à¦¨à¦¨à§à¦¦à§€à¦ªà¦¾à¦¡à¦¼à¦¾ à¦ªà¦¾à¦¨à¦¿à¦° à¦ªà¦¾à¦®à§à¦ªà§‡à¦° à¦¨à¦¿à¦•à¦Ÿâ€Œ à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¸à¦¡à¦¼à¦•à§‡à¦° à¦ªà¦¾à¦¶à§‡ à¦¸à¦¾à¦¤ à¦¤à¦²à¦¾ à¦¬à¦¾à¦¡à¦¼à¦¿à¦° à§­à¦® à¦¤à¦²à¦¾à¦° à¦¦à¦•à§à¦·à¦¿à¦¨à¦ªà¦¾à¦¶à§‡ à§¨ à¦¬à§‡à¦¡, à§§ à¦¡à§à¦°à¦¯à¦¼à¦¿à¦‚, à§§ à¦¡à¦¾à¦‡à¦¨à¦¿à¦‚, à§¨ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾ à¦“ à§¨ à¦¬à¦¾à¦¥à¦°à§à¦® (à§§à¦Ÿà¦¿à¦¤à§‡ à¦¹à¦¾à¦‡ à¦•à¦®à§‹à¦¡) à¦¬à¦¿à¦¶à¦¿à¦·à§à¦Ÿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦Ÿà¦¾à¦‡à¦²à¦¸ à¦•à¦°à¦¾ à¦«à§à¦²à§à¦¯à¦¾à¦Ÿ à¦­à¦¾à¦¡à¦¼à¦¾ à¦¦à§‡à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤ à¦­à¦¾à¦¡à¦¼à¦¾ à§®,à§¦à§¦à§¦/- + à¦—à§à¦¯à¦¾à¦¸ à¦¬à¦¿à¦² + à¦•à¦¾à§à¦°à§‡à¦¨à§à¦Ÿ à¦¬à¦¿à¦² + à¦ªà¦¾à¦¨à¦¿à¦° à¦¬à¦¿à¦² à§©à§¦à§¦/- (à§§à¦²à¦¾ à¦œà¦¾à¦¨à§à¦¯à¦¼à¦¾à¦°à¦¿ à§¨à§¦à§¨à§§ à¦¥à§‡à¦•à§‡)à¥¤ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—: à§¦à§§à§­à§§à§§-à§¯à§¦à§§à§§à§«à§¬, à§¦à§§à§­à§©à§©-à§¨à§¨à§­à§©à§­à§ªà¥¤\r\nà¦¬à¦¾à¦‡à¦• à¦ªà¦¾à¦°à§à¦•à¦¿à¦‚ à¦à¦° à¦¸à§à¦¬à§à¦¯à¦¾à¦¬à¦¸à§à¦¥à¦¾ à¦†à¦›à§‡à¥¤ à¦²à¦¿à¦«à¦Ÿ à¦¨à¦¾à¦‡à¥¤\r\nGoogle maps link:\r\nhttps://maps.app.goo.gl/bNNNj5eYVow8uofH8', 'Apartments', '0-10000', 'Banasree', '2', '2', '6', '', '', '', '8000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '59995473abccc85ecacb3de5f3deb1911605712325.jpg', '5536406e70ec4e7b2328cc717848faf91605712325.jpg', 'c9ec5bc32c9858fd0aedab3841a713f81605712325.jpg', 'f57fc3fa06dc283ccec425ec29f022ce1605712325.jpg', '2b000b2e65ebd43e79cf6edb7f1737761605712325.jpg', 'd297eeff4a5f9d703ca30719873c32d11605712325.jpg', 'East Nandipara Water Pump Near Main Road, South Banasree', '1', '', '', '1219', '', 0, '2020-11-18 15:12:05'),
(90, '39', 'Flat Rent at South Banasree from Jan 2021', 'à¦¦à¦•à§à¦·à¦¿à¦¨ à¦¬à¦¨à¦¶à§à¦°à§€à¦° à¦¸à¦¨à§à¦¨à¦¿à¦•à¦Ÿà§‡ à¦ªà¦¶à§à¦šà¦¿à¦® à¦¨à¦¨à§à¦¦à§€à¦ªà¦¾à¦¡à¦¼à¦¾ à¦ªà¦¾à¦¨à¦¿à¦° à¦ªà¦¾à¦®à§à¦ªà§‡à¦° à¦¨à¦¿à¦•à¦Ÿâ€Œ à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¸à¦¡à¦¼à¦•à§‡à¦° à¦ªà¦¾à¦¶à§‡ à¦¸à¦¾à¦¤ à¦¤à¦²à¦¾ à¦¬à¦¾à¦¡à¦¼à¦¿à¦° à§­à¦® à¦¤à¦²à¦¾à¦° à¦¦à¦•à§à¦·à¦¿à¦¨à¦ªà¦¾à¦¶à§‡ à§¨ à¦¬à§‡à¦¡, à§§ à¦¡à§à¦°à¦¯à¦¼à¦¿à¦‚, à§§ à¦¡à¦¾à¦‡à¦¨à¦¿à¦‚, à§¨ à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾ à¦“ à§¨ à¦¬à¦¾à¦¥à¦°à§à¦® (à§§à¦Ÿà¦¿à¦¤à§‡ à¦¹à¦¾à¦‡ à¦•à¦®à§‹à¦¡) à¦¬à¦¿à¦¶à¦¿à¦·à§à¦Ÿ à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦Ÿà¦¾à¦‡à¦²à¦¸ à¦•à¦°à¦¾ à¦«à§à¦²à§à¦¯à¦¾à¦Ÿ à¦­à¦¾à¦¡à¦¼à¦¾ à¦¦à§‡à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤ à¦­à¦¾à¦¡à¦¼à¦¾ à§®,à§¦à§¦à§¦/- + à¦—à§à¦¯à¦¾à¦¸ à¦¬à¦¿à¦² + à¦•à¦¾à§à¦°à§‡à¦¨à§à¦Ÿ à¦¬à¦¿à¦² + à¦ªà¦¾à¦¨à¦¿à¦° à¦¬à¦¿à¦² à§©à§¦à§¦/- (à§§à¦²à¦¾ à¦œà¦¾à¦¨à§à¦¯à¦¼à¦¾à¦°à¦¿ à§¨à§¦à§¨à§§ à¦¥à§‡à¦•à§‡)à¥¤ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—: à§¦à§§à§­à§§à§§-à§¯à§¦à§§à§§à§«à§¬, à§¦à§§à§­à§©à§©-à§¨à§¨à§­à§©à§­à§ªà¥¤\r\nà¦¬à¦¾à¦‡à¦• à¦ªà¦¾à¦°à§à¦•à¦¿à¦‚ à¦à¦° à¦¸à§à¦¬à§à¦¯à¦¾à¦¬à¦¸à§à¦¥à¦¾ à¦†à¦›à§‡à¥¤ à¦²à¦¿à¦«à¦Ÿ à¦¨à¦¾à¦‡à¥¤\r\nGoogle maps link:\r\nhttps://maps.app.goo.gl/bNNNj5eYVow8uofH8', 'Apartments', '0-10000', 'Banasree', '2', '2', '6', '', '', '', '8000', '', '', 'R-011', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '59995473abccc85ecacb3de5f3deb1911605712396.jpg', '5536406e70ec4e7b2328cc717848faf91605712396.jpg', 'c9ec5bc32c9858fd0aedab3841a713f81605712396.jpg', 'f57fc3fa06dc283ccec425ec29f022ce1605712396.jpg', '2b000b2e65ebd43e79cf6edb7f1737761605712396.jpg', 'd297eeff4a5f9d703ca30719873c32d11605712396.jpg', 'East Nandipara Water Pump Near Main Road, South Banasree', '1', 'Rampura', '1', '1219', '', 0, '2020-11-18 15:13:16'),
(91, '39', '1190 sqft Sublet Rent at Basabo', 'à¦¸à¦¾à¦¬à¦²à§‡à¦Ÿ à¦­à¦¾à¦¡à¦¼à¦¾ \r\nà§§à¦²à¦¾ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦¥à§‡à¦•à§‡ à¦à¦ªà¦¾à¦Ÿà¦®à§‡à¦¨à§à¦Ÿà§‡ à¦à¦• à¦°à§à¦®à§‡à¦° à¦¸à¦¾à¦¬à¦²à§‡à¦Ÿ à¦­à¦¾à¦¡à¦¼à¦¾ à¦¦à§‡à¦“à¦¯à¦¼à¦¾ à¦¹à¦¬à§‡à¥¤ à¦¹à¦¾à¦¸à¦¬à§‡à¦¨à§à¦¡ à¦“à¦¯à¦¼à¦¾à¦‡à¦« à¦…à¦¥à¦¬à¦¾ à¦šà¦¾à¦•à§à¦°à§€ à¦œà§€à¦¬à¦¿ à¦¨à¦¾à¦®à¦¾à¦œà§€ à¦®à¦¹à¦¿à¦²à¦¾ à¦¹à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦°à§à¦®à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¬à¦¾à¦¥à¦°à§à¦® à¦†à¦›à§‡à¥¤ à§¨à§ª à¦˜à¦¨à§à¦Ÿà¦¾ à¦ªà¦¾à¦¨à¦¿à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦“ à¦—à§à¦¯à¦¾à¦¸ à¦à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¬à¦¿à¦¦à§à¦¯à§à¦¤à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿà¦°à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦à¦¬à¦‚ à¦¸à¦¿à¦•à¦¿à¦‰à¦°à¦¿à¦Ÿà¦¿ à¦•à§à¦¯à¦¾à¦®à§‡à¦°à¦¾ à¦“ à¦—à¦¾à¦¡à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾à¥¤\r\nà¦¡à¦¾à¦¬à¦² à¦²à¦¿à¦«à¦Ÿ à¦†à¦›à§‡ \r\nà¦°à§à¦®à§‡à¦° à¦ªà§à¦°à¦šà§à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦£à§‡ à¦†à¦²à§‹à¦“ à¦¬à¦¾à¦¤à¦¾à¦¸ à¦†à¦›à§‡ à¦°à§à¦®à§‡à¦° à¦à¦•à¦Ÿà¦¾ à¦°à¦¡à¦¼ à¦œà¦¾à¦¨à¦¾à¦²à¦¾ à¦†à¦›à§‡ à¦°à§à¦®à§‡à¦° à¦†à¦¯à¦¼à¦¤à¦¨ à¦¬à§‡à¦¶ à¦¬à¦¡à¦¼à¥¤\r\nà¦²à§‹à¦•à§‡à¦¶à¦¨: à§¯à§ª à¦¨à¦‚ à¦®à¦§à§à¦¯ à¦¬à¦¾à¦¸à¦¾à¦¬à§‹ à¦Ÿà¦¾à¦®à§à¦ªà§ à¦‡à¦¸à§à¦Ÿà¦¾à¦°à§à¦¨ à¦¸à¦¾à¦®à¦¨à§‡ à¦›à¦¾à¦¯à¦¼à¦¾à¦¬à¦¿à¦¥à§€à¦° à¦¬à¦¿à¦ªà¦°à§€à¦¤à§‡ ( à¦®à§‹à¦¤à¦¾à¦²à¦¿à¦¬ à¦­à¦¿à¦²à¦¾) à§§à§¦ à¦¤à¦²à¦¾ à¦­à¦¬à¦¨à§‡à¦° à§¬à¦·à§à¦  à¦¤à¦²à¦¾à¦¯à¦¼à¥¤\r\nà¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¸à¦®à§‚à¦¹: à¦«à§à¦°à¦¿à¦œ, à¦•à¦¾à¦ªà¦¡à¦¼ à¦šà§‹à¦ªà¦¡à¦¼ à¦¬à§à¦¯à¦¼à¦¾ à¦•à§à¦²à¦¿à¦¨ à¦•à¦°à§‡ à¦¦à¦¿à¦¬à§‡à¥¤\r\nà¦–à¦¾à¦“à¦¯à¦¼à¦¾ à¦Ÿà§‡à¦¬à¦¿à¦², à¦¸à§‹à¦«à¦¾ à¦¸à§‡à¦Ÿà§‡à¦° à¦¬à§à¦¯à¦¾à¦¬à¦¹à¦¾à¦°à§‡à¦° à¦¸à§à¦¬à¦¿à¦§à¦¾ wifi à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦–à¦¾à¦Ÿ à¦à¦¬à¦‚ à¦“à¦¯à¦¼à¦¾à¦°à¦¡à§à¦°à¦¬ à¦¬à§à¦¯à¦¾à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à¦¬à§‡à¥¤\r\nà¦«à§à¦¯à¦¾à¦®à¦¿à¦²à¦¿ à¦¬à¦¾à¦¸à¦¾ à¦¹à¦²à§‡à¦“ à¦…à¦¤à¦¿à¦¥à¦¿ à¦†à¦—à¦®à¦¨ à¦•à¦® à¦¤à¦¾à¦‡ à¦ªà¦¡à¦¼à¦¾à¦¶à§‹à¦¨à¦¾ à¦•à¦°à¦¾à¦° à¦ªà¦°à¦¿à¦¬à§‡à¦¶ à¦‰à¦ªà¦¯à§‹à¦—à§€ à¦¬à¦¾à¦¸à¦¾à¦¯à¦¼ à¦•à§‹à¦¨ à¦¬à¦¾à¦šà§à¦šà¦¾ à¦¨à§‡à¦‡à¥¤\r\nà¦ªà¦°à¦¿à¦¬à¦¾à¦°à§‡à¦° à¦¸à¦¦à¦¸à§à¦¯ à¦¸à¦‚à¦–à§à¦¯à¦¾ à§¨ à¦œà¦¨ à¦¸à§à¦¬à¦¾à¦®à§€ à¦à¦¬à¦‚ à¦¸à§à¦¤à§à¦°à§€\r\nà§§à§§à§¯à§¦ à¦¸à§à¦•à¦¯à¦¼à¦¾à¦° à¦«à¦¿à¦Ÿ à¦à¦° à¦¬à¦¾à¦¸à¦¾ \r\nà¦¬à¦¿à¦ƒà¦¦à§à¦°à¦ƒ â–¶ï¸ à¦°à¦¾à¦¨à§à¦¨à¦¾ à¦¨à¦¿à¦œà§‡ à¦•à§‡ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦‡à¦¨à¦¬à¦•à§à¦¸ à¦•à¦°à§à¦¨ à¦…à¦¥à¦¬à¦¾ +8801614453252 à¦à¦‡ à¦¨à¦¾à¦®à§à¦¬à¦¾à¦°à§‡ à¦®à§‡à¦¸à§‡à¦œ à¦¦à¦¿à¦¨à¥¤\r\nà¦­à¦¾à¦¡à¦¼à¦¾ : 7000 \r\nà¦¬à¦¿à¦¦à§à¦¯à§à¦¤ à¦¬à¦¿à¦² à¦†à¦²à¦¾à¦¦à¦¾à¥¤', 'Sublet', '0-10000', 'Basabo', '1', '1', '5', '', '1190', '', '7000', '', '', 'k-002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4e848f4d72207e856e2e7aa0c6e9fbc71605715610.jpg', '92b19f59dc2f972ace4b7a02c88a4f8b1605715610.jpg', '8e77e100fc2d3499c119974a4f847efe1605715610.jpg', '780f09c2c222d0fab019d3f850bd0b721605715610.jpg', '9b414588724d702607b5484aab64c4bb1605715610.jpg', 'cd0ffa22ca9df76aff12955a887a3ada1605715610.jpg', '94, Middle Basabo Tempu Stand, Opposite of Chayabithi', '1', 'khilgaon', '1', '1219', '', 0, '2020-11-18 16:06:50'),
(92, '39', '1100 sqft flat for Sell at Gulshan Vatara (Negotiable)', '1100 square feet,3 bed,drawing,dining,2 washroom,2 varanda..5 th floor\r\nPlace sayeednagar,vatara,gulshan\r\nGarage facility,lift facility, Gas available', 'Apartments', '100001-200000', 'Sayeednagar, Vatara, Gulshan', '3', '2', '5', '1', '1100', '', '5300000', '', '', 'G-004', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '938030633b5d48d656c77be2b93f7c3b1605892801jpeg', 'cb64679bbd8a55fdc686f117426fb4791605892821jpeg', '1023c2ac8d07a9a01b220be5de680bd51605892836jpeg', '55969d91007cfa4bdbbae0b328fd094b1605892848jpeg', 'c25973e00aa7d90b7f4ebad59914e0761605892871jpeg', '7d0a29bb6f12c65061af892f74e0ab5a1605892891jpeg', 'Sayeednagar, Vatara, Gulshan', '1', 'Gulshan', '1', '1212', 'Vatara', 0, '2020-11-20 17:17:09'),
(93, '39', '1500 sqft Flat for Rent at Banasree J block', 'à¦œà¦¾à¦¨à§à§Ÿà¦¾à¦°à¦¿ /à¦«à§‡à¦¬à§à¦°à§à§Ÿà¦¾à¦°à¦¿ à¦®à¦¾à¦¸ à¦¥à§‡à¦•à§‡ à¦­à¦¾à§œà¦¾ à¦¹à¦¬à§‡ à¦ƒ  à§§à§«à§¦à§¦ à¦¬à¦°à§à¦—à¦«à§à¦Ÿà§‡à¦° à¦¬à¦¾à¦¸à¦¾à¥¤ \r\nà¦²à§‡à¦• à¦­à¦¿à¦‰ à¦ªà§Ÿà§‡à¦¨à§à¦Ÿà§‡ à¦–à§‹à¦²à¦¾à¦®à§‡à¦²à¦¾ à¦ªà¦°à§à¦¯à¦¾à¦ªà§à¦¤ à¦†à¦²à§‹ à¦¬à¦¾à¦¤à¦¾à¦¸ à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦à¦•à¦Ÿà¦¿ à¦¨à¦¾à¦¨à§à¦¦à¦¨à¦¿à¦• à¦ªà¦°à¦¿à¦¬à§‡à¦¶à§‡à¥¤\r\n\r\n à¦…à¦¤à§à¦¯à¦¾à¦§à§à¦¨à¦¿à¦• à¦«à¦¿à¦Ÿà¦¿à¦‚à¦¸ à¦¸à¦¹\r\nà§© à¦¬à§‡à¦¡\r\nà§¨à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾ \r\nà§© à¦¬à¦¾à¦¥\r\nà¦¸à¦¿à¦²à¦¿à¦¨à§à¦¡à¦¾à¦° à¦—à§à¦¯à¦¾à¦¸ (à¦—à§à¦¯à¦¾à¦°à§‡à§‡à¦œà§‡ à¦‡à¦¨à§à¦¸à¦Ÿà¦² à¦•à¦°à¦¾ à¦†à¦›à§‡ )\r\nà¦¸à§à¦¬à¦¿à¦¶à¦¾à¦² à¦•à¦¿à¦šà§‡à¦¨ \r\nà¦¡à§à¦°à¦‡à¦‚ \r\nà¦à¦¬à¦‚ à¦¡à¦¾à¦‡à¦¨à¦¿à¦‚à¥¤ \r\nà§§à§¦ à¦¤à¦²à¦¾ à¦¬à¦¿à¦²à§à¦¡à¦¿à¦‚à§Ÿà§‡à¦° à§¯ à¦¤à¦²à¦¾à§Ÿà¥¤ (à¦²à¦¿à¦«à¦Ÿ à¦¸à¦¹)\r\nà¦¬à¦¿à¦¶à¦¾à¦² à¦—à§à¦¯à¦¾à¦°à§‡à¦œ à¦à¦¬à¦‚ à¦¸à¦¿à¦•à¦¿à¦‰à¦°à¦¿à¦Ÿà¦¿ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦†à¦›à§‡à¥¤ \r\n\r\nà¦­à¦¾à§œà¦¾à¦ƒ à§§à§¬à§¦à§¦à§¦à§³, à¦¸à¦¾à¦°à§à¦­à¦¿à¦¸ à¦šà¦¾à¦°à§à¦œ(à¦ªà¦¾à¦¨à¦¿à¦° à¦¬à¦¿à¦² à¦¸à¦¹) à§©à§¦à§¦à§¦à¥¤\r\n\r\nà¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦ƒ à¦¬à¦¨à¦¶à§à¦°à§€, à¦ªà§‚à¦°à§à¦¬  à¦œà§‡ à¦¬à§à¦²à¦•, à§« à¦¨à¦¾à¦®à§à¦¬à¦¾à¦° à¦°à§‹à¦¡, à¦Ÿà§à¦°à¦¿à¦¸à§à¦Ÿ à¦ªà§à¦²à¦¿à¦¶ à¦—à¦²à¦¿à¥¤ \r\nà¦•à¦¨à§à¦Ÿà¦¾à¦•à§à¦Ÿ à¦¨à¦®à§à¦¬à¦°à¦ƒ à§¦à§§à§¬à§©à§§à§§à§«à§¬à§¨à§¨à§¨.', 'Apartments', '10001-20000', 'Banasree', '3', '3', '8', '', '1500', '', '19000', '', '', 'R-012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bd9cbe20cf1e5b35a4bff7cb4b003b011606032935.jpg', '8ab3abe427eff826ff33bca274a8eae01606032935.jpg', '84da4d45f879b477aaed7bf851ad403e1606032935.jpg', 'cb14efd713036112c4802e2def57c3c11606032935.jpg', 'b6b9eaaa45bb49fdc1b0be8a4da69f841606032935.jpg', 'd41d8cd98f00b204e9800998ecf8427e1606032935', 'Police Tourist, Road 5, Block J, Banasree', '1', 'Rampura', '1', '1219', '', 0, '2020-11-22 08:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblpropertytype`
--

CREATE TABLE `tblpropertytype` (
  `ID` int(10) NOT NULL,
  `PropertType` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpropertytype`
--

INSERT INTO `tblpropertytype` (`ID`, `PropertType`, `EnterDate`) VALUES
(1, 'Apartments', '2019-08-06 06:31:56'),
(3, 'Commercial Space', '2019-08-06 06:32:32'),
(4, 'Bachelors', '2019-08-06 06:32:48'),
(7, 'Sublet', '2020-09-24 03:29:31'),
(8, 'Hotels', '2020-10-08 08:05:36'),
(9, 's', '2020-11-20 02:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `CountryID`, `StateName`, `EnterDate`) VALUES
(1, 1, 'Dhaka', '2019-08-06 10:48:36'),
(2, 1, 'Chittagong', '2019-08-06 10:48:58'),
(3, 1, 'Barishal', '2019-08-06 10:49:07'),
(4, 1, 'Rangpur', '2019-08-06 10:49:29'),
(5, 1, 'Mymensingh', '2019-08-06 10:49:39'),
(6, 1, 'Khulna', '2019-08-06 10:49:50'),
(7, 1, 'RajshahI', '2019-08-06 10:51:29'),
(8, 1, 'Chadpur', '2019-08-06 10:51:49'),
(9, 1, 'Sylhet', '2019-08-06 10:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserType` int(5) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Aboutme` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `UserType`, `PostingDate`, `Aboutme`, `UpdationDate`) VALUES
(13, 'Adil Hossain', 'adilhossain227@gmail.com', 1712916062, 'fcea920f7412b5da7be0cf42b8c93759', 2, '2020-08-21 09:08:21', '', NULL),
(17, 'Farhan Khan', '', 1625975405, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-09-12 06:39:43', NULL, NULL),
(20, 'Sattar Mollah', '', 1912004779, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-09-12 12:53:07', '', NULL),
(22, 'Shaikat', '', 1959518188, '97ac1f02cf66a1b19e92b3b8012220cc', 3, '2020-09-14 19:38:28', NULL, NULL),
(23, 'lionel messi', 'md.nayem.hossain.saikat@g.bracu.ac.bd', 1734176958, 'f692e4ff08c33b55dcff4531fb1e2306', 3, '2020-09-19 11:10:33', NULL, NULL),
(24, 'Rohena Afroze', '', 1677646240, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-09-21 06:08:07', NULL, NULL),
(25, 'Riaz Talkuder', 'riaztlk@gmail.com', 1628911080, '72b6afe5990ffe328f428e617f6cd0be', 2, '2020-09-23 23:09:21', NULL, NULL),
(28, 'Khondker Md. Abdullah Ad-Dad', 'rizvyahamed97@gmail.com', 1797010484, '2d2d8c4cf53fbde6bed9469642661d0f', 2, '2020-09-27 20:45:42', '', NULL),
(29, 'Dr. MD Akram Hossain', '', 1727104949, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-03 06:58:59', NULL, NULL),
(30, 'MD Abdul Mannan Bhuiyan', '', 1673913832, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-04 15:19:40', NULL, NULL),
(31, 'Mohammad Lutful Hassan', 'mohammadlutfulhassan@gmail.com', 1711004845, '55f0fb710e2c0a42371f57b167619ea5', 2, '2020-10-06 08:05:33', NULL, NULL),
(32, 'Sofiya Begum', '', 1720350163, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-06 14:54:15', NULL, NULL),
(33, 'Rayhan Mujahid', 'rayhanewufba@gmail.com', 1303764510, '45252b7e36e7839a6d0efefe58c7630f', 3, '2020-10-07 11:35:11', NULL, NULL),
(34, 'Mahbubur Rahman', 'marshaexim@gmail.com', 1552351009, '594436fd5c11cce6739d1d97fc28c741', 2, '2020-10-10 12:32:13', NULL, NULL),
(35, 'Suman Chowdhury ', 'sumonchy33@gmail.com', 1712672234, '12daec37c3a66ff88a64e96f25d754df', 2, '2020-10-11 14:37:01', NULL, NULL),
(36, 'Rack Tonmay', '', 1760290155, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-20 11:03:22', NULL, NULL),
(37, 'A.T.M SHAMIM KABIR', 'kabir2055@gmail.com', 1715238657, '1ccbcb8ea777427346ec2470045bac84', 2, '2020-10-21 04:05:41', NULL, NULL),
(38, 'Syed Tawhid Hossain', '', 1713304850, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-22 05:57:22', NULL, NULL),
(39, 'E-Tolet (Agent)', '', 1787168676, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-22 14:40:37', '', NULL),
(40, 'A. B. M. Anwarul Islam', 'ofclansbd01@gmail.com', 1715488996, '8f724ee5a0678068dc398456ab01d19c', 2, '2020-10-26 06:32:57', 'I am a service holder. Simple and humble person.', NULL),
(41, 'mishu', 'mishumishu5758@gmail.com', 1719118554, 'e3041694414aa999ad726d1767ad8335', 3, '2020-10-27 12:39:59', '', NULL),
(42, 'Ibrahim Afroze', '', 1947434511, '97ac1f02cf66a1b19e92b3b8012220cc', 2, '2020-10-28 10:14:46', NULL, NULL),
(43, 'Anik Rezaul', 'anikdastar@gmail.com', 1711160143, 'b2acae3293a96afbda8e1c66722ee1c0', 2, '2020-10-30 04:56:38', NULL, NULL),
(44, 'Nusrat Chowdhury', '', 1676767735, 'fecfd595eef756411184224e57adedc5', 3, '2020-11-11 11:26:14', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblconfirmusers`
--
ALTER TABLE `tblconfirmusers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnid`
--
ALTER TABLE `tblnid`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblotp`
--
ALTER TABLE `tblotp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproperty`
--
ALTER TABLE `tblproperty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tblconfirmusers`
--
ALTER TABLE `tblconfirmusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblnid`
--
ALTER TABLE `tblnid`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblotp`
--
ALTER TABLE `tblotp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblproperty`
--
ALTER TABLE `tblproperty`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
