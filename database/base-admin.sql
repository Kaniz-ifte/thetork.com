-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 11:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base-admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `avatar`, `email`, `phone`, `password`, `remember_token`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Developer One', 'Admins/avatar_1.png', 'developer@developer.com', '+8801855367817', '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', 'D4a0rF2f8PzvUhu1udmTowFLs7pqHtoyl9VsFDZawOcBW9hwXHMjZSHlOMpc', 1, '2020-03-06 02:33:18', NULL, '2020-10-07 21:31:16', NULL),
(2, 'Super Admin', 'Admins/avatar_1.png', 'superadmin@superadmin.com', '+8801855367816', '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', 'awG2iS07ZR6p1rdwNerW81jouI6ch9caSWcV9IQkigXTBsOtst1HywzwDqvS', 1, '2020-03-06 02:33:18', NULL, '2020-09-29 09:34:08', NULL),
(3, 'Admin', 'Admins/avatar_1.png', 'admin@admin.com', '+8801855367818', '$2y$10$OTSypo0/ic3mL98TN8kIOOWpckPLe.MGbXwqAzY7aKXdP4W0rXjyy', 'lStNW9b8DhBbU1GGIiRfvzLwYj1v8yKjjmcwdEqLFRqHZ2974XyJZhaWR1No', 1, '2020-03-06 02:33:18', NULL, '2020-09-29 09:34:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `crud_id` int(11) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `is_newtab` int(1) DEFAULT NULL,
  `bullet` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `title`, `url`, `crud_id`, `icon`, `is_newtab`, `bullet`, `parent_id`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Menu 01', NULL, NULL, 'fa fa-home', 1, 'dot', 0, 1, 1, NULL, NULL, '2020-10-27 23:36:10', '2020-11-18 12:08:45'),
(2, 'Test Menu 02', NULL, NULL, NULL, NULL, NULL, 0, 2, 1, NULL, NULL, '2020-10-27 23:36:49', '2020-11-18 10:48:27'),
(3, 'Test Menu 03', NULL, NULL, NULL, NULL, NULL, 2, 1, 1, NULL, NULL, '2020-10-27 23:37:02', '2020-11-15 11:29:57'),
(4, 'Test Menu 04', NULL, NULL, NULL, NULL, NULL, 0, 3, 1, NULL, NULL, '2020-10-27 23:37:39', '2020-11-18 10:48:30'),
(5, 'Test Menu 05', NULL, NULL, NULL, NULL, NULL, 4, 2, 1, NULL, NULL, '2020-10-27 23:37:39', '2020-11-15 11:30:11'),
(6, 'Test Menu 06', NULL, NULL, NULL, NULL, NULL, 4, 1, 1, NULL, NULL, '2020-10-27 23:38:00', '2020-11-15 11:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `base_table`
--

CREATE TABLE `base_table` (
  `id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `writer` varchar(191) DEFAULT NULL,
  `publish_at` timestamp NULL DEFAULT current_timestamp(),
  `is_featured` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_description`, `description`, `banner`, `writer`, `publish_at`, `is_featured`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test TItle', NULL, '<strong>Test Description</strong>', 'Blogs/banner_2.jpeg', 'Writer 01', '2020-09-28 21:16:00', 1, 45, 1, NULL, NULL, '2020-09-29 07:58:24', '2020-09-29 10:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `company_infos`
--

CREATE TABLE `company_infos` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `index` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `input_array` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Name', 'abc@abc.com', 'Test Message', NULL, 1, NULL, NULL, '2020-09-30 21:52:42', '2020-09-30 22:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

CREATE TABLE `cruds` (
  `id` int(11) NOT NULL,
  `resource_path` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `data_table` varchar(191) DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  `crud_key_word` varchar(191) DEFAULT NULL,
  `crud_key_word_plural` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cruds`
--

INSERT INTO `cruds` (`id`, `resource_path`, `controller`, `model`, `data_table`, `permission`, `crud_key_word`, `crud_key_word_plural`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'orders', 'OrderController', 'Order', 'orders', 'order', 'Order', 'Orders', 1, 1, NULL, NULL, '2020-10-27 23:36:10', '2020-11-18 12:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `crud_columns`
--

CREATE TABLE `crud_columns` (
  `id` int(11) NOT NULL,
  `crud_id` int(11) DEFAULT NULL,
  `column` varchar(191) DEFAULT NULL,
  `data_type` varchar(191) DEFAULT NULL,
  `data_length` varchar(191) DEFAULT NULL,
  `is_primary` int(11) DEFAULT NULL,
  `is_unique` int(11) DEFAULT NULL,
  `is_null` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_columns`
--

INSERT INTO `crud_columns` (`id`, `crud_id`, `column`, `data_type`, `data_length`, `is_primary`, `is_unique`, `is_null`, `can_add`, `can_view`, `can_edit`, `order`, `is_active`) VALUES
(1, 1, 'title', 'varchar', '191', 0, 0, 1, 1, 1, 1, 1, NULL),
(2, 1, 'order', 'int', '', 0, 0, 1, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crud_inputs`
--

CREATE TABLE `crud_inputs` (
  `id` int(11) NOT NULL,
  `crud_id` varchar(191) DEFAULT NULL,
  `crud_column_id` int(11) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_inputs`
--

INSERT INTO `crud_inputs` (`id`, `crud_id`, `crud_column_id`, `key`, `value`) VALUES
(1, '1', 1, 'name', 'Title'),
(2, '1', 1, 'placeholder', 'Enter Title'),
(3, '1', 2, 'placeholder', 'Enter Order'),
(4, '1', 2, 'name', 'Order'),
(5, '1', 1, 'design', '1'),
(6, '1', 1, 'title', 'Title:'),
(7, '1', 2, 'design', '1'),
(8, '1', 2, 'title', 'Order:');

-- --------------------------------------------------------

--
-- Table structure for table `crud_view_columns`
--

CREATE TABLE `crud_view_columns` (
  `id` int(11) NOT NULL,
  `crud_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_view_designs`
--

CREATE TABLE `crud_view_designs` (
  `id` int(11) NOT NULL,
  `crud_id` varchar(191) DEFAULT NULL,
  `crud_view_column_id` int(11) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Question', 'Test Answer', 1, 1, NULL, NULL, '2020-09-28 11:59:29', '2020-09-28 11:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `is_featured`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Clients/image_1.png', 1, 1, 1, NULL, NULL, '2020-09-25 01:39:10', '2020-09-29 22:46:56'),
(2, 'Clients/image_3.png', 1, 2, 1, NULL, NULL, '2020-09-26 20:26:47', '2020-09-29 22:46:45'),
(3, 'Clients/image_4.png', 1, 4, 1, NULL, NULL, '2020-09-26 20:27:25', '2020-09-29 22:46:29'),
(4, 'Clients/image_5.png', 1, 3, 1, NULL, NULL, '2020-09-26 20:44:29', '2020-09-29 22:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 1),
(1, 'App\\Admin', 1),
(2, 'App\\Admin', 2),
(3, 'App\\Admin', 3),
(2, '	\r\nApp\\Admin', 1),
(2, 'App\\Admin', 1),
(2, 'App\\User', 1),
(1, 'App\\Admin', 1),
(2, 'AppAdmin', 2),
(3, 'AppAdmin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `title`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '2020-11-19 23:50:34', '2020-11-19 23:50:34'),
(2, NULL, NULL, NULL, NULL, NULL, '2020-11-19 23:50:56', '2020-11-19 23:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin-view', 'admin', '2020-09-22 19:13:59', NULL),
(2, 'admin-create', 'admin', '2020-09-22 19:14:10', NULL),
(3, 'admin-update', 'admin', '2020-09-22 19:14:14', NULL),
(4, 'admin-delete', 'admin', '2020-09-22 19:14:20', NULL),
(5, 'user-create', 'admin', '2020-09-22 19:16:50', NULL),
(6, 'user-update', 'admin', '2020-09-22 19:16:50', NULL),
(7, 'user-delete', 'admin', '2020-09-22 19:16:50', NULL),
(8, 'user-view', 'admin', '2020-09-22 19:16:50', NULL),
(9, 'subscription-create', 'admin', '2020-09-22 19:17:29', NULL),
(10, 'subscription-update', 'admin', '2020-09-22 19:17:29', NULL),
(11, 'subscription-delete', 'admin', '2020-09-22 19:17:29', NULL),
(12, 'subscription-view', 'admin', '2020-09-22 19:17:29', NULL),
(13, 'developer-create', 'admin', '2020-09-22 19:18:28', NULL),
(14, 'developer-update', 'admin', '2020-09-22 19:18:28', NULL),
(15, 'developer-delete', 'admin', '2020-09-22 19:18:28', NULL),
(16, 'developer-view', 'admin', '2020-09-22 19:18:28', NULL),
(17, 'role-create', 'admin', '2020-09-22 19:19:31', NULL),
(18, 'role-update', 'admin', '2020-09-22 19:19:31', NULL),
(19, 'role-delete', 'admin', '2020-09-22 19:19:31', NULL),
(20, 'role-view', 'admin', '2020-09-22 19:19:31', NULL),
(21, 'setting-create', 'admin', '2020-09-22 19:19:52', NULL),
(22, 'setting-update', 'admin', '2020-09-22 19:19:52', NULL),
(23, 'setting-delete', 'admin', '2020-09-22 19:19:52', NULL),
(24, 'setting-view', 'admin', '2020-09-22 19:19:52', NULL),
(25, 'blog-create', 'admin', '2020-09-22 19:19:52', NULL),
(26, 'blog-update', 'admin', '2020-09-22 19:19:52', NULL),
(27, 'blog-delete', 'admin', '2020-09-22 19:19:52', NULL),
(28, 'blog-view', 'admin', '2020-09-22 19:19:52', NULL),
(29, 'faq-create', 'admin', '2020-09-22 19:19:52', NULL),
(30, 'faq-update', 'admin', '2020-09-22 19:19:52', NULL),
(31, 'faq-delete', 'admin', '2020-09-22 19:19:52', NULL),
(32, 'faq-view', 'admin', '2020-09-22 19:19:52', NULL),
(33, 'privacy-policy-create', 'admin', '2020-09-22 19:19:52', NULL),
(34, 'privacy-policy-update', 'admin', '2020-09-22 19:19:52', NULL),
(35, 'privacy-policy-delete', 'admin', '2020-09-22 19:19:52', NULL),
(36, 'privacy-policy-view', 'admin', '2020-09-22 19:19:52', NULL),
(37, 'terms-conditions-create', 'admin', '2020-09-22 19:19:52', NULL),
(38, 'terms-conditions-update', 'admin', '2020-09-22 19:19:52', NULL),
(39, 'terms-conditions-delete', 'admin', '2020-09-22 19:19:52', NULL),
(40, 'terms-conditions-view', 'admin', '2020-09-22 19:19:52', NULL),
(41, 'social-media-create', 'admin', '2020-09-22 19:19:52', NULL),
(42, 'social-media-update', 'admin', '2020-09-22 19:19:52', NULL),
(43, 'social-media-delete', 'admin', '2020-09-22 19:19:52', NULL),
(44, 'social-media-view', 'admin', '2020-09-22 19:19:52', NULL),
(45, 'slider-view', 'admin', '2020-09-22 19:13:59', NULL),
(46, 'slider-create', 'admin', '2020-09-22 19:14:10', NULL),
(47, 'slider-update', 'admin', '2020-09-22 19:14:14', NULL),
(48, 'slider-delete', 'admin', '2020-09-22 19:14:20', NULL),
(49, 'gallery-view', 'admin', '2020-09-22 19:13:59', NULL),
(50, 'gallery-create', 'admin', '2020-09-22 19:14:10', NULL),
(51, 'gallery-update', 'admin', '2020-09-22 19:14:14', NULL),
(52, 'gallery-delete', 'admin', '2020-09-22 19:14:20', NULL),
(53, 'testimonial-view', 'admin', '2020-09-22 19:13:59', NULL),
(54, 'testimonial-create', 'admin', '2020-09-22 19:14:10', NULL),
(55, 'testimonial-update', 'admin', '2020-09-22 19:14:14', NULL),
(56, 'testimonial-delete', 'admin', '2020-09-22 19:14:20', NULL),
(58, 'order-view', 'admin', '2020-11-19 01:23:00', '2020-11-19 01:23:00'),
(59, 'order-create', 'admin', '2020-11-19 01:31:08', '2020-11-19 01:31:08'),
(60, 'order-update', 'admin', '2020-11-19 01:31:08', '2020-11-19 01:31:08'),
(61, 'order-delete', 'admin', '2020-11-19 01:31:08', '2020-11-19 01:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20'),
(2, 'Super Admin', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20'),
(3, 'Admin', 'admin', '2020-07-17 02:09:20', '2020-07-17 02:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(7, 1),
(8, 1),
(12, 1),
(14, 1),
(16, 1),
(18, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(28, 2),
(2, 2),
(29, 2),
(4, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(22, 1),
(23, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(7, 1),
(8, 1),
(12, 1),
(14, 1),
(16, 1),
(18, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(7, 1),
(8, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(28, 2),
(2, 2),
(29, 2),
(4, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(22, 1),
(10, 1),
(23, 1),
(12, 1),
(24, 1),
(14, 1),
(25, 1),
(16, 1),
(26, 1),
(18, 1),
(27, 1),
(20, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(22, 1),
(23, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(13, 1),
(14, 1),
(15, 1),
(20, 1),
(17, 1),
(18, 1),
(19, 1),
(24, 1),
(21, 1),
(22, 1),
(23, 1),
(28, 1),
(25, 1),
(26, 1),
(27, 1),
(32, 1),
(29, 1),
(30, 1),
(31, 1),
(36, 1),
(33, 1),
(34, 1),
(35, 1),
(40, 1),
(37, 1),
(38, 1),
(39, 1),
(44, 1),
(41, 1),
(42, 1),
(43, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `root` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `input_array` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `root` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  `design` int(11) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `root`, `key`, `design`, `value`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Setting One', 'test', 'title', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:37', NULL),
(2, 'Test Setting One', 'test_1', 'title1', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:42', NULL),
(3, 'Test Setting One', 'test_1', 'title2', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:47', NULL),
(4, 'Test Setting One', 'test_2', 'title1', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:51', NULL),
(5, 'Test Setting One', 'test_2', 'title2', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:54', NULL),
(6, 'Test Setting One', 'test_2', 'title3', 1, 'Hello', 1, NULL, NULL, NULL, '2020-10-07 21:36:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_type_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slider_types`
--

CREATE TABLE `slider_types` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider_types`
--

INSERT INTO `slider_types` (`id`, `title`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, NULL, NULL, NULL, '2020-09-29 20:17:37', NULL),
(2, 'Footer', NULL, NULL, NULL, NULL, '2020-09-29 20:17:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `social_media_type_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_class` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `background_color` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `social_media_type_id`, `title`, `icon`, `icon_class`, `color`, `background_color`, `url`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Media', NULL, 'fa fa-facebook', '000000', 'ffffff', 'http://127.0.0.1:8000/admin/social-media/create', 1, 1, NULL, NULL, '2020-09-29 13:10:26', '2020-09-29 13:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_types`
--

CREATE TABLE `social_media_types` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media_types`
--

INSERT INTO `social_media_types` (`id`, `title`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'footer', NULL, 1, NULL, NULL, '2020-09-29 12:12:13', NULL),
(2, 'header', NULL, 1, NULL, NULL, '2020-09-29 12:12:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `avatar`, `quote`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Test Name', 'Testimonials/avatar_1.png', 'test quote', NULL, 1, NULL, NULL, '2020-09-25 01:50:55', '2020-09-26 20:23:56'),
(2, 'Test name 2', 'Testimonials/avatar_3.png', 'Test Quote 2', 2, 1, NULL, NULL, '2020-09-26 20:25:11', '2020-09-26 20:25:11'),
(3, 'Test Name 3', 'Testimonials/avatar_4.png', 'Test quote 3', 3, 1, NULL, NULL, '2020-09-26 20:25:52', '2020-09-26 20:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT 'profile/profile.png',
  `password` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `active_session` text DEFAULT NULL,
  `firebase_token` longtext DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_table`
--
ALTER TABLE `base_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_infos`
--
ALTER TABLE `company_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruds`
--
ALTER TABLE `cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_columns`
--
ALTER TABLE `crud_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_inputs`
--
ALTER TABLE `crud_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_view_columns`
--
ALTER TABLE `crud_view_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_view_designs`
--
ALTER TABLE `crud_view_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD KEY `model_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD KEY `model_has_roles_role_id_foreign` (`role_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_types`
--
ALTER TABLE `slider_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_types`
--
ALTER TABLE `social_media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_table`
--
ALTER TABLE `base_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_infos`
--
ALTER TABLE `company_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cruds`
--
ALTER TABLE `cruds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crud_columns`
--
ALTER TABLE `crud_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crud_inputs`
--
ALTER TABLE `crud_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `crud_view_columns`
--
ALTER TABLE `crud_view_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_view_designs`
--
ALTER TABLE `crud_view_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_types`
--
ALTER TABLE `slider_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media_types`
--
ALTER TABLE `social_media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
