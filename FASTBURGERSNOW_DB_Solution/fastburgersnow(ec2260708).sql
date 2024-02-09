-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 05:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastburgersnow`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(20) NOT NULL,
  `customer_surname` varchar(100) NOT NULL,
  `customer_firstname` varchar(100) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_postcode` varchar(100) NOT NULL,
  `customer_suburb` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_allergy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_surname`, `customer_firstname`, `customer_address`, `customer_postcode`, `customer_suburb`, `customer_email`, `customer_mobile`, `customer_allergy`) VALUES
(1, 'Doe', 'John', '123 Main St', '12345', 'North Suburb', 'john@example.com', '+1-123-456-7890', 'Peanuts'),
(2, 'Smith', 'Alice', '456 Elm Rd', '56789', 'South Suburb', 'alice@example.com', '+1-987-654-3210', 'Shellfish'),
(3, 'Johnson', 'Bob', '789 Oak Ave', '98765', 'East Suburb', 'bob@example.com', '+1-555-123-4567', NULL),
(4, 'Williams', 'Emma', '101 Pine Ln', '54321', 'West Suburb', 'emma@example.com', '+1-333-888-9999', 'Dairy'),
(5, 'Brown', 'Michael', '222 Cedar St', '43210', 'City Suburb', 'michael@example.com', '+1-777-333-2222', 'Gluten'),
(6, 'Lee', 'Olivia', '333 Redwood Rd', '87654', 'Uptown Suburb', 'olivia@example.com', '+1-444-777-2222', 'Soy'),
(7, 'Jones', 'William', '444 Birch Ave', '23456', 'Downtown Suburb', 'william@example.com', '+1-123-987-4567', NULL),
(8, 'Wilson', 'Sophia', '555 Spruce Dr', '76543', 'Downtown Suburb', 'sophia@example.com', '+1-999-222-3333', NULL),
(9, 'Taylor', 'Liam', '666 Maple Ct', '67890', 'City Suburb', 'liam@example.com', '+1-555-666-9999', 'Eggs'),
(10, 'Clark', 'Mia', '777 Cedar Rd', '23456', 'North Suburb', 'mia@example.com', '+1-222-555-1111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `staff_id` int(20) NOT NULL,
  `order_item` varchar(100) NOT NULL,
  `order_type` varchar(100) NOT NULL,
  `order_time` time DEFAULT current_timestamp(),
  `order_date` date DEFAULT current_timestamp(),
  `item_no` int(20) NOT NULL,
  `payment_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `staff_id`, `order_item`, `order_type`, `order_time`, `order_date`, `item_no`, `payment_id`) VALUES
(1, 1, 1, 'Appetizer', 'Dine-In', '12:30:00', '2023-09-20', 1, 1),
(2, 2, 2, 'Main Course', 'Takeout', '18:45:00', '2023-09-21', 2, 2),
(3, 3, 3, 'Dessert', 'Delivery', '20:15:00', '2023-09-22', 3, 3),
(4, 4, 4, 'Appetizer', 'Dine-In', '19:00:00', '2023-09-23', 4, 4),
(5, 5, 5, 'Main Course', 'Takeout', '14:20:00', '2023-09-24', 5, 5),
(6, 6, 6, 'Dessert', 'Delivery', '21:30:00', '2023-09-25', 6, 6),
(7, 7, 7, 'Appetizer', 'Dine-In', '17:45:00', '2023-09-26', 7, 7),
(8, 8, 8, 'Main Course', 'Takeout', '13:10:00', '2023-09-27', 8, 8),
(9, 9, 9, 'Dessert', 'Delivery', '19:55:00', '2023-09-28', 9, 9),
(10, 10, 10, 'Appetizer', 'Dine-In', '15:40:00', '2023-09-29', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `item_no` int(20) NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `item_quantity` int(20) NOT NULL,
  `menu_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`item_no`, `item_type`, `item_quantity`, `menu_no`) VALUES
(1, 'Appetizer', 2, 101),
(2, 'Main Course', 3, 102),
(3, 'Dessert', 1, 103),
(4, 'Appetizer', 2, 104),
(5, 'Main Course', 4, 105),
(6, 'Dessert', 2, 106),
(7, 'Appetizer', 1, 107),
(8, 'Main Course', 3, 108),
(9, 'Dessert', 2, 109),
(10, 'Appetizer', 3, 110);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `outlet_id` int(20) NOT NULL,
  `outlet_suburb` varchar(100) NOT NULL,
  `outlet_phone` varchar(100) NOT NULL,
  `company_id` int(20) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`outlet_id`, `outlet_suburb`, `outlet_phone`, `company_id`, `company_name`) VALUES
(1, 'Suburb1', '+1-123-456-7890', 1, 'CompanyA'),
(2, 'Suburb2', '+1-987-654-3210', 2, 'CompanyB'),
(3, 'Suburb3', '+1-555-123-4567', 3, 'CompanyC'),
(4, 'Suburb4', '+1-333-888-9999', 4, 'CompanyD'),
(5, 'Suburb5', '+1-777-333-2222', 5, 'CompanyE'),
(6, 'Suburb6', '+1-444-777-2222', 6, 'CompanyF'),
(7, 'Suburb7', '+1-123-987-4567', 7, 'CompanyG'),
(8, 'Suburb8', '+1-999-222-3333', 8, 'CompanyH'),
(9, 'Suburb9', '+1-555-666-9999', 9, 'CompanyI'),
(10, 'Suburb10', '+1-222-555-1111', 10, 'CompanyJ');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(20) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `account_no` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `customer_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_amount`, `account_no`, `payment_type`, `customer_id`) VALUES
(1, 25.50, '1234567890', 'Credit Card', 1),
(2, 50.25, '9876543210', 'Debit Card', 2),
(3, 35.75, '5555555555', 'Cash', 3),
(4, 60.00, '3333333333', 'Credit Card', 4),
(5, 42.75, '7777777777', 'Debit Card', 5),
(6, 75.50, '1111111111', 'Cash', 6),
(7, 30.25, '4444444444', 'Credit Card', 7),
(8, 48.75, '9999999999', 'Debit Card', 8),
(9, 20.00, '2222222222', 'Cash', 9),
(10, 55.00, '6666666666', 'Credit Card', 10);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(20) NOT NULL,
  `staff_surname` varchar(100) NOT NULL,
  `staff_firstname` varchar(100) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_mobile` varchar(100) NOT NULL,
  `outlet_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_surname`, `staff_firstname`, `staff_email`, `staff_mobile`, `outlet_id`) VALUES
(1, 'Smith', 'John', 'john.smith@example.com', '+1-123-456-7890', 1),
(2, 'Johnson', 'Alice', 'alice.johnson@example.com', '+1-987-654-3210', 2),
(3, 'Williams', 'Bob', 'bob.williams@example.com', '+1-555-123-4567', 3),
(4, 'Brown', 'Emma', 'emma.brown@example.com', '+1-333-888-9999', 4),
(5, 'Lee', 'Michael', 'michael.lee@example.com', '+1-777-333-2222', 5),
(6, 'Jones', 'Olivia', 'olivia.jones@example.com', '+1-444-777-2222', 6),
(7, 'Wilson', 'William', 'william.wilson@example.com', '+1-123-987-4567', 7),
(8, 'Taylor', 'Sophia', 'sophia.taylor@example.com', '+1-999-222-3333', 8),
(9, 'Clark', 'Liam', 'liam.clark@example.com', '+1-555-666-9999', 9),
(10, 'Anderson', 'Mia', 'mia.anderson@example.com', '+1-222-555-1111', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_customer`
-- (See below for the actual view)
--
CREATE TABLE `view_customer` (
`customer_id` int(20)
,`customer_surname` varchar(100)
,`customer_firstname` varchar(100)
,`customer_address` varchar(100)
,`customer_postcode` varchar(100)
,`customer_suburb` varchar(100)
,`customer_email` varchar(100)
,`customer_mobile` varchar(100)
,`customer_allergy` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_order`
-- (See below for the actual view)
--
CREATE TABLE `view_order` (
`order_id` int(20)
,`customer_id` int(20)
,`staff_id` int(20)
,`order_item` varchar(100)
,`order_type` varchar(100)
,`order_time` time
,`order_date` date
,`item_no` int(20)
,`payment_id` int(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_order_item`
-- (See below for the actual view)
--
CREATE TABLE `view_order_item` (
`item_no` int(20)
,`item_type` varchar(100)
,`item_quantity` int(20)
,`menu_no` int(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_outlet`
-- (See below for the actual view)
--
CREATE TABLE `view_outlet` (
`outlet_id` int(20)
,`outlet_suburb` varchar(100)
,`outlet_phone` varchar(100)
,`company_id` int(20)
,`company_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_payment`
-- (See below for the actual view)
--
CREATE TABLE `view_payment` (
`payment_id` int(20)
,`payment_amount` decimal(10,2)
,`account_no` varchar(20)
,`payment_type` varchar(20)
,`customer_id` int(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_staff`
-- (See below for the actual view)
--
CREATE TABLE `view_staff` (
`staff_id` int(20)
,`staff_surname` varchar(100)
,`staff_firstname` varchar(100)
,`staff_email` varchar(100)
,`staff_mobile` varchar(100)
,`outlet_id` int(20)
);

-- --------------------------------------------------------

--
-- Structure for view `view_customer`
--
DROP TABLE IF EXISTS `view_customer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_customer`  AS SELECT `customer`.`customer_id` AS `customer_id`, `customer`.`customer_surname` AS `customer_surname`, `customer`.`customer_firstname` AS `customer_firstname`, `customer`.`customer_address` AS `customer_address`, `customer`.`customer_postcode` AS `customer_postcode`, `customer`.`customer_suburb` AS `customer_suburb`, `customer`.`customer_email` AS `customer_email`, `customer`.`customer_mobile` AS `customer_mobile`, `customer`.`customer_allergy` AS `customer_allergy` FROM `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `view_order`
--
DROP TABLE IF EXISTS `view_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_order`  AS SELECT `order`.`order_id` AS `order_id`, `order`.`customer_id` AS `customer_id`, `order`.`staff_id` AS `staff_id`, `order`.`order_item` AS `order_item`, `order`.`order_type` AS `order_type`, `order`.`order_time` AS `order_time`, `order`.`order_date` AS `order_date`, `order`.`item_no` AS `item_no`, `order`.`payment_id` AS `payment_id` FROM `order` ;

-- --------------------------------------------------------

--
-- Structure for view `view_order_item`
--
DROP TABLE IF EXISTS `view_order_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_order_item`  AS SELECT `order_item`.`item_no` AS `item_no`, `order_item`.`item_type` AS `item_type`, `order_item`.`item_quantity` AS `item_quantity`, `order_item`.`menu_no` AS `menu_no` FROM `order_item` ;

-- --------------------------------------------------------

--
-- Structure for view `view_outlet`
--
DROP TABLE IF EXISTS `view_outlet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_outlet`  AS SELECT `outlet`.`outlet_id` AS `outlet_id`, `outlet`.`outlet_suburb` AS `outlet_suburb`, `outlet`.`outlet_phone` AS `outlet_phone`, `outlet`.`company_id` AS `company_id`, `outlet`.`company_name` AS `company_name` FROM `outlet` ;

-- --------------------------------------------------------

--
-- Structure for view `view_payment`
--
DROP TABLE IF EXISTS `view_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_payment`  AS SELECT `payment`.`payment_id` AS `payment_id`, `payment`.`payment_amount` AS `payment_amount`, `payment`.`account_no` AS `account_no`, `payment`.`payment_type` AS `payment_type`, `payment`.`customer_id` AS `customer_id` FROM `payment` ;

-- --------------------------------------------------------

--
-- Structure for view `view_staff`
--
DROP TABLE IF EXISTS `view_staff`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_staff`  AS SELECT `staff`.`staff_id` AS `staff_id`, `staff`.`staff_surname` AS `staff_surname`, `staff`.`staff_firstname` AS `staff_firstname`, `staff`.`staff_email` AS `staff_email`, `staff`.`staff_mobile` AS `staff_mobile`, `staff`.`outlet_id` AS `outlet_id` FROM `staff` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `item_no` (`item_no`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`outlet_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `order` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`item_no`) REFERENCES `order` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`outlet_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
