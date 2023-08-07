-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 03:46 PM
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
-- Database: `gbss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(21, 'Chat', 'products/1690973345157.PNG', 'the channa chat', '2023-08-02 17:49:05', '2023-08-02 17:49:05'),
(22, 'Biryani', 'products/1690973374395.PNG', 'biryanni special', '2023-08-02 17:49:34', '2023-08-02 17:49:34'),
(23, 'Karahi', 'products/1690973399753.PNG', 'karahi', '2023-08-02 17:49:59', '2023-08-02 17:49:59'),
(24, 'Sallad', 'products/1690973443814.PNG', 'xcvf', '2023-08-02 17:50:43', '2023-08-02 17:50:43'),
(25, 'Drinks', 'products/1690973488101.PNG', 'xgdgdfgdfvfd', '2023-08-02 17:51:28', '2023-08-02 17:51:28'),
(26, 'mix food', 'products/1690973505931.PNG', 'sfsdf', '2023-08-02 17:51:45', '2023-08-02 17:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `category_tech`
--

CREATE TABLE `category_tech` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `tech_info_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_tech`
--

INSERT INTO `category_tech` (`id`, `category_id`, `tech_info_id`, `created_at`, `updated_at`) VALUES
(1, 9, 1, NULL, NULL),
(2, 4, 1, NULL, NULL),
(3, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_favorites`
--

INSERT INTO `ch_favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
('4162d8ba-8d90-42ea-b11b-50af2fc78bff', 47, 44, '2023-06-04 13:13:56', '2023-06-04 13:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('3dc1750e-dc9e-47f2-bb9e-4804009a8c29', 84, 86, '', '{\"new_name\":\"43d637f1-6d94-41ce-82fc-bf8051feb243.jpg\",\"old_name\":\"WhatsApp Image 2023-07-07 at 3.20.25 AM.jpeg\"}', 0, '2023-07-11 13:23:02', '2023-07-11 13:23:02'),
('5c48b08f-9223-4c9c-b323-589f3beed9e0', 48, 44, 'hi admin i am new resident here', NULL, 1, '2023-06-04 12:30:45', '2023-06-04 12:32:10'),
('6388c429-70cf-4174-88f7-715cc311c8b6', 44, 48, 'ok thanks', NULL, 1, '2023-06-04 12:32:20', '2023-06-04 12:32:22'),
('66919ce4-8052-4430-9ef8-5deb69e24acc', 44, 48, 'dgjlkdjglsdfjksd;lzx', NULL, 0, '2023-06-10 22:14:01', '2023-06-10 22:14:01'),
('6909fef2-1e08-405a-aa48-daa89c9b7e23', 48, 44, '', '{\"new_name\":\"ef316b6b-08e0-4c26-9449-2be3826b4675.jpg\",\"old_name\":\"doctor.JPG\"}', 1, '2023-06-04 12:30:58', '2023-06-04 12:32:10'),
('75ba5d00-acc0-4ff2-8a60-3bd34e5428a7', 47, 46, 'hi bro , im the doctor here, have appointment to you.', NULL, 1, '2023-06-04 15:11:38', '2023-06-04 15:13:59'),
('82c15168-e90c-4bc6-a877-862b04826130', 84, 86, '🤣', NULL, 0, '2023-07-11 13:22:50', '2023-07-11 13:22:50'),
('a1f7816d-409e-44fa-8918-6fe65281a45d', 47, 44, 'hi im doctor, ergistered as a meety\r\ndical team member in your soci', NULL, 1, '2023-06-04 13:11:51', '2023-06-04 13:12:08'),
('b530b9cd-7990-4c12-895a-40336108eb5e', 84, 86, 'hi there', NULL, 0, '2023-07-11 13:22:42', '2023-07-11 13:22:42'),
('be274513-f4b9-4fa1-a2f7-e6b49fd24d70', 47, 46, '🚑', NULL, 1, '2023-06-04 15:12:05', '2023-06-04 15:13:59'),
('c336631a-bdc0-47ad-a8cc-bf8773302e15', 44, 47, '💖', NULL, 1, '2023-06-04 13:12:37', '2023-06-04 13:12:48'),
('c497ebe3-0332-4396-925b-292e3ce2804f', 47, 44, '', '{\"new_name\":\"48960ca8-452b-4660-8237-1bce2c4dbbf8.jpg\",\"old_name\":\"doctor.JPG\"}', 1, '2023-06-04 13:12:00', '2023-06-04 13:12:08'),
('f60b7395-84bb-4081-82d4-77c05fd10436', 44, 47, 'great', NULL, 1, '2023-06-04 13:12:18', '2023-06-04 13:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `code1` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `code1`, `created_at`, `updated_at`) VALUES
(2, 'First Time', '07:00', '12:00', '2023-01-29 08:42:03', '2023-01-29 08:42:03'),
(3, 'Noon', '11:30', '17:00', '2023-01-29 08:43:02', '2023-01-29 08:43:02'),
(4, 'second time', '16:30', '21:00', '2023-01-29 08:43:46', '2023-01-29 08:43:46'),
(5, 'Night', '20:00', '00:30', '2023-01-29 08:44:34', '2023-01-29 08:44:34'),
(6, 'Emergency', '05:30', '00:30', '2023-01-29 08:45:29', '2023-01-29 08:45:29'),
(7, 'Day Time', '07:00', '18:00', '2023-01-29 09:08:09', '2023-01-29 09:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `color_services`
--

CREATE TABLE `color_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `services_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_services`
--

INSERT INTO `color_services` (`id`, `color_id`, `services_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 6, 3, NULL, NULL),
(4, 6, 4, NULL, NULL),
(5, 4, 5, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 3, 6, NULL, NULL),
(8, 4, 6, NULL, NULL),
(9, 2, 7, NULL, NULL),
(10, 3, 7, NULL, NULL),
(11, 4, 7, NULL, NULL),
(12, 2, 8, NULL, NULL),
(13, 6, 8, NULL, NULL),
(14, 2, 9, NULL, NULL),
(15, 5, 9, NULL, NULL),
(19, 7, 10, NULL, NULL),
(20, 2, 11, NULL, NULL),
(21, 4, 11, NULL, NULL),
(22, 5, 12, NULL, NULL),
(23, 4, 12, NULL, NULL),
(24, 6, 2, NULL, NULL),
(25, 2, 2, NULL, NULL),
(26, 2, 1, NULL, NULL),
(27, 4, 2, NULL, NULL),
(28, 7, 3, NULL, NULL),
(29, 3, 4, NULL, NULL),
(30, 4, 5, NULL, NULL),
(31, 4, 6, NULL, NULL),
(32, 2, 7, NULL, NULL),
(33, 7, 7, NULL, NULL),
(34, 3, 8, NULL, NULL),
(35, 7, 8, NULL, NULL),
(36, 4, 9, NULL, NULL),
(37, 7, 10, NULL, NULL),
(38, 3, 11, NULL, NULL),
(39, 7, 11, NULL, NULL),
(40, 3, 12, NULL, NULL),
(41, 4, 13, NULL, NULL),
(42, 4, 14, NULL, NULL),
(43, 3, 15, NULL, NULL),
(44, 2, 16, NULL, NULL),
(45, 5, 16, NULL, NULL),
(46, 2, 17, NULL, NULL),
(47, 4, 18, NULL, NULL),
(48, 7, 19, NULL, NULL),
(49, 7, 20, NULL, NULL),
(50, 7, 21, NULL, NULL),
(51, 7, 22, NULL, NULL),
(52, 3, 23, NULL, NULL),
(53, 4, 23, NULL, NULL),
(54, 5, 23, NULL, NULL),
(55, 2, 24, NULL, NULL),
(56, 7, 25, NULL, NULL),
(57, 3, 26, NULL, NULL),
(58, 6, 27, NULL, NULL),
(59, 7, 28, NULL, NULL),
(60, 2, 29, NULL, NULL),
(61, 7, 29, NULL, NULL),
(62, 6, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate`
--

CREATE TABLE `estimate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `estimate_no` varchar(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'DRAFT',
  `total` varchar(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `invoice_no` varchar(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'DRAFT',
  `amount_due` varchar(10) NOT NULL DEFAULT '0',
  `total` varchar(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `service_id`, `color_id`, `category_id`, `order_id`, `quantity`, `created_at`, `updated_at`) VALUES
(76, 6, 4, 15, 94, 4, '2023-07-11 17:10:05', '2023-07-11 17:10:05'),
(77, 30, NULL, 26, 97, 2, '2023-08-07 11:21:17', NULL),
(78, 29, NULL, 26, 97, 1, '2023-08-07 11:21:17', NULL),
(84, 30, NULL, 26, 98, 2, '2023-08-07 11:22:42', NULL),
(85, 29, NULL, 26, 98, 1, '2023-08-07 11:22:42', NULL),
(86, 28, NULL, 26, 98, 2, '2023-08-07 11:22:42', NULL),
(87, 27, NULL, 25, 98, 4, '2023-08-07 11:22:42', NULL),
(88, 18, NULL, 22, 98, 1, '2023-08-07 11:22:42', NULL),
(89, 17, NULL, 22, 98, 2, '2023-08-07 11:22:42', NULL),
(90, 24, NULL, 24, 98, 2, '2023-08-07 11:22:42', NULL),
(91, 30, NULL, 26, 99, 2, '2023-08-07 11:39:33', NULL),
(92, 29, NULL, 26, 99, 1, '2023-08-07 11:39:33', NULL),
(93, 28, NULL, 26, 99, 2, '2023-08-07 11:39:33', NULL),
(94, 27, NULL, 25, 99, 4, '2023-08-07 11:39:33', NULL),
(95, 18, NULL, 22, 99, 1, '2023-08-07 11:39:33', NULL),
(96, 17, NULL, 22, 99, 2, '2023-08-07 11:39:33', NULL),
(97, 24, NULL, 24, 99, 2, '2023-08-07 11:39:33', NULL),
(98, 27, NULL, 25, 100, 1, '2023-08-07 12:52:54', NULL),
(99, 26, NULL, 25, 100, 3, '2023-08-07 12:52:54', NULL),
(100, 26, NULL, 25, 101, 2, '2023-08-07 13:37:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'hello', '2023-02-15 07:42:10', '2023-02-15 07:42:10'),
(3, 2, 'hello g', '2023-02-15 08:00:24', '2023-02-15 08:00:24'),
(4, 2, 'ki haal ay', '2023-02-16 00:51:06', '2023-02-16 00:51:06'),
(5, 2, 'ki haal ay', '2023-02-16 05:47:45', '2023-02-16 05:47:45'),
(6, 2, 'hello', '2023-02-16 05:47:58', '2023-02-16 05:47:58'),
(7, 1, 'hello', '2023-02-16 06:57:00', '2023-02-16 06:57:00'),
(8, 1, 'ok g', '2023-02-16 06:57:27', '2023-02-16 06:57:27'),
(9, 1, 'ooye', '2023-02-16 07:03:39', '2023-02-16 07:03:39'),
(10, 1, 'bhai', '2023-02-16 07:03:42', '2023-02-16 07:03:42'),
(11, 5, 'hello bhai jaan', '2023-03-17 00:58:15', '2023-03-17 00:58:15'),
(12, 5, 'hello', '2023-03-17 00:58:46', '2023-03-17 00:58:46'),
(13, 4, 'hello', '2023-03-17 00:58:53', '2023-03-17 00:58:53'),
(14, 4, 'hello', '2023-03-17 01:07:30', '2023-03-17 01:07:30'),
(15, 4, 'hello', '2023-03-17 01:09:42', '2023-03-17 01:09:42'),
(16, 4, 'fdd', '2023-03-17 01:09:58', '2023-03-17 01:09:58'),
(17, 5, 'hello', '2023-04-03 06:42:30', '2023-04-03 06:42:30'),
(18, 5, 'hello', '2023-04-03 06:57:54', '2023-04-03 06:57:54'),
(19, 4, 'hsdkhd', '2023-04-04 00:28:30', '2023-04-04 00:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2022_11_30_043039_create_items_table', 1),
(6, '2022_12_04_232955_create_wishlists_table', 1),
(7, '2022_12_27_090802_create_services_table', 1),
(8, '2022_12_27_090931_create_colors_table', 1),
(9, '2022_12_27_091012_create_categories_table', 1),
(10, '2022_12_27_092909_create_color_services_table', 1),
(11, '2023_01_02_110643_create_notifications_table', 1),
(12, '2023_01_02_124842_create_orders_table', 1),
(13, '2023_01_03_043610_create_orderconfirms_table', 1),
(14, '2023_01_04_151723_create_sessions_table', 1),
(15, '0000_00_00_000000_create_websockets_statistics_entries_table', 2),
(16, '2023_02_15_111110_create_messages_table', 2),
(17, '2023_04_05_999999_add_active_status_to_users', 3),
(18, '2023_04_05_999999_add_avatar_to_users', 3),
(19, '2023_04_05_999999_add_dark_mode_to_users', 3),
(20, '2023_04_05_999999_add_messenger_color_to_users', 3),
(21, '2023_04_05_999999_create_chatify_favorites_table', 3),
(22, '2023_04_05_999999_create_chatify_messages_table', 3),
(23, '2023_04_19_115033_create_notifications_table', 4),
(24, '2023_04_19_115354_create_notifications_table', 5),
(25, '2023_04_19_121619_create_notifications_table', 6),
(26, '2023_04_24_104447_create_notifications_table', 7),
(27, '2023_04_26_165640_service', 8),
(28, '2023_04_28_133452_create_public_contacts_table', 9),
(29, '2023_05_18_095908_create_category_tech_table', 10),
(30, '0_create_notifications_table', 11),
(31, '2023_01_03_133820_orderconfirms', 11),
(32, '00_create_deposits_table', 12),
(33, '2023_07_10_081036_add_otp_to_users', 13),
(34, '00_service', 14),
(35, '2023_07_10_134216_add_note_to_orders_table', 15),
(36, '2022_12_04_232955_create_invoice_table', 16),
(37, '2022_12_27_090931_create_taxes_table', 16),
(38, '2023_01_02_124842_create_estimate_table', 16),
(39, '330000_create_user_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('16728cdb-a9f6-42b7-b0bb-b2295880bb9c', 'App\\Notifications\\NewOrderPlaced', 'App\\Models\\User', 84, '{\"data\":\" New Order has been Placed for 90 has successfully benn placed\"}', '2023-07-10 13:37:17', '2023-07-10 20:28:43', '2023-07-10 20:28:43'),
('1ab964b5-9837-4ca7-bc10-2dbdd9c84d2f', 'App\\Notifications\\DepositSuccessful', 'App\\Models\\User', 85, '{\"data\":\" Your Order 91 has successfully benn placed\"}', NULL, '2023-07-10 20:29:52', '2023-07-10 20:29:52'),
('247129b3-ba51-4f98-abaf-9044f464a068', 'App\\Notifications\\DepositSuccessful', 'App\\Models\\User', 85, '{\"data\":\" Your Order 90 has successfully benn placed\"}', '2023-07-10 14:48:52', '2023-07-10 20:28:43', '2023-07-10 20:28:43'),
('2d61c738-fbf6-44e7-9fb0-216cd3d330c3', 'App\\Notifications\\DepositSuccessful', 'App\\Models\\User', 85, '{\"data\":\" Your Order 93 has successfully benn placed\"}', NULL, '2023-07-10 21:53:22', '2023-07-10 21:53:22'),
('40aa8fc0-0338-48e3-846f-64005e2931a8', 'App\\Notifications\\NewOrderPlaced', 'App\\Models\\User', 85, '{\"data\":\" New Order has been Placed for Cancel has successfully benn placed\"}', NULL, '2023-07-10 21:15:39', '2023-07-10 21:15:39'),
('49b668ef-16e3-4621-a4b2-37d7a715e411', 'App\\Notifications\\NewOrderPlaced', 'App\\Models\\User', 84, '{\"data\":\" New Order has been Placed for Drinks Hand made has successfully benn placed\"}', '2023-07-10 14:56:24', '2023-07-10 21:53:22', '2023-07-10 21:53:22'),
('4a59ca77-e4d6-4130-bcac-e61f4ed039e8', 'App\\Notifications\\NewOrderPlaced', 'App\\Models\\User', 87, '{\"data\":\" New Order has been Placed for test has successfully benn placed\"}', NULL, '2023-07-11 17:10:05', '2023-07-11 17:10:05'),
('4f366d4b-bfe5-434a-bcaa-bf40ce407262', 'App\\Notifications\\OrderStatusChanged', 'App\\Models\\User', 85, '{\"data\":\" Dear Customer, Your Order Status has been Changed as: Delivered because : fajkdljrapofl\"}', NULL, '2023-07-10 21:57:19', '2023-07-10 21:57:19'),
('52269acb-5a8c-470d-87a5-ae1fad22ec85', 'App\\Notifications\\NewOrderPlaced', 'App\\Models\\User', 84, '{\"data\":\" New Order has been Placed for shaurma has successfully benn placed\"}', '2023-07-10 13:37:15', '2023-07-10 20:33:34', '2023-07-10 20:33:34'),
('52a8e025-3536-4e8d-8ecc-ffc025621811', 'App\\Notifications\\OrderStatusChanged', 'App\\Models\\User', 85, '{\"data\":\" Dear Customer, Your Order Status has been Changed as: Cancel because : out of shockkkkk\"}', NULL, '2023-07-10 21:17:42', '2023-07-10 21:17:42'),
('5d0c6940-e0c1-41c7-83d1-12ce69e34e98', 'App\\Notifications\\CategorySuccess', 'App\\Models\\User', 84, '{\"data\":\" Admin has Added a new Category : ALi Muhavia \"}', NULL, '2023-07-10 22:07:30', '2023-07-10 22:07:30'),
('617520c0-9c51-432a-b3f7-4a2d1051d3ec', 'App\\Notifications\\DepositSuccessful', 'App\\Models\\User', 85, '{\"data\":\" Your Order 92 has successfully benn placed\"}', NULL, '2023-07-10 20:33:34', '2023-07-10 20:33:34'),
('80be6e21-4b73-4706-a8bb-e17d0cd95acb', 'App\\Notifications\\NewOrderPlaced', 'App\\Models\\User', 84, '{\"data\":\" New Order has been Placed for 91 has successfully benn placed\"}', '2023-07-10 13:37:19', '2023-07-10 20:29:52', '2023-07-10 20:29:52'),
('895e04f2-1880-49a2-8383-1d3500807166', 'App\\Notifications\\CategorySuccess', 'App\\Models\\User', 84, '{\"data\":\" Admin has Added a new Category : df;sdlakfj \"}', NULL, '2023-07-10 22:00:08', '2023-07-10 22:00:08'),
('9a4df667-d089-40ff-920d-ef3686831aa8', 'App\\Notifications\\CategorySuccess', 'App\\Models\\User', 83, '{\"data\":\" Admin has Added a new Category : df;sdlakfj \"}', '2023-07-10 15:07:06', '2023-07-10 22:00:08', '2023-07-10 22:00:08'),
('b5fb63cd-762c-4e88-884c-7c484e91a973', 'App\\Notifications\\DepositSuccessful', 'App\\Models\\User', 88, '{\"data\":\" Your Order 94 has successfully benn placed\"}', '2023-07-11 10:10:17', '2023-07-11 17:10:05', '2023-07-11 17:10:05'),
('ce373d80-9641-417a-85b9-23cfb4cb5bd7', 'App\\Notifications\\OrderStatusChanged', 'App\\Models\\User', 88, '{\"data\":\" Dear Customer, Your Order Status has been Changed as: Cancel because : out of stock\"}', '2023-07-11 10:17:50', '2023-07-11 17:16:58', '2023-07-11 17:16:58'),
('dc242599-0cc0-46be-ab41-09379cb495b1', 'App\\Notifications\\CategorySuccess', 'App\\Models\\User', 83, '{\"data\":\" Admin has Added a new Category : ALi Muhavia \"}', '2023-07-10 15:07:48', '2023-07-10 22:07:30', '2023-07-10 22:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `orderconfirms`
--

CREATE TABLE `orderconfirms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `totalAmount` int(20) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `totalAmount`, `user_id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`, `note`) VALUES
(93, 0, 85, 'Shahbaz Ali', 'sa38299793@gmail.com', '03235383806', 'rawalpindi, punjab', 'pending', '2023-07-10 21:53:20', '2023-07-10 21:53:20', ''),
(94, 0, 88, 'Shahbaz Ali', 'sa38299793@gmail.com', '03235383806', 'rawalpindi, punjab', 'Cancel', '2023-07-11 17:10:05', '2023-07-11 17:16:58', 'out of stock'),
(95, 6710, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, ''),
(96, 6710, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, ''),
(97, 6710, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, ''),
(98, 6710, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, ''),
(99, 6710, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, ''),
(100, 1100, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, ''),
(101, 600, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sa38299793@gmail.com', '$2y$10$nYz/5yJ0FHn4o1YCFQ.evuLtu.LPC5dnhkRKKWuPscMKRMUNqq9KK', '2023-05-22 15:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(197, 'App\\Models\\User', 96, 'mytoken206', '4222fb1c9c8f2446ac237af05cd1efb477607b967af691f9d73a8c9f7cc82e58', '{\"role\":\"admin\"}', NULL, '2023-07-25 19:01:38', '2023-07-25 18:56:38', '2023-07-25 18:56:38'),
(198, 'App\\Models\\User', 96, 'mytoken206', '47aaaae82de142d3411af33559cd56adf6d224a47d341448c22fa583d772b13c', '{\"role\":\"admin\"}', NULL, '2023-07-25 18:51:48', '2023-07-25 18:56:48', '2023-07-25 18:56:48'),
(199, 'App\\Models\\User', 96, 'mytoken206', 'ec374882f29d3b0ba5cb77c7434999292b6976303005d0c51850ee61ec251c8a', '{\"role\":\"admin\"}', NULL, '2023-07-25 19:06:09', '2023-07-25 19:01:09', '2023-07-25 19:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `public_contacts`
--

CREATE TABLE `public_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_contacts`
--

INSERT INTO `public_contacts` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(5, 'tremblay.adolph@example.org', 'i want register in your society', '2023-05-07 09:57:15', '2023-05-07 09:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `restaurent_id`, `title`, `description`, `price`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(13, 0, 'normal food', 'dgdfg', 45000, 26, 'products/1690886785158.PNG', '2023-08-01 17:46:25', '2023-08-02 18:05:26'),
(14, 0, 'taxila chat special', 'taxila special caht limited time avalibility', 300, 21, 'products/1690973693552.PNG', '2023-08-02 17:54:53', '2023-08-02 17:54:53'),
(15, 0, 'rawalpindi rayal chat', 'dsgfsafrsfasdff', 500, 21, 'products/1690973765749.PNG', '2023-08-02 17:56:05', '2023-08-02 17:56:05'),
(16, 0, 'channa chat', 'channa chat First Time and Night', 250, 21, 'products/169097382495.PNG', '2023-08-02 17:57:04', '2023-08-02 17:57:04'),
(17, 0, 'bumbai biryani', 'bumbai biryani', 500, 22, 'products/1690973854349.PNG', '2023-08-02 17:57:34', '2023-08-02 17:57:34'),
(18, 0, 'biryani special', 'fsfgs', 444, 22, 'products/1690973879803.PNG', '2023-08-02 17:57:59', '2023-08-02 17:57:59'),
(19, 0, 'biryani large mix', 'fvasdfcs', 650, 22, 'products/1690973902801.PNG', '2023-08-02 17:58:22', '2023-08-02 17:58:22'),
(20, 0, 'the khan karahi', 'fgfd', 555, 23, 'products/1690973948488.PNG', '2023-08-02 17:59:08', '2023-08-02 17:59:08'),
(21, 0, 'the malik karahi', 'the malik karahi', 656, 23, 'products/1690973971286.PNG', '2023-08-02 17:59:31', '2023-08-02 17:59:31'),
(22, 0, 'the royal karahi', 'fasgassdgsdgv', 3342, 23, 'products/1690973992358.PNG', '2023-08-02 17:59:52', '2023-08-02 17:59:52'),
(23, 0, 'Mix karahi', 'dghjtktl;yulkjh', 1200, 23, 'products/1690974019305.PNG', '2023-08-02 18:00:19', '2023-08-02 18:00:19'),
(24, 0, 'mix sallad', 'mix sallad', 233, 24, 'products/1690974041755.PNG', '2023-08-02 18:00:41', '2023-08-02 18:00:41'),
(25, 0, 'mix sallad special', 'mix sallad special', 250, 24, 'products/1690974067292.PNG', '2023-08-02 18:01:07', '2023-08-02 18:01:07'),
(26, 0, 'Mix Soft Drink', 'Mix Soft Drink', 300, 25, 'products/1690974098332.PNG', '2023-08-02 18:01:38', '2023-08-02 18:01:38'),
(27, 0, 'Special Soft Drink', 'Special Soft Drink', 200, 25, 'products/169097413018.PNG', '2023-08-02 18:02:10', '2023-08-02 18:02:10'),
(28, 0, 'Special Mix food', 'Special Mix food', 800, 26, 'products/1690974169802.PNG', '2023-08-02 18:02:49', '2023-08-02 18:02:49'),
(29, 0, 'khan food', 'khan foodgk fkglvdsjxfnvsdx', 600, 26, 'products/1690974225725.PNG', '2023-08-02 18:03:45', '2023-08-02 18:03:45'),
(30, 0, 'Malik food special', 'Malik food specialfsl kgsdgjusdgfdsgk nsdk gjfc', 900, 26, 'products/1690974267461.PNG', '2023-08-02 18:04:27', '2023-08-02 18:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technician_info`
--

CREATE TABLE `technician_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_tech` int(255) NOT NULL,
  `tech_time_id` bigint(20) UNSIGNED NOT NULL,
  `min_fee` decimal(10,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `aproved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technician_info`
--

INSERT INTO `technician_info` (`id`, `category_tech`, `tech_time_id`, `min_fee`, `user_id`, `aproved`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1500.00, 1, 1, NULL, NULL),
(2, 2, 3, 1800.00, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `ph_no` varchar(20) DEFAULT NULL,
  `amount_due` varchar(20) NOT NULL,
  `otp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `ph_no` varchar(20) DEFAULT NULL,
  `status` text NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL,
  `otp` varchar(20) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `category_id`, `password`, `remember_token`, `profile_photo_path`, `ph_no`, `status`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`, `otp`, `latitude`, `longitude`) VALUES
(96, 'Shahbaz muhavia', 'sa38299793@gmail.com', '2023-07-21 17:25:06', 2, 0, '$2y$10$Iqf9MeMaTubKZb6b42..D.7oIhia2wgF1V5GFByoQeygM1ieYhznu', NULL, 'profile_pics/kAa7a26QG82yxf6wXLZFo9mNA5i5M17OHQoTpZdg.png', '03235383001', 'pending', '2023-07-21 17:24:26', '2023-07-25 14:47:25', 0, 'avatar.png', 0, NULL, '349899', 33.7544249, 72.7451701);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `services_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `services_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 3, 2, NULL, NULL),
(6, 3, 5, NULL, NULL),
(8, 3, 7, NULL, NULL),
(11, 44, 11, NULL, NULL),
(12, 44, 8, '2023-05-31 14:42:25', '2023-05-31 14:42:25'),
(13, 44, 9, NULL, NULL),
(14, 44, 4, NULL, NULL),
(17, 46, 11, NULL, NULL),
(18, 46, 9, NULL, NULL),
(19, 46, 8, NULL, NULL),
(20, 46, 4, NULL, NULL),
(21, 48, 11, '2023-06-08 12:13:20', '2023-06-08 12:13:20'),
(22, 47, 11, NULL, NULL),
(23, 47, 9, NULL, NULL),
(24, 47, 8, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_tech`
--
ALTER TABLE `category_tech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_services`
--
ALTER TABLE `color_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`);

--
-- Indexes for table `estimate`
--
ALTER TABLE `estimate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orderconfirms`
--
ALTER TABLE `orderconfirms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `public_contacts`
--
ALTER TABLE `public_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technician_info`
--
ALTER TABLE `technician_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `category_tech`
--
ALTER TABLE `category_tech`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `color_services`
--
ALTER TABLE `color_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `estimate`
--
ALTER TABLE `estimate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orderconfirms`
--
ALTER TABLE `orderconfirms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `public_contacts`
--
ALTER TABLE `public_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technician_info`
--
ALTER TABLE `technician_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
