-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 07:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_cishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `title`) VALUES
(5, 'tas', 'Tas'),
(7, 'topi', 'Topi'),
(8, 'kerajinan-tangan', 'Kerajinan Tangan'),
(9, 'dompet', 'Dompet'),
(10, 'tali-tas', 'Tali Tas');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` enum('waiting','paid','delivered','cancel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `date`, `invoice`, `total`, `name`, `address`, `phone`, `status`) VALUES
(1, 2, '2020-05-17', '220200517040203', 74000000, 'Hakim', 'Bekasi', '081314529488', 'delivered'),
(2, 5, '2020-05-18', '520200518060446', 350000, 'Saskia Maretza', 'Tambun Selatan', '+62 81284574890', 'paid'),
(3, 5, '2020-05-18', '520200518060658', 2500000, 'Monica', 'Bekasi Selatan', '+62 81284574890', 'paid'),
(4, 7, '2020-07-13', '720200713183830', 30350000, 'daniel', 'jln gang damar no 330 kost andeko Yogyakarta', '‎081290066220', 'cancel'),
(5, 7, '2020-07-13', '720200713184317', 5000000, 'tas', 'jln gang damar no 330 kost andeko Yogyakarta', '082134618257', 'paid'),
(6, 8, '2020-07-13', '820200713234447', 275000, 'juan', 'jln gang damar no 330 kost andeko Yogyakarta', '‎081290066220', 'paid'),
(7, 7, '2020-07-13', '720200713235443', 275000, 'juan', 'jln gang damar no 330 kost andeko Yogyakarta', '082134618257', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `orders_confirm`
--

CREATE TABLE `orders_confirm` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_confirm`
--

INSERT INTO `orders_confirm` (`id`, `id_orders`, `account_name`, `account_number`, `nominal`, `note`, `image`) VALUES
(1, 1, 'Andhika Satriawan', '0000000000', 74000000, 'Buat bayar', '220200517040203-20200518001819.jpg'),
(2, 3, 'Monika', '0385083048534', 250000, ' - ', '520200518060658-20200518060813.jpg'),
(3, 2, 'Saskia Maretza', '38508304598034850843', 450000, ' - ', '520200518060446-20200518060910.jpg'),
(4, 4, 'daniel', '12312312', 2000000, ' - rrrr', '720200713183830-20200713183936.png'),
(5, 6, 'daniel', '12312312', 500000, ' - antar ke rumah yah jam 4an', '820200713234447-20200713234936.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(4) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `id_orders`, `id_product`, `qty`, `subtotal`) VALUES
(1, 1, 10, 4, 60000000),
(2, 1, 12, 2, 14000000),
(3, 2, 11, 1, 350000),
(4, 3, 9, 1, 2500000),
(5, 4, 11, 1, 350000),
(6, 4, 10, 2, 30000000),
(7, 5, 9, 2, 5000000),
(8, 6, 14, 2, 240000),
(9, 6, 13, 1, 35000),
(10, 7, 14, 2, 240000),
(11, 7, 13, 1, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `slug`, `title`, `description`, `price`, `is_available`, `image`) VALUES
(13, 9, 'dompet-kupas-batik', 'Dompet Kupas Batik', 'Dompet Kupas Batik', 35000, 1, 'dompet-kupas-batik-20200713233803.jpeg'),
(14, 7, 'topi-signal', 'Topi Signal', 'Topi', 120000, 1, 'topi-signal-20200713232047.jpeg'),
(15, 8, 'syall-bordiran-batik', 'Syall Bordiran Batik', 'Syall Bordiran', 125000, 1, 'syall-20200713232321.jpeg'),
(16, 8, 'syall-batik', 'Syall Batik', 'Syall Batik ', 85000, 1, 'syall-batik-20200713232500.jpeg'),
(17, 5, 'tas', 'Tas ', 'Tas ', 165000, 1, 'tas-20200713232850.jpeg'),
(18, 5, 'tas-kerja-monica', 'Tas Kerja Monica', 'Tas Kerja Monica Perpaduan dengan Kanvas', 25000, 1, 'tas-kerja-monica-20200713233258.jpeg'),
(19, 5, 'dompet-lipat', 'Dompet Lipat', 'Dompet Lipat Besar Bordir', 150000, 1, 'dompet-lipat-20200713233645.jpeg'),
(20, 10, 'tali-tas', 'Tali Tas ', 'Tali Tas Bordiran Motif Tidung', 165000, 1, 'tali-tas-20200713233921.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','member') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `is_active`, `image`) VALUES
(6, 'Andhika Satriawan', 'andhika.satriawan1988@gmail.com', '$2y$10$kb8bvJ8itdPPfI3PAe8n6O8jIcq8OD38EPw66Ek0TvNoibtts68OG', 'admin', 1, 'andhika-satriawan-20200601210733.png'),
(7, 'juan', 'admin@admin.com', '$2y$10$5dmylVt/PxFlRXXeXNTXIuGWbq8/gmHYee6NI.RpAp9MBWcSnTnDS', 'member', 1, NULL),
(8, 'marco', 'marco@gmail.com', '$2y$10$OMKpM9MOvRXh7ZWUTi0tqeWEM/t12u951.ek6eDEPFWdGnkvRhRUq', 'admin', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_confirm`
--
ALTER TABLE `orders_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
