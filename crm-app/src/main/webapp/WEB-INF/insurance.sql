-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 09:55 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(5) NOT NULL AUTO_INCREMENT,
  `street` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `AgentID` int(5) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  PRIMARY KEY (`AgentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`AgentID`, `FirstName`, `LastName`, `Username`, `Password`) VALUES
(100, 'luxolo', 'mpsiane', 'lux', 'lux'),
(101, 'richard', 'madikane', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `autocoverage`
--

CREATE TABLE IF NOT EXISTS `autocoverage` (
  `auto_coverageId` int(5) NOT NULL AUTO_INCREMENT,
  `Collision` varchar(100) DEFAULT NULL,
  `Physical_Damage` varchar(100) DEFAULT NULL,
  `Personal_Injury` varchar(100) DEFAULT NULL,
  `Liability` varchar(100) DEFAULT NULL,
  `Comprehensive` varchar(100) DEFAULT NULL,
  `id_number` varchar(50) NOT NULL,
  PRIMARY KEY (`auto_coverageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `autopolicy`
--

CREATE TABLE IF NOT EXISTS `autopolicy` (
  `autoPolicyId` int(5) NOT NULL AUTO_INCREMENT,
  `VehicleModel` varchar(100) NOT NULL,
  `VehicleReg` varchar(100) NOT NULL,
  `VehicleMake` varchar(100) NOT NULL,
  `ManufactureDate` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `vehicleType` varchar(50) NOT NULL,
  `periodRequired` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  PRIMARY KEY (`autoPolicyId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `coverage`
--

CREATE TABLE IF NOT EXISTS `coverage` (
  `coverageId` int(5) NOT NULL,
  `coverageName` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  PRIMARY KEY (`coverageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coveragerequirment`
--

CREATE TABLE IF NOT EXISTS `coveragerequirment` (
  `enquiryId` int(5) NOT NULL,
  `coverageId` int(5) NOT NULL,
  KEY `enquiryId` (`enquiryId`),
  KEY `enquiryId_2` (`enquiryId`),
  KEY `coverageId` (`coverageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `custId` int(5) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `Contact_No` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

-- --------------------------------------------------------

--
-- Table structure for table `insuranceenquiry`
--

CREATE TABLE IF NOT EXISTS `insuranceenquiry` (
  `EnquiryId` int(5) NOT NULL AUTO_INCREMENT,
  `EnquiryDate` varchar(30) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `agentcode` varchar(50) NOT NULL,
  PRIMARY KEY (`EnquiryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ProductId` int(5) NOT NULL AUTO_INCREMENT,
  `custId` int(5) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `ProductTypeId` int(5) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Active` varchar(5) NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `ProductTypeId` (`ProductTypeId`),
  KEY `customerId` (`custId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE IF NOT EXISTS `producttype` (
  `ProductTypeId` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`ProductTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `propertycoverage`
--

CREATE TABLE IF NOT EXISTS `propertycoverage` (
  `propertycoverageId` int(5) NOT NULL AUTO_INCREMENT,
  `dwelling` varchar(50) DEFAULT NULL,
  `personalProperty` varchar(50) DEFAULT NULL,
  `liabiltyProtection` varchar(50) DEFAULT NULL,
  `guestMedicalProtection` varchar(50) DEFAULT NULL,
  `additionalProtection` varchar(50) DEFAULT NULL,
  `id_number` varchar(50) NOT NULL,
  PRIMARY KEY (`propertycoverageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `propertypolicy`
--

CREATE TABLE IF NOT EXISTS `propertypolicy` (
  `propertypolicyid` int(5) NOT NULL AUTO_INCREMENT,
  `Cost` int(10) NOT NULL,
  `NaturalDisaster` varchar(100) NOT NULL,
  `FireProtection` varchar(100) NOT NULL,
  `BuildingContent` varchar(100) NOT NULL,
  `SecurityAlarmSystem` varchar(100) NOT NULL,
  `constructionType` varchar(100) NOT NULL,
  `burglarBars` varchar(50) NOT NULL,
  `propertyAddress` varchar(100) NOT NULL,
  `period` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  PRIMARY KEY (`propertypolicyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coveragerequirment`
--
ALTER TABLE `coveragerequirment`
  ADD CONSTRAINT `coveragerequirment_ibfk_1` FOREIGN KEY (`enquiryId`) REFERENCES `insuranceenquiry` (`EnquiryId`),
  ADD CONSTRAINT `coveragerequirment_ibfk_2` FOREIGN KEY (`coverageId`) REFERENCES `coverage` (`coverageId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ProductTypeId`) REFERENCES `producttype` (`ProductTypeId`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
