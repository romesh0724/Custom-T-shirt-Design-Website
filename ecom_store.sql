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
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us ', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<pre>\r\n\r\nOur Mission\r\n\r\n• To delight the client with the possibilities of print media.\r\n\r\n• To provide the client with the highest quality prints to best meet the clients’ requirement.\r\n\r\n• To ensure the fastest speed of delivery.\r\n\r\n\r\nOur Vision\r\n\r\n• To achieve a monopoly on service in the print industry.\r\n\r\n\r\n</pre>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n<pre>\r\n\r\n\r\n• For your needs in custom t-shirt printing, the best value and quality. \r\n\r\n• Spend money on what you desire, not what you receive. Pick from the ideal fabrics for your personalized t-shirts. \r\n\r\n• We are one of the best online customized t shirts printing technologies & solution company in srilanka.\r\n\r\n• Being an instrument to spread your joy and love in a beautiful way we take pride in providing the best quality services. \r\n\r\n\r\n</pre>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(3, 'romesh', 'romeshwedasinghe73@gmail.com', '123', '285782483_508575731022751_1227789302483632978_n.jpg', '0770617372', 'Sri Lanka', 'admin', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(25, '::1', 0, '4250', 'Small'),
(31, '::1', 0, '4290', 'Select a Size'),
(34, '::1', 0, '9500', 'Select a Size');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'femail', 'no', 'feminelg.png'),
(5, 'Men', 'no', 'malelg.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'support@brandwell.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 14, 'Sale', '65', 'CODEASTRO', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(14, 'romesh', 'romeshwedasinghe73@gmail.com', 'r.e.w.1998', 'Sri Lanka', 'negombo', '0770617372', '74/6b thaladuwa road negombo', 'images.jfif', '::1', '718062728');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 03:52:58', 'pending'),
(33, 8, 8500, 660544161, 2, 'Large', '2023-10-05 12:48:25', 'pending'),
(34, 8, 0, 660544161, 0, 'Select a Size', '2023-10-05 12:48:26', 'pending'),
(35, 8, 7300, 660544161, 2, 'Medium', '2023-10-05 12:48:26', 'pending'),
(36, 8, 10520, 660544161, 2, 'Extra Large', '2023-10-05 12:48:26', 'pending'),
(37, 7, 15690, 637305215, 3, 'Medium', '2023-10-05 17:08:33', 'Complete'),
(38, 7, 5630, 637305215, 1, 'Extra Large', '2023-10-05 17:07:56', 'pending'),
(39, 14, 0, 1597786084, 0, 'Select a Size', '2024-02-14 12:08:17', 'Complete'),
(40, 14, 15780, 1597786084, 3, 'Medium', '2024-02-13 08:30:00', 'pending'),
(41, 14, 5290, 1597786084, 1, 'Select a Size', '2024-02-13 08:30:00', 'pending'),
(42, 14, 8580, 1597786084, 2, 'Medium', '2024-02-13 08:30:00', 'pending'),
(43, 14, 15690, 1597786084, 3, 'Large', '2024-02-13 08:30:00', 'pending'),
(44, 14, 45040, 1597786084, 8, 'Select a Size', '2024-02-13 08:30:00', 'pending'),
(45, 14, 10400, 587810744, 2, 'Select a Size', '2024-02-14 11:53:48', 'pending'),
(46, 14, 3650, 587810744, 1, 'Select a Size', '2024-02-14 11:53:48', 'pending'),
(47, 14, 10400, 948869623, 2, 'Select a Size', '2024-02-23 04:49:44', 'pending'),
(48, 14, 4250, 948869623, 1, 'Select a Size', '2024-02-23 04:49:44', 'pending'),
(49, 14, 12750, 948869623, 3, 'Select a Size', '2024-02-23 04:49:44', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`) VALUES
(14, 'download.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'adidas-logo-t-shirt.ca_1637624374__51190.original.jpg'),
(3, 'Gildan', 'no', 'gildan-logo-t-shirt.webp'),
(4, ' M&O', 'no', 'm&o-knit-logo-t-shirt.ca-2_1637624638__91191.original.jpg'),
(5, 'C2 Sport', 'no', 'c2-sport-athletic-t-shirt.ca copy_1617799029__98881.original.jpg'),
(7, 'King Athletics', 'no', 'king_vectorfile_1518732845__42757.original.jpg'),
(8, 'Calvin Klein', 'no', 'calvinklein_1532790345__14279.original.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021'),
(27, 123, 2500, 'Bank Code', 122, 141, '2');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(39, 14, 1597786084, '18', 0, 'Select a Size', 'Complete'),
(40, 14, 1597786084, '24', 3, 'Medium', 'pending'),
(41, 14, 1597786084, '26', 1, 'Select a Size', 'pending'),
(42, 14, 1597786084, '27', 2, 'Medium', 'pending'),
(43, 14, 1597786084, '29', 3, 'Large', 'pending'),
(44, 14, 1597786084, '30', 8, 'Select a Size', 'pending'),
(45, 14, 587810744, '20', 2, 'Select a Size', 'pending'),
(46, 14, 587810744, '22', 1, 'Select a Size', 'pending'),
(47, 14, 948869623, '20', 2, 'Select a Size', 'pending'),
(48, 14, 948869623, '23', 1, 'Select a Size', 'pending'),
(49, 14, 948869623, '32', 3, 'Select a Size', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(16, 4, 2, 2, '2024-02-23 09:30:39', 'Colorful Butterfly Ladies V Neck', 'black-blue-t-shirt', '91sjBPLVIDL._AC_UX466_.jpg', '91lSUtbC+4L._AC_UY550_.jpg', '61T4rA8gTGL._AC_UY550_.jpg', 4250, 3150, '\r\n\r\n\r\n\r\n\r\n\r\n\r\nDigital printed in the United States with the highest resolution possible for a rich graphic appearance on both the front and back of this women’s shirt\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\nThe quality of the print truly makes the brightness and vibrancies of the butterfly inspired tee pop.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'v  neck', 'new', 'product'),
(17, 4, 2, 3, '2023-10-03 12:55:36', 'V Neck T Shirts for Women Graphic Tees', 'alt-blue-t-shirt', '61WHRwTowkL._AC_SX522._SX._UX._SY._UY_.jpg', '61-D8+3McwL._AC_SX522._SX._UX._SY._UY_.jpg', '81sGLYm8LwL._AC_SX522._SX._UX._SY._UY_.jpg', 5200, 4950, '\r\n\r\n\r\nCute Dinosaur Shirt, Dino Print Shirt, Casual V Neck T-Shirt, Curved Hem, Short Sleeve Tops, Funny Graphics T-shirt, Printed Shirts for Women, Patterned Shirts for Women, Cute V-neck T-shirts for Women.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n3D clothing printer combines sublimation technology, the color will never fade and clothing will endure wear, you can use any cleaning method, no color fading, wrinkle free, no pilling.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'v - neck', 'new', 'product'),
(18, 4, 5, 4, '2023-10-03 13:17:49', 'Animal Face 3D Print', 'home-blue-t-shirt', 'b622052c9ec97058adcece726956698f.webp', '94f22602d30d46d89bbf17a547af6b95.webp', '0fbcb279f16fb31c521af29e636f4689.webp', 4250, 3150, '\r\n<pre>\r\nMaterial: Polyester \r\nComposition: 100% Polyester (polyester fiber) \r\nLength: Regular \r\nSleeve Length: Short Sleeve \r\nDetails: None \r\nPatterned: Print\r\nApplicable People: Adult \r\nSheer: No \r\nFabric: Slight Stretch \r\nCollar Style: V-neck \r\nSeasons: All-season \r\nCare Instructions: machine washable, no dry clean \r\nStyle: Sports \r\nOccasion: Going Out \r\nWeaving Method: Knit Fabric \r\n</pre>\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'v - neck', 'new', 'product'),
(19, 4, 5, 7, '2023-10-03 13:16:40', 'Eagle 3D Print Men', 'nime-blue-t-USA ', 'b67a46d1f726d790a329afec28079987.webp', 'd18a94659bb4f6d41e097bfda843d81a.webp', '76f7a09f99cab5f915da6e1342dce2f5.webp', 3650, 2860, '<pre>\r\nMaterial: Polyester\r\nComposition: 100% Polyester (polyester fiber)\r\nLength: Regular\r\nSleeve Length: Short Sleeve\r\nDetails: None\r\nPatterned: Print\r\nApplicable People: Adult\r\nSheer: No\r\nFabric: Slight Stretch\r\nCollar Style: V-neck\r\nSeasons: All-season\r\nCare Instructions: machine washable, no dry clean\r\nStyle: Sports\r\nWeaving Method: Knit Fabric\r\n\r\n</pre>\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'v - neck', 'new', 'product'),
(20, 4, 5, 8, '2023-10-03 13:23:29', 'Horses 3D Print ', 'pen-blue-t-USA ', '5539241b7c2ac56fc2a78c142d446c9e.webp', '9fbf761ef99e1783c456b66fbb4b241f.webp', '79192d673321deb72b588b46dfd3da45.webp', 5200, 4999, '<pre>\r\n\r\nMaterial: Polyester\r\nComposition: 100% Polyester (polyester fiber)\r\nLength: Regular\r\nSleeve Length: Short Sleeve\r\nDetails: None\r\nPatterned: Print\r\n\r\n</pre>', '\r\n<pre>\r\nApplicable People: Adult\r\nSheer: No\r\nFabric: Slight Stretch\r\nCollar Style: V-neck\r\nSeasons: All-season\r\nCare Instructions: machine washable, no dry clean\r\nStyle: Sports\r\nWeaving Method: Knit Fabric\r\n\r\n</pre>\r\n', '\r\n\r\n', 'v - neck', 'new', 'product'),
(21, 4, 5, 3, '2023-10-03 13:33:45', 'Summer T Shirts for Men', 'looo-blue-t-USA ', 'e1ddc4ef-0159-481d-aa1b-70767e5aff24.13d1f2c38a82fb42d2c12a6784643929.webp', '9262f188-b9b2-4397-9e92-259a319058df.ad9cd3f6b655710d493cd2bc433a9298.webp', 'ZCFZJW-Trendy-Summer-T-Shirts-for-Men-Casual-Short-Sleeve-3D-Flame-Pattern-Graphic-V-Neck-Tee-Shirts-Loose-Regular-Fit-Pullover-Tshirt-Tops-Green-M_41cb71ad-873f-4f54-8706-7e4d5d6da185.8fb5ffca985a30230bc46c93cd5.webp', 5260, 4900, '\r\n<pre>\r\n\r\nGender: Men;Males;Boys\r\n\r\nSeason: Spring, Summer, Autumn, Winter\r\n\r\nMaterial: 95% Polyester, 5% Spandex\r\n\r\nStyle: Fashion, Casual, Home, Daily.Mens Tops;Mens T Shirt;Mens Clothes.\r\n\r\nType:Casual;Beach;Loose;Holiday;Vacation;\r\n\r\nSleeve Length: Short Sleeve.\r\n\r\nHow to wash:Hand wash Cold,Hang or Line Dry.\r\n\r\n</pre>\r\n\r\n', '\r\n<pre>\r\n\r\n1.Material:The fabric is stretchy and soft that absolutely gives you comfortable feeling when you pull on.\r\n\r\n2.Occasion: Suitable for festivals,Christmas, celebrations and daily wear, office work, party, dating, street wear, holidays,outdoor,casual. Cute and colorful, let you attract friends attention!\r\n\r\n3.Match:The Men Shirts easily be worn with jeans, shorts and cargo pants, wear as casual tops, workwear shirt suit for party, home, office, picnic, holiday, etc.\r\n\r\n</pre>\r\n', '\r\n\r\n\r\n\r\n', 'v - neck', 'new', 'product'),
(22, 5, 5, 3, '2023-10-04 06:20:46', 'Street Style Mens 3D', 'tpo-blue-t-USA ', '066dd3f80f99eff8b88632c548c5bdfd.webp', '59da7ccb64a12c377a322978a098ec62.webp', '7167563262b12ae8a3555a048362e533.webp', 3650, 2860, '<pre>\r\n\r\nUnique Design: 3D lion digital print graphic on the front of the tank top creates a bold and eye-catching look.\r\n\r\nComfortable Fit: Made with high-quality materials, this tank top is soft, breathable, and perfect for summer wear.\r\n\r\nPlus Size Available: This tank top is available in plus sizes, ensuring a comfortable fit for all body types.\r\n\r\nVersatile Style: Perfect for street style, casual wear, or even as a workout tank top.\r\n\r\nEasy to Care For: Machine washable for easy and convenient cleaning.\r\n\r\n</pre>\r\n', '\r\n\r\n', '\r\n\r\n', 'tank', 'new', 'product'),
(23, 5, 5, 7, '2023-10-04 06:23:46', 'Novelty Style Mens 3D', 'lil-blue-t-USA ', '234a337e049f7ff3e293f41cd52972f0.webp', '05581bf5e1c012ed45aae43f48331d6a.webp', '54faba410bcb9db70b844fbde5673157.webp', 4250, 3150, '\r\n<pre>\r\n\r\nUnique Design: Eye-catching 3D print of a mysterious man with a robe that will make you stand out from the crowd.\r\nBreathable Fabric: Made of high-quality material that is perfect for summer wear, keeping you cool and comfortable.\r\nPlus Size Available: Perfect for men of all sizes, including plus size.\r\nVersatile: Ideal for casual wear, gym, beach, or any outdoor activities.\r\nEasy to Care: Machine washable and easy to care for, making it a hassle-free addition to your wardrobe.\r\n\r\n</pre>', '\r\n\r\n', '\r\n\r\n', 'top', 'new', 'product'),
(24, 5, 2, 8, '2023-10-04 06:32:09', 'Pullover Tank Top', 'fwesf-blue-t-USA ', 'b372e540a60d154d6b294c825618371e.webp', '477981358855bd55b567f4c36763bae8.webp', 'dbd8e97837b997207cba73202f2f2a07.webp', 5260, 3150, '<pre>\r\n\r\nFlattering Design: V-neckline and rose print pattern create a slimming effect\r\n\r\nComfortable Fit: Made with stretchy material to ensure a comfortable and flattering fit\r\n\r\nVersatile Style: Perfect for casual wear or dress it up for a night out\r\n\r\nEasy to Wear: Pullover style makes it easy to put on and take off\r\n\r\nPlus Size Friendly: Specifically designed for plus size women to ensure a comfortable and flattering fit\r\n\r\nBreathable Fabric: Ideal for warm weather and layering under jackets or cardigans\r\n\r\nStylish and Trendy: The rose print pattern is a popular trend this season\r\n\r\nMachine Washable: Easy to care for and maintain its shape and color\r\n\r\n</pre>', '\r\n\r\n', '\r\n\r\n', 'top', 'new', 'product'),
(25, 5, 2, 2, '2023-10-04 06:35:48', 'Womens Plus Butterfly Print ', 'ytd-blue-t-USA ', '88e506ed1648627d42d0f4e082ba5504.webp', 'c3eafd917b046219a604549b97da9c63.webp', '88e506ed1648627d42d0f4e082ba5504.webp', 4250, 3150, '<pre>\r\n\r\nComfortable and Stylish: Made with a slight stretch material, this tank top is perfect for all-day wear while still looking fashionable.\r\n\r\nFlattering Fit: Designed specifically for plus size women, this tank top features a round neck and grommet tie shoulder to accentuate your curves and provide a flattering fit.\r\n\r\nBeautiful Butterfly Print: The butterfly print adds a touch of whimsy and femininity to this casual tank top, making it perfect for a day out with friends or running errands.\r\n\r\nVersatile: Dress it up or down, this tank top is perfect for any occasion. \r\n\r\nWear it with jeans and sandals for a casual look or dress it up with a skirt and heels for a night out.\r\n\r\n</pre>\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'top', 'new', 'product'),
(26, 5, 2, 5, '2023-10-04 06:38:26', 'Plus Size Casual Tank Top', 'jyj-blue-t-USA ', '255175e067431b798139d28f943c5404.webp', '8e8b51036e95703a7df72d1fe4c5df9c.webp', '4ff73500656833c7004fea01e922e830.webp', 5290, 4260, '<pre>\r\n\r\nComfortable Fit: Made with medium stretch fabric, this plus size tank top offers a comfortable fit for all-day wear.\r\n\r\nStylish Design: Featuring a trendy colorblock butterfly print, this round neck vest top adds a pop of color to your outfit.\r\n\r\nVersatile: Perfect for casual occasions, this tank top can be paired with jeans, shorts, or skirts for a stylish look.\r\n\r\nFlattering Fit: Designed with a flattering cut, this plus size tank top accentuates your curves in all the right places.\r\n\r\nEasy Care: This tank top is easy to care for and can be machine washed for your convenience.\r\n\r\n</pre>\r\n', '\r\n\r\n', '\r\n\r\n', 'top', 'new', 'product'),
(27, 6, 5, 7, '2023-10-05 16:44:05', 'Mens Long Sleeve T-Shirt', 'gr-blue-t-USA ', 'c0b725b8eddddd49e16266f582cdb824.webp', '6a39bde4f7eac3269e7035c87acc91be.webp', '0c1bbcb5afc25c53f393de3049a7b553.webp', 4290, 3920, '\r\n\r\n<pre>\r\n\r\n1.Unique 3D print design that stands out from the crowd \r\n\r\n2.Made with high-quality materials for long-lasting wear\r\n\r\n3.Soft and comfortable fabric that feels great against the skin\r\n\r\n4.Round neck and long sleeves for a classic and versatile look\r\n\r\n5.Perfect for casual wear, parties, and events\r\n\r\n</pre>\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'long', 'new', 'product'),
(28, 6, 5, 3, '2023-10-05 16:48:44', '3D Dragon Print ', 'homee-blue-t-USA ', 'dff835631fb4762fe05c18db6400c855.webp', '26439c5b7e99d7857c859e4f5f52e956.webp', 'dd3ae1969bfba55b3f5815f382ea7d9c.webp', 5290, 4590, '', '\r\n\r\n', '\r\n\r\n', 'long', 'new', 'product'),
(29, 6, 5, 5, '2023-10-05 16:51:04', '3D Horse Pattern Print', 'bou-blue-t-USA ', 'b4f8dc0410e66c48b22a4a250c3e44f3.webp', '5a2b43cfe2156722bab7fb45a7bee9e9.webp', '1b635b8f41108f1fc9589a823127994a.webp', 5230, 4950, '<pre>\r\n\r\nMaterial: Polyester\r\nOther Material: Polyester\r\nSleeve Length: Long Sleeve\r\nDetails: None\r\nPatterned: All Over Print\r\nSheer: No\r\nFabric: Slight Stretch\r\nPlacket Type: Pullovers\r\nCollar Style: Crew Neck\r\nLining: Polyester\r\nType: Other\r\nCare Instructions: Hand wash,do not dry clean\r\nFit Type: Regular\r\nComposition: 100% Polyester\r\nWeaving Method: Knit Fabric\r\n</pre>\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'long', 'new', 'product'),
(30, 6, 2, 4, '2023-10-05 16:56:49', ' Womens Plus Animal & Dreamcatcher Print', 'yuje-blue-t-USA ', '5fdb5b24fca98d5f342957be9b59bd71.webp', '0911e26188c75f356a3752a420c2926c.webp', '12d6eeb7365b3f23dc5b6b4c533b7d78.webp', 5630, 4980, '<pre>\r\n\r\nMaterial: Elastane\r\nComposition: 95% Spandex,5% Cotton\r\nStyle: Casual\r\nCare Instructions: Machine wash, do not dry clean\r\nSeasons: Spring/Fall\r\nCollar Style: Crew Neck\r\nFabric: Medium Stretch\r\nSheer: No\r\nPatterned: Animals\r\nDetails: None\r\nPrinting Type: Random Printing\r\nWeaving Method: Knit Fabric\r\n\r\n</pre>\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'long', 'new', 'product'),
(31, 6, 2, 2, '2023-10-05 16:59:32', 'Casual Long Sleeve', 'trh-blue-t-USA ', 'd2c94b77f7678768c46c7e1c318674d2.webp', 'df67890689bd80ec3f4b968c3059c097.webp', 'b9fbbd2c344fa89f1f3c6f40c4ad9b3c.webp', 4290, 3950, '<pre>\r\n\r\nEye-catching design: peacock feather print\r\n\r\nVersatile style: V-neck T-shirt, perfect for casual occasions\r\n\r\nComfortable material: made for spring and fall with long sleeves for added \r\n\r\nwarmth and comfort\r\n\r\nEasy to match: pairs well with jeans, shorts, skirts, and more\r\n\r\nAvailable in multiple sizes: find the perfect fit for you!\r\n\r\n</pre>\r\n', '\r\n\r\n', '\r\n\r\n', 'long', 'new', 'product'),
(32, 6, 2, 8, '2023-10-05 17:04:43', 'Butterfly Print V Neck T-shirt', 'htrd-blue-t-USA ', '58329429d90358bdcf4248c8de7b366e.webp', '337a5f186b5edbb92e30ddaf66e96c97.webp', '0330b16a8ba302bc03f2762b93964643.webp', 4250, 3150, '<pre>\r\n\r\nStylish butterfly print design adds a touch of nature to your outfit\r\n\r\nMade with high-quality materials for ultimate comfort and durability\r\n\r\nPerfect for spring and fall weather, with long sleeves to keep you warm\r\n\r\nV-neck style flatters your neckline and adds a touch of elegance\r\n\r\nVersatile and casual, perfect for everyday wear or dressing up\r\n\r\n</pre>', '\r\n\r\n', '\r\n\r\n', 'long', 'new', 'product'),
(34, 7, 2, 3, '2024-02-23 09:38:00', 'Womens Tops 3/4 Sleeve Shirts', 'hi-blue-t-shirt', '1.jpg', '2.jpg', '3.jpg', 9500, 8750, '\r\n\r\n<pre>\r\n\r\n\r\n1. 95% Rayon and 5% Spandex. High-quality rayon blend material. soft,stretchy,lightweight,breathable and not see-through.\r\n\r\n2. Casual round neck, 3/4 Sleeve, Foral Print, loose fit, trendy and elegant.\r\n\r\n3. This 3/4 Sleeve Tops and Blouses is suitable for any body shape people.When wearing this tunic tops for women, you will feel that the fabric is soft breathable and skin friendly.You will get many compliments on this blouse.\r\n\r\n\r\n\r\n</pre>', '\r\n\r\n', '\r\n\r\n', '3D Print ', 'new', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'V-Neck', 'no', '64v00-gildan-adult-v-neck-t-shirt-white-t-shirt.ca__39631.jpg'),
(5, 'Tank Top', 'no', '18740283_source_1669842104.jpg'),
(6, 'Long Sleeve', 'no', '5400-gildan-heavy-cotton-long-sleeve-t-shirt-white-t-shirt.ca__21365.jpg'),
(7, 'round neck', 'no', 'White-Sports-T-Shirt.jpg'),
(8, 'Button t shirts', 'no', '81pQAHXQKSL._AC_SR175,263_QL70_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstName`, `lastName`, `email`, `number`) VALUES
(95, 'xxx', 'cccc', 'raizen02102020@gmail.com', 312239200);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Brandwell Custom T-Shirt Printing is committed to maintaining a respectful and inclusive environment for all users. Therefore, it is important to adhere to the following guidelines when submitting content.To ensure a safe and secure experience for all users, the following activities are strictly prohibited on the Brandwell Custom T-Shirt Printing website.\r\n </p>'),
(2, 'Refund Policy', 'link2', 'At Brandwell Custom T-Shirt Printing, we strive to provide high-quality products and excellent customer service. We want you to be completely satisfied with your purchase.If you receive an order that is different from what you originally requested, please contact our customer support team within 7 days of receiving your order.'),
(3, 'Pricing and Promotions Policy', 'link3', 'At Brandwell Custom T-Shirt Printing, we strive to offer competitive pricing while maintaining the highest quality standards for our products and services. Our Pricing and Promotions Policy is outlined below to provide transparency and clarity to our customers.We make every effort to ensure that the prices listed are accurate and up to date. In the event of a pricing error, we reserve the right to cancel or refuse any orders placed at the incorrect price, even if the order has been confirmed and payment has been processed.Price adjustments apply only to specific promotions or policies explicitly stated at the time of purchase. Please review the terms and conditions of each promotion or policy for details regarding price adjustments.'),
(4, 'hi', 'th', 'htyh');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(6, 7, 18),
(7, 7, 21),
(8, 14, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
