-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2024 at 03:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apilaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `codigo_categoria` int NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`codigo_categoria`, `nombre_categoria`, `created_at`, `updated_at`) VALUES
(1, 'VIP', NULL, '2024-11-10 14:15:39'),
(2, 'Economico', '2024-11-10 10:12:32', '2024-11-10 10:12:32'),
(3, 'Premium', '2024-11-10 11:05:48', '2024-11-10 11:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `codigo_cliente` int NOT NULL,
  `nombre_cliente` varchar(150) NOT NULL,
  `edad_cliente` int NOT NULL,
  `codigo_categoria` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`codigo_cliente`, `nombre_cliente`, `edad_cliente`, `codigo_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Izuku Midoriya', 25, 1, NULL, NULL),
(2, 'Katsuki Bakugo', 25, 1, '2024-11-10 10:10:04', '2024-11-10 10:10:04'),
(3, 'Ochaco Uraraka', 25, 2, '2024-11-10 10:52:56', '2024-11-10 12:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE `marca` (
  `id` int NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '0001_01_01_000000_create_users_table', 1),
(9, '0001_01_01_000001_create_cache_table', 1),
(10, '0001_01_01_000002_create_jobs_table', 1),
(11, '2024_11_10_160149_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'El Salvador', NULL, NULL),
(2, 'Argentina', NULL, NULL),
(3, 'España', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '5672e02a628a97ee822e64223a488be65c6fb2bcb0b1945ed2053795d15853d5', '[\"*\"]', NULL, NULL, '2024-11-11 02:17:14', '2024-11-11 02:17:14'),
(2, 'App\\Models\\User', 1, 'token', 'd3e6d2caf867686c56e49e099e0e5d2dc60b8104c4f9987a8e5a11010378765f', '[\"*\"]', NULL, NULL, '2024-11-11 02:17:27', '2024-11-11 02:17:27'),
(3, 'App\\Models\\User', 1, 'token', 'e22f69b90d54cc8d188451cfa07ae2fcd5fafc9d19e543312111fe37a2569236', '[\"*\"]', NULL, NULL, '2024-11-11 02:18:08', '2024-11-11 02:18:08'),
(4, 'App\\Models\\User', 1, 'token', '21a0aec2537a929fd4dc0cdbd0361dd8c915ac14c796315ac854e3204be0085b', '[\"*\"]', NULL, NULL, '2024-11-11 02:18:15', '2024-11-11 02:18:15'),
(5, 'App\\Models\\User', 1, 'token', 'd563c9e01b38d17df7cc43c889492997e93562b617d84abef5b69ba8b4aaeb88', '[\"*\"]', NULL, NULL, '2024-11-11 02:19:06', '2024-11-11 02:19:06'),
(6, 'App\\Models\\User', 1, 'token', '2cdb4a8ea7a744cb0976c8ad84462c9bb26f9497b4873af809358cfe812e234f', '[\"*\"]', NULL, NULL, '2024-11-11 02:20:05', '2024-11-11 02:20:05'),
(7, 'App\\Models\\User', 1, 'token', '54a763957184a8c646f623592a550896e5d4466d5ff349906592ba8b9ea02b48', '[\"*\"]', NULL, NULL, '2024-11-11 02:20:12', '2024-11-11 02:20:12'),
(8, 'App\\Models\\User', 1, 'token', '14d1ddb023c8b3c0cccf4be501d1ba067d53166c16b48be7e8d9c108d830b269', '[\"*\"]', NULL, NULL, '2024-11-11 02:20:23', '2024-11-11 02:20:23'),
(9, 'App\\Models\\User', 1, 'token', '7a21ffe0ae320d8bff9b399768af95c42a83b0f208cf226b132038855d0259a8', '[\"*\"]', NULL, NULL, '2024-11-11 02:20:29', '2024-11-11 02:20:29'),
(10, 'App\\Models\\User', 1, 'token', 'f0f5b8868214c6d8605c67cab4048f5986b8d629236214d4a0e0841a83580be6', '[\"*\"]', NULL, NULL, '2024-11-11 02:23:36', '2024-11-11 02:23:36'),
(11, 'App\\Models\\User', 1, 'token', 'd23fb70c30b9df7f2902752c3a473ed536b98da57cfe9987e6bf27bba703fd57', '[\"*\"]', NULL, NULL, '2024-11-11 02:24:39', '2024-11-11 02:24:39'),
(12, 'App\\Models\\User', 1, 'token', 'b93e49e6a8e0e8528265ab3ba86f3a907b22d52e154a108610cfe2c508c35a1d', '[\"*\"]', NULL, NULL, '2024-11-11 02:24:40', '2024-11-11 02:24:40'),
(13, 'App\\Models\\User', 2, 'token', '16af0b3dd218cba18a4c11f6cffc64bf9c588848e5d651f596ef14fb0e2891b6', '[\"*\"]', NULL, NULL, '2024-11-11 02:27:17', '2024-11-11 02:27:17'),
(14, 'App\\Models\\User', 2, 'token', 'c7c942d096dca8e159cfca4e4d11d90f7deb496f77bf3fc0aa33b2729a22d249', '[\"*\"]', NULL, NULL, '2024-11-11 02:27:35', '2024-11-11 02:27:35'),
(15, 'App\\Models\\User', 2, 'token', '615db102546ff43601e148249e3660fe1215a11893ef3696e1e3858710241e91', '[\"*\"]', NULL, NULL, '2024-11-11 02:27:37', '2024-11-11 02:27:37'),
(16, 'App\\Models\\User', 2, 'token', 'e5346ba7ffa9e07b1c6dca94df6ff5e63b29132ab749b7f2e445455c25e9f5f4', '[\"*\"]', NULL, NULL, '2024-11-11 02:27:40', '2024-11-11 02:27:40'),
(17, 'App\\Models\\User', 1, 'token', 'f70df347ab8bba178f31c4f02adbf9fae5f047a1c85362b71d4435ad9abe9c47', '[\"*\"]', NULL, NULL, '2024-11-11 02:27:44', '2024-11-11 02:27:44'),
(18, 'App\\Models\\User', 1, 'token', '6c5ce30b8f29f63bdadc3fdd586dc98a14e5f9bb77db9dffc9b41a9d1fd4bf55', '[\"*\"]', NULL, NULL, '2024-11-11 02:28:44', '2024-11-11 02:28:44'),
(19, 'App\\Models\\User', 1, 'token', 'd16ddac2c6e07cd5218d63e53aeea83302aa3b35fcf3ccb02524ff403d9edf51', '[\"*\"]', NULL, NULL, '2024-11-11 02:28:46', '2024-11-11 02:28:46'),
(20, 'App\\Models\\User', 1, 'token', '37f1393b90b0f3742ad8ed7567a5524139471629f5146fdeebc973f63a95e930', '[\"*\"]', NULL, NULL, '2024-11-11 02:28:49', '2024-11-11 02:28:49'),
(21, 'App\\Models\\User', 1, 'token', 'e9bcafb7c3640387b23440148ec52d74b48ba18caebf26d2bb57b8515717e734', '[\"*\"]', NULL, NULL, '2024-11-11 08:53:33', '2024-11-11 08:53:33'),
(22, 'App\\Models\\User', 1, 'token', '660ce52824d7a81347de492cd1156afb9c034b41aa33e01876ba1183632382de', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:30', '2024-11-11 08:54:30'),
(23, 'App\\Models\\User', 1, 'token', '5bb15bfbfbd4c84d79a00ac68327bc4aee747e0ae4bd505cc97c03173ddf3a13', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:31', '2024-11-11 08:54:31'),
(24, 'App\\Models\\User', 1, 'token', '76e20c8a0e48086e785b4a429db35144a5f77fb5e7f8a3418c4fd1f09eef78dd', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:36', '2024-11-11 08:54:36'),
(25, 'App\\Models\\User', 1, 'token', '75b9eea09d8c5644b9b2189803b2d205e9e1c61a0e8794ad72a19af374ac45a0', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:39', '2024-11-11 08:54:39'),
(26, 'App\\Models\\User', 1, 'token', 'c5c857ccf46aa8fce51a5f6cd49330256a79ef1556c993942f3e3c39e19d8c5e', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:42', '2024-11-11 08:54:42'),
(27, 'App\\Models\\User', 1, 'token', 'b50b947b2cc8e0491fade12538f7cbda88ef057640c38f07172b193159ea9262', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:43', '2024-11-11 08:54:43'),
(28, 'App\\Models\\User', 1, 'token', 'cb8ef3d4204d029f48c16baed32680bf62b3c9b025dd4a6413edd01a8b4429ac', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:43', '2024-11-11 08:54:43'),
(29, 'App\\Models\\User', 1, 'token', '018a391e1be704be60faaead8f7d255348fac0bfa2835642a2968484f0983324', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:44', '2024-11-11 08:54:44'),
(30, 'App\\Models\\User', 1, 'token', '039836df0c8b556c9ea2dea657bcd1b7a95b3198981af2ba2a7cf1ebf145c80c', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:45', '2024-11-11 08:54:45'),
(31, 'App\\Models\\User', 1, 'token', '6f039d30ee725806d26c493f841f4b4074782411f04eea2386d7f9e0939a94f1', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:45', '2024-11-11 08:54:45'),
(32, 'App\\Models\\User', 1, 'token', '3f6e644b6c9478ee0ab1a8a53cdae6bfbfcff606388349e3eba43714ae61fef3', '[\"*\"]', NULL, NULL, '2024-11-11 08:54:45', '2024-11-11 08:54:45'),
(33, 'App\\Models\\User', 2, 'token', '2deb06a11660bce7d93c2815c62d251d7b88ce8454b2e1f99a95bc5a65bae15b', '[\"*\"]', NULL, NULL, '2024-11-11 08:56:12', '2024-11-11 08:56:12'),
(34, 'App\\Models\\User', 1, 'token', '0b47399f0db0a9e68e6d9486abb99f0a8e8b48b68b9dfc30ae3b5ce3db78c0be', '[\"*\"]', NULL, NULL, '2024-11-11 09:00:56', '2024-11-11 09:00:56'),
(35, 'App\\Models\\User', 1, 'token', '3c6fd6656e51b2f5d3c98f22f218638cb11fcf58938878a53f441f2fa9cbd119', '[\"*\"]', NULL, NULL, '2024-11-11 09:00:59', '2024-11-11 09:00:59'),
(36, 'App\\Models\\User', 1, 'token', '70307aeac5d65dade128a1d4e1b71926fd25a5dd078b7c12c1a231eb4c9737fd', '[\"*\"]', NULL, NULL, '2024-11-11 09:01:00', '2024-11-11 09:01:00'),
(37, 'App\\Models\\User', 1, 'token', 'f9177b622981a0e3136bfd65b6f9d4c1c63c25429ac31363b0352d9d23cb9342', '[\"*\"]', NULL, NULL, '2024-11-11 09:01:00', '2024-11-11 09:01:00'),
(38, 'App\\Models\\User', 1, 'token', '0d2276e7a4b88d89d935b64fd68e08099b2b7ad016eba8b03e67b4f2a42f1eb7', '[\"*\"]', NULL, NULL, '2024-11-11 09:01:04', '2024-11-11 09:01:04'),
(39, 'App\\Models\\User', 1, 'token', 'e855ce27b04e61cd8425a1495ae887581af6c1ffbda2e1c45e8c4c1ee43a1a9a', '[\"*\"]', NULL, NULL, '2024-11-11 09:01:49', '2024-11-11 09:01:49'),
(40, 'App\\Models\\User', 1, 'token', '96d6a73827e19e638ddd825ed218fc3ec39580764b8cd881a55a7e4e636e2487', '[\"*\"]', NULL, NULL, '2024-11-11 09:02:21', '2024-11-11 09:02:21'),
(41, 'App\\Models\\User', 1, 'token', '933fe33977659f21fa7897caad705fa60c6ec42101cd448d058454a83d097885', '[\"*\"]', NULL, NULL, '2024-11-11 09:02:21', '2024-11-11 09:02:21'),
(42, 'App\\Models\\User', 1, 'token', '132c9653012e4ae322287a0485a081ebf856e26c6bb07f57ef7ba6f183b8b150', '[\"*\"]', NULL, NULL, '2024-11-11 09:02:22', '2024-11-11 09:02:22'),
(43, 'App\\Models\\User', 1, 'token', 'ed56f2b84f12832d938db80de768f5daadb9e743893c70a371426f63c600ed57', '[\"*\"]', NULL, NULL, '2024-11-11 09:02:22', '2024-11-11 09:02:22'),
(44, 'App\\Models\\User', 1, 'token', 'e13a14558fd6f8db650db540b07a8e20b630b44dc0f0b8a8d38052800e5ba1c3', '[\"*\"]', NULL, NULL, '2024-11-11 09:02:43', '2024-11-11 09:02:43'),
(45, 'App\\Models\\User', 1, 'token', '529ada0fab84a90a1e4ced5b29e95394615f8cfd3c4d9359dfe4e554a7176806', '[\"*\"]', NULL, NULL, '2024-11-11 09:02:57', '2024-11-11 09:02:57'),
(46, 'App\\Models\\User', 1, 'token', '55aba4f4867c4afd3cc9516fe39cd7bc6a963cea0631d1a7190e8e86305c61f2', '[\"*\"]', '2024-11-11 09:24:45', NULL, '2024-11-11 09:04:28', '2024-11-11 09:24:45'),
(47, 'App\\Models\\User', 1, 'token', 'f4329a3eadf0907c182dc235448958de08aff64e795bc60cac0c3ea1a4316f9a', '[\"*\"]', '2024-11-11 09:26:00', NULL, '2024-11-11 09:24:51', '2024-11-11 09:26:00'),
(48, 'App\\Models\\User', 1, 'token', '25a8fee518682dbdb58ba308a99c967098ecb81e8f8d6c317153ae06e646c0eb', '[\"*\"]', '2024-11-11 09:26:07', NULL, '2024-11-11 09:26:03', '2024-11-11 09:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id` int NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `precio` varchar(100) NOT NULL,
  `fk_marca` int NOT NULL,
  `fk_categoria` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('r3GNaunmIMfdJBK1BWJk9JERp0ibsd2UOADEfUZ9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0dtVGdDZGVmREJHeDhFeVdWbWh6aGpIWDE0VUx3dncwa3RzWE5rZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731280387),
('Rr5VcVFpKPUZbrPwSxXWHHOfgk9okNilf1wEK0iP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0lUaEtpTnJpR0c1SWNEMFJEeWtwTG1sQUh6eHFoY3RQdzVSMkhCSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731293605);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raisa Ramirez', 'raisa.ramirez@itca.edu.sv', NULL, '$2y$12$Z8jc52aCwZWdPUKWd1WmaOSAeXewSr9KVOpxmvxla.sDzb6/CgNKa', NULL, '2024-11-11 02:17:14', '2024-11-11 02:17:14'),
(2, 'Izuku Midoriya', 'deku@itca.edu.sv', NULL, '$2y$12$mzefLd7HlsYFrKXfxj6XN.PSksGIcuzQBITY.yq1l4.z/Bt4f8/RG', NULL, '2024-11-11 02:27:17', '2024-11-11 02:27:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codigo_categoria`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo_cliente`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `codigo_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `codigo_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
