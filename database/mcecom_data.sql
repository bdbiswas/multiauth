-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 06:06 PM
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
-- Database: `mvecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_url`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'www.youtube.com', 'upload/banner/1776020164734011.png', NULL, NULL),
(2, 'banner2', 'www.google.com', 'upload/banner/1776020192028480.png', NULL, NULL),
(3, 'banner 3', 'www.youtube.com', 'upload/banner/1776020208536953.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name` varchar(255) NOT NULL,
  `blog_category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category_name`, `blog_category_slug`, `created_at`, `updated_at`) VALUES
(1, 'New Product', 'new-product', '2023-09-10 19:07:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_short_description` text NOT NULL,
  `post_long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title`, `post_slug`, `post_image`, `post_short_description`, `post_long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'hello this is new brand product', 'hello-this-is-new-brand-product', 'upload/blog/1776769606217472.png', 'blog post short discription', '<p>blog post short discription</p>', '2023-09-10 19:09:46', '2023-09-11 17:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'samsung', 'samsung', 'upload/brand/1775664524659651.png', NULL, '2023-08-30 12:27:31'),
(2, 'redmin', 'redmin', 'upload/brand/1775664184522978.png', NULL, NULL),
(3, 'philips', 'philips', 'upload/brand/1775664862906493.png', NULL, '2023-08-30 12:32:54'),
(4, 'philips', 'philips', 'upload/brand/1775664199547619.png', NULL, NULL),
(5, 'fidex', 'fidex', 'upload/brand/1775664234302717.png', NULL, NULL),
(6, 'Tecno', 'tecno', 'upload/brand/1775664258935227.png', NULL, NULL),
(7, 'Nokia', 'nokia', 'upload/brand/1775664559902927.jpg', NULL, NULL),
(8, 'Polo', 'polo', 'upload/brand/1775664586083638.png', NULL, NULL),
(9, 'Arena', 'arena', 'upload/brand/1775664636399723.png', NULL, NULL),
(10, 'HEJAB', 'hejab', 'upload/brand/1775665198038132.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 'fashion', 'upload/category/1775821265745120.png', NULL, '2023-09-03 18:34:53'),
(2, 'Electronics', 'electronics', 'upload/category/1775821288785788.webp', NULL, '2023-09-01 05:59:13'),
(3, 'Men\'s Clothing', 'men\'s-clothing', 'upload/category/1775821323897985.webp', NULL, '2023-09-01 05:59:47'),
(4, 'Watch & Jewelry', 'watch-&-jewelry', 'upload/category/1775821357933011.webp', NULL, '2023-09-01 06:00:19'),
(5, 'Beauty & Health', 'beauty-&-health', 'upload/category/1775821394911439.webp', NULL, '2023-09-01 06:00:54'),
(6, 'Apparel Accessories', 'apparel-accessories', 'upload/category/1775821416914743.webp', NULL, '2023-09-01 06:01:15'),
(7, ' Bags', 'luggage-&-bags', 'upload/category/1775821445503198.webp', NULL, '2023-09-01 06:01:43'),
(8, 'Women\'s Clothing', 'women\'s-clothing', 'upload/category/1775821469977165.jpg', NULL, '2023-09-01 06:02:06'),
(9, 'Home Appliances', 'home-appliances', 'upload/category/1775821489607273.jpg', NULL, '2023-09-01 06:02:25'),
(10, 'Home & Garden', 'home-&-garden', 'upload/category/1775821526396599.jpg', NULL, '2023-09-01 06:03:00'),
(11, 'Mobile & Accessories', 'mobile-&-accessories', 'upload/category/1776019223198764.jpg', NULL, '2023-09-03 10:25:18'),
(12, 'Health & Household', 'health-&-household', 'upload/category/1776019199073490.jpg', NULL, '2023-09-03 10:24:55'),
(13, 'Underwear & Sleepwears', 'underwear-&-sleepwears', 'upload/category/1776019247285313.jpg', NULL, '2023-09-03 10:25:41'),
(14, 'Sports & Outdoor', 'sports-&-outdoor', 'upload/category/1776019175948431.webp', NULL, '2023-09-03 10:24:33'),
(15, 'Motorcycles', 'motorcycles', 'upload/category/1776019141409513.webp', NULL, '2023-09-03 10:24:01'),
(17, 'Office  School SUPPLIES', 'office--school-supplies', 'upload/category/1775667426918240.png', NULL, NULL),
(18, 'Security & Protection', 'security-&-protection', 'upload/category/1775667475978846.png', NULL, NULL),
(19, 'Babies & Kids', 'babies-&-kids', 'upload/category/1775667517758768.jpg', NULL, NULL),
(21, 'baby', 'baby', 'upload/category/1775721551172483.png', NULL, NULL),
(23, 'SweetHome Category', 'sweethome-category', 'upload/category/1776045038995477.jpg', NULL, NULL),
(24, 'new', 'new', 'upload/category/1776938220355657.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 3, 4, '2023-09-06 20:28:55', NULL),
(6, 3, 9, '2023-09-06 21:13:04', NULL),
(11, 3, 5, '2023-09-06 22:55:50', NULL),
(12, 3, 1, '2023-09-07 21:44:33', NULL),
(13, 3, 3, '2023-09-07 21:46:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(2, 'hello', 10, '2023-09-18', 1, '2023-09-07 20:54:11', NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_30_132307_create_brands_table', 2),
(6, '2023_08_30_145119_create_categories_table', 3),
(7, '2023_08_31_050041_create_sub_categories_table', 4),
(8, '2023_08_31_170346_create_products_table', 5),
(9, '2023_08_31_170927_create_multi_imgs_table', 5),
(10, '2023_09_01_071319_create_sliders_table', 6),
(11, '2023_09_03_104650_create_banners_table', 7),
(12, '2023_09_03_140242_create_reviews_table', 8),
(13, '2023_09_05_231611_create_wishlists_table', 9),
(14, '2023_09_06_212144_create_compares_table', 10),
(15, '2023_09_07_222311_create_coupons_table', 11),
(16, '2022_08_18_185725_create_ship_districts_table', 12),
(17, '2022_08_18_185836_create_ship_states_table', 12),
(18, '2023_09_07_230156_create_ship_divisions_table', 12),
(19, '2022_08_22_193242_create_orders_table', 13),
(20, '2022_08_22_194505_create_order_items_table', 13),
(21, '2022_09_06_194310_create_notifications_table', 14),
(22, '2023_09_09_183132_create_ship_divisions_table', 15),
(23, '2022_08_29_183616_create_blog_posts_table', 16),
(24, '2023_09_10_210041_create_blog_categories_table', 16),
(25, '2023_09_11_120627_create_site_settings_table', 17),
(26, '2023_09_11_124707_create_seos_table', 18),
(27, '2023_09_11_163304_create_permission_tables', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 19);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1775766986110577.png', '2023-08-31 15:36:06', NULL),
(2, 1, 'upload/products/multi-image/1775766986380262.png', '2023-08-31 15:36:07', NULL),
(3, 1, 'upload/products/multi-image/1775766986687130.png', '2023-08-31 15:36:07', NULL),
(5, 2, 'upload/products/multi-image/1775770814371431.png', '2023-08-31 15:40:46', '2023-08-31 16:36:57'),
(6, 2, 'upload/products/multi-image/1775767279335185.png', '2023-08-31 15:40:46', NULL),
(7, 5, 'upload/products/multi-image/1776030255867354.jpg', '2023-09-03 13:20:40', NULL),
(8, 5, 'upload/products/multi-image/1776030256042097.jpg', '2023-09-03 13:20:40', NULL),
(9, 5, 'upload/products/multi-image/1776030256202142.jpg', '2023-09-03 13:20:40', NULL),
(10, 5, 'upload/products/multi-image/1776030256362227.jpg', '2023-09-03 13:20:40', NULL),
(11, 6, 'upload/products/multi-image/1776030338058741.jpg', '2023-09-03 13:21:58', NULL),
(12, 6, 'upload/products/multi-image/1776030338196691.jpg', '2023-09-03 13:21:58', NULL),
(13, 6, 'upload/products/multi-image/1776030338348666.jpg', '2023-09-03 13:21:59', NULL),
(14, 6, 'upload/products/multi-image/1776030338539502.jpg', '2023-09-03 13:21:59', NULL),
(15, 7, 'upload/products/multi-image/1776030413333799.jpg', '2023-09-03 13:23:10', NULL),
(16, 7, 'upload/products/multi-image/1776030413469812.jpg', '2023-09-03 13:23:10', NULL),
(17, 7, 'upload/products/multi-image/1776030413618436.jpg', '2023-09-03 13:23:10', NULL),
(18, 7, 'upload/products/multi-image/1776030413768247.jpg', '2023-09-03 13:23:10', NULL),
(19, 7, 'upload/products/multi-image/1776030413911048.jpg', '2023-09-03 13:23:11', NULL),
(20, 8, 'upload/products/multi-image/1776030505108312.jpg', '2023-09-03 13:24:38', NULL),
(21, 8, 'upload/products/multi-image/1776030505306921.jpg', '2023-09-03 13:24:38', NULL),
(22, 8, 'upload/products/multi-image/1776030505443131.jpg', '2023-09-03 13:24:38', NULL),
(23, 9, 'upload/products/multi-image/1776030611309957.jpg', '2023-09-03 13:26:19', NULL),
(24, 9, 'upload/products/multi-image/1776030611464264.jpg', '2023-09-03 13:26:19', NULL),
(25, 9, 'upload/products/multi-image/1776030611617653.jpg', '2023-09-03 13:26:19', NULL),
(26, 10, 'upload/products/multi-image/1776030687746953.jpg', '2023-09-03 13:27:32', NULL),
(27, 10, 'upload/products/multi-image/1776030687919821.jpg', '2023-09-03 13:27:32', NULL),
(28, 10, 'upload/products/multi-image/1776030688076949.jpg', '2023-09-03 13:27:32', NULL),
(29, 10, 'upload/products/multi-image/1776030688228044.jpg', '2023-09-03 13:27:32', NULL),
(30, 11, 'upload/products/multi-image/1776052581353736.jpg', '2023-09-03 19:15:31', NULL),
(31, 11, 'upload/products/multi-image/1776052581497688.jpg', '2023-09-03 19:15:31', NULL),
(32, 11, 'upload/products/multi-image/1776052581649864.jpg', '2023-09-03 19:15:31', NULL),
(33, 11, 'upload/products/multi-image/1776052581779977.jpg', '2023-09-03 19:15:31', NULL),
(34, 11, 'upload/products/multi-image/1776052581977462.jpg', '2023-09-03 19:15:32', NULL),
(35, 12, 'upload/products/multi-image/1776052664986312.jpg', '2023-09-03 19:16:51', NULL),
(36, 12, 'upload/products/multi-image/1776052665143794.jpg', '2023-09-03 19:16:51', NULL),
(37, 12, 'upload/products/multi-image/1776052665293398.jpg', '2023-09-03 19:16:51', NULL),
(38, 12, 'upload/products/multi-image/1776052665446610.jpg', '2023-09-03 19:16:51', NULL);

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
('094f75dd-f790-4958-8acd-f5e182de331d', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 5, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('13235bb9-ffc7-4e70-acd8-ac253bed2ea0', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 1, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:57:11', '2023-09-09 09:57:11'),
('1e75c1d1-86ee-4044-95d1-d5e5adeb710e', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 9, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:24:09', '2023-09-09 09:24:09'),
('2a8c4386-462e-4abc-9148-5ce4c37d0542', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 2, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('2eda289d-1130-4287-b0f6-6091d422400d', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 9, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:57:11', '2023-09-09 09:57:11'),
('34c81144-cc2c-4496-b9d7-a72cb733a8fd', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 11, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('4340286c-cd4c-45a2-b8ba-2837fbff2a4f', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 15, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('44f41e6c-bf81-4dd3-a893-08940402d5fc', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 6, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 10:26:58', '2023-09-09 10:26:58'),
('463418cb-f458-4fa0-add0-3b3fd46b5654', 'App\\Notifications\\RegisterUserNotification', 'App\\Models\\User', 21, '{\"message\":\"New User Register In Shop\"}', NULL, '2023-09-13 13:05:59', '2023-09-13 13:05:59'),
('5070595f-3dcc-4d39-868d-fda75a453adb', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 6, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:24:09', '2023-09-09 09:24:09'),
('54c5790c-8ce3-4dc2-9ad0-84081e6abfaa', 'App\\Notifications\\RegisterUserNotification', 'App\\Models\\User', 1, '{\"message\":\"New User Register In Shop\"}', NULL, '2023-09-13 13:05:59', '2023-09-13 13:05:59'),
('621b6d6a-6677-48ba-bd4e-7d3ea9012131', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 1, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:24:09', '2023-09-09 09:24:09'),
('62e14d2b-ee09-49ac-ac6e-d0dc18d4a7a6', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 8, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 10:26:58', '2023-09-09 10:26:58'),
('640221b2-0c29-413b-b3b7-e68db49bc84c', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 8, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:57:11', '2023-09-09 09:57:11'),
('71b51e98-28cb-46d2-aa91-795010188fff', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 7, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('72202e18-57ea-4b84-b58d-45deb437f509', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 6, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:57:11', '2023-09-09 09:57:11'),
('78b63a3c-9e38-49fa-9909-14c6f2ab3f00', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 23, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('8bfc78ae-3a0b-4a23-8189-b8b678774789', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 9, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 10:26:58', '2023-09-09 10:26:58'),
('b53c7817-f695-4042-858f-bf2eb2a86af9', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 8, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 09:24:09', '2023-09-09 09:24:09'),
('b5770e39-4daf-4778-904e-944ac7b91309', 'App\\Notifications\\RegisterUserNotification', 'App\\Models\\User', 22, '{\"message\":\"New User Register In Shop\"}', NULL, '2023-09-13 13:05:59', '2023-09-13 13:05:59'),
('cb5f4d80-5708-4f0b-a60c-c947d49576d6', 'App\\Notifications\\RegisterUserNotification', 'App\\Models\\User', 19, '{\"message\":\"New User Register In Shop\"}', NULL, '2023-09-13 13:05:59', '2023-09-13 13:05:59'),
('da8944e7-83c4-459d-a2d5-bd490934dcb4', 'App\\Notifications\\VendorApproveNotification', 'App\\Models\\User', 14, '{\"message\":\"Admin Approve Your Account\"}', NULL, '2023-09-13 13:23:47', '2023-09-13 13:23:47'),
('de981414-97e4-4353-9616-490f0199210e', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 1, '{\"message\":\"New Order Added in Shop\"}', NULL, '2023-09-09 10:26:58', '2023-09-09 10:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `picked_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `return_order` varchar(200) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `adress`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `return_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'Via paolo piazza, 11/2', '31033', 'test data', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 3.00, NULL, 'EOS86617355', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 04:58:10', NULL),
(2, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'Via paolo piazza, 11/2', '31033', 'test data', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 3.00, NULL, 'EOS27232806', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:01:25', NULL),
(3, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'Via paolo piazza, 11/2', '31033', 'test data', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 3.00, NULL, 'EOS63707675', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:23:45', NULL),
(4, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', '03928858055', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS94413275', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:29:09', NULL),
(5, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', '03928858055', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS63834668', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:32:26', NULL),
(6, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', '03928858055', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS80206479', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:32:46', NULL),
(7, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', '03928858055', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS43449959', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:39:09', NULL),
(8, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', '03928858055', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS24510394', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 05:42:33', NULL),
(9, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', 'dhaka', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS55677417', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 09:15:54', NULL),
(10, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', 'dhaka', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 0.00, NULL, 'EOS57513090', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 09:19:36', NULL),
(11, 16, NULL, NULL, NULL, 'bdbiswas', 'mdsahan77@gmail.com', 'dhaka', 'Via paolo piazza, 11/2', '31033', NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 0.00, NULL, 'EOS52942187', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 09:24:06', NULL),
(12, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'user address', '31033', 'test', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 126.00, NULL, 'EOS59207654', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 09:57:08', NULL),
(13, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'user address', '31033', NULL, 'card_1NoQ5CJGs6SVKorQCQw4yykR', 'Stripe', 'txn_3NoQ64JGs6SVKorQ0iK91ywq', 'usd', 1.00, '64fc6243b3f0c', 'EOS47087944', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 10:17:09', NULL),
(14, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'ADDRESS', '31033', 'TEST', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 1.00, NULL, 'EOS44264569', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 10:26:55', NULL),
(15, 3, NULL, NULL, NULL, 'User', 'mdsahan77@gmail.com', '03928858055', 'Via paolo piazza, 11/2', '31033', NULL, 'card_1NoSwPJGs6SVKorQmJQ80aPj', 'Stripe', 'txn_3NoSwQJGs6SVKorQ1OFj7Pmt', 'usd', 80.00, '64fc8cf9ed8a3', 'EOS35080669', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 13:19:23', NULL),
(16, 3, NULL, NULL, NULL, 'User', 'user@gmail.com', '234567', 'user address', '42424', NULL, 'card_1NoUohJGs6SVKorQjAMgJhI4', 'Stripe', 'txn_3NoUtpJGs6SVKorQ06Eadgz4', 'usd', 54.00, '64fcaa60305d1', 'EOS51696576', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'pending', '2023-09-09 15:24:50', NULL),
(17, 16, NULL, NULL, NULL, 'bdbiswas', 'biswasbd7@gmail.com', 'dhaka', 'daha', '31033', 'test', 'card_1NoW3wJGs6SVKorQZHPoVeqZ', 'Stripe', 'txn_3NoW5BJGs6SVKorQ1TSGkRd9', 'usd', 1.00, '64fcbc24ce338', 'EOS22045588', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'confirm', '2023-09-09 16:40:41', '2023-09-09 18:03:58'),
(18, 3, NULL, NULL, NULL, 'User', 'user@gmail.com', 'khulna', 'user address', '31033', NULL, 'card_1NoWf0JGs6SVKorQ8RbnTb73', 'Stripe', 'txn_3NoWf2JGs6SVKorQ17VRELI8', 'usd', 1.00, '64fcc4d357110', 'EOS29846111', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'processing', '2023-09-09 17:17:41', '2023-09-09 18:04:22'),
(19, 3, NULL, NULL, NULL, 'User', 'user@gmail.com', 'dhaka', 'user address', '23456', NULL, 'card_1NoWzWJGs6SVKorQ0DpLaiGe', 'Stripe', 'txn_3NoWzXJGs6SVKorQ1QRxKdOH', 'usd', 36.00, '64fcc9cb03748', 'EOS74988339', '09 September 2023', 'September', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '09 September 2023', 'worng product', '2', 'deliverd', '2023-09-09 17:38:52', '2023-09-09 19:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `vendor_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 8, 2, '15', 'Red', 'Small', '1', 1000.00, '2023-09-09 05:42:36', NULL),
(2, 8, 3, '2', 'Red', 'Small', '1', 100.00, '2023-09-09 05:42:36', NULL),
(3, 9, 7, '14', 'Red', 'Small', '1', 80.00, '2023-09-09 09:15:58', NULL),
(4, 9, 9, '15', 'Red', 'Small', '1', 40.00, '2023-09-09 09:15:58', NULL),
(5, 9, 6, '14', 'Red', 'Small', '1', 1000.00, '2023-09-09 09:15:58', NULL),
(6, 12, 7, '14', 'Red', 'Small', '1', 80.00, '2023-09-09 09:57:11', NULL),
(7, 12, 8, '2', 'Red', 'Small', '1', 20.00, '2023-09-09 09:57:11', NULL),
(8, 12, 9, '15', 'Red', 'Small', '1', 40.00, '2023-09-09 09:57:11', NULL),
(9, 13, 7, '14', 'Red', 'Small', '1', 80.00, '2023-09-09 10:17:12', NULL),
(10, 13, 6, '14', 'Red', 'Small', '1', 1000.00, '2023-09-09 10:17:12', NULL),
(11, 13, 9, '15', 'Red', 'Small', '1', 40.00, '2023-09-09 10:17:12', NULL),
(12, 14, 2, '15', '--Choose Color--', '--Choose Size--', '1', 1000.00, '2023-09-09 10:26:57', NULL),
(13, 15, 7, '14', 'Red', 'Small', '1', 80.00, '2023-09-09 13:19:26', NULL),
(14, 16, 8, '2', 'Red', 'Small', '1', 20.00, '2023-09-09 15:24:53', NULL),
(15, 16, 9, '15', 'Red', 'Small', '1', 40.00, '2023-09-09 15:24:53', NULL),
(16, 17, 2, '15', 'Red', 'Small', '1', 1000.00, '2023-09-09 16:40:45', NULL),
(17, 17, 3, '2', 'Red', 'Small', '1', 100.00, '2023-09-09 16:40:45', NULL),
(18, 18, 4, '2', 'Red', 'Small', '1', 100.00, '2023-09-09 17:17:44', NULL),
(19, 18, 5, '2', 'Red', 'Small', '1', 80.00, '2023-09-09 17:17:44', NULL),
(20, 18, 2, '15', 'Red', 'Small', '1', 1000.00, '2023-09-09 17:17:44', NULL),
(21, 19, 9, '15', 'Red', 'Small', '1', 40.00, '2023-09-09 17:38:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'brand.menu', 'web', 'brand', '2023-09-11 14:58:36', '2023-09-12 13:59:05'),
(2, 'brand.list', 'web', 'brand', '2023-09-11 15:00:33', '2023-09-12 14:00:00'),
(3, 'brand.add', 'web', 'brand', '2023-09-11 15:00:52', '2023-09-12 14:00:10'),
(4, 'brand.edit', 'web', 'brand', '2023-09-11 15:01:15', '2023-09-12 14:00:21'),
(5, 'brand.delete', 'web', 'brand', '2023-09-11 15:01:42', '2023-09-12 14:00:35'),
(6, 'cat.menu', 'web', 'category', '2023-09-11 15:02:31', '2023-09-12 14:00:51'),
(7, 'category.list', 'web', 'category', '2023-09-11 16:12:00', '2023-09-11 16:12:00'),
(8, 'category.add', 'web', 'category', '2023-09-11 16:13:13', '2023-09-11 16:13:13'),
(9, 'category.edit', 'web', 'category', '2023-09-11 16:13:38', '2023-09-11 16:13:38'),
(10, 'category.delete', 'web', 'category', '2023-09-11 16:14:04', '2023-09-11 16:14:04'),
(11, 'subcategory.menu', 'web', 'subcategory', '2023-09-12 14:09:39', '2023-09-12 14:09:39'),
(12, 'subcategory.list', 'web', 'subcategory', '2023-09-12 14:10:27', '2023-09-12 14:10:27'),
(13, 'subcategory.add', 'web', 'subcategory', '2023-09-12 14:11:07', '2023-09-12 14:11:07'),
(14, 'subcategory.edit', 'web', 'subcategory', '2023-09-12 14:11:31', '2023-09-12 14:11:31'),
(15, 'subcategory.delete', 'web', 'subcategory', '2023-09-12 14:11:56', '2023-09-12 14:11:56'),
(16, 'product.menu', 'web', 'product', '2023-09-12 14:13:42', '2023-09-12 14:13:42'),
(17, 'product.list', 'web', 'product', '2023-09-12 14:14:06', '2023-09-12 14:14:06'),
(18, 'product.add', 'web', 'product', '2023-09-12 14:14:29', '2023-09-12 14:14:29'),
(19, 'product.edit', 'web', 'product', '2023-09-12 14:14:55', '2023-09-12 14:14:55'),
(20, 'product.delete', 'web', 'product', '2023-09-12 14:15:23', '2023-09-12 14:15:23'),
(21, 'slider.menu', 'web', 'slider', '2023-09-12 14:15:51', '2023-09-12 14:15:51'),
(22, 'slider.list', 'web', 'slider', '2023-09-12 14:16:16', '2023-09-12 14:16:16'),
(23, 'slider.add', 'web', 'slider', '2023-09-12 14:16:38', '2023-09-12 14:16:38'),
(24, 'slider.edit', 'web', 'slider', '2023-09-12 14:17:04', '2023-09-12 14:17:04'),
(25, 'slider.delete', 'web', 'slider', '2023-09-12 14:17:32', '2023-09-12 14:17:32'),
(26, 'ads.menu', 'web', 'ads', '2023-09-12 14:18:11', '2023-09-12 14:18:11'),
(27, 'ads.list', 'web', 'ads', '2023-09-12 14:18:34', '2023-09-12 14:18:34'),
(28, 'ads.add', 'web', 'ads', '2023-09-12 14:18:56', '2023-09-12 14:18:56'),
(29, 'ads.edit', 'web', 'ads', '2023-09-12 14:19:20', '2023-09-12 14:19:20'),
(30, 'ads.delete', 'web', 'ads', '2023-09-12 14:19:43', '2023-09-12 14:19:43'),
(31, 'coupon.menu', 'web', 'coupon', '2023-09-12 14:20:15', '2023-09-12 14:20:15'),
(32, 'coupon.list', 'web', 'coupon', '2023-09-12 14:20:36', '2023-09-12 14:20:36'),
(33, 'coupon.edit', 'web', 'coupon', '2023-09-12 14:23:30', '2023-09-12 14:23:30'),
(34, 'coupon.delete', 'web', 'coupon', '2023-09-12 14:24:04', '2023-09-12 14:24:04'),
(35, 'area.menu', 'web', 'area', '2023-09-12 14:24:37', '2023-09-12 14:24:37'),
(36, 'vendor.menu', 'web', 'vendor', '2023-09-12 14:25:00', '2023-09-12 14:25:00'),
(37, 'order.menu', 'web', 'order', '2023-09-12 14:25:22', '2023-09-12 14:25:22'),
(38, 'order.list', 'web', 'order', '2023-09-12 14:25:49', '2023-09-12 14:25:49'),
(39, 'order.edit', 'web', 'order', '2023-09-12 14:26:13', '2023-09-12 14:26:13'),
(40, 'order.delete', 'web', 'order', '2023-09-12 14:26:35', '2023-09-12 14:26:35'),
(41, 'return.order.menu', 'web', 'return', '2023-09-12 14:26:59', '2023-09-12 14:26:59'),
(42, 'user.management.menu', 'web', 'user', '2023-09-12 14:27:23', '2023-09-12 14:27:23'),
(43, 'review.menu', 'web', 'review', '2023-09-12 14:27:54', '2023-09-12 14:27:54'),
(44, 'blog.menu', 'web', 'blog', '2023-09-12 14:28:18', '2023-09-12 14:28:18'),
(45, 'site.menu', 'web', 'setting', '2023-09-12 14:28:48', '2023-09-12 14:28:48'),
(46, 'role.permission.menu', 'web', 'role', '2023-09-12 14:29:16', '2023-09-12 14:29:16'),
(47, 'admin.user.menu', 'web', 'admin', '2023-09-12 14:29:41', '2023-09-12 14:29:41'),
(48, 'stock.menu', 'web', 'stock', '2023-09-12 14:30:03', '2023-09-12 14:30:03'),
(49, 'report.menu', 'web', 'report', '2023-09-12 14:39:00', '2023-09-12 14:39:00');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_tags` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `vendor_id` varchar(255) DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 1, 'dress', 'dress', '4444', '4576', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '80', 'fgfhj', 'Hello, World!ytdds', 'upload/products/thambnail/1775766985402995.png', '2', 1, 1, 1, 1, 1, '2023-08-31 15:36:06', NULL),
(2, 5, 3, 9, 'shart', 'shart', '4444', '200', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '1000', NULL, 'fdfghh', 'Hello, World!', 'upload/products/thambnail/1775769342322865.png', '15', 1, 1, 1, 1, 1, '2023-08-31 16:44:20', '2023-08-31 16:44:20'),
(3, 7, 7, 7, 'dress', 'dress', '87hh', 'fty7', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', NULL, 'dfhjkl,', '<p>Hello, World!dfhj&egrave;pyfdzzdkhkj</p>', 'upload/products/thambnail/1775817277236510.jpg', '2', 1, 1, 1, 1, 1, '2023-09-01 04:55:28', NULL),
(4, 7, 7, 7, 'dress', 'dress', '87hh', 'fty7', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', NULL, 'dfhjkl,', '<p>Hello, World!dfhj&egrave;pyfdzzdkhkj</p>', 'upload/products/thambnail/1775817573799116.jpg', '2', 1, 1, 1, 1, 1, '2023-09-01 05:00:10', NULL),
(5, 1, 5, 8, 'cloth', 'cloth', '1000', '20', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '80', 'dfghjk', '<p>Hello, World!ftjk,..,,</p>', 'upload/products/thambnail/1776030255565128.webp', '2', 1, 1, 1, 1, 1, '2023-09-03 13:20:40', NULL),
(6, 8, 8, 24, 'cote', 'cote', '4444', '4576', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '1000', NULL, 'drftuhj', '<p>Hello, World!dsdtghyjkk</p>', 'upload/products/thambnail/1776030337859476.jpg', '14', 1, 1, 1, 1, 1, '2023-09-03 13:21:58', NULL),
(7, 9, 1, 4, 'shoes', 'shoes', '4444', '5457689', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '80', 'gghjhg', '<p>Hello, World!tdscxc</p>', 'upload/products/thambnail/1776030413173785.jpg', '14', 1, 1, 1, 1, 1, '2023-09-03 19:04:08', '2023-09-03 19:04:08'),
(8, 4, 5, 8, 'juta', 'juta', '1234', '4325', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '80', '20', 'cghj', '<p>Hello, World!jhfcxvbnkkluyfcvbnm,.</p>', 'upload/products/thambnail/1776030504963886.jpg', '2', 1, 1, 1, 1, 1, '2023-09-03 13:24:37', NULL),
(9, 6, 1, 4, 'sueter', 'sueter', '6778', '9986', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', '40', 'fthujjk', '<p>Hello, World!rerfhyjkkll,.l</p>', 'upload/products/thambnail/1776030611145694.jpg', '15', 1, 1, 1, 1, 1, '2023-09-03 18:35:23', '2023-09-09 18:02:07'),
(10, 3, 1, 4, 'dress', 'dress', 'wwwe', 'w3454', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '22222', '145676', 'dreesxcx', '<p>Hello, World!good dress</p>', 'upload/products/thambnail/1776030687537247.jpg', NULL, 1, 1, 1, 1, 1, '2023-09-03 18:35:40', '2023-09-03 18:35:40'),
(11, 1, 7, 7, 'bag', 'bag', '4444', '2344', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '100', NULL, 'good bag', 'Hello, World!   bafgfggs', 'upload/products/thambnail/1776052581158745.jpg', '2', 1, 1, 1, 1, 1, '2023-09-03 19:15:31', NULL),
(12, 3, 7, 30, 'handbag', 'handbag', 'qw', 'wswss', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '44445', '334', 'sdfg', 'Hello, Worasdfgfld!', 'upload/products/thambnail/1776052664825478.jpg', '2', 1, 1, 1, 1, 1, '2023-09-03 19:16:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `rating`, `status`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'dfghuj', '5', '1', 2, '2023-09-03 16:12:09', '2023-09-11 09:12:43'),
(2, 8, 1, 'hello review', '5', '1', 2, '2023-09-03 16:23:01', '2023-09-03 16:23:32'),
(3, 2, 1, 'this is good product', '5', '1', 15, '2023-09-11 09:11:43', '2023-09-11 09:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2023-09-11 15:04:51', '2023-09-11 15:04:51'),
(2, 'Admin', 'web', '2023-09-11 15:05:05', '2023-09-11 15:05:05'),
(3, 'CEO', 'web', '2023-09-11 15:05:25', '2023-09-11 15:05:25'),
(4, 'Account', 'web', '2023-09-11 15:05:57', '2023-09-12 14:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 2),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(43, 1),
(43, 3),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 3),
(46, 1),
(47, 1),
(47, 2),
(48, 1),
(48, 4),
(49, 4);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'bdbiswas', 'bdbiswas', 'best online shop,best t-shart,best -ecommerce site,best delevery', 'your profile', NULL, '2023-09-11 11:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'DHAKA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `support_phone`, `phone_one`, `email`, `company_address`, `facebook`, `twitter`, `youtube`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1776744781403926.png', '+39 392 8858055', '128888888', 'biswasbd7@gmail.com', NULL, 'ff', 'tw', 'you', 'Copyright © 2023. All right reserved.', NULL, '2023-09-11 16:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 'slider', 'short title2', 'upload/slider/1776013759333414.jpg', NULL, '2023-09-03 08:58:28'),
(2, 'slider3', 'short title3', 'upload/slider/1775819763133002.jpg', NULL, NULL),
(3, 'slider4', 'short title', 'upload/slider/1775819788217188.jpg', NULL, NULL),
(4, 'slider3', 'short title3', 'upload/slider/1776012404215428.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(255) DEFAULT NULL,
  `subcategory_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 2, 'mobile case', 'mobile-case', NULL, '2023-08-31 03:53:07'),
(2, 19, 'shart', 'shart', NULL, NULL),
(3, 19, 'shart', 'shart', NULL, NULL),
(4, 1, 'shart', 'shart', NULL, NULL),
(5, 7, 'fag', 'fag', NULL, NULL),
(6, 4, 'women dress', 'women-dress', NULL, NULL),
(7, 7, 'bag', 'bag', NULL, NULL),
(8, 5, 'bag', 'bag', NULL, NULL),
(9, 3, 'shart', 'shart', NULL, NULL),
(10, 8, 'jecket', 'jecket', NULL, NULL),
(11, 3, 'shart', 'shart', NULL, NULL),
(12, 2, 'Heasphones', 'heasphones', NULL, NULL),
(13, 2, 'laptops', 'laptops', NULL, NULL),
(14, 5, 'Cosmetics', 'cosmetics', NULL, NULL),
(15, 5, 'Perfume', 'perfume', NULL, NULL),
(16, 6, 'Man\'s Hats', 'man\'s-hats', NULL, NULL),
(17, 6, 'Men\'s Belts', 'men\'s-belts', NULL, NULL),
(18, 6, 'Women\'s Hats', 'women\'s-hats', NULL, NULL),
(19, 7, 'Women\'s Should....', 'women\'s-should....', NULL, NULL),
(20, 7, 'Wallets', 'wallets', NULL, NULL),
(21, 7, 'Travels Bags', 'travels-bags', NULL, NULL),
(22, 8, 'Dresses', 'dresses', NULL, NULL),
(23, 8, 'T-Sharts', 't-sharts', NULL, NULL),
(24, 8, 'Cots', 'cots', NULL, NULL),
(25, 8, 'Women\'s Weddin...', 'women\'s-weddin...', NULL, NULL),
(26, 9, 'House Hold Applies', 'house-hold-applies', NULL, NULL),
(27, 21, 'shart', 'shart', NULL, NULL),
(28, 7, 'wallet', 'wallet', NULL, NULL),
(29, 7, 'womens bag', 'womens-bag', NULL, NULL),
(30, 7, 'hand bag', 'hand-bag', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `vendor_join` varchar(20) DEFAULT NULL,
  `vendor_short_info` varchar(300) DEFAULT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `last_seen` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `vendor_join`, `vendor_short_info`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$1rAewgBLwhcR4nYBl6.hle5SdSo7z.Lo.D0bHAo4JtN9XCBXI.h52', '23082917581567943382eFCfIC3A.png', '3928858055', 'via paolo piazza 11', '', '', 'admin', 'active', '2023-09-13 15:52:23', 'diJOTKpNzxEiq5UCX9saUuVU6qgyyeFLb1pOukR0HNkZUnZUjcHdjNyNawb4', NULL, '2023-09-13 13:52:23'),
(2, 'Vendor', 'vendor', 'vendor@gmail.com', NULL, '$2y$10$L9KJCEVEGGuxMsGGMkg2GuGK4mcmUxEWaSthFwMKJyIM8/p/./TvW', '2023082918201567943382eFCfIC3A.png', '4567890', 'vendor address', '2024', 'hfdsdgh', 'vendor', 'active', '2023-09-13 15:17:16', NULL, NULL, '2023-09-13 13:17:16'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$.WYxALqeO25/Ik1o/sC.uuH4rao.3KOgtXMl0DWDORWGjJ6ZnEmN2', '2023082923071570876303dcztUot8.jpg', '234567', 'user address', '', '', 'user', 'active', '2023-09-12 19:52:08', NULL, NULL, '2023-09-12 17:52:08'),
(4, 'Sherwood Kutch', NULL, 'jerde.shaniya@example.net', '2023-08-29 13:44:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00cc66?text=quia', '+1-707-454-3685', '986 Ocie Loop Apt. 530\nMcKenzieville, MA 46466', '', '', 'user', 'inactive', NULL, 'iveiyVRirV', '2023-08-29 13:44:36', '2023-08-29 13:44:36'),
(5, 'Mrs. Marta Schuster MD', NULL, 'obrekke@example.com', '2023-08-29 13:44:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003311?text=molestiae', '1-714-904-6556', '88430 Cathrine Harbors\nNew Jaiden, DC 22813', '', '', 'vendor', 'inactive', NULL, 'HKKITBlfLj', '2023-08-29 13:44:36', '2023-08-29 13:44:36'),
(7, 'Savion Hagenes', NULL, 'ukling@example.org', '2023-08-29 13:44:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ff44?text=natus', '+1-551-352-4609', '900 Smith Estate\nSwiftton, NM 14774', '', '', 'vendor', 'inactive', NULL, 'VASLAPcyYg', '2023-08-29 13:44:36', '2023-08-31 14:35:40'),
(10, 'Tyrese Ullrich', NULL, 'tanner96@example.org', '2023-08-29 13:44:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00cc77?text=enim', '+1.848.662.6388', '181 Noah Forge\nCartwrightburgh, HI 02106-0645', '', '', 'user', 'inactive', NULL, 'dbPf6kjqeF', '2023-08-29 13:44:36', '2023-08-29 13:44:36'),
(11, 'Scotty Nienow', NULL, 'rklein@example.org', '2023-08-29 13:44:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa88?text=dolor', '+19563977740', '64100 Greenfelder Walks\nNorth Kobe, CT 37883-8405', '', '', 'vendor', 'active', NULL, 'g5GqgAQVaN', '2023-08-29 13:44:36', '2023-09-13 11:25:26'),
(12, 'sahan', NULL, 'sahan@gmail.com', NULL, '$2y$10$2xWIoadWfrDOOQRB6YTfx.mj5h0lOjQDL.C5RczEpsTNCvPBwDC4C', NULL, NULL, NULL, '', '', 'user', 'active', NULL, NULL, '2023-08-29 13:47:46', '2023-08-29 13:47:46'),
(13, 'sahan2', NULL, 'sahan2@gmail.com', NULL, '$2y$10$b.84J8jyiQLezPX86OVG9OQiSv4mSTjLE/1mdaOsNFNgvcl57ei6i', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, NULL, '2023-08-29 19:56:16', '2023-08-29 19:56:16'),
(14, 'hello world', 'jesmin', 'jesmin@gmail.com', NULL, '$2y$10$KgaICny5MD1QXcNTtGFRxempk8iVN9sdR38A48m1U8AGMhrKEo80y', NULL, '123456789', NULL, '2023', NULL, 'vendor', 'active', NULL, NULL, NULL, '2023-08-31 14:37:58'),
(15, 'shop', 'shop', 'shop@gmail.com', NULL, '$2y$10$MvL719eGwgQgu6dbjCFYl.Lvj5CQDJSLWWsTnDDxXp0YS/ru7B0yO', NULL, '135689', NULL, '2023', NULL, 'vendor', 'active', '2023-09-13 15:50:58', NULL, NULL, '2023-09-13 13:50:58'),
(16, 'bdbiswas', NULL, 'biswasbd7@gmail.com', NULL, '$2y$10$UOvHfs98V3ng4DO40dK/WOopFOtNwPb5HFtSMXLQWTwTd9NhyRG/O', NULL, NULL, NULL, NULL, NULL, 'user', 'active', NULL, NULL, '2023-09-08 21:14:24', '2023-09-08 21:14:24'),
(19, 'bdbiswas', 'bdbiswas', 'bdbiswas@gmail.com', NULL, '$2y$10$6e8uRFbULZ1fUR0nK0kcRO0gSDChgd/bVsL3TmTvUW6SB5EOAUgNy', '2309121650202207202021download.jpg', '+393928858055', 'Via paolo piazza', NULL, NULL, 'admin', 'active', '2023-09-12 19:30:52', NULL, '2023-09-12 14:42:31', '2023-09-12 17:30:52'),
(21, 'saha', 'saha', 'saha@gmail.com', NULL, '$2y$10$JDBRoBwcyz.KapdgBJE71ulkHCIgsWzYL.5WPUoXlB2ldfg5g9fpy', NULL, '+393928858055', 'Via paolo piazza', NULL, NULL, 'admin', 'active', NULL, NULL, '2023-09-12 14:43:50', '2023-09-12 14:43:50'),
(22, 'admin1', 'admin1', 'admin1@gmail.com', NULL, '$2y$10$jKvxDE5fBfiKu.pENHwDXuRx8Hk1lWwmjIArPLpZeYFLtESjpCsc6', NULL, '+393928858055', 'Via paolo piazza', NULL, NULL, 'admin', 'active', NULL, NULL, '2023-09-12 14:44:49', '2023-09-12 14:44:49'),
(23, 'sapla', 'sapla', 'sapla@gmail.com', NULL, '$2y$10$aiaaa.02jQBieSiKSVvVS.oLpnQ7w0tLe2KOHhN.3jtNHnCATRLa2', NULL, '1000000', NULL, '2023', NULL, 'vendor', 'active', '2023-09-13 14:24:51', NULL, NULL, '2023-09-13 12:24:51'),
(24, 'moni', 'moni', 'moni@gmail.com', NULL, '$2y$10$JWBBmVVYNrCegdW7jX2kLeKYKdoPzsDedp0KkCjSHV4j0PXoNnXDu', '2023091315081740388456845535.webp', '12345678905', 'moni address', NULL, NULL, 'user', 'active', '2023-09-13 15:15:42', NULL, '2023-09-13 13:05:58', '2023-09-13 13:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(11, 3, 5, '2023-09-07 21:46:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
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
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
