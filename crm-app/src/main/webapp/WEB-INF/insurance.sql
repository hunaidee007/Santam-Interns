-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2017 at 03:08 PM
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
(27, ' \r\n							', '', '', '', ''),
(28, ' \r\n							', '', '', '', ''),
(29, ' \r\n							', '', '', '', ''),
(30, 'FF123 Town Two \r\n							', 'Cape Town', 'Westaert', '3454', '398328'),
(31, ' a\r\n							', 'a', 'a', 'a', '9121212'),
(32, ' 111\r\n							', '1111', '111', '111', '1111'),
(33, ' dsggg\r\n							', 'gsdg', 'dsgg', '564', '44444'),
(34, ' \r\n			gfhgfghf				', 'ghfghj', 'fghgf', '76', '564'),
(35, ' \r\n					4353		', '345', '3445', '3454', '1111'),
(36, ' \r\n							dfhhfdh', 'dfh', 'fdh', '6566', '565'),
(37, ' \r\n				sdfsdfsdf		d	', 'dsdf', 'sdfdfs', 'dfssdf', '876'),
(38, ' \r\n							', '', '', '', ''),
(39, ' \r\n							dfsfd', 'sdfsdfsdf', 'fdssf', '4554', '345'),
(40, ' gdggd\r\n							', 'gdg', 'dgg', 'gdgd', '923456'),
(41, ' \r\n							', '', '', '', ''),
(42, ' \r\n							', '', '', '', ''),
(43, ' \r\n							', '', '', '', ''),
(44, ' Testing\r\n							', 'Michigan', 'Detroit', '313', '762883'),
(45, ' MaryLand sandiego 16\r\n							', 'Cape Town', 'Western Cape', '8001', '91101233'),
(46, ' Empty Tactics\r\n							', 'testing', 'testing', '8002', '98811'),
(47, ' 5 Mpumalanga kuyasa\r\n							', 'Mbombhela', 'Mpumalanga', '2536', '9312108882'),
(48, ' Langa\r\n							', 'Cape Town', 'Western Cape', '9001', '9312108882'),
(49, ' 10 Newlands street\r\n							', 'Newlands', 'Western Cape', '8001', '621014100932'),
(50, ' 106 Central Park\r\n							', 'New York', 'Bronx', '313', '8012101489202'),
(51, ' ewew\r\n							', 'wew', 'wew', 'wew', '1232'),
(52, ' qwewqe\r\n							', 'qwewqe', 'qwewq', '222', '1212'),
(53, '2321312', '23123', '23123', '213213', '2132131'),
(54, ' \r\n							sfafsa', 'fsafas', 'fsfsa', 'fsafas', '9878323'),
(55, ' \r\n							xdv', 'vxv', 'vcxvx', 'vcxv', '4545');

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
(100, 'luxolo', 'mpsiane', 'lux', 'lux'),
(101, 'richard', 'madikane', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `autocoverage`
--

CREATE TABLE `autocoverage` (
  `auto_coverageId` int(5) NOT NULL,
  `Collision` varchar(100) DEFAULT NULL,
  `Physical_Damage` varchar(100) DEFAULT NULL,
  `Personal_Injury` varchar(100) DEFAULT NULL,
  `Liability` varchar(100) DEFAULT NULL,
  `Comprehensive` varchar(100) DEFAULT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autocoverage`
--

INSERT INTO `autocoverage` (`auto_coverageId`, `Collision`, `Physical_Damage`, `Personal_Injury`, `Liability`, `Comprehensive`, `id_number`) VALUES
(1, 'collision', NULL, NULL, NULL, 'comprehensive', '646'),
(2, 'collision', NULL, NULL, 'liability', NULL, '345'),
(3, 'collision', NULL, 'personalInjury', NULL, NULL, '923456'),
(4, 'collision', NULL, 'personalInjury', NULL, NULL, '98811'),
(5, 'collision', NULL, 'personalInjury', NULL, NULL, '9312108882'),
(6, 'collision', 'physicalDamage', NULL, 'liability', 'comprehensive', '621014100932');

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
  `periodRequired` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autopolicy`
--

INSERT INTO `autopolicy` (`autoPolicyId`, `VehicleModel`, `VehicleReg`, `VehicleMake`, `ManufactureDate`, `Price`, `vehicleType`, `periodRequired`, `id_number`) VALUES
(1, 'ghgh', 'ghgf', 'ghfgf', 'bvbvg', 45, 'twoWheels', 'sixMonths', '646'),
(2, 'gfgf', 'dfgdfg', 'gfgf', 'fd', 3445, 'twoWheels', 'twelveMonths', '345'),
(3, 'bmw', 'fe445', 'bmw', 'fdgd', 5436, 'twoWheels', 'twelveMonths', '923456'),
(4, 'test', 'Ca-183-882', 'test1', '10-12-12', 1000, 'twoWheels', 'sixMonths', '98811'),
(5, 'Golf GTI 7', 'CY-187-22', 'VW Golf 2017 club Sport', '10/12/2017', 10000, 'twoWheels', 'sixMonths', '9312108882'),
(6, 'Polo VolksWagen', 'CY-187-22', 'VW Golf 2017 club Sport', '22/05/2017', 10000, 'fourWheels', 'twelveMonths', '621014100932');

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
(106, 'a', 'a', '0825915433', 'emp@gmail.com', '911012', 'male'),
(107, 'Jujs', 'GG', '0780485335', 'jklh@gm.com', '98378234', 'Female'),
(108, 'eminem', 'eminem', '0825915433', 'eminem123@gmail.com', '87998821', 'Male'),
(138, 'gfh', 'hgfhf', 'ghj', 'ghjh', '564', 'ghjg'),
(140, 'hgfh', 'dfhf', 'gdfg', 'dfg', '565', 'fdgd'),
(141, 'sdfd', 'sdfd', '788778', 'ghggh', '876', 'dfg'),
(142, '', '', '', '', '', ''),
(143, 'fsdfsdf', 'dfsds', '4545', 'gfdg', '345', 'dff'),
(144, 'fsefdsgf', 'gdsgd', '45655', 'fdfd', '923456', 'dgg'),
(148, 'Eminem', 'Eminem', '0842328831', 'eminem@yahoo.com', '762883', 'Male'),
(149, 'Logic', 'Logic', '09772', '2323', '91101233', 'Male'),
(150, 'Testing', 'Testing2', '08255321', 'testing@1234', '98811', 'Female'),
(151, 'lindo', 'mabuya', '07959771232', 'lindomabuya@gmail.com', '9312108882', 'Male'),
(152, 'zintle', 'ngindi', '021333731', 'ngindi@gmail.com', '9312108882', 'Female'),
(153, 'Dales', 'Steyn', '0839133001', 'DaleSteyn@gmail.com', '621014100932', 'Male'),
(154, 'Graeme', 'Smith', '02159133042', 'subzeromadikane@gmail.com', '8012101489202', 'Male'),
(155, 'ew', 'wewe', '1212', '12223', '1232', 'ewqew'),
(156, 'weqw', 'qwew', '1212', '1212', '1212', '2121'),
(157, '2323', '32123', '213213', '123213', '2132131', '123213'),
(158, 'dsfds', 'fsafs', 'fsafsa', 'fsafsa', '9878323', 'fsafsa'),
(159, 'dfsdc', 'vds', '45454', 'dsffd', '4545', 'vcv');

-- --------------------------------------------------------

--
-- Table structure for table `insuranceenquiry`
--

CREATE TABLE `insuranceenquiry` (
  `EnquiryId` int(5) NOT NULL,
  `EnquiryDate` varchar(30) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `agentcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insuranceenquiry`
--

INSERT INTO `insuranceenquiry` (`EnquiryId`, `EnquiryDate`, `id_number`, `agentcode`) VALUES
(1, '22/05/2017', '4545', 'lux');

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
-- Table structure for table `propertycoverage`
--

CREATE TABLE `propertycoverage` (
  `propertycoverageId` int(5) NOT NULL,
  `dwelling` varchar(50) DEFAULT NULL,
  `personalProperty` varchar(50) DEFAULT NULL,
  `liabiltyProtection` varchar(50) DEFAULT NULL,
  `guestMedicalProtection` varchar(50) DEFAULT NULL,
  `additionalProtection` varchar(50) DEFAULT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertycoverage`
--

INSERT INTO `propertycoverage` (`propertycoverageId`, `dwelling`, `personalProperty`, `liabiltyProtection`, `guestMedicalProtection`, `additionalProtection`, `id_number`) VALUES
(1, NULL, 'Dwelling', 'Personal', 'Liability', NULL, '91101233'),
(2, 'Additional cover', 'Dwelling', 'Personal', 'Liability', NULL, '9312108882'),
(3, 'Additional cover', NULL, 'Personal', 'Liability', 'medical', '1232'),
(4, 'Additional cover', 'Dwelling', 'Personal', NULL, 'medical', '2132131');

-- --------------------------------------------------------

--
-- Table structure for table `propertypolicy`
--

CREATE TABLE `propertypolicy` (
  `propertypolicyid` int(5) NOT NULL,
  `Cost` int(10) NOT NULL,
  `NaturalDisaster` varchar(100) NOT NULL,
  `FireProtection` varchar(100) NOT NULL,
  `BuildingContent` varchar(100) NOT NULL,
  `SecurityAlarmSystem` varchar(100) NOT NULL,
  `constructionType` varchar(100) NOT NULL,
  `burglarBars` varchar(50) NOT NULL,
  `propertyAddress` varchar(100) NOT NULL,
  `period` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertypolicy`
--

INSERT INTO `propertypolicy` (`propertypolicyid`, `Cost`, `NaturalDisaster`, `FireProtection`, `BuildingContent`, `SecurityAlarmSystem`, `constructionType`, `burglarBars`, `propertyAddress`, `period`, `id_number`) VALUES
(1, 2000, 'Yes', 'Yes', 'Yes', 'Yes', 'Cement', 'Detroit michigan', 'Yes', '6 Months', '91101233'),
(2, 1000, 'Yes', 'Yes', 'Yes', 'Yes', 'wood', 'Woodbridge', 'Yes', '12 Months', '9312108882'),
(3, 122, 'Yes', 'Yes', 'Yes', 'Yes', '222', '2323', 'No', '6 Months', '1232'),
(4, 0, 'No', 'No', 'No', 'Yes', '00000', 'edsdsadas', 'Yes', '12 Months', '2132131');

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
  ADD PRIMARY KEY (`EnquiryId`);

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
-- Indexes for table `propertycoverage`
--
ALTER TABLE `propertycoverage`
  ADD PRIMARY KEY (`propertycoverageId`);

--
-- Indexes for table `propertypolicy`
--
ALTER TABLE `propertypolicy`
  ADD PRIMARY KEY (`propertypolicyid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `AgentID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `autocoverage`
--
ALTER TABLE `autocoverage`
  MODIFY `auto_coverageId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `autopolicy`
--
ALTER TABLE `autopolicy`
  MODIFY `autoPolicyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `insuranceenquiry`
--
ALTER TABLE `insuranceenquiry`
  MODIFY `EnquiryId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `ProductTypeId` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `propertycoverage`
--
ALTER TABLE `propertycoverage`
  MODIFY `propertycoverageId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `propertypolicy`
--
ALTER TABLE `propertypolicy`
  MODIFY `propertypolicyid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
