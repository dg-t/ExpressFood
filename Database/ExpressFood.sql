-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2019 at 11:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ExpressFood`
--

-- --------------------------------------------------------

--
-- Table structure for table `Biker`
--

CREATE TABLE `Biker` (
  `Biker_Id` int(11) NOT NULL,
  `FirstName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Biker`
--

INSERT INTO `Biker` (`Biker_Id`, `FirstName`, `LastName`, `Phone`) VALUES
(1, 'Rachel', 'Green', '611340450'),
(2, 'Chandler', 'Tribiani', '611430789'),
(3, 'Charles', 'Bing', '644329005'),
(4, 'Chelsea', 'Harper', '622314572');

-- --------------------------------------------------------

--
-- Table structure for table `BikerLocation`
--

CREATE TABLE `BikerLocation` (
  `Biker_Id` int(11) NOT NULL,
  `Longitude` float NOT NULL,
  `Latitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BikerLocation`
--

INSERT INTO `BikerLocation` (`Biker_Id`, `Longitude`, `Latitude`) VALUES
(1, 41.3918, 2.15542),
(2, 41.3918, 2.15542),
(3, 41.3918, 2.15542),
(4, 41.3918, 2.15542);

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `Client_Id` int(11) NOT NULL,
  `FirstName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`Client_Id`, `FirstName`, `LastName`, `Phone`) VALUES
(1, 'Thomas', 'Walker', '633457155'),
(2, 'Mai', 'Chan', '633455230'),
(3, 'Frank', 'Sinatra', '611544320'),
(4, 'Jim', 'Peterson', '633490850'),
(5, 'Nico', 'Summer', '611231890'),
(6, 'Yari', 'Springman', '622340453'),
(7, 'Anisio', 'Wellmann', '644324543'),
(8, 'Marina', 'Carry', '633426654'),
(9, 'Cora', 'Milestone', '622908856'),
(10, 'Gina', 'Artichoke', '613245793'),
(11, 'Eduardo', 'Smartred', '611396557'),
(12, 'Filomena', 'Suarez', '631490886');

-- --------------------------------------------------------

--
-- Table structure for table `ClientAddress`
--

CREATE TABLE `ClientAddress` (
  `ClientAddress_Id` int(11) NOT NULL,
  `Client_Id` int(11) NOT NULL,
  `StreetName` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StreetNumber` int(11) NOT NULL,
  `Floor` int(11) NOT NULL,
  `Door` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostalCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ClientAddress`
--

INSERT INTO `ClientAddress` (`ClientAddress_Id`, `Client_Id`, `StreetName`, `StreetNumber`, `Floor`, `Door`, `PostalCode`) VALUES
(1, 1, 'Travessera de gracia', 45, 3, '4a', 8006),
(2, 2, 'Diagonal', 412, 7, '2b', 8005),
(3, 5, 'Enric Granados', 33, 6, '2', 8002),
(4, 12, 'Balmes', 121, 1, '3', 8002),
(5, 3, 'Corsega', 22, 2, '1a', 8004),
(6, 9, 'Josep Tarradellas', 74, 2, '2b', 8005),
(7, 11, 'Hostafrancs', 35, 3, '2a', 8006),
(8, 4, 'Gran via', 462, 7, '1', 8004),
(9, 7, 'Villaroel', 54, 9, '4', 8006),
(10, 8, 'Muntaner', 79, 4, '2a', 8005),
(11, 10, 'Gran via', 515, 2, '4a', 8004),
(12, 6, 'Diagonal', 244, 8, '4c', 8008);

-- --------------------------------------------------------

--
-- Table structure for table `DailyMenuItem`
--

CREATE TABLE `DailyMenuItem` (
  `DailyMenu_Id` int(11) NOT NULL,
  `Dish_Id` int(11) NOT NULL,
  `QuantityStock` int(11) NOT NULL,
  `Price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `DailyMenuItem`
--

INSERT INTO `DailyMenuItem` (`DailyMenu_Id`, `Dish_Id`, `QuantityStock`, `Price`, `Date`) VALUES
(1, 1, 55, '$12', '2019-04-29'),
(2, 2, 45, '$5', '2019-04-29'),
(3, 3, 45, '$11', '2019-04-30'),
(4, 4, 33, '$4', '2019-04-30'),
(5, 5, 60, '$11', '2019-05-01'),
(6, 6, 52, '$4', '2019-05-01'),
(7, 7, 58, '$9', '2019-05-02'),
(8, 8, 49, '$6', '2019-05-02'),
(9, 15, 60, '$10', '2019-05-06'),
(10, 16, 58, '$5', '2019-05-06'),
(11, 19, 44, '$11', '2019-05-08'),
(12, 20, 39, '$4', '2019-05-08'),
(13, 9, 72, '$8', '2019-05-03'),
(14, 10, 65, '$6', '2019-05-03'),
(15, 13, 57, '$10', '2019-05-05'),
(16, 14, 33, '$5', '2019-05-05'),
(17, 21, 45, '$11', '2019-05-09'),
(18, 22, 42, '$4', '2019-05-09'),
(19, 11, 62, '$9', '2019-05-04'),
(20, 12, 56, '$6', '2019-05-04'),
(21, 17, 48, '$10', '2019-05-07'),
(22, 18, 36, '$5', '2019-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `Dish`
--

CREATE TABLE `Dish` (
  `Dish_Id` int(11) NOT NULL,
  `DishType` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DishName` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Dish`
--

INSERT INTO `Dish` (`Dish_Id`, `DishType`, `DishName`, `Date`) VALUES
(1, 'Main', 'Pasta Bolognesa', '2019-04-29'),
(2, 'Dessert', 'Tiramisú', '2019-04-29'),
(3, 'Main', 'Pasta carbonara', '2019-04-30'),
(4, 'Dessert', 'Panna cotta', '2019-04-30'),
(5, 'Main', 'Pizza margherita', '2019-05-01'),
(6, 'Dessert', 'Carrot cake', '2019-05-01'),
(7, 'Main', 'Sushi salmon and avocado', '2019-05-02'),
(8, 'Dessert', 'Chocolate pudding', '2019-05-02'),
(9, 'Main', 'Ramen miso', '2019-05-03'),
(10, 'Dessert', 'Mixed fruit', '2019-05-03'),
(11, 'Main', 'Pasta with broccoli', '2019-05-04'),
(12, 'Dessert', 'Chocolate brownie', '2019-05-04'),
(13, 'Main', 'Sushi with tuna', '2019-05-05'),
(14, 'Dessert', 'Green tea tiramisú', '2019-05-05'),
(15, 'Main', 'Risotto funghi', '2019-05-06'),
(16, 'Dessert', 'Caramel cake', '2019-05-06'),
(17, 'Main', 'Pasta with mixed vegetables', '2019-05-07'),
(18, 'Dessert', 'Pistachio cake', '2019-05-07'),
(19, 'Main', 'Pizza marinara', '2019-05-08'),
(20, 'Dessert', 'Vanilla and strawberry cake', '2019-05-08'),
(21, 'Main', 'Sushi vegetarian', '2019-05-09'),
(22, 'Dessert', 'Chocolate mousse', '2019-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `Order_Id` int(11) NOT NULL,
  `Client_Id` int(11) NOT NULL,
  `OrderStatus` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`Order_Id`, `Client_Id`, `OrderStatus`, `DateTime`) VALUES
(1, 1, 'Delivered', '2019-04-29 14:17:12'),
(2, 2, 'Delivered', '2019-04-29 16:38:08'),
(3, 4, 'Delivered', '2019-04-30 14:14:02'),
(4, 5, 'Delivered', '2019-05-01 15:38:05'),
(5, 7, 'Delivered', '2019-05-02 14:07:12'),
(6, 6, 'Delivered', '2019-05-03 15:35:48'),
(7, 1, 'Delivered', '2019-05-04 14:27:52'),
(8, 12, 'Delivered', '2019-05-05 13:34:38'),
(9, 11, 'Delivered', '2019-05-06 14:15:11'),
(10, 8, 'Delivered', '2019-05-06 15:22:04'),
(11, 10, 'Delivered', '2019-05-07 13:19:45'),
(12, 2, 'Delivered', '2019-05-08 16:32:33'),
(13, 9, 'Delivered', '2019-05-09 13:22:12'),
(14, 2, 'In progress', '2019-05-09 15:32:08'),
(15, 3, 'In progress', '2019-05-09 15:42:15'),
(16, 11, 'Accepted', '2019-05-09 15:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetail`
--

CREATE TABLE `OrderDetail` (
  `OrderDetail_Id` int(11) NOT NULL,
  `Order_Id` int(11) NOT NULL,
  `DailyMenu_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalPrice` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `OrderDetail`
--

INSERT INTO `OrderDetail` (`OrderDetail_Id`, `Order_Id`, `DailyMenu_Id`, `Quantity`, `TotalPrice`) VALUES
(1, 1, 1, 2, '$24'),
(2, 1, 2, 1, '$5'),
(3, 2, 3, 1, '$11'),
(4, 3, 3, 1, '$11'),
(5, 4, 5, 3, '$33'),
(6, 5, 8, 1, '$6'),
(7, 6, 13, 2, '$16'),
(8, 7, 19, 2, '$18'),
(9, 8, 16, 2, '$10'),
(10, 9, 9, 1, '$10'),
(11, 10, 10, 2, '$10'),
(12, 11, 21, 1, '$10'),
(13, 12, 12, 1, '$4'),
(14, 13, 17, 2, '$22'),
(15, 14, 17, 1, '$11'),
(16, 15, 18, 2, '$8'),
(17, 16, 17, 1, '$11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Biker`
--
ALTER TABLE `Biker`
  ADD PRIMARY KEY (`Biker_Id`);

--
-- Indexes for table `BikerLocation`
--
ALTER TABLE `BikerLocation`
  ADD PRIMARY KEY (`Biker_Id`),
  ADD KEY `Biker_Id` (`Biker_Id`);

--
-- Indexes for table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`Client_Id`),
  ADD KEY `FirstName` (`FirstName`);

--
-- Indexes for table `ClientAddress`
--
ALTER TABLE `ClientAddress`
  ADD PRIMARY KEY (`ClientAddress_Id`),
  ADD KEY `Client_Id` (`Client_Id`);

--
-- Indexes for table `DailyMenuItem`
--
ALTER TABLE `DailyMenuItem`
  ADD PRIMARY KEY (`DailyMenu_Id`),
  ADD KEY `Dish_Id` (`Dish_Id`);

--
-- Indexes for table `Dish`
--
ALTER TABLE `Dish`
  ADD PRIMARY KEY (`Dish_Id`),
  ADD KEY `DishName` (`DishName`);

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Client_Id` (`Client_Id`);

--
-- Indexes for table `OrderDetail`
--
ALTER TABLE `OrderDetail`
  ADD PRIMARY KEY (`OrderDetail_Id`),
  ADD KEY `DailyMenu_Id` (`DailyMenu_Id`),
  ADD KEY `Order_Id` (`Order_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Biker`
--
ALTER TABLE `Biker`
  MODIFY `Biker_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `Client_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ClientAddress`
--
ALTER TABLE `ClientAddress`
  MODIFY `ClientAddress_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `DailyMenuItem`
--
ALTER TABLE `DailyMenuItem`
  MODIFY `DailyMenu_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Dish`
--
ALTER TABLE `Dish`
  MODIFY `Dish_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BikerLocation`
--
ALTER TABLE `BikerLocation`
  ADD CONSTRAINT `BikerLocation_ibfk_2` FOREIGN KEY (`Biker_Id`) REFERENCES `Biker` (`Biker_Id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `BikerLocation_ibfk_3` FOREIGN KEY (`Biker_Id`) REFERENCES `Biker` (`Biker_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `ClientAddress`
--
ALTER TABLE `ClientAddress`
  ADD CONSTRAINT `ClientAddress_ibfk_1` FOREIGN KEY (`Client_Id`) REFERENCES `Client` (`Client_Id`) ON UPDATE CASCADE;

--
-- Constraints for table `DailyMenuItem`
--
ALTER TABLE `DailyMenuItem`
  ADD CONSTRAINT `DailyMenuItem_ibfk_1` FOREIGN KEY (`Dish_Id`) REFERENCES `Dish` (`Dish_Id`);

--
-- Constraints for table `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `Order_ibfk_1` FOREIGN KEY (`Client_Id`) REFERENCES `Client` (`Client_Id`);

--
-- Constraints for table `OrderDetail`
--
ALTER TABLE `OrderDetail`
  ADD CONSTRAINT `OrderDetail_ibfk_1` FOREIGN KEY (`DailyMenu_Id`) REFERENCES `DailyMenuItem` (`DailyMenu_Id`),
  ADD CONSTRAINT `OrderDetail_ibfk_2` FOREIGN KEY (`Order_Id`) REFERENCES `Order` (`Order_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
