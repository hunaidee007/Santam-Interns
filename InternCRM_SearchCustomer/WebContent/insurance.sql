-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 10:54 PM
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
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `AgentID` int(5) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  PRIMARY KEY (`AgentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`AgentID`, `FirstName`, `LastName`, `Username`, `Password`) VALUES
(1, 'Luxolo', 'Mpisane', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `coverage`
--

CREATE TABLE IF NOT EXISTS `coverage` (
  `coverageId` int(5) NOT NULL,
  `productId` int(5) NOT NULL,
  `coverageName` varchar(50) NOT NULL,
  PRIMARY KEY (`coverageId`),
  KEY `productId` (`productId`)
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
  `Address` varchar(200) NOT NULL,
  `Contact_No` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custId`, `cust_name`, `surname`, `Address`, `Contact_No`, `Email`, `id_number`, `gender`) VALUES
(100, 'luxolo', '', 'Khayelitsha', '021 5667-662', 'luxolo@mycput.ac.za', '', ''),
(101, 'xolani', 'delman', ' 52 tygervalley Center\r\n							, Cape Town, Western Cape, 7561', '082598177662', 'xdelman1234@gmail.com', '921883211331', 'Male'),
(102, 'Ntsik', 'Ntsik', ' Road Main\r\n							, Cape Town, Western Cape, 7561', '0785432870', 'ntsik@mysute.com', '921883211331', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `insuranceenquiry`
--

CREATE TABLE IF NOT EXISTS `insuranceenquiry` (
  `EnquiryId` int(5) NOT NULL AUTO_INCREMENT,
  `EnquiryDate` varchar(30) NOT NULL,
  `agentId` int(5) NOT NULL,
  `customerId` int(5) NOT NULL,
  `productId` int(5) NOT NULL,
  `periodRequired` varchar(50) NOT NULL,
  PRIMARY KEY (`EnquiryId`),
  KEY `agentId` (`agentId`),
  KEY `customerId` (`customerId`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `insuranceenquiry`
--

INSERT INTO `insuranceenquiry` (`EnquiryId`, `EnquiryDate`, `agentId`, `customerId`, `productId`, `periodRequired`) VALUES
(123, '10/12/2017', 1, 100, 1, '01/01/2018');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ProductId` int(5) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(30) NOT NULL,
  `ProductTypeId` int(5) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Active` varchar(5) NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `ProductTypeId` (`ProductTypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `ProductName`, `ProductTypeId`, `Description`, `Active`) VALUES
(1, 'VW GTI', 10, 'brand new last number golf 7', 'yes'),
(2, 'electronic gate', 11, 'very expensive electronic gate', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE IF NOT EXISTS `producttype` (
  `ProductTypeId` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`ProductTypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`ProductTypeId`, `name`, `description`) VALUES
(10, 'lindo', 'songezo'),
(11, 'car', '2nd hand Opel Astra 2016');

-- --------------------------------------------------------

--
-- Table structure for table `propertypolicy`
--

CREATE TABLE IF NOT EXISTS `propertypolicy` (
  `productId` int(5) NOT NULL,
  `price` int(11) NOT NULL,
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `firstname`, `lastname`) VALUES
('luxoloM', '1234', 'luxolo', 'mpisane');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coverage`
--
ALTER TABLE `coverage`
  ADD CONSTRAINT `coverage_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`);

--
-- Constraints for table `coveragerequirment`
--
ALTER TABLE `coveragerequirment`
  ADD CONSTRAINT `coveragerequirment_ibfk_1` FOREIGN KEY (`enquiryId`) REFERENCES `insuranceenquiry` (`EnquiryId`),
  ADD CONSTRAINT `coveragerequirment_ibfk_2` FOREIGN KEY (`coverageId`) REFERENCES `coverage` (`coverageId`);

--
-- Constraints for table `insuranceenquiry`
--
ALTER TABLE `insuranceenquiry`
  ADD CONSTRAINT `insuranceenquiry_ibfk_1` FOREIGN KEY (`agentId`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `insuranceenquiry_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`custId`),
  ADD CONSTRAINT `insuranceenquiry_ibfk_3` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ProductTypeId`) REFERENCES `producttype` (`ProductTypeId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
