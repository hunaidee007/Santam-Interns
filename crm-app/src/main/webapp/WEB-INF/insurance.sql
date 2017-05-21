-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2017 at 02:18 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(5) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street`, `city`, `state`, `zip`, `id_number`) VALUES
(2, '', 'q', 'q', 'q', '911012'),
(3, ' ASFAS\r\n							', 'Cape Jozzi', 'SAA', '34535', '98378234'),
(4, '5th Street \r\n							', 'Detroit', 'Western', '8001', '87998821'),
(17, ' \r\n							', '', '', '', ''),
(18, ' \r\n							', '', '', '', ''),
(19, ' \r\n							', '', '', '', ''),
(20, ' \r\n							', '', '', '', ''),
(21, ' \r\n							', '', '', '', ''),
(22, ' \r\n							', '', '', '', ''),
(23, ' \r\n							', '', '', '', ''),
(24, ' \r\n							', '', '', '', ''),
(25, ' \r\n							', '', '', '', ''),
(26, ' \r\n							', '', '', '', ''),
(27, ' \r\n							', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `AgentID` int(5) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`AgentID`, `FirstName`, `LastName`, `Username`, `Password`) VALUES
(100, 'luxolo', 'mpsiane', 'lux', 'lux');

-- --------------------------------------------------------

--
-- Table structure for table `autocoverage`
--

CREATE TABLE `autocoverage` (
  `auto_coverageId` int(5) NOT NULL,
  `Collision` varchar(100) NOT NULL,
  `Physical_Damage` varchar(100) NOT NULL,
  `Personal_Injury` varchar(100) NOT NULL,
  `Liability` varchar(100) NOT NULL,
  `Comprehensive` varchar(100) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autopolicy`
--

CREATE TABLE `autopolicy` (
  `autoPolicyId` int(5) NOT NULL,
  `VehicleModel` varchar(100) NOT NULL,
  `VehicleReg` varchar(100) NOT NULL,
  `VehicleMake` varchar(100) NOT NULL,
  `ManufactureDate` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `vehicleType` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coverage`
--

CREATE TABLE `coverage` (
  `coverageId` int(5) NOT NULL,
  `coverageName` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coveragerequirment`
--

CREATE TABLE `coveragerequirment` (
  `enquiryId` int(5) NOT NULL,
  `coverageId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custId` int(5) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `Contact_No` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custId`, `cust_name`, `surname`, `Contact_No`, `Email`, `id_number`, `gender`) VALUES
(105, 'q', 'q', '1111', '111111', '1111', 'qqq'),
(106, 'a', 'a', '0825915433', 'emp@gmail.com', '911012', 'male'),
(107, 'Jujs', 'GG', '0780485335', 'jklh@gm.com', '98378234', 'Female'),
(108, 'eminem', 'eminem', '0825915433', 'eminem123@gmail.com', '87998821', 'Male'),
(121, '', '', '', '', '', ''),
(122, '', '', '', '', '', ''),
(123, '', '', '', '', '', ''),
(124, '', '', '', '', '', ''),
(125, '', '', '', '', '', ''),
(126, '', '', '', '', '', ''),
(127, '', '', '', '', '', ''),
(128, '', '', '', '', '', ''),
(129, '', '', '', '', '', ''),
(130, '', '', '', '', '', ''),
(131, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `insuranceenquiry`
--

CREATE TABLE `insuranceenquiry` (
  `EnquiryId` int(5) NOT NULL,
  `EnquiryDate` varchar(30) NOT NULL,
  `agentId` int(5) NOT NULL,
  `customerId` int(5) NOT NULL,
  `productId` int(5) NOT NULL,
  `periodRequired` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` int(5) NOT NULL,
  `custId` int(5) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `ProductTypeId` int(5) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Active` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `ProductTypeId` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `propertypolicy`
--

CREATE TABLE `propertypolicy` (
  `propertypolicyid` int(5) NOT NULL,
  `productId` int(5) NOT NULL,
  `Cost` int(10) NOT NULL,
  `NaturalDisaster` varchar(100) NOT NULL,
  `FireProtection` varchar(100) NOT NULL,
  `BuildingContent` varchar(100) NOT NULL,
  `SecurityAlarmSystem` varchar(100) NOT NULL,
  `constructionType` varchar(100) NOT NULL,
  `burglarBars` varchar(10) NOT NULL,
  `propertyAddress` varchar(100) NOT NULL,
  `period` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `firstname`, `lastname`) VALUES
('lindo', 'lindo', 'lindo', 'lindo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`AgentID`);

--
-- Indexes for table `autocoverage`
--
ALTER TABLE `autocoverage`
  ADD PRIMARY KEY (`auto_coverageId`);

--
-- Indexes for table `autopolicy`
--
ALTER TABLE `autopolicy`
  ADD PRIMARY KEY (`autoPolicyId`);

--
-- Indexes for table `coverage`
--
ALTER TABLE `coverage`
  ADD PRIMARY KEY (`coverageId`);

--
-- Indexes for table `coveragerequirment`
--
ALTER TABLE `coveragerequirment`
  ADD KEY `enquiryId` (`enquiryId`),
  ADD KEY `enquiryId_2` (`enquiryId`),
  ADD KEY `coverageId` (`coverageId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custId`);

--
-- Indexes for table `insuranceenquiry`
--
ALTER TABLE `insuranceenquiry`
  ADD PRIMARY KEY (`EnquiryId`),
  ADD KEY `agentId` (`agentId`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `ProductTypeId` (`ProductTypeId`),
  ADD KEY `customerId` (`custId`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`ProductTypeId`);

--
-- Indexes for table `propertypolicy`
--
ALTER TABLE `propertypolicy`
  ADD PRIMARY KEY (`propertypolicyid`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `AgentID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `autocoverage`
--
ALTER TABLE `autocoverage`
  MODIFY `auto_coverageId` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `autopolicy`
--
ALTER TABLE `autopolicy`
  MODIFY `autoPolicyId` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `insuranceenquiry`
--
ALTER TABLE `insuranceenquiry`
  MODIFY `EnquiryId` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `ProductTypeId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `propertypolicy`
--
ALTER TABLE `propertypolicy`
  MODIFY `propertypolicyid` int(5) NOT NULL AUTO_INCREMENT;
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
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ProductTypeId`) REFERENCES `producttype` (`ProductTypeId`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`);

--
-- Constraints for table `propertypolicy`
--
ALTER TABLE `propertypolicy`
  ADD CONSTRAINT `propertypolicy_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ProductId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
