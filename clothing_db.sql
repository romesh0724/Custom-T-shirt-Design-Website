-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 03:03 PM
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
-- Database: `clothing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(30) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_code`, `name`, `description`, `size`, `price`, `date_created`) VALUES
(3, '383701405906', 'saman liyanage', 'Custom Design', 'XS', 5460, '2024-02-24 06:37:20'),
(4, '375056595331', 'shamila perera', '3D Design ', 'S', 4590, '2024-02-24 06:37:40'),
(5, '679270165077', 'nihal kumarasiri', '3D Design and Custom Design', 'XS', 6550, '2024-02-24 06:38:10'),
(6, '543831275176', 'samanthi dasanayake', 'Custom Design', 'L', 7550, '2024-02-24 06:38:36'),
(7, '792848392156', 'kamal shantha', 'Custom Design', 'XL', 8750, '2024-02-24 06:39:25'),
(8, '470767108877', 'danuwan disanayake', 'Custom Design', 'XXL', 9550, '2024-02-24 06:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `receiving`
--

CREATE TABLE `receiving` (
  `id` int(30) NOT NULL,
  `supplier_id` int(30) NOT NULL,
  `description` text NOT NULL,
  `total_cost` float NOT NULL,
  `inventory_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receiving`
--

INSERT INTO `receiving` (`id`, `supplier_id`, `description`, `total_cost`, `inventory_ids`, `date_created`) VALUES
(1, 1, '', 215000, '7,9', '2020-11-04 14:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `total_amount` float NOT NULL,
  `amount_tendered` int(30) NOT NULL,
  `inventory_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `total_amount`, `amount_tendered`, `inventory_ids`, `date_created`) VALUES
(14, 2, 17500, 18000, '22', '2024-02-24 06:55:39'),
(15, 2, 28650, 29000, '23', '2024-02-24 06:56:21'),
(16, 2, 26200, 27000, '24', '2024-02-24 06:56:56'),
(17, 2, 5460, 6000, '25', '2024-02-24 06:57:28'),
(18, 2, 30200, 30200, '26', '2024-02-24 06:57:58'),
(19, 2, 9180, 9200, '27', '2024-02-24 06:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1= in,2=out',
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `item_id`, `type`, `qty`, `price`, `date_created`) VALUES
(7, 2, 1, 500, 250, '2020-11-04 15:55:03'),
(9, 1, 1, 500, 180, '2020-11-04 15:55:29'),
(22, 7, 2, 2, 8750, '2024-02-24 06:55:39'),
(23, 8, 2, 3, 9550, '2024-02-24 06:56:21'),
(24, 5, 2, 4, 6550, '2024-02-24 06:56:56'),
(25, 3, 2, 1, 5460, '2024-02-24 06:57:28'),
(26, 6, 2, 4, 7550, '2024-02-24 06:57:58'),
(27, 4, 2, 2, 4590, '2024-02-24 06:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `contact`, `date_created`) VALUES
(5, 'romesh wedasinghe', '74/6b thaladuwa road negombo', '0770617372', '2024-02-24 06:35:57'),
(6, 'samanthi dasanayake', '296 Main St, Negombo 11500', '0768316529', '2024-02-24 06:36:10'),
(7, 'shamila perera', 'Unity Plaza, 20, Colombo - Galle Main Rd, Colombo 00400', '0778428286', '2024-02-24 06:36:18'),
(8, 'nihal kumarasiri', '498 Galle Rd, Colombo 00300', '0760744086', '2024-02-24 06:36:25'),
(9, 'saman liyanage', '25 Rheinland Pl, Colombo 00300', '0772352135', '2024-02-24 06:36:37'),
(10, 'dasun perara', '103 Srimath Anagarika Dharmapala Mawatha, Colombo 00700', '0768316529', '2024-02-24 06:45:47'),
(11, 'sumith pranandu', '408 Main St, Negombo 11500', '0760782984', '2024-02-24 06:47:04'),
(12, 'dushantha sadaruwan', 'No. 03 Matara-Hakmana Rd, Matara 81000', '0312239200', '2024-02-24 06:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Clothing Store Management System', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(2, 'romesh', 'romesh', '202cb962ac59075b964b07152d234b70', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receiving`
--
ALTER TABLE `receiving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `receiving`
--
ALTER TABLE `receiving`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
