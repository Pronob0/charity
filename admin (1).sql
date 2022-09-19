-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 11:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verify_token`, `phone`, `photo`, `status`, `password`, `remember_token`, `role`, `verify_code`, `created_at`, `updated_at`) VALUES
(1, 'adminssssss', 'admin@gmail.com', '', '09000000', '18454587891642651833.jpg', 1, '$2y$10$6Zsc.blcMfl4Ex5.6VcGuuJ9bhtLiQ3h4wk8LEsV.uzJn8SZGg9bq', 'V9sCQesNTDch1qZoJaKQUEnV71MrDkZ0ag30zSDJ0fRaUdivYk7UN1D222UH', 'super-admin', 726094, NULL, '2022-02-14 22:11:28'),
(2, 'John', 'john@mail.com', NULL, NULL, NULL, 1, '$2y$10$by0NiJcmt2lHhfAI4lHQbuRWgUsRJO2EpsGXKFmU0Vt/PwJDre5Hu', NULL, 'moderator', NULL, '2022-01-17 22:36:49', '2022-01-19 05:48:28'),
(3, 'Miriam Mccoy', 'maccoy@mail.com', NULL, NULL, NULL, 1, '$2y$10$D0MH0g1qjTUoB824PeloK.XpjIAdJKZMbsqWZnHzLjFuvvQU8QMk.', NULL, 'moderator', NULL, '2022-01-19 05:05:33', '2022-01-19 05:05:33'),
(4, 'henry', 'henry@mail.com', NULL, NULL, NULL, 1, '$2y$10$DM9XXJb7KgQHESmlWTx6y.AhBZukZjH0DcW6BgWjvSavVMxnIEHfq', NULL, 'Ticket Handler', NULL, '2022-02-16 23:56:16', '2022-02-16 23:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(66, 8, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', '9222363811644728965.jpg', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><br></p>', 0, 1, '2022-02-12 23:09:25', '2022-02-12 23:09:25');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(67, 9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry Need', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-need', '16948648621645511038.jpg', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><hr><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAAA8AAD/4QMdaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzE0NSA3OS4xNjM0OTksIDIwMTgvMDgvMTMtMTY6NDA6MjIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE0RkM3NEYxODREMDExRUNCMjBDQjE5NDg4NzU1Q0Y4IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE0RkM3NEYwODREMDExRUNCMjBDQjE5NDg4NzU1Q0Y4IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE5IFdpbmRvd3MiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0iREY4RjlBMkFFNUY4MTc4QjM4RkQzNjk4NjAwMzZDNUYiIHN0UmVmOmRvY3VtZW50SUQ9IkRGOEY5QTJBRTVGODE3OEIzOEZEMzY5ODYwMDM2QzVGIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+/+4ADkFkb2JlAGTAAAAAAf/bAIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwM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\" style=\"width: 1000px;\" data-filename=\"blog3.jpg\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><br></p>', 0, 1, '2022-02-12 23:11:32', '2022-02-22 00:23:58');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(68, 10, 'Simply dummy text of the printing and typesetting industry.!!', 'simply-dummy-text-of-the-printing-and-typesetting-industry', '609659891645511084.jpg', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></p>', 0, 1, '2022-02-22 00:24:44', '2022-02-22 00:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 'News', 'news', 1, NULL, NULL),
(9, 'Announces', 'announces', 1, NULL, NULL),
(10, 'Statistics', 'statistics', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_key` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `unique_key`, `name`, `code`, `dial_code`, `currency_id`, `flag`, `created_at`, `updated_at`) VALUES
(2, 1, 'Ascension Island', 'AC', '+247', 4, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AC.svg', '2021-12-20 23:25:41', '2021-12-20 23:55:28'),
(3, 240, 'United States', 'US', '+1', 1, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/US.svg', '2021-12-21 00:16:55', '2021-12-21 00:16:55'),
(4, 19, 'Bangladesh', 'BD', '+880', 6, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BD.svg', '2021-12-21 00:50:56', '2021-12-21 00:50:56'),
(5, 81, 'United Kingdom', 'GB', '+44', 5, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GB.svg', '2021-12-21 00:51:27', '2021-12-21 05:53:03'),
(6, 18, 'Belgium', 'BE', '+32', 4, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BE.svg', '2022-01-29 23:47:16', '2022-01-29 23:47:16'),
(7, 11, 'Austria', 'AT', '+43', 4, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AT.svg', '2022-02-06 05:55:48', '2022-02-06 05:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` int(10) UNSIGNED NOT NULL COMMENT '1 => default, 0 => not default',
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 => fiat, 2 => crypto',
  `status` int(10) UNSIGNED NOT NULL COMMENT '1 => active, 0 => inactive',
  `rate` decimal(20,10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `default`, `symbol`, `code`, `curr_name`, `type`, `status`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'USD', 'United State Dollar', 1, 1, '1.0000000000', '2021-12-20 04:12:58', '2022-03-08 04:33:44'),
(4, 0, '€', 'EUR', 'European Currency', 1, 1, '0.9181600000', '2021-12-20 04:12:58', '2022-03-08 04:33:43'),
(5, 0, '£', 'GBP', 'Greate British Pound', 1, 1, '0.7625850000', '2021-12-21 00:45:51', '2022-03-08 04:33:43'),
(6, 0, '৳', 'BDT', 'Bangladeshi Taka', 1, 1, '85.8430330000', '2021-12-21 00:48:53', '2022-03-08 04:33:43'),
(9, 0, '₿', 'BTC', 'Bitcoin', 2, 1, '39073.4588920000', '2021-12-21 00:48:53', '2022-03-08 04:33:44'),
(10, 0, '₹', 'INR', 'Indian Rupee', 1, 1, '76.9177000000', '2022-01-26 02:28:23', '2022-03-08 04:33:43'),
(11, 0, '¥', 'JPY', 'Japanese Yen', 1, 1, '115.4015030000', '2022-01-26 02:30:04', '2022-03-08 04:33:43'),
(13, 0, '₦', 'NGN', 'Nigerian naira', 1, 1, '415.1103100000', '2022-02-06 05:41:35', '2022-03-08 04:33:43'),
(14, 0, 'LTC', 'LTC', 'Lite coin', 2, 1, '100.8300000000', '2022-03-08 05:13:08', '2022-03-08 05:13:08'),
(15, 0, 'ETH', 'ETH', 'Ethereum', 2, 1, '2587.7300000000', '2022-03-08 05:14:44', '2022-03-08 05:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_info` text DEFAULT NULL,
  `status` varchar(111) DEFAULT NULL,
  `txn_id` varchar(222) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `default_curr_amount` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `method` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_info` text NOT NULL,
  `trx_details` varchar(255) DEFAULT NULL,
  `charge` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `user_info`, `status`, `txn_id`, `created_at`, `updated_at`, `amount`, `default_curr_amount`, `method`, `currency_id`, `currency_info`, `trx_details`, `charge`) VALUES
(1, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', 'txn_3KM2YhJlIV5dN9n70a6jwfmb', '2022-01-25 21:52:36', '2022-01-25 21:52:36', 100, '0.0000000000', 14, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-20T11:44:49.000000Z\"}', NULL, NULL),
(2, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', 'txn_3KM4WoJlIV5dN9n71PkFkge6', '2022-01-25 23:58:47', '2022-01-25 23:58:47', 100, '0.0000000000', 14, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-20T11:44:49.000000Z\"}', NULL, NULL),
(3, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', '40080904748', '2022-01-26 00:08:34', '2022-01-26 00:08:34', 100, '0.0000000000', 8, 0, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"1.1300000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-21T06:58:24.000000Z\"}', NULL, NULL),
(4, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', '40080904840', '2022-01-26 00:12:44', '2022-01-26 00:12:44', 100, '0.0000000000', 8, 0, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"1.1300000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-21T06:58:24.000000Z\"}', NULL, NULL),
(5, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', 'txn_3KM5CJJlIV5dN9n700PK723z', '2022-01-26 00:41:40', '2022-01-26 00:41:40', 100, '0.0000000000', 14, 0, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"1.1300000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-21T06:58:24.000000Z\"}', NULL, NULL),
(6, 4, '{\"id\":4,\"name\":\"User Hasan\",\"email\":\"showrabhasan7515@gmail.com\",\"photo\":\"JIC1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"UserRequest\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":537400,\"kyc_status\":0,\"kyc_info\":null,\"kyc_reject_reason\":null,\"created_at\":null,\"updated_at\":\"2021-12-28T05:05:32.000000Z\"}', 'completed', 'txn_3KMR41JlIV5dN9n70NwUhS35', '2022-01-27 00:02:31', '2022-01-27 00:02:31', 55, '0.0000000000', 14, 0, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"1.1300000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-21T06:58:24.000000Z\"}', NULL, NULL),
(7, 4, '{\"id\":4,\"name\":\"User Hasan\",\"email\":\"showrabhasan7515@gmail.com\",\"photo\":\"JIC1588136853people.png\",\"phone\":\"17283320\",\"country\":\"Belarus\",\"city\":\"UserRequest\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":537400,\"kyc_status\":0,\"kyc_info\":null,\"kyc_reject_reason\":null,\"created_at\":null,\"updated_at\":\"2021-12-28T05:05:32.000000Z\"}', 'completed', 'txn_3KMRLEJlIV5dN9n70YjXYOPx', '2022-01-27 00:20:19', '2022-01-27 00:20:19', 55, '0.0000000000', 14, 0, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"1.1300000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-21T06:58:24.000000Z\"}', NULL, NULL),
(8, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', 'txn_3KMUTpJlIV5dN9n70XWL6LfU', '2022-01-27 03:41:26', '2022-01-27 03:41:26', 100, '0.0000000000', 14, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-20T11:44:49.000000Z\"}', NULL, NULL),
(9, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"created_at\":null,\"updated_at\":\"2022-01-13T05:51:05.000000Z\"}', 'completed', 'txn_3KMUXKJlIV5dN9n70nYMtp8i', '2022-01-27 03:45:03', '2022-01-27 03:45:03', 1000, '0.0000000000', 14, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-20T11:44:49.000000Z\"}', NULL, NULL),
(10, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":162159,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-03T06:04:12.000000Z\"}', 'rejected', 'sJlRInmdb2zQ', '2022-02-08 00:02:43', '2022-02-08 22:25:30', 107, '0.0000000000', 19, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2021-12-20T11:44:49.000000Z\"}', 'Trx ID : ADSA4ASDD\nName : John Doe.\nDate : 22/02/2022', '7.0000000000'),
(11, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-15T05:12:38.000000Z\"}', 'completed', '40082850353', '2022-02-26 22:49:31', '2022-02-26 22:49:31', 100, '0.0000000000', 8, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2022-02-16T09:02:37.000000Z\"}', NULL, NULL),
(12, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-15T05:12:38.000000Z\"}', 'completed', '1246439912', '2022-02-26 23:20:25', '2022-02-26 23:20:25', 100, '0.0000000000', 7, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2022-02-16T09:02:37.000000Z\"}', NULL, NULL),
(13, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-15T05:12:38.000000Z\"}', 'completed', '741631293', '2022-02-26 23:46:00', '2022-02-26 23:46:00', 100, '0.0000000000', 12, 0, '{\"id\":13,\"default\":0,\"symbol\":\"\\u20a6\",\"code\":\"NGN\",\"curr_name\":\"Nigerian naira\",\"type\":1,\"status\":1,\"rate\":\"415.7594650000\",\"created_at\":\"2022-02-06T11:41:35.000000Z\",\"updated_at\":\"2022-02-16T09:02:35.000000Z\"}', NULL, NULL),
(14, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-15T05:12:38.000000Z\"}', 'completed', 'txn_3KXffrJlIV5dN9n71js3bIgI', '2022-02-26 23:52:04', '2022-02-26 23:52:04', 100, '0.0000000000', 14, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2022-02-16T09:02:37.000000Z\"}', NULL, NULL),
(15, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-15T05:12:38.000000Z\"}', 'pending', 'UPS0C9IOFDYU', '2022-02-27 00:06:08', '2022-02-27 00:06:08', 107, '0.0000000000', 19, 0, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"curr_name\":\"United State Dollar\",\"type\":1,\"status\":1,\"rate\":\"1.0000000000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2022-02-16T09:02:37.000000Z\"}', 'aseqwe', '7.0000000000'),
(16, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"6652903571642052304.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}},\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-02-15T05:12:38.000000Z\"}', 'pending', 'GWUNIQAMZQ8W', '2022-02-27 00:07:59', '2022-02-27 00:07:59', 100, '0.0000000000', 2, 0, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"0.8790350000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2022-02-16T09:02:35.000000Z\"}', 'dsfsd', '0.0000000000'),
(17, 1, '{\"id\":1,\"name\":\"John Doe\",\"email\":\"user@mail.com\",\"photo\":\"18497736071646280114.jpg\",\"phone\":\"8801685931233\",\"country\":\"Belarus\",\"city\":\"add\",\"address\":\"Tangail,Dhaka,Bangladesh\",\"zip\":\"1234\",\"balance\":\"0.0000000000\",\"status\":1,\"email_verified\":1,\"verification_link\":null,\"verify_code\":364201,\"kyc_status\":1,\"kyc_info\":\"{\\\"nid\\\":\\\"35464654654654\\\",\\\"image\\\":{\\\"nid_screenshot\\\":\\\"4806108011641453172.jpg\\\"},\\\"details\\\":{\\\"description_of_address\\\":\\\"asdasdasd\\\"}}\",\"kyc_reject_reason\":\"asdasd\",\"two_fa_status\":0,\"two_fa\":0,\"two_fa_code\":787171,\"created_at\":null,\"updated_at\":\"2022-03-03T04:01:57.000000Z\"}', 'completed', 'txn_3KaeGUJlIV5dN9n71jCKWPv3', '2022-03-07 04:58:11', '2022-03-07 04:58:11', 100, '0.0000000000', 14, 4, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"curr_name\":\"European Currency\",\"type\":1,\"status\":1,\"rate\":\"0.8790350000\",\"created_at\":\"2021-12-20T10:12:58.000000Z\",\"updated_at\":\"2022-02-16T09:02:35.000000Z\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `codes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `sms`, `codes`, `status`) VALUES
(12, 'add_balance', 'Balance added by system', '<p>Hello {name},\r\n</p><p>\r\nBalance added {amount} {curr} in your wallet ({curr}) by system successfully.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New balance : {after_balance}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nBalance added {amount} {curr} in your wallet ({curr}) from system successfully.\r\n\r\nTransaction details:\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(13, 'subtract_balance', 'Balance subtracted by system', '<p>Hello {name},\r\n</p><p>\r\nBalance subtracted {amount} {curr} from your wallet ({curr}) by system successfully.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New balance : {after_balance}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nBalance subtracted {amount} {curr} from your wallet ({curr}) by system successfully.\r\n\r\nTransaction details:\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(14, 'accept_withdraw', 'Withdraw request accepted', '<p>Hello <b>{name}</b>,\r\n</p><p>\r\nYour withdraw request <b>{amount} {curr}</b> is accepted via <b>{method}</b>.\r\n</p><p>\r\nWithdraw details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Charge  : {charge}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Withdraw Method : {method}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nYour withdraw request {amount} {curr} is accepted via {method}.\r\n\r\nWithdraw details:\r\nAmount  :  {amount} {curr}\r\nCharge  : {charge}\r\nTransaction ID : {trnx}\r\nWithdraw Method : {method}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"charge\":\"charge\",\"method\":\"Withdraw method\"}', 1),
(15, 'reject_withdraw', 'Withdraw request rejected', '<p>Hello {name},\r\n</p><p>\r\nYour withdraw request {amount} {curr} is rejected. The withdraw amount {amount} {curr} has been returned to your balance.</p><p>\r\nWithdraw details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Withdraw Method : {method}\r\n</li></ul><p><u>\r\nRejection reason </u>:\r\n</p><p>{reason}\r\n</p><p>\r\nTime : {date_time}\r\n</p>', 'Hello {name},\n\nYour withdraw request {amount} {curr} is rejected.\n\nWithdraw details:\nAmount  :  {amount} {curr}\nTransaction ID : {trnx}\nWithdraw Method : {method}\n\nRejection reason :\n{reason}\n\nTime : {date_time}\n', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"Withdraw method\",\"reason\":\"reject reason\"}', 1),
(17, 'deposit_approve', 'Approve Deposit', '<p>Hello {name},\r\n</p><p>\r\nYour deposit request {amount} {curr} via {method} is approved.\r\n</p><p><b>\r\nTransaction details:\r\n</b></p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Charge  : {charge} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New Balance  : {new_balance} {curr}</li></ul><p>Time : {date_time}\r\n</p>', 'Hello {name},\n\nYour deposit request {amount} {curr} via {method} is approved.\n\nTransaction details:\n\nAmount  :  {amount} {curr}\nCharge  : {charge} {curr}\nTransaction ID : {trnx}\nNew Balance  : {new_balance}\nTime : {date_time}\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"deposit method name\",\"new_balance\":\"New balance\",\"charge\":\"Charge\"}', 1),
(18, 'deposit_reject', 'Reject Deposit', '<p>Hello {name},\r\n</p><p>\r\nYour deposit request {amount} {curr} via {method} is rejected.\r\n</p><p><b>\r\nTransaction details:\r\n</b></p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Charge  : {charge}\r\n</li><li>\r\nReject Reason :\r\n{reject_reason}\r\n</li></ul><p>\r\nTime : {date_time}\r\n</p>', 'Hello {name},\r\n\r\nYour deposit request {amount} {curr} via {method} is rejected.\r\n\r\nTransaction details:\r\n\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nCharge  : {charge}\r\n\r\nRject Reason :\r\n{reject_reason}\r\n\r\nTime : {date_time}\r\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"deposit method name\",\"charge\":\"charge\",\"reject_reason\":\" reason of reject\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `curr_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `curr_sym` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 1,
  `kyc` tinyint(1) NOT NULL DEFAULT 1,
  `sms_notify` tinyint(1) NOT NULL DEFAULT 1,
  `email_notify` tinyint(1) NOT NULL DEFAULT 1,
  `allowed_email` text COLLATE utf8mb4_unicode_ci DEFAULT 'gmail.com',
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT 0,
  `recaptcha_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fiat_access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto_access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_fa` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `curr_code`, `curr_sym`, `logo`, `header_logo`, `favicon`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_maintenance`, `maintenance`, `registration`, `kyc`, `sms_notify`, `email_notify`, `allowed_email`, `contact_no`, `recaptcha`, `recaptcha_key`, `fiat_access_key`, `crypto_access_key`, `cookie`, `menu`, `two_fa`) VALUES
(1, 'USD', '$', '1571567292logo.png', '13398160291646716586.png', '1881274691646716587.png', 'Genius Wallet', '1564224328loading3.gif', 'mail.dev.geniusocean.net', 'php_mailer', '465', 'test@dev.geniusocean.net', 'QQ-cwi{%;F2~', 'ssl', 'geniustest11@gmail.com', 'GeniusTest', '5B53F1', 0, '6124fa49d6e7610a49b1c136/1fds73c17', 1, 0, 'cookie_btn_text', NULL, 0, 'Site Down', 1, 1, 0, 1, 'gmail.com,hotmail.com', '+88000000000', 0, '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', 'e02535b70998cade1035fbe04e50b8dd', '91b63a445b659202b6449e8611f231f9', '{\"status\":\"1\",\"button_text\":\"Allow Cookie\",\"cookie_text\":\"Our site use cookies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the site and improve your experience.\"}', '{\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"\\/\",\"target\":\"self\"},\"About\":{\"title\":\"About\",\"dropdown\":\"yes\",\"href\":\"\\/about\",\"target\":\"self\"},\"API\":{\"title\":\"API\",\"dropdown\":\"yes\",\"href\":\"\\/api-documentation\",\"target\":\"self\"},\"Blogs\":{\"title\":\"Blogs\",\"dropdown\":\"yes\",\"href\":\"\\/blogs\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"yes\",\"href\":\"\\/contact\",\"target\":\"self\"}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `code`, `file`) VALUES
(12, 1, 'English', 'en', 'en.json'),
(15, 0, 'Hindi', 'hn', 'hn.json'),
(16, 0, 'Bengali', 'bn', 'bn.json'),
(17, 0, 'Spanish', 'es', 'es.json');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Unknown',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Unknown',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_id`, `merchant_id`, `ip`, `country`, `city`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '::1', 'Unknown', 'Unknown', '2022-01-29 21:54:30', '2022-01-29 21:54:30'),
(2, NULL, NULL, '::1', 'Unknown', 'Unknown', '2022-01-29 21:57:18', '2022-01-29 21:57:18'),
(3, NULL, NULL, '::1', NULL, NULL, '2022-01-30 00:00:44', '2022-01-30 00:00:44'),
(4, NULL, 1, '::1', NULL, NULL, '2022-01-30 02:56:47', '2022-01-30 02:56:47'),
(5, 1, NULL, '::1', NULL, NULL, '2022-01-30 05:35:17', '2022-01-30 05:35:17'),
(6, NULL, 1, '::1', NULL, NULL, '2022-01-30 22:03:28', '2022-01-30 22:03:28'),
(7, 1, NULL, '::1', NULL, NULL, '2022-01-30 22:40:12', '2022-01-30 22:40:12'),
(8, NULL, 1, '::1', NULL, NULL, '2022-01-31 21:34:01', '2022-01-31 21:34:01'),
(9, NULL, 1, '::1', NULL, NULL, '2022-02-01 04:09:04', '2022-02-01 04:09:04'),
(10, NULL, 1, '::1', NULL, NULL, '2022-02-01 04:27:46', '2022-02-01 04:27:46'),
(11, NULL, 1, '::1', NULL, NULL, '2022-02-01 04:31:07', '2022-02-01 04:31:07'),
(12, NULL, 1, '::1', NULL, NULL, '2022-02-01 04:31:37', '2022-02-01 04:31:37'),
(13, 1, NULL, '::1', NULL, NULL, '2022-02-01 21:20:04', '2022-02-01 21:20:04'),
(14, 1, NULL, '::1', NULL, NULL, '2022-02-01 21:59:09', '2022-02-01 21:59:09'),
(15, 1, NULL, '::1', NULL, NULL, '2022-02-01 21:59:35', '2022-02-01 21:59:35'),
(16, 1, NULL, '::1', NULL, NULL, '2022-02-01 22:05:31', '2022-02-01 22:05:31'),
(17, 1, NULL, '::1', NULL, NULL, '2022-02-01 22:08:25', '2022-02-01 22:08:25'),
(18, NULL, 1, '::1', NULL, NULL, '2022-02-02 21:27:19', '2022-02-02 21:27:19'),
(19, 1, NULL, '::1', NULL, NULL, '2022-02-03 00:00:23', '2022-02-03 00:00:23'),
(20, NULL, 1, '::1', NULL, NULL, '2022-02-06 04:46:09', '2022-02-06 04:46:09'),
(21, 1, NULL, '::1', NULL, NULL, '2022-02-07 23:12:53', '2022-02-07 23:12:53'),
(22, NULL, 1, '::1', NULL, NULL, '2022-02-14 05:49:53', '2022-02-14 05:49:53'),
(23, NULL, NULL, '::1', NULL, NULL, '2022-02-15 00:28:08', '2022-02-15 00:28:08'),
(24, 1, NULL, '::1', NULL, NULL, '2022-02-16 03:31:58', '2022-02-16 03:31:58'),
(25, 1, NULL, '::1', NULL, NULL, '2022-02-16 21:18:36', '2022-02-16 21:18:36'),
(26, 1, NULL, '::1', NULL, NULL, '2022-02-17 05:06:04', '2022-02-17 05:06:04'),
(27, 1, NULL, '::1', NULL, NULL, '2022-02-21 22:44:55', '2022-02-21 22:44:55'),
(28, 1, NULL, '::1', NULL, NULL, '2022-02-23 23:16:11', '2022-02-23 23:16:11'),
(29, 1, NULL, '::1', NULL, NULL, '2022-02-24 03:54:27', '2022-02-24 03:54:27'),
(30, 1, NULL, '::1', NULL, NULL, '2022-02-26 22:00:01', '2022-02-26 22:00:01'),
(31, 1, NULL, '::1', NULL, NULL, '2022-03-01 00:15:22', '2022-03-01 00:15:22'),
(32, 1, NULL, '::1', NULL, NULL, '2022-03-01 00:41:08', '2022-03-01 00:41:08'),
(33, 1, NULL, '::1', NULL, NULL, '2022-03-02 03:02:19', '2022-03-02 03:02:19'),
(34, 1, NULL, '::1', NULL, NULL, '2022-03-02 21:54:41', '2022-03-02 21:54:41'),
(35, NULL, 1, '::1', NULL, NULL, '2022-03-02 22:08:07', '2022-03-02 22:08:07'),
(36, 1, NULL, '::1', NULL, NULL, '2022-03-06 00:20:10', '2022-03-06 00:20:10'),
(37, 4, NULL, '::1', NULL, NULL, '2022-03-06 00:26:24', '2022-03-06 00:26:24'),
(38, 1, NULL, '::1', NULL, NULL, '2022-03-07 22:06:26', '2022-03-07 22:06:26'),
(39, 1, NULL, '::1', NULL, NULL, '2022-03-08 21:21:42', '2022-03-08 21:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2021_09_25_053316_create_admins_table', 2),
(6, '2021_12_19_042602_create_site_contents_table', 3),
(7, '2021_12_20_032716_create_currencies_table', 4),
(8, '2021_12_20_041453_create_wallets_table', 5),
(9, '2021_12_20_061743_create_charges_table', 6),
(10, '2021_12_21_041624_create_countries_table', 7),
(11, '2021_12_21_095225_create_transactions_table', 8),
(12, '2021_12_22_044221_create_request_money_table', 9),
(13, '2021_12_23_053336_create_exchange_money_table', 10),
(14, '2021_12_28_083959_create_modules_table', 11),
(15, '2021_12_29_035701_create_vouchers_table', 12),
(16, '2021_12_30_050418_create_withdraws_table', 13),
(17, '2021_12_30_111614_create_withdrawals_table', 14),
(18, '2022_01_02_102323_create_payments_table', 15),
(19, '2022_01_03_032851_create_invoices_table', 16),
(20, '2022_01_03_034414_create_inv_items_table', 17),
(21, '2022_01_04_092638_create_k_y_c_s_table', 18),
(22, '2022_01_04_103906_create_kyc_forms_table', 18),
(23, '2022_01_09_035144_create_escrows_table', 19),
(24, '2022_01_09_064757_create_disputes_table', 20),
(25, '2022_01_16_053729_create_api_creds_table', 21),
(26, '2022_01_16_060854_create_merchant_payments_table', 22),
(27, '2022_01_17_100203_create_permission_tables', 23),
(28, '2022_01_20_050330_create_sms_gateways_table', 24),
(29, '2022_01_30_031517_create_login_logs_table', 25),
(30, '2022_02_02_091116_create_support_tickets_table', 26),
(31, '2022_02_02_091130_create_ticket_messages_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 3),
(4, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `lang`) VALUES
(13, 'About', 'about', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'en'),
(14, 'Announcement', 'announcement', '<h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 'en'),
(15, 'Ann', 'announcement', '২০১৬-১৮ সালের দিকে যুক্তরাষ্ট্রে আলোচিত এক নাম ছিলেন অটো ওয়ার্মবিয়ার। রোমাঞ্চের স্বাদ নিতে ২০১৬ সালকে স্বাগত জানাতে গিয়েছিলেন উত্তর কোরিয়া সফরে। কিন্তু সেটাই যে তার জীবনে কাল হয়ে দাঁড়াবে, তা কি কখনো ভাবতে পেরেছিলেন? উত্তর কোরিয়ার প্রোপাগান্ডা পোস্টার চুরির দায়ে তাকে গ্রেপ্তার করা হয়। তারপর অনেক জল ঘোলা হয়। যুক্তরাষ্ট্র-উত্তর কোরিয়া যুদ্ধ লেগে যাওয়ার মতো অবস্থা হয়। তাকে নিয়ে তৎকালীন মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্প ও উত্তর কোরিয়ার শাসক কিম জং উন উভয়ই নিজেদের স্বার্থে রাজনীতি করেছেন। কিন্তু এতে প্রাণ হারিয়েছেন অটো। তার মৃত্যু নিয়ে ছিল বেশ জল্পনা-কল্পনা। অনুসন্ধানী সাংবাদিক ডগ বক ক্লার্ক ২০১৮ সালে পুরো ঘটনার এক চিত্র তুলে ধরেন। রোর বাংলার পাঠকদের জন্য তার সেই প্রতিবেদন বাংলায় তুলে ধরা হলো।   ', 'bn');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(20,10) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `fixed_charge`, `percent_charge`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `status`, `subscription`) VALUES
(2, '(5 - 6 days)', 'Mobile Money', NULL, NULL, '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', NULL, 'manual', '[\"1\",\"4\"]', 1, 1, 1),
(7, NULL, NULL, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"text\":\"Pay Via MercadoPago\",\"sandbox_check\":1}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"text\":\"Pay Via Authorize.Net\",\"sandbox_check\":1}', 'authorize', '[\"1\",\"4\"]', 1, 1, 1),
(9, NULL, NULL, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"10\"]', 1, 1, 1),
(11, NULL, NULL, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your Paytm account.\",\"sandbox_check\":1}', 'paytm', '[\"1\"]', 1, 1, 1),
(12, NULL, NULL, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"1\",\"13\"]', 1, 1, 1),
(13, NULL, NULL, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"text\":\"Pay via your Instamojo account.\",\"sandbox_check\":1}', 'instamojo', '[\"1\",\"10\"]', 1, 1, 1),
(14, NULL, NULL, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\",\"4\"]', 1, 1, 1),
(15, NULL, NULL, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":0,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\",\"4\"]', 1, 1, 1),
(19, '5-6 days', 'Wire Bank', '5.0000000000', '2.00', '<p>Wire bank&nbsp;</p><p>ACC NO. : 268653464646546465.</p><p>Deep branch</p>', 'Wire Bank', 'manual', NULL, 'manual', '[\"1\",\"4\",\"6\"]', 1, 1, 1),
(20, NULL, NULL, NULL, NULL, NULL, 'CoinGate', 'automatic', '{\"secret_string\":\"B46P1XMf388193hz-sqrDJPhNprKy8xaZ3Sb2dt2\",\"text\":\"Pay via your Coin gate account.\"}', 'coingate', '[\"9\",\"1\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(209, 'dashboard info', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(211, 'transactions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(212, 'manage user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(213, 'edit user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(214, 'update user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(215, 'user balance modify', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(216, 'user login', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(217, 'user login logs', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(224, 'manage currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(225, 'add currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(226, 'edit currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(227, 'update currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(228, 'update currency api', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(232, 'manage country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(233, 'add country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(234, 'update country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(254, 'manage role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(255, 'create role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(256, 'edit permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(257, 'update permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(258, 'manage staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(259, 'add staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(260, 'update staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(261, 'general setting', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(262, 'general settings update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(263, 'general settings logo favicon', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(264, 'general settings status update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(265, 'menu builder', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(266, 'maintainance', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(267, 'email templates', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(268, 'template edit', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(269, 'template update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(270, 'email config', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(271, 'group email', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(272, 'sms gateways', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(273, 'sms gateway edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(274, 'sms gateway update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(275, 'sms templates', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(276, 'sms template edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(277, 'sms template update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(278, 'site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(279, 'edit site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(280, 'site content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(281, 'site sub-content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(282, 'section status update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(283, 'withdraw method', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(284, 'withdraw method search', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(285, 'withdraw method create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(286, 'withdraw method edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(287, 'withdraw method update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(288, 'pending withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(289, 'accepted withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(290, 'rejected withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(291, 'withdraw accept', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(292, 'withdraw reject', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(293, 'manage payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(294, 'add payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(295, 'store payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(296, 'edit payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(297, 'update payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(298, 'manage deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(299, 'approve deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(300, 'reject deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(301, 'manage page', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(302, 'page create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(303, 'page store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(304, 'page edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(305, 'page update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(306, 'page remove', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(307, 'manage cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(308, 'update cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(309, 'manage blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(310, 'store blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(311, 'update blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(312, 'manage blog', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(313, 'blog create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(314, 'blog store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(315, 'blog edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(316, 'blog update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(317, 'blog destroy', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(318, 'manage language', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(319, 'manage ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(320, 'reply ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(321, 'seo settings', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-01-17 04:25:50', '2022-01-17 04:25:50'),
(3, 'moderator', 'admin', '2022-01-17 05:23:47', '2022-01-17 05:23:47'),
(4, 'Ticket Handler', 'admin', '2022-02-16 23:55:38', '2022-02-16 23:55:38');

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
(209, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(232, 1),
(233, 1),
(234, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_tag`, `meta_description`, `meta_image`) VALUES
(1, 'Genius Wallet', 'a,b,c,d,s,j', 'test description1', '16069484521639895038.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `slug`, `content`, `sub_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'banner', '{\"title\":\"Simple. Quick. Secure.\",\"heading\":\"Make Online Banking Easier & Comfortable\",\"sub_heading\":\"An international account to send money to over 60 countries around the world, up to 7x cheaper the bank\",\"button_1_name\":\"Get Started\",\"button_1_url\":\"\\/user\\/register\",\"button_2_name\":\"Contact Us\",\"button_2_url\":\"\\/contact\",\"image\":\"7430732421644388266.jpg\"}', NULL, 1, NULL, '2022-02-16 03:21:33'),
(7, 'FAQs\r\n', 'faq', '{\"title\":\"FAQs\",\"heading\":\"Frequently Asked Questions\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', '[{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"}]', 1, NULL, '2022-02-09 22:20:01'),
(9, 'Blog', 'blog', '{\"title\":\"Blog Posts\",\"heading\":\"Our Latest News & Tips\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', NULL, 1, NULL, '2022-02-16 03:27:29'),
(11, 'Social Links', 'social', NULL, '[{\"icon\":\"fab fa-facebook-f\",\"url\":\"https:\\/\\/facebook.com\"},{\"icon\":\"fab fa-twitter\",\"url\":\"https:\\/\\/twiiter.com\"},{\"icon\":\"fab fa-instagram\",\"url\":\"https:\\/\\/instagram.com\"},{\"icon\":\"fab fa-linkedin-in\",\"url\":\"https:\\/\\/linkedin.com\"},{\"icon\":\"fab fa-youtube\",\"url\":\"https:\\/\\/youtube.com\"}]', 1, NULL, '2022-02-13 02:49:01'),
(12, 'Policies And Terms', 'policies', NULL, '[{\"lang\":\"en\",\"title\":\"Privacy\",\"description\":\"<h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><strong style=\\\"margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><br><\\/p>\"},{\"lang\":\"en\",\"title\":\"Terms and Condition\",\"description\":\"<h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"},{\"lang\":\"en\",\"title\":\"Refund Policy\",\"description\":\"<h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"},{\"lang\":\"bn\",\"title\":\"Privacy\",\"description\":\"<p style=\\\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; color: rgb(0, 0, 0); font-family: Inter, sans-serif; text-align: justify;\\\">\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09c0\\u09a8 \\u0997\\u09cd\\u09b0\\u09bf\\u09b8\\u09c7\\u09b0 \\u09a8\\u09be\\u09ac\\u09bf\\u0995 \\u09ac\\u09be \\u099c\\u09c7\\u09b2\\u09c7\\u09b0\\u09be \\u0989\\u09a4\\u09cd\\u09a4\\u09be\\u09b2 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7 \\u09aa\\u09cd\\u09b0\\u099a\\u09a3\\u09cd\\u09a1 \\u099d\\u09dc \\u09ac\\u09be \\u09a2\\u09c7\\u0989\\u09df\\u09c7\\u09b0 \\u0995\\u09ac\\u09b2\\u09c7 \\u09aa\\u09dc\\u09b2\\u09c7 \\u0995\\u09b0\\u099c\\u09cb\\u09dc\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0-\\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u09c7\\u09b0 \\u09a8\\u09bf\\u0995\\u099f \\u09b8\\u09be\\u09b9\\u09be\\u09af\\u09cd\\u09af \\u09aa\\u09cd\\u09b0\\u09be\\u09b0\\u09cd\\u09a5\\u09a8\\u09be \\u0995\\u09b0\\u09a4\\u0964 \\u0995\\u09be\\u09b0\\u09a3, \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0989\\u09aa\\u0995\\u09a5\\u09be\\u09b0 \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09be\\u09df\\u0997\\u09be\\u099c\\u09c1\\u09dc\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u0995\\u09c7 \\u09ac\\u09bf\\u09b8\\u09cd\\u09a4\\u09c0\\u09b0\\u09cd\\u09a3 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf\\u09b0 \\u09ae\\u09a4\\u09cb \\u099b\\u09dc\\u09bf\\u09df\\u09c7 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09aa\\u09a6 \\u0993 \\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f\\u09a4\\u09be \\u0985\\u09a8\\u09c1\\u09b8\\u09be\\u09b0\\u09c7, \\u09a6\\u09c7\\u09ac\\u09b0\\u09be\\u099c \\u099c\\u09bf\\u0989\\u09b8\\u09c7\\u09b0 \\u09aa\\u09b0\\u0987 \\u09a4\\u09be\\u09b0 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\\u0964 \\u099c\\u09bf\\u0989\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09b8\\u09cd\\u09ac\\u09b0\\u09cd\\u0997\\u09c7\\u09b0 \\u09af\\u09be\\u09ac\\u09a4\\u09c0\\u09df \\u099c\\u09bf\\u09a8\\u09bf\\u09b8 \\u09b8\\u09be\\u09ae\\u09b2\\u09be\\u09a8, \\u09b9\\u09c7\\u09a1\\u09bf\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09aa\\u09be\\u09a4\\u09be\\u09b2\\u09aa\\u09c1\\u09b0\\u09c0\\u09b0 \\u0998\\u09c1\\u099f\\u0998\\u09c1\\u099f\\u09c7 \\u0985\\u09a8\\u09cd\\u09a7\\u0995\\u09be\\u09b0\\u09c7 \\u0997\\u09c1\\u09b0\\u09c1\\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7 \\u0986\\u09b8\\u099b\\u09c7\\u09a8, \\u09a4\\u09c7\\u09ae\\u09a8\\u09bf \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u098f\\u0995\\u099a\\u09cd\\u099b\\u09a4\\u09cd\\u09b0 \\u0985\\u09a7\\u09bf\\u09aa\\u09a4\\u09bf \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7 \\u0985\\u09a5\\u09c8 \\u099c\\u09b2\\u09c7\\u09b0 \\u09a2\\u09c7\\u0989 \\u09ad\\u09c7\\u0999\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u09b0\\u09be\\u099c\\u09a4\\u09cd\\u09ac \\u0995\\u09be\\u09df\\u09c7\\u09ae \\u09b0\\u09be\\u0996\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be\\u09a6\\u09c7\\u09b0 \\u09ae\\u09a7\\u09cd\\u09af \\u09a4\\u09bf\\u09a8\\u09bf\\u0987 \\u09aa\\u09cd\\u09b0\\u09a5\\u09ae \\u0998\\u09cb\\u09dc\\u09be\\u0995\\u09c7 \\u09aa\\u09cb\\u09b7 \\u09ae\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u09c7\\u09a8 \\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u0995\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09ac\\u09b2\\u09c7\\u0993 \\u09a1\\u09be\\u0995\\u09be \\u09b9\\u09df\\u0964<\\/p><p style=\\\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; color: rgb(0, 0, 0); font-family: Inter, sans-serif; text-align: justify;\\\">\\u098f\\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09aa\\u09c1\\u09b0\\u09be\\u09a3\\u09c7 \\u09a4\\u09bf\\u09a8\\u09bf \\u09ac\\u09a8\\u09cd\\u09af\\u09be, \\u0996\\u09b0\\u09be, \\u0993 \\u09ad\\u09c2\\u09ae\\u09bf\\u0995\\u09ae\\u09cd\\u09aa\\u09c7\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7\\u0993 \\u09b8\\u09c1\\u09aa\\u09b0\\u09bf\\u099a\\u09bf\\u09a4\\u0964 \\u099a\\u09cb\\u0996\\u09a7\\u09be\\u0981\\u09a7\\u09be\\u09a8\\u09cb \\u09b8\\u09c1\\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u098f\\u0995 \\u09b0\\u09be\\u099c\\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b0\\u09be\\u099c\\u0995\\u09c0\\u09df \\u09ac\\u09b8\\u09ac\\u09be\\u09b8, \\u09af\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09bf\\u099a\\u09c7 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09bf\\u09a4\\u0964 \\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7\\u09b0 \\u09ac\\u09c3\\u09b9\\u09ce \\u098f\\u0995 \\u0986\\u09b8\\u09cd\\u09a4\\u09be\\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b8\\u09be\\u09a6\\u09be \\u09b0\\u0999\\u09c7\\u09b0 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a4\\u09be\\u09ae\\u09be\\u099f\\u09c7 \\u0996\\u09c1\\u09b0 \\u09a8\\u09bf\\u09df\\u09c7 \\u09a0\\u09be\\u0981\\u0987 \\u09a6\\u09be\\u0981\\u09dc\\u09bf\\u09df\\u09c7 \\u09a5\\u09be\\u0995\\u09c7\\u0964 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u0995\\u09cd\\u09b0\\u09cb\\u09a7 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6\\u09c7\\u09b0 \\u09ae\\u09be\\u09a7\\u09cd\\u09af\\u09ae\\u09c7 \\u0985\\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b0\\u09c2\\u09aa \\u09a7\\u09be\\u09b0\\u09a3 \\u0995\\u09b0\\u09b2\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a8\\u09bf\\u09df\\u09c7 \\u098f\\u0995 \\u09b8\\u09cb\\u09a8\\u09be\\u09b2\\u09bf \\u09b0\\u09a5 \\u09aa\\u09cd\\u09b0\\u09b8\\u09cd\\u09a4\\u09c1\\u09a4 \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ae\\u09be\\u099b\\u09c7\\u09b0 \\u09ae\\u09a4\\u09cb \\u09b2\\u09c7\\u099c\\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u0995\\u099c\\u09cb\\u09dc\\u09be \\u0998\\u09cb\\u09dc\\u09be \\u09a4\\u09be\\u09b0 \\u09b0\\u09a5 \\u099f\\u09be\\u09a8\\u09be\\u09b0 \\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7\\u0964 \\u09b9\\u09be\\u0993\\u09df\\u09be\\u09b0 \\u09ac\\u09c7\\u0997\\u09c7 \\u099b\\u09c1\\u099f\\u09c7 \\u099a\\u09b2\\u09be \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a6\\u09bf\\u09df\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u0995\\u09c7 \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u0995\\u09b0\\u09be\\u09b0 \\u099a\\u09c7\\u09b7\\u09cd\\u099f\\u09be \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ab\\u09c1\\u09b2\\u09c7-\\u09ab\\u09c7\\u0981\\u09aa\\u09c7 \\u0993\\u09a0\\u09be \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b9\\u09df\\u09c7 \\u0997\\u09c7\\u09b2\\u09c7\\u0987 \\u099c\\u09b2\\u099c \\u09aa\\u09cd\\u09b0\\u09be\\u09a3\\u09c0\\u09b0\\u09be \\u09b0\\u09a5\\u09c7\\u09b0 \\u09aa\\u09c7\\u099b\\u09a8\\u09c7 \\u0996\\u09c1\\u09b6\\u09bf\\u09a4\\u09c7 \\u09a1\\u0997\\u09ae\\u0997 \\u09b9\\u09df\\u09c7 \\u09a8\\u09c7\\u099a\\u09c7-\\u0997\\u09c7\\u09df\\u09c7 \\u0986\\u09a8\\u09a8\\u09cd\\u09a6 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6 \\u0995\\u09b0\\u09c7\\u0964<\\/p><p style=\\\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; color: rgb(0, 0, 0); font-family: Inter, sans-serif; text-align: justify;\\\">\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09c0\\u09a8 \\u0997\\u09cd\\u09b0\\u09bf\\u09b8\\u09c7\\u09b0 \\u09a8\\u09be\\u09ac\\u09bf\\u0995 \\u09ac\\u09be \\u099c\\u09c7\\u09b2\\u09c7\\u09b0\\u09be \\u0989\\u09a4\\u09cd\\u09a4\\u09be\\u09b2 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7 \\u09aa\\u09cd\\u09b0\\u099a\\u09a3\\u09cd\\u09a1 \\u099d\\u09dc \\u09ac\\u09be \\u09a2\\u09c7\\u0989\\u09df\\u09c7\\u09b0 \\u0995\\u09ac\\u09b2\\u09c7 \\u09aa\\u09dc\\u09b2\\u09c7 \\u0995\\u09b0\\u099c\\u09cb\\u09dc\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0-\\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u09c7\\u09b0 \\u09a8\\u09bf\\u0995\\u099f \\u09b8\\u09be\\u09b9\\u09be\\u09af\\u09cd\\u09af \\u09aa\\u09cd\\u09b0\\u09be\\u09b0\\u09cd\\u09a5\\u09a8\\u09be \\u0995\\u09b0\\u09a4\\u0964 \\u0995\\u09be\\u09b0\\u09a3, \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0989\\u09aa\\u0995\\u09a5\\u09be\\u09b0 \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09be\\u09df\\u0997\\u09be\\u099c\\u09c1\\u09dc\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u0995\\u09c7 \\u09ac\\u09bf\\u09b8\\u09cd\\u09a4\\u09c0\\u09b0\\u09cd\\u09a3 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf\\u09b0 \\u09ae\\u09a4\\u09cb \\u099b\\u09dc\\u09bf\\u09df\\u09c7 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09aa\\u09a6 \\u0993 \\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f\\u09a4\\u09be \\u0985\\u09a8\\u09c1\\u09b8\\u09be\\u09b0\\u09c7, \\u09a6\\u09c7\\u09ac\\u09b0\\u09be\\u099c \\u099c\\u09bf\\u0989\\u09b8\\u09c7\\u09b0 \\u09aa\\u09b0\\u0987 \\u09a4\\u09be\\u09b0 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\\u0964 \\u099c\\u09bf\\u0989\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09b8\\u09cd\\u09ac\\u09b0\\u09cd\\u0997\\u09c7\\u09b0 \\u09af\\u09be\\u09ac\\u09a4\\u09c0\\u09df \\u099c\\u09bf\\u09a8\\u09bf\\u09b8 \\u09b8\\u09be\\u09ae\\u09b2\\u09be\\u09a8, \\u09b9\\u09c7\\u09a1\\u09bf\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09aa\\u09be\\u09a4\\u09be\\u09b2\\u09aa\\u09c1\\u09b0\\u09c0\\u09b0 \\u0998\\u09c1\\u099f\\u0998\\u09c1\\u099f\\u09c7 \\u0985\\u09a8\\u09cd\\u09a7\\u0995\\u09be\\u09b0\\u09c7 \\u0997\\u09c1\\u09b0\\u09c1\\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7 \\u0986\\u09b8\\u099b\\u09c7\\u09a8, \\u09a4\\u09c7\\u09ae\\u09a8\\u09bf \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u098f\\u0995\\u099a\\u09cd\\u099b\\u09a4\\u09cd\\u09b0 \\u0985\\u09a7\\u09bf\\u09aa\\u09a4\\u09bf \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7 \\u0985\\u09a5\\u09c8 \\u099c\\u09b2\\u09c7\\u09b0 \\u09a2\\u09c7\\u0989 \\u09ad\\u09c7\\u0999\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u09b0\\u09be\\u099c\\u09a4\\u09cd\\u09ac \\u0995\\u09be\\u09df\\u09c7\\u09ae \\u09b0\\u09be\\u0996\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be\\u09a6\\u09c7\\u09b0 \\u09ae\\u09a7\\u09cd\\u09af \\u09a4\\u09bf\\u09a8\\u09bf\\u0987 \\u09aa\\u09cd\\u09b0\\u09a5\\u09ae \\u0998\\u09cb\\u09dc\\u09be\\u0995\\u09c7 \\u09aa\\u09cb\\u09b7 \\u09ae\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u09c7\\u09a8 \\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u0995\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09ac\\u09b2\\u09c7\\u0993 \\u09a1\\u09be\\u0995\\u09be \\u09b9\\u09df\\u0964<\\/p><p style=\\\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.5; color: rgb(0, 0, 0); font-family: Inter, sans-serif; text-align: justify;\\\">\\u098f\\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09aa\\u09c1\\u09b0\\u09be\\u09a3\\u09c7 \\u09a4\\u09bf\\u09a8\\u09bf \\u09ac\\u09a8\\u09cd\\u09af\\u09be, \\u0996\\u09b0\\u09be, \\u0993 \\u09ad\\u09c2\\u09ae\\u09bf\\u0995\\u09ae\\u09cd\\u09aa\\u09c7\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7\\u0993 \\u09b8\\u09c1\\u09aa\\u09b0\\u09bf\\u099a\\u09bf\\u09a4\\u0964 \\u099a\\u09cb\\u0996\\u09a7\\u09be\\u0981\\u09a7\\u09be\\u09a8\\u09cb \\u09b8\\u09c1\\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u098f\\u0995 \\u09b0\\u09be\\u099c\\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b0\\u09be\\u099c\\u0995\\u09c0\\u09df \\u09ac\\u09b8\\u09ac\\u09be\\u09b8, \\u09af\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09bf\\u099a\\u09c7 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09bf\\u09a4\\u0964 \\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7\\u09b0 \\u09ac\\u09c3\\u09b9\\u09ce \\u098f\\u0995 \\u0986\\u09b8\\u09cd\\u09a4\\u09be\\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b8\\u09be\\u09a6\\u09be \\u09b0\\u0999\\u09c7\\u09b0 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a4\\u09be\\u09ae\\u09be\\u099f\\u09c7 \\u0996\\u09c1\\u09b0 \\u09a8\\u09bf\\u09df\\u09c7 \\u09a0\\u09be\\u0981\\u0987 \\u09a6\\u09be\\u0981\\u09dc\\u09bf\\u09df\\u09c7 \\u09a5\\u09be\\u0995\\u09c7\\u0964 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u0995\\u09cd\\u09b0\\u09cb\\u09a7 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6\\u09c7\\u09b0 \\u09ae\\u09be\\u09a7\\u09cd\\u09af\\u09ae\\u09c7 \\u0985\\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b0\\u09c2\\u09aa \\u09a7\\u09be\\u09b0\\u09a3 \\u0995\\u09b0\\u09b2\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a8\\u09bf\\u09df\\u09c7 \\u098f\\u0995 \\u09b8\\u09cb\\u09a8\\u09be\\u09b2\\u09bf \\u09b0\\u09a5 \\u09aa\\u09cd\\u09b0\\u09b8\\u09cd\\u09a4\\u09c1\\u09a4 \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ae\\u09be\\u099b\\u09c7\\u09b0 \\u09ae\\u09a4\\u09cb \\u09b2\\u09c7\\u099c\\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u0995\\u099c\\u09cb\\u09dc\\u09be \\u0998\\u09cb\\u09dc\\u09be \\u09a4\\u09be\\u09b0 \\u09b0\\u09a5 \\u099f\\u09be\\u09a8\\u09be\\u09b0 \\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7\\u0964 \\u09b9\\u09be\\u0993\\u09df\\u09be\\u09b0 \\u09ac\\u09c7\\u0997\\u09c7 \\u099b\\u09c1\\u099f\\u09c7 \\u099a\\u09b2\\u09be \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a6\\u09bf\\u09df\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u0995\\u09c7 \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u0995\\u09b0\\u09be\\u09b0 \\u099a\\u09c7\\u09b7\\u09cd\\u099f\\u09be \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ab\\u09c1\\u09b2\\u09c7-\\u09ab\\u09c7\\u0981\\u09aa\\u09c7 \\u0993\\u09a0\\u09be \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b9\\u09df\\u09c7 \\u0997\\u09c7\\u09b2\\u09c7\\u0987 \\u099c\\u09b2\\u099c \\u09aa\\u09cd\\u09b0\\u09be\\u09a3\\u09c0\\u09b0\\u09be \\u09b0\\u09a5\\u09c7\\u09b0 \\u09aa\\u09c7\\u099b\\u09a8\\u09c7 \\u0996\\u09c1\\u09b6\\u09bf\\u09a4\\u09c7 \\u09a1\\u0997\\u09ae\\u0997 \\u09b9\\u09df\\u09c7 \\u09a8\\u09c7\\u099a\\u09c7-\\u0997\\u09c7\\u09df\\u09c7 \\u0986\\u09a8\\u09a8\\u09cd\\u09a6 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6 \\u0995\\u09b0\\u09c7\\u0964<\\/p>\"}]', 1, NULL, '2022-02-13 03:52:41'),
(13, 'Contact Us', 'contact', '{\"title\":\"Contact Us\",\"heading\":\"Get In Touch\",\"sub_heading\":\"Porro illum impedit nemo hic, similique at, qui ducimus praesentium ullam voluptatem culpa temporibus eveniet, esse accusamus\",\"phone\":\"+1 (631) 593-5927\",\"email\":\"geniuswallet@gmail.com\",\"address\":\"7058 Najrul Islam Road, Dhaka.\"}', NULL, 1, NULL, '2022-02-14 05:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `name`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Twilio', '{\r\n\"sid\":\"\",\"token\":\"\",\"from_number\":\"\"\r\n}', 0, NULL, '2022-01-19 23:56:26'),
(2, 'Nexmo', '{\"api_key\":\"f0842415\",\"api_secret\":\"5FqSGPgFIKbf8nDr\"}', 1, NULL, '2022-01-20 02:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = replied. ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `guest_email`, `guest_name`, `ticket_num`, `subject`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, NULL, 'TKT85099556', 'Cant not withdraw money', 1, '2022-02-02 03:38:44', '2022-02-02 03:38:44'),
(2, 13, NULL, NULL, 'TKT22679763', 'Demo', 1, '2022-02-02 04:36:37', '2022-02-08 02:22:47'),
(3, 1, NULL, NULL, 'TKT10770742', 'Payment Issue', 1, '2022-02-02 21:29:43', '2022-02-02 21:59:16'),
(4, 1, NULL, NULL, 'TKT71381999', 'new1', 0, '2022-02-02 22:40:58', '2022-02-02 22:40:58'),
(5, 1, NULL, NULL, 'TKT94219745', 'New2', 0, '2022-02-02 22:42:38', '2022-02-02 22:42:38'),
(6, 1, NULL, NULL, 'TKT43483176', 'New3', 0, '2022-02-02 22:43:05', '2022-02-02 22:43:05'),
(7, 1, NULL, NULL, 'TKT87198421', 'DCV', 0, '2022-02-02 22:43:15', '2022-02-02 22:43:15'),
(8, 1, NULL, NULL, 'TKT10211164', 'Demos', 0, '2022-02-02 22:43:31', '2022-02-02 22:43:31'),
(9, 1, NULL, NULL, 'TKT62302556', 'qweqweq', 1, '2022-02-02 22:43:43', '2022-02-02 22:47:16'),
(10, 1, NULL, NULL, 'TKT56470457', 'Userticket', 0, '2022-02-03 00:07:06', '2022-03-07 23:22:31'),
(11, 1, NULL, NULL, 'TKT42557052', 'New1', 0, '2022-02-03 00:16:15', '2022-02-03 00:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `ticket_num`, `user_id`, `admin_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'TKT85099556', 13, NULL, 'asldnalskdasjdlaksjd', NULL, '2022-02-02 04:09:34', '2022-02-02 04:09:34'),
(2, 1, 'TKT85099556', 13, 1, 'Hello there', NULL, '2022-02-02 04:09:34', '2022-02-02 04:09:34'),
(3, 1, 'TKT85099556', 13, NULL, 'i need money', NULL, '2022-02-02 04:26:45', '2022-02-02 04:26:45'),
(4, 2, 'TKT22679763', 13, NULL, 'Hello', NULL, '2022-02-02 04:37:53', '2022-02-02 04:37:53'),
(5, 1, 'TKT85099556', 13, NULL, 'asdasdasd', NULL, '2022-02-02 04:38:05', '2022-02-02 04:38:05'),
(6, 1, 'TKT85099556', 13, NULL, 'asdasdasd', NULL, '2022-02-02 04:38:08', '2022-02-02 04:38:08'),
(7, 1, 'TKT85099556', 13, NULL, 'asdasd', NULL, '2022-02-02 04:38:12', '2022-02-02 04:38:12'),
(8, 1, 'TKT85099556', 13, NULL, 'asdasdasdasd', '13598470421643801342.jpg', '2022-02-02 05:29:02', '2022-02-02 05:29:02'),
(9, 1, 'TKT85099556', 13, NULL, 'pdf', '17062225081643801885.pdf', '2022-02-02 05:38:05', '2022-02-02 05:38:05'),
(10, 3, 'TKT10770742', 1, NULL, 'Hello admin', NULL, '2022-02-02 21:30:17', '2022-02-02 21:30:17'),
(11, 3, 'TKT10770742', 1, NULL, 'hello', NULL, '2022-02-02 21:59:16', '2022-02-02 21:59:16'),
(12, 3, 'TKT10770742', 1, 1, 'hello', NULL, '2022-02-02 21:59:51', '2022-02-02 21:59:51'),
(13, 3, 'TKT10770742', 1, 1, 'Follow the pic', '15459167691643860837.png', '2022-02-02 22:00:37', '2022-02-02 22:00:37'),
(14, 5, 'TKT94219745', 1, NULL, 'hello', NULL, '2022-02-02 22:42:45', '2022-02-02 22:42:45'),
(15, 4, 'TKT71381999', 1, NULL, 'Hello', NULL, '2022-02-02 22:42:50', '2022-02-02 22:42:50'),
(16, 6, 'TKT43483176', 1, NULL, 'VBBBB', NULL, '2022-02-02 22:43:09', '2022-02-02 22:43:09'),
(17, 6, 'TKT43483176', 1, NULL, 'AAEASFASf', NULL, '2022-02-02 22:43:18', '2022-02-02 22:43:18'),
(18, 8, 'TKT10211164', 1, NULL, 'asdasd', NULL, '2022-02-02 22:43:36', '2022-02-02 22:43:36'),
(19, 8, 'TKT10211164', 1, NULL, 'cvbcvbcv', NULL, '2022-02-02 22:43:47', '2022-02-02 22:43:47'),
(20, 9, 'TKT62302556', 1, NULL, 'asdasdas', NULL, '2022-02-02 22:43:52', '2022-02-02 22:43:52'),
(21, 9, 'TKT62302556', 1, 1, 'assssssssssssssssssssssssssssssssssssss', NULL, '2022-02-02 22:47:16', '2022-02-02 22:47:16'),
(22, 10, 'TKT56470457', 1, NULL, 'asdasdasd', NULL, '2022-02-03 00:09:49', '2022-02-03 00:09:49'),
(23, 10, 'TKT56470457', 1, 1, 'asdasda', NULL, '2022-02-03 00:10:03', '2022-02-03 00:10:03'),
(24, 1, 'TKT85099556', 13, 1, 'ccc', '16638297981644308176.png', '2022-02-08 02:16:16', '2022-02-08 02:16:16'),
(25, 1, 'TKT85099556', 13, 1, 'asdasdasd', '20045371241644308378.png', '2022-02-08 02:19:38', '2022-02-08 02:19:38'),
(26, 2, 'TKT22679763', 13, 1, 'adsda', NULL, '2022-02-08 02:22:47', '2022-02-08 02:22:47'),
(27, 10, 'TKT56470457', 1, 1, 'dafjdflkadjfn asdlkfjadslf dsfja sdlkf jsdf asf sdf ads fad fasdmfsd mfasdfsdfs', '17878388621645087206.png', '2022-02-17 02:40:06', '2022-02-17 02:40:06'),
(28, 10, 'TKT56470457', 1, 1, 'aaaa', NULL, '2022-02-22 03:50:08', '2022-02-22 03:50:08'),
(29, 10, 'TKT56470457', 1, NULL, 'sdasd', NULL, '2022-03-07 23:22:31', '2022-03-07 23:22:31'),
(30, 10, 'TKT56470457', 1, NULL, 'sss', '12588003741646716966.jpg', '2022-03-07 23:22:46', '2022-03-07 23:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trnx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `charge` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `amount` decimal(20,10) NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `trnx`, `user_id`, `charge`, `amount`, `remark`, `type`, `details`, `created_at`, `updated_at`) VALUES
(3, '147TUUQLYBQW', 1, '11.0000000000', '31.0000000000', 'transfer_money', '-', 'Transfer money to showrabhasan7515@gmail.com', '2021-12-21 21:39:46', '2021-12-21 21:39:46'),
(4, '147TUUQLYBQW', 1, '0.0000000000', '20.0000000000', 'transfer_money', '+', 'Received money from user@mail.com', '2021-12-21 21:39:46', '2021-12-21 21:39:46'),
(5, 'VUIVN1SUVGEV', 1, '9.9000000000', '29.9000000000', 'transfer_money', '-', 'Transfer money to showrabhasan7515@gmail.com', '2021-12-21 21:55:50', '2021-12-21 21:55:50'),
(6, 'VUIVN1SUVGEV', 4, '0.0000000000', '20.0000000000', 'transfer_money', '+', 'Received money from user@mail.com', '2021-12-21 21:55:50', '2021-12-21 21:55:50'),
(7, 'FQ77QZVALGZZ', 1, '9.9000000000', '29.9000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2021-12-21 22:10:10', '2021-12-21 22:10:10'),
(8, 'FQ77QZVALGZZ', 4, '0.0000000000', '20.0000000000', 'transfer_money', NULL, 'Received money from user@mail.com', '2021-12-21 22:10:10', '2021-12-21 22:10:10'),
(9, '9AZ5CEUW8EYF', 1, '2.2000000000', '20.0000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2021-12-23 00:30:35', '2021-12-23 00:30:35'),
(10, 'DZKEQVPXJEPY', 1, '2.2000000000', '20.0000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2021-12-23 00:30:51', '2021-12-23 00:30:51'),
(11, 'DZKEQVPXJEPY', 1, '0.0000000000', '22.6000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2021-12-23 00:30:51', '2021-12-23 00:30:51'),
(12, 'J2GHOXPNBZEP', 1, '2.4600000000', '20.0000000000', 'money_exchange', NULL, 'Exchanged money from EUR to USD', '2021-12-23 00:38:52', '2021-12-23 00:38:52'),
(13, 'J2GHOXPNBZEP', 1, '0.0000000000', '17.6991150442', 'money_exchange', NULL, 'Exchanged money from EUR to USD', '2021-12-23 00:38:52', '2021-12-23 00:38:52'),
(14, 'LYQYZ8BV9FTV', 1, '12.3000000000', '32.3000000000', 'create_voucher', NULL, 'Voucher created', '2021-12-28 23:22:10', '2021-12-28 23:22:10'),
(15, 'LYQYZ8BV9FTV', 1, '0.0000000000', '3.2300000000', 'create_voucher', NULL, 'Voucher created', '2021-12-28 23:22:10', '2021-12-28 23:22:10'),
(16, 'KDSZ9D1TMBY7', 1, '12.0000000000', '1000.0000000000', 'money_exchange', NULL, 'Exchanged money from USD to BTC', '2021-12-28 23:49:55', '2021-12-28 23:49:55'),
(17, 'KDSZ9D1TMBY7', 1, '0.0000000000', '0.0210000000', 'money_exchange', NULL, 'Exchanged money from USD to BTC', '2021-12-28 23:49:55', '2021-12-28 23:49:55'),
(18, 'LVRNGQLZCAU5', 1, '16.3000000000', '116.3000000000', 'create_voucher', NULL, 'Voucher created', '2021-12-29 21:46:07', '2021-12-29 21:46:07'),
(19, 'LVRNGQLZCAU5', 1, '0.0000000000', '11.6300000000', 'create_voucher', NULL, 'Voucher created', '2021-12-29 21:46:07', '2021-12-29 21:46:07'),
(20, 'UV2BCZ8HRDHE', 1, '0.0000000000', '100.0000000000', 'reedem_voucher', NULL, 'Voucher reedemed', '2021-12-29 21:47:05', '2021-12-29 21:47:05'),
(21, 'NPYZJQOEXP07', 1, '5.0000000000', '100.0000000000', 'withdraw_money', NULL, 'Withdraw money', '2022-01-01 21:57:22', '2022-01-01 21:57:22'),
(22, 'AXRBEA8CLOLO', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to merchant@mail.com', '2022-01-03 22:45:35', '2022-01-03 22:45:35'),
(23, 'AXRBEA8CLOLO', 1, '0.0000000000', '100.0000000000', 'merchant_payment', '+', 'Payment received from user@mail.com', '2022-01-03 22:45:35', '2022-01-03 22:45:35'),
(24, '3EFGMDPGDTQX', 1, '10.0949557522', '11.9940707964', 'transfer_money', NULL, 'Transfer money to merchant@mail.com', '2022-01-03 22:46:34', '2022-01-03 22:46:34'),
(25, '3EFGMDPGDTQX', 1, '0.0000000000', '1.8991150442', 'merchant_payment', '+', 'Payment received from user@mail.com', '2022-01-03 22:46:34', '2022-01-03 22:46:34'),
(26, 'Q48OIJ5UG0DT', 1, '15.2500000000', '120.2500000000', 'merchant_payment', NULL, 'Payment to merchant merchant@mail.com', '2022-01-03 22:49:41', '2022-01-03 22:49:41'),
(27, 'Q48OIJ5UG0DT', 1, '0.0000000000', '105.0000000000', 'merchant_payment', '+', 'Payment received from user@mail.com', '2022-01-03 22:49:41', '2022-01-03 22:49:41'),
(28, 'PUKZZT0LKHO7', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-05 22:20:38', '2022-01-05 22:20:38'),
(29, 'PUKZZT0LKHO7', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from minhaz217@gmail.com', '2022-01-05 22:20:38', '2022-01-05 22:20:38'),
(30, 'HWIJMLQYBQQX', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-05 22:21:36', '2022-01-05 22:21:36'),
(31, 'HWIJMLQYBQQX', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from minhaz217@gmail.com', '2022-01-05 22:21:36', '2022-01-05 22:21:36'),
(32, 'E5RADY0BVUU3', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-05 22:22:13', '2022-01-05 22:22:13'),
(33, 'E5RADY0BVUU3', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from minhaz217@gmail.com', '2022-01-05 22:22:13', '2022-01-05 22:22:13'),
(34, 'VHW6YMOFRKCS', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-05 22:23:36', '2022-01-05 22:23:36'),
(35, 'VHW6YMOFRKCS', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from minhaz217@gmail.com', '2022-01-05 22:23:36', '2022-01-05 22:23:36'),
(36, 'WQH07N3KWCPY', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-05 22:26:57', '2022-01-05 22:26:57'),
(37, 'WQH07N3KWCPY', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from minhaz217@gmail.com', '2022-01-05 22:26:57', '2022-01-05 22:26:57'),
(38, 'AMVRYYOIIQ2Y', 1, '16.3000000000', '116.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-05 22:27:28', '2022-01-05 22:27:28'),
(39, 'AMVRYYOIIQ2Y', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from minhaz217@gmail.com', '2022-01-05 22:27:28', '2022-01-05 22:27:28'),
(40, '4DWILOEPFLO2', 1, '12.3000000000', '32.3000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-06 02:46:42', '2022-01-06 02:46:42'),
(41, '4DWILOEPFLO2', 4, '0.0000000000', '20.0000000000', 'transfer_money', NULL, 'Received money from user@mail.com', '2022-01-06 02:46:42', '2022-01-06 02:46:42'),
(42, 'LR48ZACY3JB7', 1, '15.0000000000', '115.0000000000', 'make_escrow', NULL, 'Made escrow to showrabhasan7515@gmail.com', '2022-01-08 22:42:28', '2022-01-08 22:42:28'),
(43, '', 4, '0.0000000000', '100.0000000000', 'make_escrow', NULL, 'Received escrow money showrabhasan7515@gmail.com', '2022-01-09 21:39:02', '2022-01-09 21:39:02'),
(44, 'A2TVRJ57SAMS', 1, '0.0000000000', '100.0000000000', 'escrow_return', NULL, 'Escrow fund returned', '2022-01-11 23:14:28', '2022-01-11 23:14:28'),
(45, 'QVZWYQSZSY0I', 1, '0.0000000000', '100.0000000000', 'escrow_return', NULL, 'Escrow fund returned', '2022-01-11 23:17:50', '2022-01-11 23:17:50'),
(46, 'FNIZTCMZOKPP', 1, '0.0000000000', '100.0000000000', 'escrow_return', NULL, 'Escrow fund returned', '2022-01-11 23:25:35', '2022-01-11 23:25:35'),
(47, 'O7DOFOY3L2PG', 7, '0.0000000000', '100.0000000000', 'add_balance', '+', 'Balance added from system', '2022-01-12 04:58:43', '2022-01-12 04:58:43'),
(48, 'DIOHWLSOW4LN', 7, '0.0000000000', '20.0000000000', 'subtract_balance', '-', 'Balance subtracted by system', '2022-01-12 04:58:59', '2022-01-12 04:58:59'),
(49, 'JSNIKMZJRW9Y', 1, '0.0000000000', '1000.0000000000', 'add_balance', '+', 'Balance added by system', '2022-01-12 22:22:36', '2022-01-12 22:22:36'),
(50, 'IXN0KOP2YVLP', 1, '15.0000000000', '85.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 05:09:19', '2022-01-16 05:09:19'),
(51, 'IXN0KOP2YVLP', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 05:09:19', '2022-01-16 05:09:19'),
(52, 'NXLIIA7AJ06W', 1, '15.0000000000', '85.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 05:12:37', '2022-01-16 05:12:37'),
(53, 'NXLIIA7AJ06W', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 05:12:37', '2022-01-16 05:12:37'),
(54, 'B9P82BDPVZYL', 1, '15.0000000000', '85.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 05:13:23', '2022-01-16 05:13:23'),
(55, 'B9P82BDPVZYL', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 05:13:23', '2022-01-16 05:13:23'),
(56, 'J5FSXMDOAPIU', 1, '15.0000000000', '85.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 05:14:40', '2022-01-16 05:14:40'),
(57, 'J5FSXMDOAPIU', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 05:14:40', '2022-01-16 05:14:40'),
(58, 'SGSDKRPH0JTH', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:15:08', '2022-01-16 23:15:08'),
(59, 'SGSDKRPH0JTH', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:15:08', '2022-01-16 23:15:08'),
(60, 'EBMMNR3VVECL', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:24:34', '2022-01-16 23:24:34'),
(61, 'EBMMNR3VVECL', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:24:34', '2022-01-16 23:24:34'),
(62, 'CAMVIRGGG0EL', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:27:28', '2022-01-16 23:27:28'),
(63, 'CAMVIRGGG0EL', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:27:28', '2022-01-16 23:27:28'),
(64, 'QBE2CPVNDQSJ', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:30:27', '2022-01-16 23:30:27'),
(65, 'QBE2CPVNDQSJ', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:30:27', '2022-01-16 23:30:27'),
(66, 'RYN675L0VY4F', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:31:19', '2022-01-16 23:31:19'),
(67, 'RYN675L0VY4F', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:31:19', '2022-01-16 23:31:19'),
(68, 'MWTBWODKWPLB', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:33:10', '2022-01-16 23:33:10'),
(69, 'MWTBWODKWPLB', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:33:10', '2022-01-16 23:33:10'),
(70, 'JNLYBYQGP7WL', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:35:12', '2022-01-16 23:35:12'),
(71, 'JNLYBYQGP7WL', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:35:12', '2022-01-16 23:35:12'),
(72, 'Q9B8ARSYZPPK', 1, '15.0000000000', '115.0000000000', 'merchant_api_payment', NULL, 'Payment to merchant : merchant@mail.com', '2022-01-16 23:36:38', '2022-01-16 23:36:38'),
(73, 'Q9B8ARSYZPPK', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:36:38', '2022-01-16 23:36:38'),
(75, 'XOWSMJFRDEBQ', 1, '0.0000000000', '100.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-01-16 23:38:13', '2022-01-16 23:38:13'),
(76, 'Z3J6GX79SWV3', 1, '0.0000000000', '100.0000000000', 'request_money', NULL, 'Accept money request from showrabhasan7515@gmail.com', '2022-01-18 02:01:04', '2022-01-18 02:01:04'),
(77, 'Z3J6GX79SWV3', 4, '13.9000000000', '86.1000000000', 'request_money', NULL, 'Money request accepted by user@mail.com', '2022-01-18 02:01:04', '2022-01-18 02:01:04'),
(78, 'C5HQOVYHMZBJ', 1, '2.2000000000', '20.0000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2022-01-18 02:01:52', '2022-01-18 02:01:52'),
(79, 'C5HQOVYHMZBJ', 1, '0.0000000000', '22.6000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2022-01-18 02:01:52', '2022-01-18 02:01:52'),
(80, '0EKJI9NKH3XS', 1, '15.0000000000', '115.0000000000', 'transfer_money', NULL, 'Transfer money to showrabhasan7515@gmail.com', '2022-01-20 02:24:23', '2022-01-20 02:24:23'),
(81, '0EKJI9NKH3XS', 4, '0.0000000000', '100.0000000000', 'transfer_money', NULL, 'Received money from user@mail.com', '2022-01-20 02:24:23', '2022-01-20 02:24:23'),
(82, 'DHDSNJO2OJOA', 1, '2.2000000000', '20.0000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2022-01-20 02:34:14', '2022-01-20 02:34:14'),
(83, 'DHDSNJO2OJOA', 1, '0.0000000000', '22.6000000000', 'money_exchange', NULL, 'Exchanged money from USD to EUR', '2022-01-20 02:34:14', '2022-01-20 02:34:14'),
(84, 'RYSSG5CEO6DL', 1, '0.0000000000', '100.0000000000', 'add_balance', NULL, 'Add balance to wallet : EUR', '2022-01-26 00:12:44', '2022-01-26 00:12:44'),
(85, 'ZDTVW3M5DN5Y', 1, '0.0000000000', '100.0000000000', 'add_balance', NULL, 'Add balance to wallet : EUR', '2022-01-26 00:41:40', '2022-01-26 00:41:40'),
(86, 'QKMFXHHBHJEO', 4, '0.0000000000', '101.0000000000', 'invoice_payment', NULL, 'Payemnt to invoice : INV-15080081', '2022-01-26 21:46:45', '2022-01-26 21:46:45'),
(87, 'QKMFXHHBHJEO', 1, '16.3500000000', '84.6500000000', 'invoice_payment', NULL, 'Receive Payemnt from invoice : INV-15080081', '2022-01-26 21:46:45', '2022-01-26 21:46:45'),
(88, 'E9RRJRKDDMVL', 4, '0.0000000000', '55.0000000000', 'invoice_payment', NULL, 'Payemnt to invoice : INV-85656070', '2022-01-27 00:02:31', '2022-01-27 00:02:31'),
(89, 'E9RRJRKDDMVL', 1, '14.0500000000', '40.9500000000', 'invoice_payment', NULL, 'Receive Payemnt from invoice : INV-85656070', '2022-01-27 00:02:31', '2022-01-27 00:02:31'),
(90, 'P5CLN6HMIPVL', 4, '0.0000000000', '55.0000000000', 'invoice_payment', NULL, 'Payemnt to invoice : INV-85656070', '2022-01-27 00:20:19', '2022-01-27 00:20:19'),
(91, 'P5CLN6HMIPVL', 1, '14.0500000000', '40.9500000000', 'invoice_payment', '+', 'Receive Payemnt from invoice : INV-85656070', '2022-01-27 00:20:19', '2022-01-27 00:20:19'),
(92, 'GKCDR8QKLCO7', 1, '20.2000000000', '224.2000000000', 'transfer_money', '-', 'Transfer money to showrabhasan7515@gmail.com', '2022-01-27 03:39:36', '2022-01-27 03:39:36'),
(93, 'GKCDR8QKLCO7', 4, '0.0000000000', '204.0000000000', 'transfer_money', '+', 'Received money from user@mail.com', '2022-01-27 03:39:36', '2022-01-27 03:39:36'),
(94, 'TFBKGBDUOFFU', 1, '0.0000000000', '100.0000000000', 'add_balance', '+', 'Add balance to wallet : USD', '2022-01-27 03:41:26', '2022-01-27 03:41:26'),
(95, '3TYUZBBPJTK7', 1, '0.0000000000', '1000.0000000000', 'deposit', '+', 'Deposit balance to wallet : USD', '2022-01-27 03:45:03', '2022-01-27 03:45:03'),
(96, 'ROK1CW4PJN3S', 13, '0.0000000000', '100.0000000000', 'add_balance', '+', 'Balance added by system', '2022-02-01 23:15:01', '2022-02-01 23:15:01'),
(97, 'BHDUMUWPJYIB', 13, '0.0000000000', '20.0000000000', 'add_balance', '+', 'Balance added by system', '2022-02-01 23:17:16', '2022-02-01 23:17:16'),
(98, 'KSBYFMNQHLHC', 1, '0.0000000000', '100.0000000000', 'escrow_return', NULL, 'Escrow fund returned', '2022-02-06 22:33:58', '2022-02-06 22:33:58'),
(99, 'TBS7IJZWT8TD', 1, '3.0000000000', '100.0000000000', 'money_exchange', '-', 'Exchanged money from USD to EUR', '2022-02-07 05:38:19', '2022-02-07 05:38:19'),
(100, 'TBS7IJZWT8TD', 1, '0.0000000000', '89.2440000000', 'money_exchange', '+', 'Exchanged money from USD to EUR', '2022-02-07 05:38:19', '2022-02-07 05:38:19'),
(101, '0SCESJIGM0MQ', 1, '0.0000000000', '107.0000000000', 'deposit', '+', 'Deposit balance to wallet : USD', '2022-02-08 00:02:43', '2022-02-08 00:02:43'),
(102, 'AB3UJLTBHZJG', 1, '7.0000000000', '107.0000000000', 'deposit_approve', '+', 'Approve deposit', '2022-02-08 22:22:53', '2022-02-08 22:22:53'),
(103, 'NAV5VOWF9IFS', 1, '15.0000000000', '100.0000000000', 'transfer_money', '-', 'Transfer money to showrabhasan7515@gmail.com', '2022-02-10 04:27:50', '2022-02-10 04:27:50'),
(104, 'NAV5VOWF9IFS', 4, '0.0000000000', '100.0000000000', 'transfer_money', '+', 'Received money from user@mail.com', '2022-02-10 04:27:50', '2022-02-10 04:27:50'),
(105, 'CFRVY0WRFDMA', 1, '15.0000000000', '100.0000000000', 'transfer_money', '-', 'Transfer money to showrabhasan7515@gmail.com', '2022-02-10 04:44:41', '2022-02-10 04:44:41'),
(106, 'CFRVY0WRFDMA', 4, '0.0000000000', '100.0000000000', 'transfer_money', '+', 'Received money from user@mail.com', '2022-02-10 04:44:41', '2022-02-10 04:44:41'),
(107, 'KBEX9APH30ER', 1, '24.0000000000', '304.0000000000', 'merchant_api_payment', '-', 'Payment to merchant : merchant@mail.com', '2022-02-17 04:13:35', '2022-02-17 04:13:35'),
(108, 'KBEX9APH30ER', 1, '0.0000000000', '280.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-02-17 04:13:35', '2022-02-17 04:13:35'),
(109, 'D1AKFGHS0XEB', 1, '24.0000000000', '304.0000000000', 'merchant_api_payment', '-', 'Payment to merchant : merchant@mail.com', '2022-02-17 04:14:58', '2022-02-17 04:14:58'),
(110, 'D1AKFGHS0XEB', 1, '0.0000000000', '280.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-02-17 04:14:58', '2022-02-17 04:14:58'),
(111, 'P5YX8S0ZJW8Z', 1, '24.0000000000', '304.0000000000', 'merchant_api_payment', '-', 'Payment to merchant : merchant@mail.com', '2022-02-17 04:24:20', '2022-02-17 04:24:20'),
(112, 'P5YX8S0ZJW8Z', 1, '0.0000000000', '280.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-02-17 04:24:20', '2022-02-17 04:24:20'),
(113, 'PRTJFZDHXNZE', 1, '24.0000000000', '304.0000000000', 'merchant_api_payment', '-', 'Payment to merchant : merchant@mail.com', '2022-02-17 04:30:10', '2022-02-17 04:30:10'),
(114, 'PRTJFZDHXNZE', 1, '0.0000000000', '280.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-02-17 04:30:10', '2022-02-17 04:30:10'),
(115, '0BZSMU8DS6MC', 1, '24.0000000000', '304.0000000000', 'merchant_api_payment', '-', 'Payment to merchant : merchant@mail.com', '2022-02-17 04:32:45', '2022-02-17 04:32:45'),
(116, '0BZSMU8DS6MC', 1, '0.0000000000', '280.0000000000', 'merchant_api_payment', '+', 'Payment received from : user@mail.com', '2022-02-17 04:32:45', '2022-02-17 04:32:45'),
(117, 'YDGJAKHUQUFE', 1, '15.0000000000', '115.0000000000', 'create_voucher', '-', 'Voucher created', '2022-02-26 22:01:57', '2022-02-26 22:01:57'),
(118, 'YDGJAKHUQUFE', 1, '0.0000000000', '11.5000000000', 'voucher_commission', '+', 'Voucher commission', '2022-02-26 22:01:57', '2022-02-26 22:01:57'),
(119, 'TWDTCHTPYRU5', 1, '15.0000000000', '115.0000000000', 'create_voucher', '-', 'Voucher created', '2022-02-26 22:05:02', '2022-02-26 22:05:02'),
(120, 'TWDTCHTPYRU5', 1, '0.0000000000', '11.5000000000', 'voucher_commission', '+', 'Voucher commission', '2022-02-26 22:05:02', '2022-02-26 22:05:02'),
(121, '3R21EZMFO2P1', 1, '0.0000000000', '100.0000000000', 'deposit', '+', 'Deposit balance to wallet : USD', '2022-02-26 22:49:31', '2022-02-26 22:49:31'),
(122, 'IPMETSOLECMV', 1, '0.0000000000', '100.0000000000', 'deposit', '+', 'Deposit balance to wallet : USD', '2022-02-26 23:20:25', '2022-02-26 23:20:25'),
(123, 'FLO9PRMM0KKP', 1, '0.0000000000', '100.0000000000', 'deposit', '+', 'Deposit balance to wallet : NGN', '2022-02-26 23:46:00', '2022-02-26 23:46:00'),
(124, 'ZZCHADHN5U51', 1, '0.0000000000', '100.0000000000', 'deposit', '+', 'Deposit balance to wallet : USD', '2022-02-26 23:52:04', '2022-02-26 23:52:04'),
(125, 'R4DMKJXCO0ZX', 1, '0.0000000000', '107.0000000000', 'deposit', '+', 'Deposit balance to wallet : USD', '2022-02-27 00:06:08', '2022-02-27 00:06:08'),
(126, 'MF6HLOZ0T6TT', 1, '0.0000000000', '100.0000000000', 'deposit', '+', 'Deposit balance to wallet : EUR', '2022-02-27 00:07:59', '2022-02-27 00:07:59'),
(127, 'ASDEWAD542', 4, '10.0000000000', '90.0000000000', 'make_escrow', '+', 'Received escrow money showrabhasan7515@gmail.com', '2022-02-27 00:13:33', '2022-02-27 00:13:33'),
(128, 'ASDEWAD542', 4, '10.0000000000', '90.0000000000', 'make_escrow', '+', 'Received escrow money showrabhasan7515@gmail.com', '2022-02-27 00:19:24', '2022-02-27 00:19:24'),
(129, 'FC2VL4Y9DGYK', 1, '96.6903500000', '1854.6903500000', 'create_voucher', '-', 'Voucher created', '2022-02-27 00:29:09', '2022-02-27 00:29:09'),
(130, 'FC2VL4Y9DGYK', 1, '0.0000000000', '175.8000000000', 'voucher_commission', '+', 'Voucher commission', '2022-02-27 00:29:09', '2022-02-27 00:29:09'),
(131, 'IRVGMFGKZYP6', 1, '96.7403500000', '1855.7403500000', 'create_voucher', '-', 'Voucher created', '2022-02-27 00:29:21', '2022-02-27 00:29:21'),
(132, 'IRVGMFGKZYP6', 1, '0.0000000000', '175.9000000000', 'voucher_commission', '+', 'Voucher commission', '2022-02-27 00:29:21', '2022-02-27 00:29:21'),
(133, 'AMD6MDQUFNPE', 1, '96.7403500000', '1855.7403500000', 'create_voucher', '-', 'Voucher created', '2022-02-27 00:29:42', '2022-02-27 00:29:42'),
(134, 'AMD6MDQUFNPE', 1, '0.0000000000', '175.9000000000', 'voucher_commission', '+', 'Voucher commission', '2022-02-27 00:29:42', '2022-02-27 00:29:42'),
(135, 'PYAIHBUTVR95', 4, '0.0000000000', '55.0000000000', 'invoice_payment', NULL, 'Payemnt to invoice : INV-85656070', '2022-03-06 00:42:45', '2022-03-06 00:42:45'),
(136, 'PYAIHBUTVR95', 1, '14.0500000000', '40.9500000000', 'invoice_payment', '+', 'Receive Payemnt from invoice : INV-85656070', '2022-03-06 00:42:45', '2022-03-06 00:42:45'),
(137, 'QZNUNRDYRO2J', 1, '0.0000000000', '100.0000000000', 'deposit', '+', 'Deposit balance to wallet :', '2022-03-07 04:58:11', '2022-03-07 04:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint(1) DEFAULT 0,
  `kyc_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_fa_status` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa_code` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `photo`, `phone`, `country`, `city`, `address`, `zip`, `balance`, `status`, `email_verified`, `verification_link`, `verify_code`, `password`, `remember_token`, `kyc_status`, `kyc_info`, `kyc_reject_reason`, `two_fa_status`, `two_fa`, `two_fa_code`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'user@mail.com', '18497736071646280114.jpg', '8801685931233', 'Belarus', 'add', 'Tangail,Dhaka,Bangladesh', '1234', '113.7611130387', 1, 1, NULL, 364201, '$2y$10$K4ICWnQph5JRhLTiepDC.e1xv/1ghgKRc.1FYtt6DdBWt7O8vmnbG', NULL, 1, '{\"nid\":\"35464654654654\",\"image\":{\"nid_screenshot\":\"4806108011641453172.jpg\"},\"details\":{\"description_of_address\":\"asdasdasd\"}}', 'asdasd', 0, 0, 787171, NULL, '2022-03-07 04:58:11'),
(4, 'User Hasan', 'showrabhasan7515@gmail.com', 'JIC1588136853people.png', '17283320', 'Belarus', 'UserRequest', 'Tangail,Dhaka,Bangladesh', '1234', '0.0000000000', 1, 1, NULL, 537400, '$2a$12$.RLRlM2VlA5UswwwojKIKe8o3VRhOvuBf0ZvY7qaxm1R2bGZ4wSL6', NULL, 2, NULL, NULL, 0, 0, NULL, NULL, '2021-12-27 23:05:32'),
(5, 'Rafael Cobb', 'dybeger@mail.com', NULL, '+1 (758) 474-3875', 'United States', NULL, 'Nulla aut fuga Aute', NULL, '0.0000000000', 1, 0, NULL, NULL, '$2y$10$PEwb27r3SXTlrT1EFafFi.hDHu4bBtTYmxuTPN4PWzbByfv1wOIaG', NULL, 2, NULL, NULL, 0, 0, NULL, '2022-01-05 05:30:04', '2022-01-05 05:30:04'),
(6, 'Ria Mendoza', 'vukonuw@mail.com', NULL, '+1 (694) 125-6902', 'Ascension Island', NULL, 'Esse et vero animi', NULL, '0.0000000000', 1, 0, NULL, NULL, '$2y$10$1dmsB03ipNvRkNn2wrbPsOFK.GpnTrw9R9YRWvEm3XPWvUATUD1zO', NULL, 0, NULL, NULL, 0, 0, NULL, '2022-01-05 05:30:34', '2022-01-05 05:30:34'),
(7, 'Noelle Roach', 'famyzahype@mail.com', NULL, '+1 (531) 302-5582', 'United Kingdom', NULL, 'Dolorem pariatur Ad', NULL, '0.0000000000', 1, 1, NULL, NULL, '$2y$10$Qr1K6YR/rF1WpvE/ZuBbzOaaKONzte1e/paLHUTCbSwjPzlwoheUu', NULL, 0, NULL, NULL, 0, 0, NULL, '2022-01-05 05:51:13', '2022-01-05 05:51:13'),
(8, 'Lacy Valentine', 'venu@mail.com', NULL, '+1 (324) 408-3896', 'United States', 'ssssss', 'Nostrum proident la', '32444', '0.0000000000', 1, 1, NULL, NULL, '$2y$10$kd/bxaYI/Up0PrPPAxwlWuYgWgrJUPvk/BX/MhQhik5Pk2Nj1gc4.', NULL, 0, NULL, NULL, 0, 0, NULL, '2022-01-06 00:16:15', '2022-01-12 21:32:22'),
(9, 'Fritz Morse', 'rydymila@gmail.com', NULL, '896-9521', 'United States', NULL, 'Tenetur vitae sit i', NULL, '0.0000000000', 1, 0, NULL, 984816, '$2y$10$n3EXRZRuLMLGh6ofzJupG.ZOzhKcHDWIRDcUsWOOs6liOofCCbfEy', NULL, 0, NULL, NULL, 0, 0, NULL, '2022-01-29 21:57:17', '2022-01-29 21:57:18'),
(10, 'Julian Stafford', 'xocifypyje@gmail.com', NULL, '+32645665465465', 'Belgium', NULL, 'Id nulla iste recusa', NULL, '0.0000000000', 1, 0, NULL, 771424, '$2y$10$AsZXeR5nYI9jcQPqEMswxutoAuaj/Uf7b3Jx9Jtwq6Ig6zIyRdhWa', NULL, 0, NULL, NULL, 0, 0, NULL, '2022-01-30 00:00:42', '2022-01-30 00:00:44'),
(11, 'Adara Herrera', 'zimylagysa@gmail.com', NULL, '+44156-4857', 'United Kingdom', NULL, 'Cillum aut itaque se', NULL, '0.0000000000', 1, 1, NULL, NULL, '$2y$10$OS320z21E/hxgPcjYpDvCO4Ofn0t7.CQLoGpL1ZZYDzYkbG/5JspS', NULL, 0, NULL, NULL, 0, 0, NULL, '2022-02-15 00:28:06', '2022-02-15 00:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `method_id` int(11) NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `charge` decimal(20,10) NOT NULL,
  `total_amount` decimal(20,10) NOT NULL,
  `user_data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => pending, 1 => accepted, 2 => rejected\r\n',
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `trx`, `user_id`, `method_id`, `amount`, `charge`, `total_amount`, `user_data`, `status`, `reject_reason`, `created_at`, `updated_at`) VALUES
(1, 'RBHJKIST45TY', 1, 3, '100.0000000000', '5.0000000000', '105.0000000000', 'banck Account No : 6464546545454654154,\nBank Name :  MTB bank,\nBranch : Uttara , Dhaka', 0, 'invalid info', '2021-12-30 05:43:26', '2022-01-01 22:03:24'),
(2, '6VR9XZW9Y8LC', NULL, 2, '10.0000000000', '2.4000000000', '12.4000000000', 'asdasdas', 2, '222222', '2022-01-04 02:05:16', '2022-01-04 02:54:50'),
(3, 'FYQQP0SQ8HLZ', 1, 3, '100.0000000000', '5.0000000000', '105.0000000000', 'sadasdasdasd', 2, 'asdasdasda', '2022-01-06 01:04:33', '2022-01-06 01:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` decimal(20,10) NOT NULL,
  `max_amount` decimal(20,10) NOT NULL,
  `fixed_charge` decimal(20,10) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `currency_id`, `name`, `withdraw_instruction`, `min_amount`, `max_amount`, `fixed_charge`, `percent_charge`, `user_data`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'demo - BDT', '<p>vvvvvv</p>', '10.0000000000', '1000.0000000000', '2.0000000000', '4.00', NULL, 1, '2021-12-29 23:53:46', '2021-12-30 00:49:58'),
(2, 4, 'demo - euro', '<p>vvvvvv</p>', '10.0000000000', '1000.0000000000', '2.0000000000', '4.00', NULL, 1, '2021-12-29 23:53:46', '2021-12-30 00:49:58'),
(3, 4, 'demo - euro2', '<p>Please Provide your account no. your bank branch and your bank name to get withdraw perfectly.</p>', '10.0000000000', '2000.0000000000', '1.0000000000', '4.00', NULL, 1, '2021-12-29 23:53:46', '2021-12-30 05:01:20'),
(4, 9, 'demo - btc', '<p>vvvvvv</p>', '0.0021000000', '1.0000000000', '1.0000000000', '4.00', NULL, 1, '2021-12-29 23:53:46', '2021-12-30 00:49:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_symbol_unique` (`symbol`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
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
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
