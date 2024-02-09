-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 09:15 PM
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
-- Database: `shopping_list_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `item_desc` varchar(200) NOT NULL DEFAULT 'NOT NULL',
  `item_img` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `item_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_desc`, `item_img`, `item_price`) VALUES
(1, 'Sweater', 'Warm woolen sweater for cold weather', 'sweater.jpg', 39.99),
(2, 'Jeans', 'Classic blue jeans, comfortable fit', 'jeans.jpg', 49.99),
(3, 'T-Shirt', 'Cotton t-shirt in various colors', 'tshirt.jpg', 19.99),
(4, 'Jacket', 'Stylish leather jacket for all seasons', 'jacket.jpg', 79.99),
(5, 'Dress', 'Elegant evening dress for special occasions', 'dress.jpg', 69.99),
(6, 'Shoes', 'High-quality leather shoes, perfect for any outfit', 'shoes.jpg', 59.99),
(7, 'Hat', 'Trendy hat to complete your look', 'hat.jpg', 14.99),
(8, 'Shorts', 'Casual shorts for a relaxed day out', 'shorts.jpg', 29.99),
(9, 'Blouse', 'Silk blouse with a delicate floral pattern', 'blouse.jpg', 44.99),
(10, 'Socks', 'Pack of comfortable socks in various colors', 'socks.jpg', 9.99);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL,
  `order_date` datetime NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `payment_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `item_id`, `order_date`, `quantity`, `total`, `payment_id`) VALUES
(11, 1, 1, '2023-10-12 19:38:55', 2, 19.99, 1),
(12, 2, 2, '2023-10-12 19:38:55', 1, 9.99, 2),
(13, 3, 3, '2023-10-12 19:38:55', 3, 29.99, 3),
(14, 4, 4, '2023-10-12 19:38:55', 1, 9.99, 4),
(15, 5, 5, '2023-10-12 19:38:55', 2, 19.99, 5),
(16, 6, 6, '2023-10-12 19:38:55', 1, 9.99, 6),
(17, 7, 7, '2023-10-12 19:38:55', 3, 29.99, 7),
(18, 8, 8, '2023-10-12 19:38:55', 1, 9.99, 8),
(19, 9, 9, '2023-10-12 19:38:55', 2, 19.99, 9),
(20, 10, 10, '2023-10-12 19:38:55', 1, 9.99, 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(20) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `account_no` varchar(20) NOT NULL DEFAULT 'NOT NULL',
  `bsb_no` varchar(20) NOT NULL DEFAULT 'NOT NULL',
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_amount`, `account_no`, `bsb_no`, `user_id`) VALUES
(1, 25.99, '12345678', '123-456', 1),
(2, 49.99, '98765432', '987-654', 2),
(3, 10.00, '55555555', '555-555', 3),
(4, 35.50, '11112222', '111-222', 4),
(5, 99.99, '77777777', '777-777', 5),
(6, 75.25, '88888888', '888-888', 6),
(7, 5.99, '99990000', '999-900', 7),
(8, 60.75, '12341234', '123-434', 8),
(9, 32.45, '56785678', '567-678', 9),
(10, 15.00, '22222222', '222-222', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `last_name` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `email` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `pass_word` varchar(255) NOT NULL DEFAULT 'NOT NULL',
  `reg_date` datetime NOT NULL,
  `payment_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `pass_word`, `reg_date`, `payment_id`) VALUES
(1, 'Ailig', 'MacLeòid', 'ailig@example.com', 'password1', '2023-10-12 19:26:14', 1),
(2, 'Màiri', 'Nicolson', 'màiri@example.com', 'password2', '2023-10-12 19:26:14', 2),
(3, 'Seònaid', 'MacGillEathain', 'seònaid@example.com', 'password3', '2023-10-12 19:26:14', 3),
(4, 'Iain', 'MacUilleim', 'iain@example.com', 'password4', '2023-10-12 19:26:14', 4),
(5, 'Eibhlin', 'MacLeòid', 'eibhlin@example.com', 'password5', '2023-10-12 19:26:14', 5),
(6, 'Mìcheal', 'Dàibhidh', 'mìcheal@example.com', 'password6', '2023-10-12 19:26:14', 6),
(7, 'Eimile', 'MhicGillFhionnlaigh', 'eimile@example.com', 'password7', '2023-10-12 19:26:14', 7),
(8, 'Daibhidh', 'MacIomhair', 'daibhidh@example.com', 'password8', '2023-10-12 19:26:14', 8),
(9, 'Oighrig', 'MacGhobhainn', 'oighrig@example.com', 'password9', '2023-10-12 19:26:14', 9),
(10, 'Domhnall', 'MacAonghais', 'domhnall@example.com', 'password10', '2023-10-12 19:26:14', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_item`
-- (See below for the actual view)
--
CREATE TABLE `view_item` (
`item_id` int(20)
,`item_name` varchar(50)
,`item_desc` varchar(200)
,`item_img` varchar(100)
,`item_price` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_orders`
-- (See below for the actual view)
--
CREATE TABLE `view_orders` (
`order_id` int(20)
,`user_id` int(20)
,`item_id` int(20)
,`order_date` datetime
,`quantity` int(10)
,`total` decimal(10,2)
,`payment_id` int(20)
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
,`bsb_no` varchar(20)
,`user_id` int(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users`
-- (See below for the actual view)
--
CREATE TABLE `view_users` (
`user_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`email` varchar(100)
,`pass_word` varchar(255)
,`reg_date` datetime
,`payment_id` int(20)
);

-- --------------------------------------------------------

--
-- Structure for view `view_item`
--
DROP TABLE IF EXISTS `view_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_item`  AS SELECT `item`.`item_id` AS `item_id`, `item`.`item_name` AS `item_name`, `item`.`item_desc` AS `item_desc`, `item`.`item_img` AS `item_img`, `item`.`item_price` AS `item_price` FROM `item` ;

-- --------------------------------------------------------

--
-- Structure for view `view_orders`
--
DROP TABLE IF EXISTS `view_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_orders`  AS SELECT `orders`.`order_id` AS `order_id`, `orders`.`user_id` AS `user_id`, `orders`.`item_id` AS `item_id`, `orders`.`order_date` AS `order_date`, `orders`.`quantity` AS `quantity`, `orders`.`total` AS `total`, `orders`.`payment_id` AS `payment_id` FROM `orders` ;

-- --------------------------------------------------------

--
-- Structure for view `view_payment`
--
DROP TABLE IF EXISTS `view_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_payment`  AS SELECT `payment`.`payment_id` AS `payment_id`, `payment`.`payment_amount` AS `payment_amount`, `payment`.`account_no` AS `account_no`, `payment`.`bsb_no` AS `bsb_no`, `payment`.`user_id` AS `user_id` FROM `payment` ;

-- --------------------------------------------------------

--
-- Structure for view `view_users`
--
DROP TABLE IF EXISTS `view_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users`  AS SELECT `users`.`user_id` AS `user_id`, `users`.`first_name` AS `first_name`, `users`.`last_name` AS `last_name`, `users`.`email` AS `email`, `users`.`pass_word` AS `pass_word`, `users`.`reg_date` AS `reg_date`, `users`.`payment_id` AS `payment_id` FROM `users` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `payment_id` (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `orders` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
