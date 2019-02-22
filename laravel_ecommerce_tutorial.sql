-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 05:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce_tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_02_16_090941_create_products_table', 2),
(5, '2019_02_16_184553_create_categories_table', 2),
(6, '2019_02_16_184733_create_brands_table', 2),
(7, '2019_02_16_184955_create_admins_table', 2),
(8, '2019_02_16_191944_create_product_images_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `offer_price` int(11) DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `slug`, `quantity`, `price`, `status`, `offer_price`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Samsung Galaxy', 'Samsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung Galaxy', 'Samsung-Galaxy', 14, 10000, 0, NULL, 1, '2019-02-16 18:00:00', '2019-02-20 02:38:32'),
(2, 1, 1, 'Samsung Galaxy 2', 'Samsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung GalaxySamsung Galaxy', 'Samsung-Galaxy-2', 1, 10000, 0, NULL, 1, '2019-02-16 18:00:00', '2019-02-16 18:00:00'),
(3, 1, 1, 'Sony Xperia L', 'Sony Xperia LSony XSony Xperia L\r\nperia LSony Xperia LSony Xperia LSony Xperia LSony Xperia LSony Xperia LSony Xperia LSony Xperia LSony Xperia L\r\nSony Xperia LSony Xperia LSony Xperia L', 'sony-xperia-l', 20, 18000, 0, NULL, 1, '2019-02-18 05:30:06', '2019-02-18 05:30:06'),
(4, 1, 1, 'HTC One A9', 'HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9v\r\nHTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9HTC One A9vv\r\nHTC One A9HTC One A9HTC One A9HTC One A9HTC One A9', 'htc-one-a9', 13, 34000, 0, NULL, 1, '2019-02-18 05:42:13', '2019-02-18 05:42:13'),
(8, 1, 1, 'Sony Xperia Z', 'Sony Xperia ZSony Xperia ZSony Xperia ZSony Xperia ZSony Xperia ZSony Xperia ZSony Xperia\r\nSony Xperia ZSony Xperia ZSony Xperia ZSony Xperia ZSony Xperia Z\r\nSony Xperia ZSony Xperia ZSony Xperia Z Zv', 'sony-xperia-z', 12, 20000, 0, NULL, 1, '2019-02-18 23:55:07', '2019-02-18 23:55:07'),
(9, 1, 1, 'Sony Xperia L2', 'Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2Sony Xperia L2', 'sony-xperia-l2', 5, 23000, 0, NULL, 1, '2019-02-19 01:30:48', '2019-02-19 01:30:48'),
(10, 1, 1, 'Sony Xperia Z2', 'Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2', 'sony-xperia-z2', 5, 30000, 0, NULL, 1, '2019-02-19 01:34:51', '2019-02-19 01:34:51'),
(11, 1, 1, 'Sony Xperia Z2', 'Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2', 'sony-xperia-z2', 12, 30000, 0, NULL, 1, '2019-02-19 01:35:38', '2019-02-20 02:23:49'),
(12, 1, 1, 'Sony Xperia Z2', 'Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2', 'sony-xperia-z2', 12, 30000, 0, NULL, 1, '2019-02-20 02:22:24', '2019-02-20 02:22:24'),
(13, 1, 1, 'Sony Xperia Z1 mini', 'Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2', 'sony-xperia-z2', 12, 22000, 0, NULL, 1, '2019-02-20 02:23:28', '2019-02-20 02:37:51'),
(14, 1, 1, 'Sony Xperia Z1 then again hm', 'Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2Sony Xperia Z2', 'sony-xperia-z1', 12, 30000, 0, NULL, 1, '2019-02-20 02:33:33', '2019-02-20 02:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1.jpg', NULL, NULL),
(2, 2, '2.jpg', NULL, NULL),
(3, 1, '3.jpg', NULL, NULL),
(4, 8, '1550555707.jpg', '2019-02-18 23:55:08', '2019-02-18 23:55:08'),
(5, 9, '1550561449.jpg', '2019-02-19 01:30:49', '2019-02-19 01:30:49'),
(6, 9, '1550561449.jpg', '2019-02-19 01:30:49', '2019-02-19 01:30:49'),
(7, 9, '1550561449.jpg', '2019-02-19 01:30:49', '2019-02-19 01:30:49'),
(8, 11, '1550561738pw81s.jpg', '2019-02-19 01:35:38', '2019-02-19 01:35:38'),
(9, 11, '15505617383Da3m.jpg', '2019-02-19 01:35:38', '2019-02-19 01:35:38'),
(10, 11, '1550561739ooON4.jpg', '2019-02-19 01:35:39', '2019-02-19 01:35:39'),
(11, 11, '1550561739nn7Nl.jpg', '2019-02-19 01:35:39', '2019-02-19 01:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
