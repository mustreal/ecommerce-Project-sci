-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 09:58 AM
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
-- Database: `my_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `prod_qty` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '1', '9', '1', '2024-01-08 01:47:08', '2024-01-08 01:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` varchar(191) NOT NULL,
  `meta_keyword` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(1, 'ACCESSORIES', 'ACCESSORIES', 'ACCESSORIES', 0, 0, '1704701206.jpg', 'ACCESSORIES', 'ACCESSORIES', 'ACCESSORIES', '2024-01-08 01:04:11', '2024-01-08 01:06:46'),
(2, 'EQUIPMENTS', 'EQUIPMENTS', 'EQUIPMENTS', 0, 0, '1704701238.jpg', 'EQUIPMENTS', 'EQUIPMENTS', 'EQUIPMENTS', '2024-01-08 01:07:18', '2024-01-08 01:07:18'),
(3, 'SUPLEMENTS', 'SUPLEMENTS', 'SUPLEMENTS', 0, 0, '1704701284.jpg', 'SUPLEMENTS', 'SUPLEMENTS', 'SUPLEMENTS', '2024-01-08 01:08:04', '2024-01-08 01:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_04_110615_create_categories_table', 1),
(6, '2022_12_06_064441_create_products_table', 1),
(7, '2022_12_10_053055_create_carts_table', 1),
(8, '2022_12_10_134924_create_order_table', 1),
(9, '2022_12_10_135226_create_order_items_table', 1),
(10, '2022_12_29_182302_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phoneno` varchar(191) NOT NULL,
  `address1` varchar(191) NOT NULL,
  `address2` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `pincode` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) DEFAULT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `total_price` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `original_price` varchar(191) NOT NULL,
  `selling_price` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 3, 'COMBAT XL MASS GAINER', 'COMBAT XL MASS GAINER', 'COMBAT XL MASS GAINER', 'COMBAT XL MASS GAINER', '100000', '70000', '1704701470.jpg', '15', '5', 0, 0, 'COMBAT XL MASS GAINER', 'COMBAT XL MASS GAINER', 'COMBAT XL MASS GAINER', '2024-01-08 01:11:10', '2024-01-08 01:11:10'),
(2, 3, 'ANABOLIC MASS', 'ANABOLIC MASS', 'ANABOLIC MASS', 'ANABOLIC MASS', '120000', '85000', '1704701561.jpg', '9', '5', 0, 0, 'ANABOLIC MASS', 'ANABOLIC MASS', 'ANABOLIC MASS', '2024-01-08 01:12:41', '2024-01-08 01:12:41'),
(3, 2, 'TREADMILL', 'TREADMILL', 'TREADMILL', 'TREADMILL', '1000000', '850000', '1704701697.jpg', '2', '3', 0, 0, 'TREADMILL', 'TREADMILL', 'TREADMILL', '2024-01-08 01:14:57', '2024-01-08 01:14:57'),
(4, 2, 'BENCH PRESS MACHINE', 'BENCH PRESS MACHINE', 'BENCH PRESS MACHINE', 'BENCH PRESS MACHINE', '1500000', '1300000', '1704701881.jpg', '3', '3', 0, 0, 'BENCH PRESS MACHINE', 'BENCH PRESS MACHINE', 'BENCH PRESS MACHINE', '2024-01-08 01:18:01', '2024-01-08 01:18:01'),
(5, 2, 'LEG PRESS MACHINE', 'LEG PRESS MACHINE', 'LEG PRESS MACHINE', 'LEG PRESS MACHINE', '1350000', '1150000', '1704701993.jpg', '4', '3', 0, 0, 'LEG PRESS MACHINE', 'LEG PRESS MACHINE', 'LEG PRESS MACHINE', '2024-01-08 01:19:53', '2024-01-08 01:19:53'),
(6, 2, 'BARBLE', 'BARBLE', 'BARBLE', 'BARBLE', '75000', '45000', '1704702067.jpg', '20', '5', 0, 0, 'BARBLE', 'BARBLE', 'BARBLE', '2024-01-08 01:21:07', '2024-01-08 01:21:07'),
(7, 1, 'GLOVES', 'GLOVES', 'GLOVES', 'GLOVES', '25000', '20000', '1704702142.jpg', '18', '3', 0, 0, 'GLOVES', 'GLOVES', 'GLOVES', '2024-01-08 01:22:22', '2024-01-08 01:22:22'),
(8, 3, 'GOLD STANDARD 100% WHEY', 'GOLD STANDARD 100% WHEY', 'GOLD STANDARD 100% WHEY', 'GOLD STANDARD 100% WHEY', '75000', '55000', '1704702230.jpg', '8', '5', 0, 0, 'GOLD STANDARD 100% WHEY', 'GOLD STANDARD 100% WHEY', 'GOLD STANDARD 100% WHEY', '2024-01-08 01:23:50', '2024-01-08 01:23:50'),
(9, 1, 'T-SHIRT', 'T-SHIRT', 'T-SHIRT', 'T-SHIRT', '15000', '10000', '1704702351.jpg', '22', '5', 0, 0, 'T-SHIRT', 'T-SHIRT', 'T-SHIRT', '2024-01-08 01:25:51', '2024-01-08 01:25:51'),
(10, 1, 'SPORT PANTS', 'SPORT PANTS', 'SPORT PANTS', 'SPORT PANTS', '15000', '10000', '1704702472.jpg', '16', '3', 0, 0, 'SPORT PANTS', 'SPORT PANTS', 'SPORT PANTS', '2024-01-08 01:27:52', '2024-01-08 01:27:52'),
(11, 2, 'SKIPPING ROPE BLUE', 'SKIPPING ROPE BLUE', 'SKIPPING ROPE BLUE', 'SKIPPING ROPE', '30000', '25000', '1704702717.jpg', '8', '3', 0, 0, 'SKIPPING ROPE BLUE', 'SKIPPING ROPE BLUE', 'SKIPPING ROPE BLUE', '2024-01-08 01:31:57', '2024-01-08 01:31:57'),
(12, 2, 'SKIPPING ROPE YELLOW', 'SKIPPING ROPE YELLOW', 'SKIPPING ROPE YELLOW', 'SKIPPING ROPE YELLOW', '25000', '20000', '1704703368.jpg', '6', '3', 0, 0, 'SKIPPING ROPE YELLOW', 'SKIPPING ROPE YELLOW', 'SKIPPING ROPE YELLOW', '2024-01-08 01:42:48', '2024-01-08 01:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$euSuWy6iqRJavLOmEqDKgOz3T0o.ykPymKempXAiKTefJGbSdArH.', 1, NULL, '2024-01-08 01:02:31', '2024-01-08 01:02:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
