-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2022 at 04:14 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'WdORFWoSxtxDfrYpbkBU9V6IjSWPfqoa', 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45', '2022-07-28 07:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_code` longtext COLLATE utf8mb4_unicode_ci,
  `ad_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_locations`
--

CREATE TABLE `ad_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_locations`
--

INSERT INTO `ad_locations` (`id`, `title`, `unique_name`, `ad_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top Banner', 'top_banner', NULL, 1, NULL, NULL),
(2, 'Home Page Middle', 'home_page_middle', NULL, 1, NULL, NULL),
(3, 'Home Page Bottom', 'home_page_bottom', NULL, 1, NULL, NULL),
(4, 'Widget', 'widget', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tabs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cover image',
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cover image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `language`, `name`, `slug`, `tabs`, `order`, `meta_keywords`, `meta_description`, `disk`, `original_image`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'en', 'Order', 'order', NULL, 0, NULL, NULL, 'local', 'images/20220818135802_galleryImage_big5.jpg', 'images/20220818135802_galleryImage_thumb14.jpg', '2022-08-18 06:58:02', '2022-08-18 06:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `app_intros`
--

CREATE TABLE `app_intros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audio_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_mp3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_ogg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `audio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL COMMENT '0 for not, 1 for featured',
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `language`, `slug`, `is_featured`, `meta_description`, `meta_keywords`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Reportase', 'en', 'reportase', 0, '', '', 1, '2022-08-22 05:12:26', '2022-08-22 05:12:26'),
(2, 'Serial', 'en', 'serial', 0, '', '', 1, '2022-08-22 05:12:35', '2022-08-22 05:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cron_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_body` longtext COLLATE utf8mb4_unicode_ci,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_group`, `subject`, `template_body`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'registration', 'Registration successful', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br /> To open your {SITE_NAME} homepage, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{SITE_URL}\"><strong>{SITE_NAME} Account</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /><br />{SITE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /><br /><br />{SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(2, 'forgot_password', 'Forgot Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Forgot your password, huh? No big deal.<br />To create a new password, just follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{PASS_KEY_URL}\"><strong>Create new password</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {PASS_KEY_URL}<br /><br /> You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br /><br />Thank you,<br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(3, 'activate_account', 'Activate Account', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>Activate Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe. To verify your email address, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{ACTIVATE_URL}\"><strong>Complete Registration</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {ACTIVATE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /> Your password: {PASSWORD}<br /><br /><br /> {SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p>', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(4, 'reset_password', 'Reset Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">You have changed your password.<br />Please, keep it in your records so you don\'t forget it:<br />Your username: {USERNAME}<br />Your email address: {USER_EMAIL}<br />Your new password: {NEW_PASSWORD}<br /><br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'en', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(5, 'registration', 'Registration successful', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br /> To open your {SITE_NAME} homepage, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{SITE_URL}\"><strong>{SITE_NAME} Account</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /><br />{SITE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /><br /><br />{SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', 'ar', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(6, 'activate_account', 'Activate Account', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Forgot your password, huh? No big deal.<br />To create a new password, just follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{PASS_KEY_URL}\"><strong>Create new password</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {PASS_KEY_URL}<br /><br /> You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br /><br />Thank you,<br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'ar', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(7, 'reset_password', 'Reset Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>Activate Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe. To verify your email address, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{ACTIVATE_URL}\"><strong>Complete Registration</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {ACTIVATE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /> Your password: {PASSWORD}<br /><br /><br /> {SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p>', 'ar', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(8, 'forgot_password', 'Forgot Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">You have changed your password.<br />Please, keep it in your records so you don\'t forget it:<br />Your username: {USERNAME}<br />Your email address: {USER_EMAIL}<br />Your new password: {NEW_PASSWORD}<br /><br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'ar', '2022-07-28 07:01:47', '2022-07-28 07:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flag_icons`
--

CREATE TABLE `flag_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flag_icons`
--

INSERT INTO `flag_icons` (`id`, `icon_class`, `title`, `created_at`, `updated_at`) VALUES
(1, 'flag-icon flag-icon-ad', 'ad', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(2, 'flag-icon flag-icon-ae', 'ae', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(3, 'flag-icon flag-icon-af', 'af', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(4, 'flag-icon flag-icon-ag', 'ag', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(5, 'flag-icon flag-icon-ai', 'ai', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(6, 'flag-icon flag-icon-al', 'al', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(7, 'flag-icon flag-icon-am', 'am', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(8, 'flag-icon flag-icon-ao', 'ao', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(9, 'flag-icon flag-icon-aq', 'aq', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(10, 'flag-icon flag-icon-ar', 'ar', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(11, 'flag-icon flag-icon-as', 'as', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(12, 'flag-icon flag-icon-at', 'at', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(13, 'flag-icon flag-icon-au', 'au', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(14, 'flag-icon flag-icon-aw', 'aw', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(15, 'flag-icon flag-icon-ax', 'ax', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(16, 'flag-icon flag-icon-az', 'az', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(17, 'flag-icon flag-icon-ba', 'ba', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(18, 'flag-icon flag-icon-bb', 'bb', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(19, 'flag-icon flag-icon-bd', 'bd', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(20, 'flag-icon flag-icon-be', 'be', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(21, 'flag-icon flag-icon-bf', 'bf', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(22, 'flag-icon flag-icon-bg', 'bg', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(23, 'flag-icon flag-icon-bh', 'bh', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(24, 'flag-icon flag-icon-bi', 'bi', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(25, 'flag-icon flag-icon-bj', 'bj', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(26, 'flag-icon flag-icon-bl', 'bl', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(27, 'flag-icon flag-icon-bm', 'bm', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(28, 'flag-icon flag-icon-bn', 'bn', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(29, 'flag-icon flag-icon-bo', 'bo', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(30, 'flag-icon flag-icon-bq', 'bq', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(31, 'flag-icon flag-icon-br', 'br', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(32, 'flag-icon flag-icon-bs', 'bs', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(33, 'flag-icon flag-icon-bt', 'bt', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(34, 'flag-icon flag-icon-bv', 'bv', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(35, 'flag-icon flag-icon-bw', 'bw', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(36, 'flag-icon flag-icon-by', 'by', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(37, 'flag-icon flag-icon-bz', 'bz', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(38, 'flag-icon flag-icon-ca', 'ca', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(39, 'flag-icon flag-icon-cc', 'cc', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(40, 'flag-icon flag-icon-cd', 'cd', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(41, 'flag-icon flag-icon-cf', 'cf', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(42, 'flag-icon flag-icon-cg', 'cg', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(43, 'flag-icon flag-icon-ch', 'ch', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(44, 'flag-icon flag-icon-ci', 'ci', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(45, 'flag-icon flag-icon-ck', 'ck', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(46, 'flag-icon flag-icon-cl', 'cl', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(47, 'flag-icon flag-icon-cm', 'cm', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(48, 'flag-icon flag-icon-cn', 'cn', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(49, 'flag-icon flag-icon-co', 'co', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(50, 'flag-icon flag-icon-cr', 'cr', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(51, 'flag-icon flag-icon-cu', 'cu', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(52, 'flag-icon flag-icon-cv', 'cv', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(53, 'flag-icon flag-icon-cw', 'cw', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(54, 'flag-icon flag-icon-cx', 'cx', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(55, 'flag-icon flag-icon-cy', 'cy', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(56, 'flag-icon flag-icon-cz', 'cz', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(57, 'flag-icon flag-icon-de', 'de', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(58, 'flag-icon flag-icon-dj', 'dj', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(59, 'flag-icon flag-icon-dk', 'dk', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(60, 'flag-icon flag-icon-dm', 'dm', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(61, 'flag-icon flag-icon-do', 'do', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(62, 'flag-icon flag-icon-dz', 'dz', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(63, 'flag-icon flag-icon-ec', 'ec', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(64, 'flag-icon flag-icon-ee', 'ee', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(65, 'flag-icon flag-icon-eg', 'eg', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(66, 'flag-icon flag-icon-eh', 'eh', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(67, 'flag-icon flag-icon-er', 'er', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(68, 'flag-icon flag-icon-es', 'es', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(69, 'flag-icon flag-icon-et', 'et', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(70, 'flag-icon flag-icon-fi', 'fi', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(71, 'flag-icon flag-icon-fj', 'fj', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(72, 'flag-icon flag-icon-fk', 'fk', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(73, 'flag-icon flag-icon-fm', 'fm', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(74, 'flag-icon flag-icon-fo', 'fo', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(75, 'flag-icon flag-icon-fr', 'fr', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(76, 'flag-icon flag-icon-ga', 'ga', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(77, 'flag-icon flag-icon-gb', 'gb', '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(78, 'flag-icon flag-icon-gd', 'gd', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(79, 'flag-icon flag-icon-ge', 'ge', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(80, 'flag-icon flag-icon-gf', 'gf', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(81, 'flag-icon flag-icon-gg', 'gg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(82, 'flag-icon flag-icon-gh', 'gh', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(83, 'flag-icon flag-icon-gi', 'gi', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(84, 'flag-icon flag-icon-gl', 'gl', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(85, 'flag-icon flag-icon-gm', 'gm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(86, 'flag-icon flag-icon-gn', 'gn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(87, 'flag-icon flag-icon-gp', 'gp', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(88, 'flag-icon flag-icon-gq', 'gq', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(89, 'flag-icon flag-icon-gr', 'gr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(90, 'flag-icon flag-icon-gs', 'gs', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(91, 'flag-icon flag-icon-gt', 'gt', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(92, 'flag-icon flag-icon-gu', 'gu', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(93, 'flag-icon flag-icon-gw', 'gw', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(94, 'flag-icon flag-icon-gy', 'gy', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(95, 'flag-icon flag-icon-hk', 'hk', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(96, 'flag-icon flag-icon-hm', 'hm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(97, 'flag-icon flag-icon-hn', 'hn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(98, 'flag-icon flag-icon-hr', 'hr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(99, 'flag-icon flag-icon-ht', 'ht', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(100, 'flag-icon flag-icon-hu', 'hu', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(101, 'flag-icon flag-icon-id', 'id', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(102, 'flag-icon flag-icon-ie', 'ie', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(103, 'flag-icon flag-icon-il', 'il', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(104, 'flag-icon flag-icon-im', 'im', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(105, 'flag-icon flag-icon-in', 'in', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(106, 'flag-icon flag-icon-io', 'io', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(107, 'flag-icon flag-icon-iq', 'iq', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(108, 'flag-icon flag-icon-ir', 'ir', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(109, 'flag-icon flag-icon-is', 'is', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(110, 'flag-icon flag-icon-it', 'it', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(111, 'flag-icon flag-icon-je', 'je', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(112, 'flag-icon flag-icon-jm', 'jm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(113, 'flag-icon flag-icon-jo', 'jo', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(114, 'flag-icon flag-icon-jp', 'jp', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(115, 'flag-icon flag-icon-ke', 'ke', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(116, 'flag-icon flag-icon-kg', 'kg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(117, 'flag-icon flag-icon-kh', 'kh', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(118, 'flag-icon flag-icon-ki', 'ki', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(119, 'flag-icon flag-icon-km', 'km', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(120, 'flag-icon flag-icon-kn', 'kn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(121, 'flag-icon flag-icon-kp', 'kp', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(122, 'flag-icon flag-icon-kr', 'kr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(123, 'flag-icon flag-icon-kw', 'kw', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(124, 'flag-icon flag-icon-ky', 'ky', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(125, 'flag-icon flag-icon-kz', 'kz', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(126, 'flag-icon flag-icon-la', 'la', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(127, 'flag-icon flag-icon-lb', 'lb', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(128, 'flag-icon flag-icon-lc', 'lc', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(129, 'flag-icon flag-icon-li', 'li', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(130, 'flag-icon flag-icon-lk', 'lk', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(131, 'flag-icon flag-icon-lr', 'lr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(132, 'flag-icon flag-icon-ls', 'ls', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(133, 'flag-icon flag-icon-lt', 'lt', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(134, 'flag-icon flag-icon-lu', 'lu', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(135, 'flag-icon flag-icon-lv', 'lv', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(136, 'flag-icon flag-icon-ly', 'ly', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(137, 'flag-icon flag-icon-ma', 'ma', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(138, 'flag-icon flag-icon-mc', 'mc', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(139, 'flag-icon flag-icon-md', 'md', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(140, 'flag-icon flag-icon-me', 'me', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(141, 'flag-icon flag-icon-mf', 'mf', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(142, 'flag-icon flag-icon-mg', 'mg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(143, 'flag-icon flag-icon-mh', 'mh', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(144, 'flag-icon flag-icon-mk', 'mk', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(145, 'flag-icon flag-icon-ml', 'ml', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(146, 'flag-icon flag-icon-mm', 'mm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(147, 'flag-icon flag-icon-mn', 'mn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(148, 'flag-icon flag-icon-mo', 'mo', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(149, 'flag-icon flag-icon-mp', 'mp', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(150, 'flag-icon flag-icon-mq', 'mq', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(151, 'flag-icon flag-icon-mr', 'mr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(152, 'flag-icon flag-icon-ms', 'ms', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(153, 'flag-icon flag-icon-mt', 'mt', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(154, 'flag-icon flag-icon-mu', 'mu', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(155, 'flag-icon flag-icon-mv', 'mv', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(156, 'flag-icon flag-icon-mw', 'mw', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(157, 'flag-icon flag-icon-mx', 'mx', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(158, 'flag-icon flag-icon-my', 'my', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(159, 'flag-icon flag-icon-mz', 'mz', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(160, 'flag-icon flag-icon-na', 'na', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(161, 'flag-icon flag-icon-nc', 'nc', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(162, 'flag-icon flag-icon-ne', 'ne', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(163, 'flag-icon flag-icon-nf', 'nf', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(164, 'flag-icon flag-icon-ng', 'ng', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(165, 'flag-icon flag-icon-ni', 'ni', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(166, 'flag-icon flag-icon-nl', 'nl', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(167, 'flag-icon flag-icon-no', 'no', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(168, 'flag-icon flag-icon-np', 'np', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(169, 'flag-icon flag-icon-nr', 'nr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(170, 'flag-icon flag-icon-nu', 'nu', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(171, 'flag-icon flag-icon-nz', 'nz', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(172, 'flag-icon flag-icon-om', 'om', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(173, 'flag-icon flag-icon-pa', 'pa', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(174, 'flag-icon flag-icon-pe', 'pe', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(175, 'flag-icon flag-icon-pf', 'pf', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(176, 'flag-icon flag-icon-pg', 'pg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(177, 'flag-icon flag-icon-ph', 'ph', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(178, 'flag-icon flag-icon-pk', 'pk', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(179, 'flag-icon flag-icon-pl', 'pl', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(180, 'flag-icon flag-icon-pm', 'pm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(181, 'flag-icon flag-icon-pn', 'pn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(182, 'flag-icon flag-icon-pr', 'pr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(183, 'flag-icon flag-icon-ps', 'ps', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(184, 'flag-icon flag-icon-pt', 'pt', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(185, 'flag-icon flag-icon-pw', 'pw', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(186, 'flag-icon flag-icon-py', 'py', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(187, 'flag-icon flag-icon-qa', 'qa', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(188, 'flag-icon flag-icon-re', 're', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(189, 'flag-icon flag-icon-ro', 'ro', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(190, 'flag-icon flag-icon-rs', 'rs', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(191, 'flag-icon flag-icon-ru', 'ru', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(192, 'flag-icon flag-icon-rw', 'rw', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(193, 'flag-icon flag-icon-sa', 'sa', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(194, 'flag-icon flag-icon-sb', 'sb', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(195, 'flag-icon flag-icon-sc', 'sc', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(196, 'flag-icon flag-icon-sd', 'sd', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(197, 'flag-icon flag-icon-se', 'se', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(198, 'flag-icon flag-icon-sg', 'sg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(199, 'flag-icon flag-icon-sh', 'sh', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(200, 'flag-icon flag-icon-si', 'si', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(201, 'flag-icon flag-icon-sj', 'sj', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(202, 'flag-icon flag-icon-sk', 'sk', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(203, 'flag-icon flag-icon-sl', 'sl', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(204, 'flag-icon flag-icon-sm', 'sm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(205, 'flag-icon flag-icon-sn', 'sn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(206, 'flag-icon flag-icon-so', 'so', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(207, 'flag-icon flag-icon-sr', 'sr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(208, 'flag-icon flag-icon-ss', 'ss', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(209, 'flag-icon flag-icon-st', 'st', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(210, 'flag-icon flag-icon-sv', 'sv', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(211, 'flag-icon flag-icon-sx', 'sx', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(212, 'flag-icon flag-icon-sy', 'sy', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(213, 'flag-icon flag-icon-sz', 'sz', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(214, 'flag-icon flag-icon-tc', 'tc', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(215, 'flag-icon flag-icon-td', 'td', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(216, 'flag-icon flag-icon-tf', 'tf', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(217, 'flag-icon flag-icon-tg', 'tg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(218, 'flag-icon flag-icon-th', 'th', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(219, 'flag-icon flag-icon-tj', 'tj', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(220, 'flag-icon flag-icon-tk', 'tk', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(221, 'flag-icon flag-icon-tl', 'tl', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(222, 'flag-icon flag-icon-tm', 'tm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(223, 'flag-icon flag-icon-tn', 'tn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(224, 'flag-icon flag-icon-to', 'to', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(225, 'flag-icon flag-icon-tr', 'tr', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(226, 'flag-icon flag-icon-tt', 'tt', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(227, 'flag-icon flag-icon-tv', 'tv', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(228, 'flag-icon flag-icon-tw', 'tw', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(229, 'flag-icon flag-icon-tz', 'tz', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(230, 'flag-icon flag-icon-ua', 'ua', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(231, 'flag-icon flag-icon-ug', 'ug', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(232, 'flag-icon flag-icon-um', 'um', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(233, 'flag-icon flag-icon-us', 'us', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(234, 'flag-icon flag-icon-uy', 'uy', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(235, 'flag-icon flag-icon-uz', 'uz', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(236, 'flag-icon flag-icon-va', 'va', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(237, 'flag-icon flag-icon-vc', 'vc', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(238, 'flag-icon flag-icon-ve', 've', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(239, 'flag-icon flag-icon-vg', 'vg', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(240, 'flag-icon flag-icon-vi', 'vi', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(241, 'flag-icon flag-icon-vn', 'vn', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(242, 'flag-icon flag-icon-vu', 'vu', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(243, 'flag-icon flag-icon-wf', 'wf', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(244, 'flag-icon flag-icon-ws', 'ws', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(245, 'flag-icon flag-icon-ye', 'ye', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(246, 'flag-icon flag-icon-yt', 'yt', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(247, 'flag-icon flag-icon-za', 'za', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(248, 'flag-icon flag-icon-zm', 'zm', '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(249, 'flag-icon flag-icon-zw', 'zw', '2022-07-28 07:01:48', '2022-07-28 07:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tab` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 no, 1 yes',
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `disk`, `album_id`, `tab`, `title`, `is_cover`, `original_image`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'local', 1, NULL, NULL, 0, 'images/20220818135818_galleryImage_big46.jpg', 'images/20220818135818_galleryImage_thumb31.jpg', '2022-08-18 06:58:18', '2022-08-18 06:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `disk`, `original_image`, `og_image`, `thumbnail`, `big_image`, `big_image_two`, `medium_image`, `medium_image_two`, `medium_image_three`, `small_image`, `created_at`, `updated_at`) VALUES
(1, 'local', 'images/20220815083236_original_19.webp', 'images/20220815083236_ogImage_26.jpg', 'images/20220815083236_thumbnail_100x100_1.webp', 'images/20220815083236_big_1080x1000_48.webp', 'images/20220815083236_big_730x400_28.webp', 'images/20220815083236_medium_358x215_41.webp', 'images/20220815083236_medium_350x190_35.webp', 'images/20220815083236_medium_255x175_8.webp', 'images/20220815083236_small_123x83_39.webp', '2022-08-15 01:32:37', '2022-08-15 01:32:37'),
(2, 'local', 'images/20220815094220_original_47.webp', 'images/20220815094220_ogImage_39.jpg', 'images/20220815094220_thumbnail_100x100_43.webp', 'images/20220815094220_big_1080x1000_47.webp', 'images/20220815094220_big_730x400_32.webp', 'images/20220815094220_medium_358x215_1.webp', 'images/20220815094220_medium_350x190_16.webp', 'images/20220815094220_medium_255x175_50.webp', 'images/20220815094220_small_123x83_48.webp', '2022-08-15 02:42:21', '2022-08-15 02:42:21'),
(3, 'local', 'images/20220815102618_original_21.webp', 'images/20220815102618_ogImage_17.jpg', 'images/20220815102618_thumbnail_100x100_18.webp', 'images/20220815102618_big_1080x1000_9.webp', 'images/20220815102618_big_730x400_49.webp', 'images/20220815102618_medium_358x215_7.webp', 'images/20220815102618_medium_350x190_2.webp', 'images/20220815102618_medium_255x175_26.webp', 'images/20220815102618_small_123x83_9.webp', '2022-08-15 03:26:19', '2022-08-15 03:26:19'),
(4, 'local', 'images/20220815121242_original_10.webp', 'images/20220815121242_ogImage_49.jpg', 'images/20220815121242_thumbnail_100x100_43.webp', 'images/20220815121242_big_1080x1000_33.webp', 'images/20220815121242_big_730x400_8.webp', 'images/20220815121242_medium_358x215_14.webp', 'images/20220815121242_medium_350x190_43.webp', 'images/20220815121242_medium_255x175_20.webp', 'images/20220815121242_small_123x83_36.webp', '2022-08-15 05:12:43', '2022-08-15 05:12:43'),
(5, 'local', 'images/20220818135522_original_36.webp', 'images/20220818135522_ogImage_42.jpg', 'images/20220818135522_thumbnail_100x100_34.webp', 'images/20220818135522_big_1080x1000_29.webp', 'images/20220818135522_big_730x400_7.webp', 'images/20220818135522_medium_358x215_48.webp', 'images/20220818135522_medium_350x190_37.webp', 'images/20220818135522_medium_255x175_39.webp', 'images/20220818135522_small_123x83_42.webp', '2022-08-18 06:55:23', '2022-08-18 06:55:23'),
(6, 'local', 'images/20220818160532_original_25.webp', 'images/20220818160532_ogImage_16.jpg', 'images/20220818160532_thumbnail_100x100_38.webp', 'images/20220818160532_big_1080x1000_5.webp', 'images/20220818160532_big_730x400_32.webp', 'images/20220818160532_medium_358x215_2.webp', 'images/20220818160532_medium_350x190_34.webp', 'images/20220818160532_medium_255x175_4.webp', 'images/20220818160532_small_123x83_10.webp', '2022-08-18 09:05:33', '2022-08-18 09:05:33'),
(7, 'local', 'images/20220823092303_original_39.webp', 'images/20220823092303_ogImage_37.png', 'images/20220823092303_thumbnail_100x100_45.webp', 'images/20220823092303_big_1080x1000_48.webp', 'images/20220823092303_big_730x400_7.webp', 'images/20220823092303_medium_358x215_39.webp', 'images/20220823092303_medium_350x190_6.webp', 'images/20220823092303_medium_255x175_36.webp', 'images/20220823092303_small_123x83_9.webp', '2022-08-23 02:23:07', '2022-08-23 02:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `icon_class`, `text_direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'active', 'flag-icon flag-icon-us', 'LTR', '2022-07-28 07:01:47', '2022-07-28 07:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `language_configs`
--

CREATE TABLE `language_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_configs`
--

INSERT INTO `language_configs` (`id`, `language_id`, `name`, `script`, `native`, `regional`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'Latn', 'English', 'en_GB', '2022-07-28 07:01:47', '2022-07-28 07:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `is_mega_menu` enum('no','tab','category') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'no = normal menu, tab = tab type mega menu, category = category type mega menu',
  `order` int(11) NOT NULL DEFAULT '0',
  `parent` bigint(20) UNSIGNED DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `new_teb` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `label`, `language`, `menu_id`, `is_mega_menu`, `order`, `parent`, `source`, `url`, `page_id`, `category_id`, `sub_category_id`, `post_id`, `status`, `new_teb`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'en', 1, 'no', 1, NULL, 'custom', '/', NULL, NULL, NULL, NULL, 1, 0, '2020-10-14 04:26:41', '2022-08-15 01:06:45'),
(2, 'Contact Us', 'en', 1, 'no', 4, NULL, 'page', NULL, 1, NULL, NULL, NULL, 1, 0, '2020-10-14 04:34:07', '2022-08-22 05:13:18'),
(3, 'About us', 'en', 1, 'no', 5, NULL, 'page', NULL, 2, NULL, NULL, NULL, 1, 0, '2020-10-14 04:42:29', '2022-08-22 05:13:18'),
(5, 'Reportase', 'en', 1, 'no', 2, NULL, 'category', NULL, NULL, 1, NULL, NULL, 1, 0, '2022-08-22 05:12:54', '2022-08-22 05:13:18'),
(6, 'Serial', 'en', 1, 'no', 3, NULL, 'category', NULL, NULL, 2, NULL, NULL, 1, 0, '2022-08-22 05:12:54', '2022-08-22 05:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `title`, `unique_name`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Primary', 'primary', 1, '2022-07-28 07:01:48', '2022-07-28 07:01:48');

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
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_06_04_000000_create_images_table', 1),
(3, '2014_06_12_000001_create_videos_table', 1),
(4, '2014_06_12_000002_create_audios_table', 1),
(5, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_09_28_121115_create_Permissions_table', 1),
(8, '2019_10_02_101820_create_categories_table', 1),
(9, '2019_10_02_130602_create_sub_categories_table', 1),
(10, '2019_10_03_102624_create_posts_table', 1),
(11, '2019_10_13_160721_create_settings_table', 1),
(12, '2019_10_13_173518_create_languages_table', 1),
(13, '2019_10_13_180528_create_language_configs_table', 1),
(14, '2019_10_16_102855_create_flag_icon', 1),
(15, '2019_11_05_144716_create_email_templates_table', 1),
(16, '2019_11_16_155414_create_pages_table', 1),
(17, '2019_11_23_161232_create_menu_table', 1),
(18, '2019_11_23_161241_create_menu_item_table', 1),
(19, '2019_11_30_170502_create_menu_locations_table', 1),
(20, '2019_12_31_180342_create_ads_table', 1),
(21, '2020_01_01_151432_create_ad_locations_table', 1),
(22, '2020_01_05_160344_create_crons_table', 1),
(23, '2020_01_06_141735_create_polls_table', 1),
(24, '2020_01_06_145613_create_votes_table', 1),
(25, '2020_01_07_173342_create_widgets_table', 1),
(26, '2020_01_08_141817_create_contact_messages_table', 1),
(27, '2020_01_08_151731_create_comments_table', 1),
(28, '2020_02_27_171520_create_themes_table', 1),
(29, '2020_02_29_123626_create_theme_sections_table', 1),
(30, '2020_03_02_174040_create_tags_table', 1),
(31, '2020_07_07_005751_create_poll_options_table', 1),
(32, '2020_07_16_110239_create_jobs_table', 1),
(33, '2020_08_17_162145_create_social_media_table', 1),
(34, '2020_08_27_105041_create_poll_results_table', 1),
(35, '2020_09_24_140613_create_visitor_trackers_table', 1),
(36, '2020_11_07_144953_create_reactions_table', 1),
(37, '2020_11_16_144042_create_audio_post_table', 1),
(38, '2020_11_24_145954_create_albums_table', 1),
(39, '2020_11_24_150907_create_gallery_images_table', 1),
(40, '2020_12_03_125915_create_rss_feeds_table', 1),
(41, '2020_12_15_124608_column_update', 1),
(42, '2021_01_02_175930_column_update_2nd', 1),
(43, '2021_01_04_111845_create_app_intros_table', 1),
(44, '2021_01_13_154702_create_quiz_questions_table', 1),
(45, '2021_01_14_154705_create_quiz_results_table', 1),
(46, '2021_01_14_154717_create_quiz_answers_table', 1),
(47, '2021_02_23_104453_version_control', 1),
(48, '2021_02_23_104453_version_update', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 default page, 2 contact us page',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 without sidebar, 2 with right sidebar, 3 with left sidebar',
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_for_register` tinyint(1) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `show_breadcrumb` tinyint(1) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image_id`, `title`, `language`, `page_type`, `slug`, `description`, `template`, `visibility`, `show_for_register`, `show_title`, `show_breadcrumb`, `location`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Contact Us', 'en', 2, 'contact-us', 'How queer everything is to-day! And yesterday things went on saying to herself \'This is Bill,\' she gave one sharp kick, and waited till she was dozing off, and she jumped up and saying, \'Thank you, sir, for your walk!&quot; &quot;Coming in a trembling voice:-- \'I passed by his garden.&quot;\' Alice did not get hold of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. While she was considering in her lessons in here? Why, there\'s hardly enough of me left to make out what it was addressed to the beginning again?\' Alice ventured to say. \'What is his sorrow?\' she asked the Gryphon, and the moon, and memory, and muchness--you know you say &quot;What a pity!&quot;?\' the Rabbit came up to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' While the Owl and the little crocodile Improve his shining tail, And pour the waters of the cattle in the kitchen that did not see anything that had made her draw back in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of course,\' said the Gryphon. \'Well, I can\'t be Mabel, for I know is, it would be grand, certainly,\' said Alice to herself. At this moment Five, who had got so close to her: its face in her life, and had no pictures or conversations in it, \'and what is the capital of Paris, and Paris is the same thing as a boon, Was kindly permitted to pocket the spoon: While the Duchess to play croquet.\' Then they all crowded together at one and then said, \'It was a child,\' said the King. \'Nothing whatever,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Then it ought to be beheaded!\' said Alice, in a loud, indignant voice, but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the first figure!\' said the Hatter, \'or you\'ll be telling me next that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice to herself, and began to tremble. Alice looked very uncomfortable. The first question of course had to kneel down on their faces, so that by the officers of the mushroom, and raised herself to some tea and bread-and-butter, and then quietly marched off after the rest of my life.\' \'You are old, Father William,\' the young Crab, a little pattering of footsteps in the pool as it turned round and round goes the clock in a melancholy tone. \'Nobody seems to like her, down here, that I should understand that better,\' Alice said with some curiosity. \'What a curious croquet-ground in her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after glaring at her rather inquisitively, and seemed not to lie down upon their faces, so that her idea of having nothing to do: once or twice, half hoping that the meeting adjourn, for the hedgehogs; and in a game of croquet she was ready to play croquet.\' The Frog-Footman repeated, in the distance, sitting sad and lonely on a little timidly, for she was in managing her flamingo: she succeeded in bringing herself down to look at them--\'I wish they\'d get the.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2022-07-28 07:01:47', '2022-07-28 07:01:47'),
(2, NULL, 'About Us', 'en', 1, 'about-us', 'She was moving them about as she had brought herself down to look down and make one quite giddy.\' \'All right,\' said the Gryphon: and Alice looked very uncomfortable. The first thing I\'ve got to?\' (Alice had no very clear notion how long ago anything had happened.) So she stood still where she was, and waited. When the Mouse was bristling all over, and she was ever to get rather sleepy, and went stamping about, and crept a little timidly: \'but it\'s no use in knocking,\' said the Mock Turtle yet?\' \'No,\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew the name of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously round, to make personal remarks,\' Alice said to herself, \'I wish I hadn\'t quite finished my tea when I was thinking I should think you\'ll feel it a little of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is all the rest of my life.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet I don\'t care which happens!\' She ate a little timidly, for she could remember them, all these changes are! I\'m never sure what I\'m going to begin at HIS time of life. The King\'s argument was, that you had been for some minutes. Alice thought she might find another key on it, and talking over its head. \'Very uncomfortable for the rest were quite silent, and looked along the course, here and there stood the Queen was close behind us, and he\'s treading on her lap as if it thought that SOMEBODY ought to be in a few minutes that she could have been a holiday?\' \'Of course not,\' said Alice in a deep voice, \'What are you thinking of?\' \'I beg your acceptance of this sort of present!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. The poor little juror (it was Bill, the Lizard) could not join the dance? Will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, will you join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle\'s Story \'You can\'t think how glad I am in the direction it pointed to, without trying to make out who I WAS when I was a large plate came skimming out, straight at the thought that SOMEBODY ought to have changed since her swim in the middle, being held up by a row of lodging houses, and behind it, it occurred to her that she hardly knew what she was a different person then.\' \'Explain all that,\' said the King: \'leave out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were giving it a little way off, and had to stop and untwist it. After a while she ran, as well be at school at once.\' However, she did so, very carefully, with one elbow against the roof of the sort!\' said Alice. \'I don\'t see how he can thoroughly enjoy The pepper when he.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2022-07-28 07:01:47', '2022-07-28 07:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'album_read', 'album', '', NULL, NULL),
(2, 'album_write', 'album', '', NULL, NULL),
(3, 'album_delete', 'album', '', NULL, NULL),
(4, 'rss_read', 'rss', '', NULL, NULL),
(5, 'rss_write', 'rss', '', NULL, NULL),
(6, 'rss_delete', 'rss', '', NULL, NULL),
(7, 'api_read', 'api', '', NULL, NULL),
(8, 'api_write', 'api', '', NULL, NULL),
(9, 'api_delete', 'api', '', NULL, NULL),
(10, 'users_read', 'users', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(11, 'users_write', 'users', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(12, 'users_delete', 'users', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(13, 'role_read', 'role', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(14, 'role_write', 'role', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(15, 'role_delete', 'role', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(16, 'permission_read', 'permission', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(17, 'permission_write', 'permission', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(18, 'permission_delete', 'permission', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(19, 'settings_read', 'settings', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(20, 'settings_write', 'settings', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(21, 'settings_delete', 'settings', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(22, 'language_settings_read', 'language_settings', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(23, 'language_settings_write', 'language_settings', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(24, 'language_settings_delete', 'language_settings', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(25, 'pages_read', 'pages', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(26, 'pages_write', 'pages', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(27, 'pages_delete', 'pages', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(28, 'menu_read', 'menu', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(29, 'menu_write', 'menu', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(30, 'menu_delete', 'menu', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(31, 'menu_item_read', 'menu_item', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(32, 'menu_item_write', 'menu_item', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(33, 'menu_item_delete', 'menu_item', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(34, 'post_read', 'post', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(35, 'post_write', 'post', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(36, 'post_delete', 'post', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(37, 'category_read', 'category', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(38, 'category_write', 'category', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(39, 'category_delete', 'category', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(40, 'sub_category_read', 'sub_category', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(41, 'sub_category_write', 'sub_category', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(42, 'sub_category_delete', 'sub_category', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(43, 'widget_read', 'widget', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(44, 'widget_write', 'widget', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(45, 'widget_delete', 'widget', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(46, 'newsletter_read', 'newsletter', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(47, 'newsletter_write', 'newsletter', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(48, 'newsletter_delete', 'newsletter', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(49, 'notification_read', 'notification', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(50, 'notification_write', 'notification', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(51, 'notification_delete', 'notification', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(52, 'contact_message_read', 'contact_message', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(53, 'contact_message_write', 'contact_message', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(54, 'contact_message_delete', 'contact_message', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(55, 'ads_read', 'ads', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(56, 'ads_write', 'ads', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(57, 'ads_delete', 'ads', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(58, 'theme_section_read', 'theme_section', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(59, 'theme_section_write', 'theme_section', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(60, 'theme_section_delete', 'theme_section', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(61, 'socials_read', 'socials', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(62, 'socials_write', 'socials', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(63, 'socials_delete', 'socials', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(64, 'polls_read', 'polls', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(65, 'polls_write', 'polls', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(66, 'polls_delete', 'polls', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(67, 'comments_read', 'comments', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(68, 'comments_write', 'comments', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(69, 'comments_delete', 'comments', '', '2022-07-28 07:01:45', '2022-07-28 07:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'QTP6bYwHlBInxcOxm8HjoqoIH4yQ2rl3', '2022-07-28 07:04:20', '2022-07-28 07:04:20'),
(3, 1, 'I2fu97sacuLxthWlBXjKIOtC6ZwmH37z', '2022-07-28 07:40:39', '2022-07-28 07:40:39'),
(4, 1, '9d4vc0sTM965UTmOxDYQ1SoGrQHzeSR7', '2022-07-28 08:02:51', '2022-07-28 08:02:51'),
(5, 1, 'FDOldlnCc6IlUKnyqZDNd8iS7QJmDofe', '2022-07-28 08:07:23', '2022-07-28 08:07:23'),
(6, 1, 'TWcsnrZdH6rrlaZT7JFU6TTT8fTyk6Qt', '2022-08-04 05:11:50', '2022-08-04 05:11:50'),
(7, 1, '9CT3m3YYuRHTxCXOdXGTG0PTdvKI27FU', '2022-08-15 00:48:27', '2022-08-15 00:48:27'),
(8, 1, 'eIlIU4Rf5xDe7pXpRnmItwlXfeXXTgc5', '2022-08-18 05:15:46', '2022-08-18 05:15:46'),
(9, 1, '2FiK9Q9BScT0qdYwnzXRDH7jyzt9OUfc', '2022-08-18 06:54:53', '2022-08-18 06:54:53'),
(10, 1, 'Y5TBPVMy6CFX99hzIYZVarmry2kOq9gU', '2022-08-22 02:42:54', '2022-08-22 02:42:54'),
(11, 1, '0gkJIn4js6jbJcCLbTeHf0XW7NgW92zy', '2022-08-22 05:11:32', '2022-08-22 05:11:32'),
(12, 1, 'iAYG2WRabpSHN51Po1TNbuT4Fv8B5rns', '2022-08-22 05:11:32', '2022-08-22 05:11:32'),
(13, 1, 'N7DwTTtDZHZ1dA27dpJOOi9PA7mlAzik', '2022-08-23 00:54:01', '2022-08-23 00:54:01'),
(15, 1, 'YFvnLa9Bw9199r5D7eCUtQ9LvRc0PNT4', '2022-08-23 02:07:10', '2022-08-23 02:07:10'),
(16, 1, 'E01SlUVg1Z2YyCTGJh6xj6rFwHa3FZUv', '2022-08-23 02:19:36', '2022-08-23 02:19:36'),
(17, 1, 'Z8maXaBCVgnbMwBKI5m1pHwSIASzSYkU', '2022-08-25 03:14:30', '2022-08-25 03:14:30'),
(18, 1, 'qjge5xS05d7bFwu6AAR1Co9ghOsnjaNn', '2022-08-25 03:15:23', '2022-08-25 03:15:23'),
(19, 1, '1qjMiHo7rAkgx4SryZd7rCVBFbcNFf4i', '2022-08-25 03:16:02', '2022-08-25 03:16:02'),
(20, 1, 'Iz5Y0P1Xmviozr9z7U7WpfTApchvPYAF', '2022-08-25 03:17:03', '2022-08-25 03:17:03'),
(21, 1, '7RI50ieJAXbN1uj1vt8HCbiTdHyZnw7c', '2022-08-25 03:22:55', '2022-08-25 03:22:55'),
(22, 1, 'zkNnS3bl3YmkuawGxw5exeJEgs02W7rb', '2022-08-25 03:26:09', '2022-08-25 03:26:09'),
(23, 1, 'rNPmjxcPe7ouh5dQkQUYcTPNGgpeYD3v', '2022-08-25 03:31:41', '2022-08-25 03:31:41'),
(24, 1, 'ESF6RUk1UWDexYeR3TNlBpCQUzedPp3k', '2022-08-25 03:31:55', '2022-08-25 03:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `auth_required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE `poll_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) DEFAULT NULL,
  `poll_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `browser_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_type` enum('article','video','audio','trivia-quiz','personality-quiz') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Non Submitted, 1 submitted',
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `auth_required` tinyint(1) NOT NULL DEFAULT '0',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `slider_order` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_order` int(11) NOT NULL DEFAULT '0',
  `breaking` tinyint(1) NOT NULL DEFAULT '0',
  `breaking_order` int(11) NOT NULL DEFAULT '0',
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `recommended_order` int(11) NOT NULL DEFAULT '0',
  `editor_picks` tinyint(1) NOT NULL DEFAULT '0',
  `editor_picks_order` int(11) NOT NULL DEFAULT '0',
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video_url_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `video_thumbnail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `total_hit` bigint(20) NOT NULL DEFAULT '0',
  `contents` longtext COLLATE utf8mb4_unicode_ci COMMENT 'extra content',
  `read_more_link` text COLLATE utf8mb4_unicode_ci COMMENT 'rss post actual link',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `language`, `user_id`, `category_id`, `sub_category_id`, `post_type`, `submitted`, `image_id`, `visibility`, `auth_required`, `slider`, `slider_order`, `featured`, `featured_order`, `breaking`, `breaking_order`, `recommended`, `recommended_order`, `editor_picks`, `editor_picks_order`, `scheduled`, `meta_title`, `meta_keywords`, `meta_description`, `tags`, `scheduled_date`, `layout`, `video_id`, `video_url_type`, `video_url`, `video_thumbnail_id`, `status`, `total_hit`, `contents`, `read_more_link`, `created_at`, `updated_at`) VALUES
(3, 'Toyota Sumbang 143 Mobil Listrik Lexus untuk Kendaraan Delegasi KTT G202', 'Toyota-Sumbang-143-Mobil-Listrik-Lexus-untuk-Kendaraan-Delegasi-KTT-G202', '<p>Toyota Sumbang 143 Mobil Listrik Lexus untuk Kendaraan Delegasi KTT G202</p>', 'en', 1, 2, NULL, 'video', 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Toyota Sumbang 143 Mobil Listrik Lexus untuk Kendaraan Delegasi KTT G202', NULL, NULL, NULL, NULL, 'default', NULL, 'Select option', NULL, NULL, 1, 0, NULL, NULL, '2022-08-15 01:40:31', '2022-08-15 03:57:54'),
(4, 'Aktivitas Padat, Vincent dan Ditto Unggah Konten “Jungkir Balik”', 'aktivitas-padat-vincent-dan-ditto-unggah-konten-“jungkir-balik”', '<div class=\" d-flex\">\r\n<div class=\"details-news ms-3\">Aktivitas Padat, Vincent dan Ditto Unggah Konten &ldquo;Jungkir Balik&rdquo;</div>\r\n</div>\r\n<p>&nbsp;</p>', 'en', 1, 2, NULL, 'article', 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aktivitas Padat, Vincent dan Ditto Unggah Konten “Jungkir Balik”', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2022-08-15 02:42:32', '2022-08-15 02:42:32'),
(5, 'Tidak Benar Radiasi Ponsel Sebabkan Kematian Seorang Pria', 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '<h1 class=\"title-medium\">Tidak Benar Radiasi Ponsel Sebabkan Kematian Seorang Pria</h1>\r\n<p>&nbsp;</p>', 'en', 1, 2, NULL, 'article', 0, 3, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidak Benar Radiasi Ponsel Sebabkan Kematian Seorang Pria', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 17, NULL, NULL, '2022-08-15 03:26:28', '2022-08-23 00:55:20'),
(6, 'Tidak Benar Radiasi Ponsel Sebabkan Kematian Seorang Pria2', 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', '<h1 class=\"title-medium\">Tidak Benar Radiasi Ponsel Sebabkan Kematian Seorang Pria</h1>\r\n<p>&nbsp;</p>', 'en', 1, 1, NULL, 'article', 0, 4, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'Tidak Benar Radiasi Ponsel Sebabkan Kematian Seorang Pria2', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 8, NULL, NULL, '2022-08-15 05:14:04', '2022-08-23 00:54:55'),
(7, 'Berita online terpercaya', 'test', '<p>test</p>', 'en', 1, 1, NULL, 'article', 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'test', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 29, NULL, NULL, '2022-08-15 05:19:26', '2022-08-23 00:54:41'),
(8, 'Tester', 'tester', '<p>tester</p>', 'en', 1, 1, NULL, 'article', 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tester', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2022-08-23 02:23:16', '2022-08-23 02:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `answer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  `answer_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `min_correct` int(11) DEFAULT NULL,
  `max_correct` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_reaction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', '{\"users_read\":true,\"users_write\":true,\"users_delete\":true,\"settings_read\":true,\"settings_write\":true,\"settings_delete\":true,\"role_read\":true,\"role_write\":true,\"role_delete\":true,\"permission_read\":true,\"permission_write\":true,\"permission_delete\":true,\"language_settings_read\":true,\"language_settings_write\":true,\"language_settings_delete\":true,\"pages_read\":true,\"pages_write\":true,\"pages_delete\":true,\"menu_read\":true,\"menu_write\":true,\"menu_delete\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"menu_item_delete\":true,\"post_read\":true,\"post_write\":true,\"post_delete\":true,\"category_read\":true,\"category_write\":true,\"category_delete\":true,\"sub_category_read\":true,\"sub_category_write\":true,\"sub_category_delete\":true,\"widget_read\":true,\"widget_write\":true,\"widget_delete\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"newsletter_delete\":true,\"notification_read\":true,\"notification_write\":true,\"notification_delete\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"contact_message_delete\":true,\"ads_read\":true,\"ads_write\":true,\"ads_delete\":true,\"theme_section_read\":true,\"theme_section_write\":true,\"theme_section_delete\":true,\"polls_read\":true,\"polls_write\":true,\"polls_delete\":true,\"socials_read\":true,\"socials_write\":true,\"socials_delete\":true,\"comments_read\":true,\"comments_write\":true,\"comments_delete\":true,\"album_read\":true,\"album_write\":true,\"album_delete\":true,\"rss_read\":true,\"rss_write\":true,\"rss_delete\":true,\"api_read\":true,\"api_write\":true,\"api_delete\":true}', '2022-07-28 07:01:44', '2022-07-28 07:01:44'),
(2, 'admin', 'Admin', '{\"users_read\":true,\"users_write\":true,\"settings_read\":true,\"settings_write\":true,\"role_read\":true,\"role_write\":true,\"permission_read\":true,\"permission_write\":true,\"language_settings_read\":true,\"language_settings_write\":true,\"pages_read\":true,\"pages_write\":true,\"menu_read\":true,\"menu_write\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"post_read\":true,\"post_write\":true,\"category_read\":true,\"category_write\":true,\"sub_category_read\":true,\"sub_category_write\":true,\"widget_read\":true,\"widget_write\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"notification_read\":true,\"notification_write\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"ads_read\":true,\"ads_write\":true,\"theme_section_read\":true,\"theme_section_write\":true,\"polls_read\":true,\"polls_write\":true,\"socials_read\":true,\"socials_write\":true,\"comments_read\":true,\"comments_write\":true,\"album_read\":true,\"album_write\":true,\"rss_read\":true,\"rss_write\":true}', '2022-07-28 07:01:44', '2022-07-28 07:01:44'),
(3, 'editor', 'Editor', '{\"pages_read\":true,\"pages_write\":true,\"menu_read\":true,\"menu_write\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"post_read\":true,\"post_write\":true,\"category_read\":true,\"category_write\":true,\"sub_category_read\":true,\"sub_category_write\":true,\"widget_read\":true,\"widget_write\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"notification_read\":true,\"notification_write\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"ads_read\":true,\"ads_write\":true,\"polls_read\":true,\"polls_write\":true}', '2022-07-28 07:01:44', '2022-07-28 07:01:44'),
(4, 'user', 'User', NULL, '2022-07-28 07:01:44', '2022-07-28 07:01:44'),
(5, 'subscriber', 'Subscriber', NULL, '2022-07-28 07:01:44', '2022-07-28 07:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_limit` smallint(6) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '0',
  `show_read_more` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `keep_date` tinyint(1) NOT NULL DEFAULT '0',
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'api_key_for_app', '', 'en', NULL, NULL),
(2, 'latest_apk_version', '', 'en', NULL, NULL),
(3, 'latest_apk_code', '', 'en', NULL, NULL),
(4, 'apk_file_url', '', 'en', NULL, NULL),
(5, 'whats_new_on_latest_apk', '', 'en', NULL, NULL),
(6, 'apk_update_skipable_status', 'false', 'en', NULL, NULL),
(7, 'latest_ipa_version', '', 'en', NULL, NULL),
(8, 'latest_ipa_code', '', 'en', NULL, NULL),
(9, 'ipa_file_url', '', 'en', NULL, NULL),
(10, 'whats_new_on_latest_ipa', '', 'en', NULL, NULL),
(11, 'ios_update_skipable_status', '', 'en', NULL, NULL),
(12, 'mandatory_login', 'false', 'en', NULL, NULL),
(13, 'intro_skippable', 'false', 'en', NULL, NULL),
(14, 'privacy_policy_url', '', 'en', NULL, NULL),
(15, 'terms_n_condition_url', '', 'en', NULL, NULL),
(16, 'support_url', '', 'en', NULL, NULL),
(17, 'ads_enable', 'false', 'en', NULL, NULL),
(18, 'mobile_ads_network', '', 'en', NULL, NULL),
(19, 'admob_app_id', '', 'en', NULL, NULL),
(20, 'admob_banner_ads_id', '', 'en', NULL, NULL),
(21, 'admob_interstitial_ads_id', '', 'en', NULL, NULL),
(22, 'admob_native_ads_id', '', 'en', NULL, NULL),
(23, 'fan_native_ads_placement_id', '', 'en', NULL, NULL),
(24, 'fan_banner_ads_placement_id', '', 'en', NULL, NULL),
(25, 'fan_interstitial_ads_placement_id', '', 'en', NULL, NULL),
(26, 'startapp_app_id', '', 'en', NULL, NULL),
(27, 'default_language', 'en', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(28, 'timezone', 'Asia/Dhaka', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(29, 'application_name', 'temanCMS', 'en', '2022-07-28 07:01:46', '2022-07-28 08:03:22'),
(30, 'mail_driver', 'smtp', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(31, 'mail_host', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(32, 'sendmail_path', '/usr/bin/sendmail -bs', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(33, 'mail_port', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(34, 'mail_address', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(35, 'mail_name', 'ONNO News and Magazine', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(36, 'mail_username', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(37, 'mail_password', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(38, 'mail_encryption', 'ssl', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(39, 'default_storage', 'local', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(40, 'aws_access_key_id', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(41, 'aws_secret_access_key', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(42, 'aws_default_region', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(43, 'aws_bucket', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(44, 'logo', 'images/20220825104915_logo_22.png', 'en', '2022-07-28 07:01:46', '2022-08-25 03:49:15'),
(45, 'favicon', 'images/20220825105343_favicon_40.png', 'en', '2022-07-28 07:01:46', '2022-08-25 03:53:43'),
(46, 'onesignal_api_key', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(47, 'onesignal_app_id', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(48, 'onesignal_action_message', 'We\'d like to show you notifications for the latest updates.', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(49, 'onesignal_accept_button', 'ALLOW', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(50, 'onesignal_cancel_button', 'NO THANKS', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(51, 'notification_status', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(52, 'seo_title', 'Teman Ngoding', 'en', '2022-07-28 07:01:46', '2022-07-28 07:28:06'),
(53, 'seo_keywords', 'teman ngoding', 'en', '2022-07-28 07:01:46', '2022-07-28 07:28:06'),
(54, 'seo_meta_description', NULL, 'en', '2022-07-28 07:01:46', '2022-07-28 07:28:06'),
(55, 'author_name', 'SpaGreen', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(56, 'og_title', 'Your Website Title', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(57, 'og_description', NULL, 'en', '2022-07-28 07:01:46', '2022-07-28 07:28:06'),
(58, 'og_image', 'images/20201018123322_og_image_49.png', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(59, 'google_analytics_id', 'UA-xxxxxxxx-1', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(60, 'page_detail_prefix', 'page', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(61, 'article_detail_prefix', NULL, 'en', '2022-07-28 07:01:46', '2022-08-25 05:32:14'),
(62, 'url', 'http://127.0.0.1:8000', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(63, 'address', 'Jakarta', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(64, 'email', 'admin@cmsku.com', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(65, 'phone', '01400620055', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(66, 'zip_code', '1207', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(67, 'city', 'Jakarta', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(68, 'state', 'Jakarta', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(69, 'country', 'Indonesia', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(70, 'website', 'temanngoding.com', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(71, 'company_registration', '123456789', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(72, 'tax_number', '123456789', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(73, 'about_us_description', 'CMS for News', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(74, 'captcha_secret', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(75, 'captcha_sitekey', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(76, 'captcha_visibility', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(77, 'copyright_text', 'Copyright © 2022 cmsku', 'en', '2022-07-28 07:01:46', '2022-07-28 07:25:46'),
(78, 'signature', 'Best Regards', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(79, 'addthis_public_id', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(80, 'addthis_toolbox', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(81, 'adthis_option', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(82, 'inbuild_comment', '1', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(83, 'disqus_comment', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(84, 'disqus_short_name', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(85, 'facebook_comment', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(86, 'facebook_app_id', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(87, 'predefined_header', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(88, 'custom_header_style', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(89, 'custom_footer_js', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(90, 'ffmpeg_status', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(91, 'facebook_client_id', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(92, 'facebook_client_secretkey', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(93, 'facebook_visibility', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(94, 'facebook_callback_url', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(95, 'google_client_id', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(96, 'google_client_secretkey', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(97, 'google_visibility', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(98, 'google_callback_url', '', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(99, 'preloader_option', '0', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(100, 'submit_news_status', '1', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(101, 'version', '142', 'en', '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(102, 'status', NULL, 'en', '2022-07-28 07:11:13', '2022-07-28 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `url`, `icon_bg_color`, `text_bg_color`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '#', '#0061C2', '#056ED8', 'fa fa-facebook', 1, '2022-07-28 07:01:38', '2022-07-28 07:01:38'),
(2, 'Youtube', '#', '#FE031C', '#E50017', 'fa fa-youtube-play', 1, '2022-07-28 07:01:38', '2022-07-28 07:01:38'),
(3, 'Twitter', '#', '#2391FF', '#349AFF', 'fa fa-twitter', 1, '2022-07-28 07:01:38', '2022-07-28 07:01:38'),
(4, 'Linkedin', '#', '#349AFF', '#349affd9', 'fa fa-linkedin', 1, '2022-07-28 07:01:38', '2022-07-28 07:01:38'),
(5, 'Skype', '#', '#4ba3fcd9', '#4BA3FC', 'fa fa-skype', 1, '2022-07-28 07:01:38', '2022-07-28 07:01:38'),
(6, 'Pinterest', '#', '#C2000D', '#c2000dd9', 'fa fa-pinterest-square', 1, '2022-07-28 07:01:38', '2022-07-28 07:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_hit` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `total_hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(2, 'Football', 12, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(3, 'Cricket', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(4, 'Education', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(5, 'Business', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(6, 'Technology', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(7, 'Science', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(8, 'Bangladesh', 2, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(9, 'World Cup', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(10, 'Politics', 6, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(11, 'Computer', 2, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(12, 'Apple', 3, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(13, 'Microsoft', 3, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(14, 'Google', 4, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(15, 'Travel', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(16, 'Virus', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(17, 'Culture', 10, 1, '2022-07-28 07:01:45', '2022-07-28 07:01:45'),
(18, 'Culture', 10, 1, '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(19, 'Health', 10, 1, '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(20, 'Tree', 5, 1, '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(21, 'Environment', 8, 1, '2022-07-28 07:01:46', '2022-07-28 07:01:46'),
(22, 'Pollution', 6, 1, '2022-07-28 07:01:46', '2022-07-28 07:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `options`, `status`, `created_at`, `updated_at`) VALUES
(1, 'theme_one', NULL, '{\"header_style\":\"header_1\",\"footer_style\":\"footer_1\",\"primary_color\":\"#000000\",\"fonts\":\"Noto+Sans+JP\",\"mode\":null}', 1, '2022-07-28 07:01:48', '2022-07-28 07:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `theme_sections`
--

CREATE TABLE `theme_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `section_style` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_sections`
--

INSERT INTO `theme_sections` (`id`, `theme_id`, `type`, `label`, `order`, `category_id`, `ad_id`, `post_amount`, `section_style`, `is_primary`, `status`, `language`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Primary Section', 1, NULL, NULL, 1, 'style_1', 1, 1, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(2, 1, 3, 'latest_post', 6, NULL, NULL, NULL, NULL, 0, 1, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL COMMENT 'date of birth',
  `gender` tinyint(1) NOT NULL COMMENT '1 male, 2 female, 3 others',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci COMMENT 'it will be array data',
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `newsletter_enable` tinyint(1) NOT NULL DEFAULT '1',
  `is_user_banned` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 banned, 1 unbanned',
  `is_password_set` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 not set, 1 set',
  `user_banned_reason` text COLLATE utf8mb4_unicode_ci,
  `is_subscribe_banned` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 banned, 1 unbanned',
  `subscribe_banned_reason` text COLLATE utf8mb4_unicode_ci,
  `about_us` text COLLATE utf8mb4_unicode_ci,
  `social_media` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'it will be array data',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactive user, 1 active user',
  `deactivate_reason` text COLLATE utf8mb4_unicode_ci,
  `firebase_auth_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'this is for mobile app.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `dob`, `gender`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `profile_image`, `image_id`, `newsletter_enable`, `is_user_banned`, `is_password_set`, `user_banned_reason`, `is_subscribe_banned`, `subscribe_banned_reason`, `about_us`, `social_media`, `is_active`, `deactivate_reason`, `firebase_auth_id`, `created_at`, `updated_at`) VALUES
(1, 'cyberfazri@gmail.com', '', '0000-00-00', 0, '$2y$10$EjP06Lk9Ik5SNIAkaMOCN.lVpHjM2xytRw4wjs/SIe459IILzu3u2', '{\"email_show\":0}', '2022-08-25 03:31:55', NULL, NULL, NULL, NULL, 0, 1, 0, NULL, 1, NULL, NULL, '', 1, NULL, NULL, '2022-07-28 07:01:45', '2022-08-25 03:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_144p` text COLLATE utf8mb4_unicode_ci,
  `v_240p` text COLLATE utf8mb4_unicode_ci,
  `v_360p` text COLLATE utf8mb4_unicode_ci,
  `v_480p` text COLLATE utf8mb4_unicode_ci,
  `v_720p` text COLLATE utf8mb4_unicode_ci,
  `v_1080p` text COLLATE utf8mb4_unicode_ci,
  `video_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_trackers`
--

CREATE TABLE `visitor_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_type` tinyint(1) DEFAULT NULL COMMENT '1, home page, 2 post details, 3 page detail',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_trackers`
--

INSERT INTO `visitor_trackers` (`id`, `page_type`, `slug`, `url`, `source_url`, `ip`, `agent_browser`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(2, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:02:12', '2022-07-28 07:02:12'),
(3, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:04:20', '2022-07-28 07:04:20'),
(4, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/api/api-settings', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:07:25', '2022-07-28 07:07:25'),
(5, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/submit/news', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:07:43', '2022-07-28 07:07:43'),
(6, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:07:53', '2022-07-28 07:07:53'),
(7, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:07:55', '2022-07-28 07:07:55'),
(8, 3, 'about-us', 'http://site.test/news/public/page/about-us', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:10:01', '2022-07-28 07:10:01'),
(9, 3, 'contact-us', 'http://site.test/news/public/page/contact-us', 'http://site.test/news/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:10:05', '2022-07-28 07:10:05'),
(10, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:10:09', '2022-07-28 07:10:09'),
(11, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:11:16', '2022-07-28 07:11:16'),
(12, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:20:34', '2022-07-28 07:20:34'),
(13, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:31:51', '2022-07-28 07:31:51'),
(14, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:31:57', '2022-07-28 07:31:57'),
(15, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:32:02', '2022-07-28 07:32:02'),
(16, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:32:10', '2022-07-28 07:32:10'),
(17, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:33:16', '2022-07-28 07:33:16'),
(18, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:33:28', '2022-07-28 07:33:28'),
(19, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:33:42', '2022-07-28 07:33:42'),
(20, 2, 'sample-video-post', 'http://site.test/news/public/story/sample-video-post', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:33:50', '2022-07-28 07:33:50'),
(21, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/story/sample-video-post', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:34:02', '2022-07-28 07:34:02'),
(22, 3, 'about-us', 'http://site.test/news/public/page/about-us', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:34:09', '2022-07-28 07:34:09'),
(23, 3, 'contact-us', 'http://site.test/news/public/page/contact-us', 'http://site.test/news/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:34:11', '2022-07-28 07:34:11'),
(24, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:34:18', '2022-07-28 07:34:18'),
(25, 3, 'about-us', 'http://site.test/news/public/page/about-us', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:34:45', '2022-07-28 07:34:45'),
(26, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:34:49', '2022-07-28 07:34:49'),
(27, 3, 'about-us', 'http://site.test/news/public/page/about-us', 'http://site.test/news/public/', '127.0.0.1', 'Google Chrome', '2022-07-28', '2022-07-28 07:35:05', '2022-07-28 07:35:05'),
(28, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:35:11', '2022-07-28 07:35:11'),
(29, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 07:40:39', '2022-07-28 07:40:39'),
(30, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 08:02:52', '2022-07-28 08:02:52'),
(31, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 08:06:55', '2022-07-28 08:06:55'),
(32, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-07-28 08:07:23', '2022-07-28 08:07:23'),
(33, 1, NULL, 'http://site.test/news', 'http://site.test/news', '127.0.0.1', 'Google Chrome', NULL, '2022-08-04 05:10:38', '2022-08-04 05:10:38'),
(34, 3, 'contact-us', 'http://site.test/news/page/contact-us', 'http://site.test/news/login', '127.0.0.1', 'Google Chrome', '2022-08-04', '2022-08-04 05:11:21', '2022-08-04 05:11:21'),
(35, 1, NULL, 'http://site.test/news', 'http://site.test/news/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-04 05:11:35', '2022-08-04 05:11:35'),
(36, 1, NULL, 'http://site.test/news', 'http://site.test/news/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-04 05:11:50', '2022-08-04 05:11:50'),
(37, 1, NULL, 'http://site.test/news', 'http://site.test/news/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-04 05:13:21', '2022-08-04 05:13:21'),
(38, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-05 00:50:55', '2022-08-05 00:50:55'),
(39, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-05 01:34:51', '2022-08-05 01:34:51'),
(40, 1, NULL, 'http://site.test/temancmss/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-05 01:51:37', '2022-08-05 01:51:37'),
(41, 1, NULL, 'http://site.test/temancmsss/public', 'http://site.test/temancmsss/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-05 01:56:15', '2022-08-05 01:56:15'),
(42, 1, NULL, 'http://site.test/news', 'http://site.test/disewain/public/boat/my-way-100', '127.0.0.1', 'Google Chrome', NULL, '2022-08-05 02:10:19', '2022-08-05 02:10:19'),
(43, 1, NULL, 'http://site.test/news', 'http://site.test/news', '127.0.0.1', 'Google Chrome', NULL, '2022-08-08 03:47:39', '2022-08-08 03:47:39'),
(44, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-08 03:48:04', '2022-08-08 03:48:04'),
(45, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:31:34', '2022-08-12 00:31:34'),
(46, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:34:09', '2022-08-12 00:34:09'),
(47, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:39:41', '2022-08-12 00:39:41'),
(48, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:39:47', '2022-08-12 00:39:47'),
(49, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:39:50', '2022-08-12 00:39:50'),
(50, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:40:22', '2022-08-12 00:40:22'),
(51, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:40:34', '2022-08-12 00:40:34'),
(52, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:48:38', '2022-08-12 00:48:38'),
(53, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:49:46', '2022-08-12 00:49:46'),
(54, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:49:49', '2022-08-12 00:49:49'),
(55, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', '', NULL, '2022-08-12 00:50:01', '2022-08-12 00:50:01'),
(56, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:50:44', '2022-08-12 00:50:44'),
(57, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:52:12', '2022-08-12 00:52:12'),
(58, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:52:14', '2022-08-12 00:52:14'),
(59, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:52:56', '2022-08-12 00:52:56'),
(60, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:55:20', '2022-08-12 00:55:20'),
(61, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:55:58', '2022-08-12 00:55:58'),
(62, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:59:41', '2022-08-12 00:59:41'),
(63, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 00:59:48', '2022-08-12 00:59:48'),
(64, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:01:18', '2022-08-12 01:01:18'),
(65, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:07:49', '2022-08-12 01:07:49'),
(66, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/ide-esai.html', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:08:01', '2022-08-12 01:08:01'),
(67, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:08:19', '2022-08-12 01:08:19'),
(68, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:08:21', '2022-08-12 01:08:21'),
(69, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:08:59', '2022-08-12 01:08:59'),
(70, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:09:01', '2022-08-12 01:09:01'),
(71, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:10:45', '2022-08-12 01:10:45'),
(72, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:11:19', '2022-08-12 01:11:19'),
(73, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:13:18', '2022-08-12 01:13:18'),
(74, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/frond-end', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:13:23', '2022-08-12 01:13:23'),
(75, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:16:14', '2022-08-12 01:16:14'),
(76, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:16:22', '2022-08-12 01:16:22'),
(77, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:19:53', '2022-08-12 01:19:53'),
(78, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:20:38', '2022-08-12 01:20:38'),
(79, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:20:47', '2022-08-12 01:20:47'),
(80, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:21:16', '2022-08-12 01:21:16'),
(81, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:21:31', '2022-08-12 01:21:31'),
(82, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:21:37', '2022-08-12 01:21:37'),
(83, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:22:06', '2022-08-12 01:22:06'),
(84, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:22:12', '2022-08-12 01:22:12'),
(85, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:23:20', '2022-08-12 01:23:20'),
(86, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:23:59', '2022-08-12 01:23:59'),
(87, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:24:20', '2022-08-12 01:24:20'),
(88, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:24:47', '2022-08-12 01:24:47'),
(89, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:25:02', '2022-08-12 01:25:02'),
(90, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:26:36', '2022-08-12 01:26:36'),
(91, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:26:42', '2022-08-12 01:26:42'),
(92, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:29:09', '2022-08-12 01:29:09'),
(93, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:30:39', '2022-08-12 01:30:39'),
(94, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:30:47', '2022-08-12 01:30:47'),
(95, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:30:47', '2022-08-12 01:30:47'),
(96, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:31:42', '2022-08-12 01:31:42'),
(97, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:31:54', '2022-08-12 01:31:54'),
(98, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:34:12', '2022-08-12 01:34:12'),
(99, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:34:37', '2022-08-12 01:34:37'),
(100, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:35:11', '2022-08-12 01:35:11'),
(101, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:35:13', '2022-08-12 01:35:13'),
(102, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:35:31', '2022-08-12 01:35:31'),
(103, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/?', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:39:53', '2022-08-12 01:39:53'),
(104, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:39:56', '2022-08-12 01:39:56'),
(105, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:40:59', '2022-08-12 01:40:59'),
(106, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:41:01', '2022-08-12 01:41:01'),
(107, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:45:13', '2022-08-12 01:45:13'),
(108, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:46:39', '2022-08-12 01:46:39'),
(109, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:47:13', '2022-08-12 01:47:13'),
(110, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:47:21', '2022-08-12 01:47:21'),
(111, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:48:06', '2022-08-12 01:48:06'),
(112, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:48:18', '2022-08-12 01:48:18'),
(113, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:48:26', '2022-08-12 01:48:26'),
(114, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:48:59', '2022-08-12 01:48:59'),
(115, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:49:27', '2022-08-12 01:49:27'),
(116, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:49:33', '2022-08-12 01:49:33'),
(117, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:49:33', '2022-08-12 01:49:33'),
(118, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:50:01', '2022-08-12 01:50:01'),
(119, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:50:16', '2022-08-12 01:50:16'),
(120, 3, 'index.html', 'http://site.test/temancms/page/index.html', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:50:22', '2022-08-12 01:50:22'),
(121, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/index.html', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:50:32', '2022-08-12 01:50:32'),
(122, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/index.html', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:51:50', '2022-08-12 01:51:50'),
(123, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:51:52', '2022-08-12 01:51:52'),
(124, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:52:11', '2022-08-12 01:52:11'),
(125, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:52:24', '2022-08-12 01:52:24'),
(126, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:52:26', '2022-08-12 01:52:26'),
(127, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:52:30', '2022-08-12 01:52:30'),
(128, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:52:30', '2022-08-12 01:52:30'),
(129, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:52:32', '2022-08-12 01:52:32'),
(130, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-12', '2022-08-12 01:54:33', '2022-08-12 01:54:33'),
(131, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:54:43', '2022-08-12 01:54:43'),
(132, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:54:45', '2022-08-12 01:54:45'),
(133, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:54:45', '2022-08-12 01:54:45'),
(134, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-12 01:54:46', '2022-08-12 01:54:46'),
(135, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:33:40', '2022-08-15 00:33:40'),
(136, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 00:33:47', '2022-08-15 00:33:47'),
(137, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 00:33:49', '2022-08-15 00:33:49'),
(138, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:33:53', '2022-08-15 00:33:53'),
(139, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:33:53', '2022-08-15 00:33:53'),
(140, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:33:56', '2022-08-15 00:33:56'),
(141, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:33:58', '2022-08-15 00:33:58'),
(142, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:36:58', '2022-08-15 00:36:58'),
(143, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:37:54', '2022-08-15 00:37:54'),
(144, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:38:34', '2022-08-15 00:38:34'),
(145, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:48:28', '2022-08-15 00:48:28'),
(146, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/my-profile', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:56:20', '2022-08-15 00:56:20'),
(147, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/my-profile', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:58:06', '2022-08-15 00:58:06'),
(148, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/my-profile', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:58:22', '2022-08-15 00:58:22'),
(149, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/my-profile', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 00:59:23', '2022-08-15 00:59:23'),
(150, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 00:59:26', '2022-08-15 00:59:26'),
(151, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:01:53', '2022-08-15 01:01:53'),
(152, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:01:59', '2022-08-15 01:01:59'),
(153, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:03:23', '2022-08-15 01:03:23'),
(154, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:03:26', '2022-08-15 01:03:26'),
(155, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:03:29', '2022-08-15 01:03:29'),
(156, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:03:32', '2022-08-15 01:03:32'),
(157, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:03:36', '2022-08-15 01:03:36'),
(158, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:04:36', '2022-08-15 01:04:36'),
(159, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:05:11', '2022-08-15 01:05:11'),
(160, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:05:28', '2022-08-15 01:05:28'),
(161, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:05:43', '2022-08-15 01:05:43'),
(162, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:05:53', '2022-08-15 01:05:53'),
(163, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:05:57', '2022-08-15 01:05:57'),
(164, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:06:02', '2022-08-15 01:06:02'),
(165, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:06:06', '2022-08-15 01:06:06'),
(166, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:06:08', '2022-08-15 01:06:08'),
(167, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:06:13', '2022-08-15 01:06:13'),
(168, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:06:25', '2022-08-15 01:06:25'),
(169, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:06:29', '2022-08-15 01:06:29'),
(170, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:06:31', '2022-08-15 01:06:31'),
(171, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:06:48', '2022-08-15 01:06:48'),
(172, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:06:52', '2022-08-15 01:06:52'),
(173, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:07:01', '2022-08-15 01:07:01'),
(174, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:07:36', '2022-08-15 01:07:36'),
(175, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:08:22', '2022-08-15 01:08:22'),
(176, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:08:41', '2022-08-15 01:08:41'),
(177, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:09:48', '2022-08-15 01:09:48'),
(178, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:09:51', '2022-08-15 01:09:51'),
(179, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:10:10', '2022-08-15 01:10:10'),
(180, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:11:20', '2022-08-15 01:11:20'),
(181, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:12:16', '2022-08-15 01:12:16'),
(182, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:12:17', '2022-08-15 01:12:17'),
(183, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:13:18', '2022-08-15 01:13:18'),
(184, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:19:08', '2022-08-15 01:19:08'),
(185, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:20:09', '2022-08-15 01:20:09'),
(186, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:21:03', '2022-08-15 01:21:03'),
(187, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:21:41', '2022-08-15 01:21:41'),
(188, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:21:49', '2022-08-15 01:21:49'),
(189, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:22:40', '2022-08-15 01:22:40'),
(190, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:22:48', '2022-08-15 01:22:48'),
(191, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:23:13', '2022-08-15 01:23:13'),
(192, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:23:21', '2022-08-15 01:23:21'),
(193, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:23:32', '2022-08-15 01:23:32'),
(194, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:23:46', '2022-08-15 01:23:46'),
(195, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:24:00', '2022-08-15 01:24:00'),
(196, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:24:17', '2022-08-15 01:24:17'),
(197, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:24:44', '2022-08-15 01:24:44'),
(198, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:24:51', '2022-08-15 01:24:51'),
(199, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:26:02', '2022-08-15 01:26:02'),
(200, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:29:04', '2022-08-15 01:29:04'),
(201, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:29:46', '2022-08-15 01:29:46'),
(202, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:30:25', '2022-08-15 01:30:25'),
(203, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:31:04', '2022-08-15 01:31:04'),
(204, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:32:56', '2022-08-15 01:32:56'),
(205, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:33:26', '2022-08-15 01:33:26'),
(206, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:34:17', '2022-08-15 01:34:17'),
(207, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:36:39', '2022-08-15 01:36:39'),
(208, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:37:44', '2022-08-15 01:37:44'),
(209, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:39:03', '2022-08-15 01:39:03'),
(210, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:39:44', '2022-08-15 01:39:44'),
(211, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:40:45', '2022-08-15 01:40:45'),
(212, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:41:12', '2022-08-15 01:41:12'),
(213, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:41:37', '2022-08-15 01:41:37'),
(214, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:42:05', '2022-08-15 01:42:05'),
(215, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:42:40', '2022-08-15 01:42:40'),
(216, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:44:12', '2022-08-15 01:44:12'),
(217, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:44:24', '2022-08-15 01:44:24'),
(218, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:44:33', '2022-08-15 01:44:33'),
(219, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:44:55', '2022-08-15 01:44:55'),
(220, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:46:35', '2022-08-15 01:46:35'),
(221, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:48:47', '2022-08-15 01:48:47'),
(222, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:50:50', '2022-08-15 01:50:50'),
(223, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:51:41', '2022-08-15 01:51:41'),
(224, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:53:00', '2022-08-15 01:53:00'),
(225, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:54:04', '2022-08-15 01:54:04'),
(226, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:54:20', '2022-08-15 01:54:20'),
(227, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:54:37', '2022-08-15 01:54:37'),
(228, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:54:54', '2022-08-15 01:54:54'),
(229, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:55:14', '2022-08-15 01:55:14'),
(230, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:55:22', '2022-08-15 01:55:22'),
(231, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:55:36', '2022-08-15 01:55:36'),
(232, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:55:46', '2022-08-15 01:55:46'),
(233, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:55:51', '2022-08-15 01:55:51'),
(234, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:56:20', '2022-08-15 01:56:20'),
(235, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:56:58', '2022-08-15 01:56:58'),
(236, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:57:24', '2022-08-15 01:57:24'),
(237, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:58:31', '2022-08-15 01:58:31'),
(238, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 01:59:21', '2022-08-15 01:59:21'),
(239, 2, 'sample-article-post', 'http://site.test/temancms/public/story/sample-article-post', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 01:59:24', '2022-08-15 01:59:24'),
(240, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:00:09', '2022-08-15 02:00:09'),
(241, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:01:07', '2022-08-15 02:01:07'),
(242, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:01:21', '2022-08-15 02:01:21'),
(243, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:01:52', '2022-08-15 02:01:52'),
(244, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:02:14', '2022-08-15 02:02:14'),
(245, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:02:27', '2022-08-15 02:02:27'),
(246, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:02:29', '2022-08-15 02:02:29'),
(247, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:02:34', '2022-08-15 02:02:34'),
(248, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:04:19', '2022-08-15 02:04:19'),
(249, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:04:41', '2022-08-15 02:04:41'),
(250, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:04:53', '2022-08-15 02:04:53'),
(251, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:04:58', '2022-08-15 02:04:58'),
(252, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:05:28', '2022-08-15 02:05:28'),
(253, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:06:36', '2022-08-15 02:06:36'),
(254, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:07:19', '2022-08-15 02:07:19'),
(255, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:08:10', '2022-08-15 02:08:10'),
(256, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:08:38', '2022-08-15 02:08:38'),
(257, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:08:52', '2022-08-15 02:08:52'),
(258, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:10:05', '2022-08-15 02:10:05'),
(259, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:10:18', '2022-08-15 02:10:18'),
(260, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:11:04', '2022-08-15 02:11:04'),
(261, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:12:06', '2022-08-15 02:12:06'),
(262, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:12:20', '2022-08-15 02:12:20'),
(263, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:12:45', '2022-08-15 02:12:45'),
(264, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:13:14', '2022-08-15 02:13:14'),
(265, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:13:21', '2022-08-15 02:13:21'),
(266, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:14:24', '2022-08-15 02:14:24'),
(267, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:14:37', '2022-08-15 02:14:37'),
(268, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:16:01', '2022-08-15 02:16:01'),
(269, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:16:22', '2022-08-15 02:16:22'),
(270, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:16:32', '2022-08-15 02:16:32'),
(271, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:16:52', '2022-08-15 02:16:52'),
(272, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:17:05', '2022-08-15 02:17:05'),
(273, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:17:24', '2022-08-15 02:17:24'),
(274, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:17:37', '2022-08-15 02:17:37'),
(275, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:18:35', '2022-08-15 02:18:35'),
(276, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:19:32', '2022-08-15 02:19:32'),
(277, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:19:45', '2022-08-15 02:19:45'),
(278, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:19:54', '2022-08-15 02:19:54'),
(279, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:20:11', '2022-08-15 02:20:11'),
(280, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:20:18', '2022-08-15 02:20:18'),
(281, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:21:20', '2022-08-15 02:21:20'),
(282, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:21:26', '2022-08-15 02:21:26'),
(283, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 02:21:30', '2022-08-15 02:21:30'),
(284, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 02:21:33', '2022-08-15 02:21:33'),
(285, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:21:35', '2022-08-15 02:21:35'),
(286, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:22:42', '2022-08-15 02:22:42'),
(287, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:22:51', '2022-08-15 02:22:51'),
(288, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:23:48', '2022-08-15 02:23:48'),
(289, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:24:01', '2022-08-15 02:24:01'),
(290, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:24:33', '2022-08-15 02:24:33');
INSERT INTO `visitor_trackers` (`id`, `page_type`, `slug`, `url`, `source_url`, `ip`, `agent_browser`, `date`, `created_at`, `updated_at`) VALUES
(291, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:24:42', '2022-08-15 02:24:42'),
(292, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:25:12', '2022-08-15 02:25:12'),
(293, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:25:40', '2022-08-15 02:25:40'),
(294, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:25:54', '2022-08-15 02:25:54'),
(295, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:26:08', '2022-08-15 02:26:08'),
(296, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:27:18', '2022-08-15 02:27:18'),
(297, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:27:38', '2022-08-15 02:27:38'),
(298, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:28:09', '2022-08-15 02:28:09'),
(299, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:29:29', '2022-08-15 02:29:29'),
(300, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:30:46', '2022-08-15 02:30:46'),
(301, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:31:02', '2022-08-15 02:31:02'),
(302, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:31:33', '2022-08-15 02:31:33'),
(303, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:31:40', '2022-08-15 02:31:40'),
(304, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:31:55', '2022-08-15 02:31:55'),
(305, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:32:14', '2022-08-15 02:32:14'),
(306, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:33:05', '2022-08-15 02:33:05'),
(307, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:33:20', '2022-08-15 02:33:20'),
(308, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:36:33', '2022-08-15 02:36:33'),
(309, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:37:42', '2022-08-15 02:37:42'),
(310, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:38:09', '2022-08-15 02:38:09'),
(311, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:38:29', '2022-08-15 02:38:29'),
(312, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:38:44', '2022-08-15 02:38:44'),
(313, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:39:35', '2022-08-15 02:39:35'),
(314, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:39:59', '2022-08-15 02:39:59'),
(315, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:40:11', '2022-08-15 02:40:11'),
(316, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:40:26', '2022-08-15 02:40:26'),
(317, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:40:31', '2022-08-15 02:40:31'),
(318, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:40:39', '2022-08-15 02:40:39'),
(319, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:42:37', '2022-08-15 02:42:37'),
(320, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:43:17', '2022-08-15 02:43:17'),
(321, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:43:29', '2022-08-15 02:43:29'),
(322, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:43:38', '2022-08-15 02:43:38'),
(323, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:43:44', '2022-08-15 02:43:44'),
(324, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:44:14', '2022-08-15 02:44:14'),
(325, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:44:33', '2022-08-15 02:44:33'),
(326, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:45:02', '2022-08-15 02:45:02'),
(327, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:45:41', '2022-08-15 02:45:41'),
(328, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:46:39', '2022-08-15 02:46:39'),
(329, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:48:38', '2022-08-15 02:48:38'),
(330, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:49:07', '2022-08-15 02:49:07'),
(331, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:49:15', '2022-08-15 02:49:15'),
(332, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:49:45', '2022-08-15 02:49:45'),
(333, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:50:15', '2022-08-15 02:50:15'),
(334, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:50:26', '2022-08-15 02:50:26'),
(335, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:51:36', '2022-08-15 02:51:36'),
(336, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:52:38', '2022-08-15 02:52:38'),
(337, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:52:54', '2022-08-15 02:52:54'),
(338, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:53:30', '2022-08-15 02:53:30'),
(339, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:53:48', '2022-08-15 02:53:48'),
(340, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:54:10', '2022-08-15 02:54:10'),
(341, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:54:24', '2022-08-15 02:54:24'),
(342, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:54:59', '2022-08-15 02:54:59'),
(343, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:55:41', '2022-08-15 02:55:41'),
(344, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:56:06', '2022-08-15 02:56:06'),
(345, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:56:18', '2022-08-15 02:56:18'),
(346, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:56:25', '2022-08-15 02:56:25'),
(347, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:56:47', '2022-08-15 02:56:47'),
(348, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:57:15', '2022-08-15 02:57:15'),
(349, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:57:32', '2022-08-15 02:57:32'),
(350, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:57:45', '2022-08-15 02:57:45'),
(351, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:58:06', '2022-08-15 02:58:06'),
(352, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:58:16', '2022-08-15 02:58:16'),
(353, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:58:23', '2022-08-15 02:58:23'),
(354, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:58:42', '2022-08-15 02:58:42'),
(355, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 02:59:22', '2022-08-15 02:59:22'),
(356, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:00:27', '2022-08-15 03:00:27'),
(357, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:00:32', '2022-08-15 03:00:32'),
(358, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:01:07', '2022-08-15 03:01:07'),
(359, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:02:38', '2022-08-15 03:02:38'),
(360, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:03:28', '2022-08-15 03:03:28'),
(361, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:04:08', '2022-08-15 03:04:08'),
(362, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:04:16', '2022-08-15 03:04:16'),
(363, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:04:54', '2022-08-15 03:04:54'),
(364, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:05:04', '2022-08-15 03:05:04'),
(365, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:05:27', '2022-08-15 03:05:27'),
(366, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:06:03', '2022-08-15 03:06:03'),
(367, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:06:08', '2022-08-15 03:06:08'),
(368, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:06:30', '2022-08-15 03:06:30'),
(369, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:07:05', '2022-08-15 03:07:05'),
(370, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:07:49', '2022-08-15 03:07:49'),
(371, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:08:11', '2022-08-15 03:08:11'),
(372, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:09:23', '2022-08-15 03:09:23'),
(373, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:09:38', '2022-08-15 03:09:38'),
(374, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:09:50', '2022-08-15 03:09:50'),
(375, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:10:15', '2022-08-15 03:10:15'),
(376, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:10:24', '2022-08-15 03:10:24'),
(377, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 03:10:39', '2022-08-15 03:10:39'),
(378, 3, 'about-us', 'http://site.test/temancms/public/page/about-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 03:10:40', '2022-08-15 03:10:40'),
(379, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/page/about-us', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 03:10:41', '2022-08-15 03:10:41'),
(380, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:10:46', '2022-08-15 03:10:46'),
(381, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:26:34', '2022-08-15 03:26:34'),
(382, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:28:07', '2022-08-15 03:28:07'),
(383, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:28:52', '2022-08-15 03:28:52'),
(384, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:29:21', '2022-08-15 03:29:21'),
(385, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:29:37', '2022-08-15 03:29:37'),
(386, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:29:44', '2022-08-15 03:29:44'),
(387, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:29:50', '2022-08-15 03:29:50'),
(388, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:29:55', '2022-08-15 03:29:55'),
(389, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:30:06', '2022-08-15 03:30:06'),
(390, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:30:26', '2022-08-15 03:30:26'),
(391, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:31:08', '2022-08-15 03:31:08'),
(392, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:31:14', '2022-08-15 03:31:14'),
(393, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:31:38', '2022-08-15 03:31:38'),
(394, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:31:51', '2022-08-15 03:31:51'),
(395, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:32:08', '2022-08-15 03:32:08'),
(396, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:32:19', '2022-08-15 03:32:19'),
(397, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:32:32', '2022-08-15 03:32:32'),
(398, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:32:49', '2022-08-15 03:32:49'),
(399, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:33:04', '2022-08-15 03:33:04'),
(400, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:34:23', '2022-08-15 03:34:23'),
(401, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:34:49', '2022-08-15 03:34:49'),
(402, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:35:05', '2022-08-15 03:35:05'),
(403, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:36:21', '2022-08-15 03:36:21'),
(404, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:38:08', '2022-08-15 03:38:08'),
(405, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:38:25', '2022-08-15 03:38:25'),
(406, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:38:51', '2022-08-15 03:38:51'),
(407, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:39:10', '2022-08-15 03:39:10'),
(408, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:39:21', '2022-08-15 03:39:21'),
(409, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:40:15', '2022-08-15 03:40:15'),
(410, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:40:41', '2022-08-15 03:40:41'),
(411, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:41:02', '2022-08-15 03:41:02'),
(412, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:42:27', '2022-08-15 03:42:27'),
(413, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:43:31', '2022-08-15 03:43:31'),
(414, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:43:40', '2022-08-15 03:43:40'),
(415, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:44:06', '2022-08-15 03:44:06'),
(416, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:45:20', '2022-08-15 03:45:20'),
(417, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:45:42', '2022-08-15 03:45:42'),
(418, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:46:08', '2022-08-15 03:46:08'),
(419, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:46:18', '2022-08-15 03:46:18'),
(420, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:46:45', '2022-08-15 03:46:45'),
(421, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:46:53', '2022-08-15 03:46:53'),
(422, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:47:18', '2022-08-15 03:47:18'),
(423, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:47:28', '2022-08-15 03:47:28'),
(424, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:47:53', '2022-08-15 03:47:53'),
(425, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:48:23', '2022-08-15 03:48:23'),
(426, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:48:43', '2022-08-15 03:48:43'),
(427, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:50:17', '2022-08-15 03:50:17'),
(428, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:50:40', '2022-08-15 03:50:40'),
(429, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:50:58', '2022-08-15 03:50:58'),
(430, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:51:16', '2022-08-15 03:51:16'),
(431, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:51:54', '2022-08-15 03:51:54'),
(432, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:52:23', '2022-08-15 03:52:23'),
(433, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:52:42', '2022-08-15 03:52:42'),
(434, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:52:56', '2022-08-15 03:52:56'),
(435, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:53:05', '2022-08-15 03:53:05'),
(436, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:54:07', '2022-08-15 03:54:07'),
(437, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:56:19', '2022-08-15 03:56:19'),
(438, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:57:18', '2022-08-15 03:57:18'),
(439, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:57:24', '2022-08-15 03:57:24'),
(440, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:57:57', '2022-08-15 03:57:57'),
(441, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:58:04', '2022-08-15 03:58:04'),
(442, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 03:58:26', '2022-08-15 03:58:26'),
(443, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:06:56', '2022-08-15 05:06:56'),
(444, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:07:53', '2022-08-15 05:07:53'),
(445, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:08:04', '2022-08-15 05:08:04'),
(446, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:08:28', '2022-08-15 05:08:28'),
(447, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:08:46', '2022-08-15 05:08:46'),
(448, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:08:53', '2022-08-15 05:08:53'),
(449, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:09:21', '2022-08-15 05:09:21'),
(450, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:09:38', '2022-08-15 05:09:38'),
(451, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:09:53', '2022-08-15 05:09:53'),
(452, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:10:04', '2022-08-15 05:10:04'),
(453, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:10:11', '2022-08-15 05:10:11'),
(454, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:10:19', '2022-08-15 05:10:19'),
(455, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:10:54', '2022-08-15 05:10:54'),
(456, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:11:33', '2022-08-15 05:11:33'),
(457, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:11:51', '2022-08-15 05:11:51'),
(458, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:12:03', '2022-08-15 05:12:03'),
(459, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:14:06', '2022-08-15 05:14:06'),
(460, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:14:09', '2022-08-15 05:14:09'),
(461, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:14:18', '2022-08-15 05:14:18'),
(462, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:14:24', '2022-08-15 05:14:24'),
(463, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:14:27', '2022-08-15 05:14:27'),
(464, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:15:16', '2022-08-15 05:15:16'),
(465, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:15:18', '2022-08-15 05:15:18'),
(466, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:15:47', '2022-08-15 05:15:47'),
(467, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:16:25', '2022-08-15 05:16:25'),
(468, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:16:54', '2022-08-15 05:16:54'),
(469, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:17:50', '2022-08-15 05:17:50'),
(470, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:18:16', '2022-08-15 05:18:16'),
(471, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:18:21', '2022-08-15 05:18:21'),
(472, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:19:00', '2022-08-15 05:19:00'),
(473, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:19:29', '2022-08-15 05:19:29'),
(474, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:20:08', '2022-08-15 05:20:08'),
(475, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:20:23', '2022-08-15 05:20:23'),
(476, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:20:36', '2022-08-15 05:20:36'),
(477, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:20:59', '2022-08-15 05:20:59'),
(478, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:21:08', '2022-08-15 05:21:08'),
(479, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:21:16', '2022-08-15 05:21:16'),
(480, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:21:35', '2022-08-15 05:21:35'),
(481, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:22:03', '2022-08-15 05:22:03'),
(482, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:22:23', '2022-08-15 05:22:23'),
(483, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:22:31', '2022-08-15 05:22:31'),
(484, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:22:54', '2022-08-15 05:22:54'),
(485, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:24:17', '2022-08-15 05:24:17'),
(486, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:24:23', '2022-08-15 05:24:23'),
(487, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:24:41', '2022-08-15 05:24:41'),
(488, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:26:01', '2022-08-15 05:26:01'),
(489, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:26:05', '2022-08-15 05:26:05'),
(490, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:27:02', '2022-08-15 05:27:02'),
(491, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:27:16', '2022-08-15 05:27:16'),
(492, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:28:21', '2022-08-15 05:28:21'),
(493, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:29:05', '2022-08-15 05:29:05'),
(494, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:29:29', '2022-08-15 05:29:29'),
(495, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:29:50', '2022-08-15 05:29:50'),
(496, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:30:03', '2022-08-15 05:30:03'),
(497, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:30:44', '2022-08-15 05:30:44'),
(498, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:30:51', '2022-08-15 05:30:51'),
(499, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:31:06', '2022-08-15 05:31:06'),
(500, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:31:26', '2022-08-15 05:31:26'),
(501, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:31:55', '2022-08-15 05:31:55'),
(502, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:32:02', '2022-08-15 05:32:02'),
(503, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:32:44', '2022-08-15 05:32:44'),
(504, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:35:38', '2022-08-15 05:35:38'),
(505, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:35:47', '2022-08-15 05:35:47'),
(506, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:36:44', '2022-08-15 05:36:44'),
(507, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:36:52', '2022-08-15 05:36:52'),
(508, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:37:01', '2022-08-15 05:37:01'),
(509, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:37:50', '2022-08-15 05:37:50'),
(510, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:38:10', '2022-08-15 05:38:10'),
(511, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:39:46', '2022-08-15 05:39:46'),
(512, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:40:14', '2022-08-15 05:40:14'),
(513, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:40:22', '2022-08-15 05:40:22'),
(514, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:41:17', '2022-08-15 05:41:17'),
(515, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:41:46', '2022-08-15 05:41:46'),
(516, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:42:05', '2022-08-15 05:42:05'),
(517, 2, 'aktivitas-padat-vincent-dan-ditto-unggah-konten-“jungkir-balik”', 'http://site.test/temancms/public/story/aktivitas-padat-vincent-dan-ditto-unggah-konten-%E2%80%9Cjungkir-balik%E2%80%9D', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '127.0.0.1', 'Google Chrome', '2022-08-15', '2022-08-15 05:42:18', '2022-08-15 05:42:18'),
(518, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:42:35', '2022-08-15 05:42:35'),
(519, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:42:35', '2022-08-15 05:42:35'),
(520, 8, NULL, 'http://site.test/temancms/public/date/2022-08-15', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:44:00', '2022-08-15 05:44:00'),
(521, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:44:57', '2022-08-15 05:44:57'),
(522, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:46:05', '2022-08-15 05:46:05'),
(523, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:46:08', '2022-08-15 05:46:08'),
(524, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:48:29', '2022-08-15 05:48:29'),
(525, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:49:05', '2022-08-15 05:49:05'),
(526, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:49:22', '2022-08-15 05:49:22'),
(527, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:49:35', '2022-08-15 05:49:35'),
(528, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:49:51', '2022-08-15 05:49:51'),
(529, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:50:00', '2022-08-15 05:50:00'),
(530, 5, NULL, 'http://site.test/temancms/public/category/world', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:50:27', '2022-08-15 05:50:27'),
(531, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 05:50:57', '2022-08-15 05:50:57'),
(532, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 06:59:41', '2022-08-15 06:59:41'),
(533, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:01:08', '2022-08-15 07:01:08'),
(534, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:01:25', '2022-08-15 07:01:25'),
(535, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:01:28', '2022-08-15 07:01:28'),
(536, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:01:36', '2022-08-15 07:01:36'),
(537, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:02:37', '2022-08-15 07:02:37'),
(538, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:03:28', '2022-08-15 07:03:28'),
(539, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:04:31', '2022-08-15 07:04:31'),
(540, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:05:05', '2022-08-15 07:05:05'),
(541, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:06:48', '2022-08-15 07:06:48'),
(542, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:07:06', '2022-08-15 07:07:06'),
(543, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:08:13', '2022-08-15 07:08:13'),
(544, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:08:35', '2022-08-15 07:08:35'),
(545, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:08:42', '2022-08-15 07:08:42'),
(546, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:08:47', '2022-08-15 07:08:47'),
(547, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:08:56', '2022-08-15 07:08:56'),
(548, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:09:28', '2022-08-15 07:09:28'),
(549, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:09:54', '2022-08-15 07:09:54'),
(550, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:10:36', '2022-08-15 07:10:36'),
(551, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:11:15', '2022-08-15 07:11:15'),
(552, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:11:29', '2022-08-15 07:11:29'),
(553, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:11:40', '2022-08-15 07:11:40'),
(554, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:11:59', '2022-08-15 07:11:59'),
(555, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:12:14', '2022-08-15 07:12:14'),
(556, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:12:25', '2022-08-15 07:12:25');
INSERT INTO `visitor_trackers` (`id`, `page_type`, `slug`, `url`, `source_url`, `ip`, `agent_browser`, `date`, `created_at`, `updated_at`) VALUES
(557, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:12:35', '2022-08-15 07:12:35'),
(558, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:12:47', '2022-08-15 07:12:47'),
(559, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:12:56', '2022-08-15 07:12:56'),
(560, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:13:13', '2022-08-15 07:13:13'),
(561, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:13:24', '2022-08-15 07:13:24'),
(562, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:13:32', '2022-08-15 07:13:32'),
(563, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:14:05', '2022-08-15 07:14:05'),
(564, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:14:11', '2022-08-15 07:14:11'),
(565, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:14:21', '2022-08-15 07:14:21'),
(566, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:14:35', '2022-08-15 07:14:35'),
(567, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:15:08', '2022-08-15 07:15:08'),
(568, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:15:38', '2022-08-15 07:15:38'),
(569, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/category/world', '127.0.0.1', 'Google Chrome', NULL, '2022-08-15 07:15:45', '2022-08-15 07:15:45'),
(570, 1, NULL, 'http://site.test/news', 'http://site.test/news', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 05:14:11', '2022-08-18 05:14:11'),
(571, 1, NULL, 'http://site.test/news/public', 'http://site.test/news/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 05:14:11', '2022-08-18 05:14:11'),
(572, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 05:15:14', '2022-08-18 05:15:14'),
(573, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 05:15:47', '2022-08-18 05:15:47'),
(574, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 06:54:32', '2022-08-18 06:54:32'),
(575, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 06:54:54', '2022-08-18 06:54:54'),
(576, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/appearance/menu-item', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 08:28:42', '2022-08-18 08:28:42'),
(577, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/appearance/menu-item', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 08:28:42', '2022-08-18 08:28:42'),
(578, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:28:52', '2022-08-18 08:28:52'),
(579, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:29:00', '2022-08-18 08:29:00'),
(580, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:29:04', '2022-08-18 08:29:04'),
(581, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 08:29:07', '2022-08-18 08:29:07'),
(582, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 08:30:59', '2022-08-18 08:30:59'),
(583, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 08:31:59', '2022-08-18 08:31:59'),
(584, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:32:07', '2022-08-18 08:32:07'),
(585, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:32:55', '2022-08-18 08:32:55'),
(586, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:32:58', '2022-08-18 08:32:58'),
(587, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:33:17', '2022-08-18 08:33:17'),
(588, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:33:18', '2022-08-18 08:33:18'),
(589, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Apple Safari', '2022-08-18', '2022-08-18 08:33:26', '2022-08-18 08:33:26'),
(590, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:34:09', '2022-08-18 08:34:09'),
(591, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:34:14', '2022-08-18 08:34:14'),
(592, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:34:14', '2022-08-18 08:34:14'),
(593, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 08:59:50', '2022-08-18 08:59:50'),
(594, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 08:59:56', '2022-08-18 08:59:56'),
(595, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:00:09', '2022-08-18 09:00:09'),
(596, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:00:19', '2022-08-18 09:00:19'),
(597, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/post/edit/article/7', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:06:16', '2022-08-18 09:06:16'),
(598, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:06:26', '2022-08-18 09:06:26'),
(599, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:06:29', '2022-08-18 09:06:29'),
(600, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:06:32', '2022-08-18 09:06:32'),
(601, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:06:34', '2022-08-18 09:06:34'),
(602, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:06:39', '2022-08-18 09:06:39'),
(603, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:06:44', '2022-08-18 09:06:44'),
(604, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:07:57', '2022-08-18 09:07:57'),
(605, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:08:02', '2022-08-18 09:08:02'),
(606, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:08:05', '2022-08-18 09:08:05'),
(607, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:14:44', '2022-08-18 09:14:44'),
(608, 5, NULL, 'http://site.test/temancms/category/world', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:14:46', '2022-08-18 09:14:46'),
(609, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/category/world', '127.0.0.1', 'Google Chrome', '2022-08-18', '2022-08-18 09:14:49', '2022-08-18 09:14:49'),
(610, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-18 09:14:53', '2022-08-18 09:14:53'),
(611, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 01:25:16', '2022-08-22 01:25:16'),
(612, 2, 'test', 'http://site.test/temancms/public/story/test', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 02:33:22', '2022-08-22 02:33:22'),
(613, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:33:29', '2022-08-22 02:33:29'),
(614, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:42:55', '2022-08-22 02:42:55'),
(615, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/post', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:43:21', '2022-08-22 02:43:21'),
(616, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:43:27', '2022-08-22 02:43:27'),
(617, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:44:28', '2022-08-22 02:44:28'),
(618, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:45:03', '2022-08-22 02:45:03'),
(619, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:45:14', '2022-08-22 02:45:14'),
(620, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:45:32', '2022-08-22 02:45:32'),
(621, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:47:18', '2022-08-22 02:47:18'),
(622, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 02:47:22', '2022-08-22 02:47:22'),
(623, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:47:24', '2022-08-22 02:47:24'),
(624, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:48:27', '2022-08-22 02:48:27'),
(625, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:48:30', '2022-08-22 02:48:30'),
(626, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 02:48:37', '2022-08-22 02:48:37'),
(627, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:50:36', '2022-08-22 02:50:36'),
(628, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:50:45', '2022-08-22 02:50:45'),
(629, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:51:51', '2022-08-22 02:51:51'),
(630, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 02:51:57', '2022-08-22 02:51:57'),
(631, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:52:15', '2022-08-22 02:52:15'),
(632, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:52:27', '2022-08-22 02:52:27'),
(633, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:52:49', '2022-08-22 02:52:49'),
(634, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:53:03', '2022-08-22 02:53:03'),
(635, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:53:14', '2022-08-22 02:53:14'),
(636, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:53:19', '2022-08-22 02:53:19'),
(637, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:53:38', '2022-08-22 02:53:38'),
(638, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:53:54', '2022-08-22 02:53:54'),
(639, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:53:59', '2022-08-22 02:53:59'),
(640, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:54:06', '2022-08-22 02:54:06'),
(641, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:54:14', '2022-08-22 02:54:14'),
(642, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:54:27', '2022-08-22 02:54:27'),
(643, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:54:39', '2022-08-22 02:54:39'),
(644, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:54:58', '2022-08-22 02:54:58'),
(645, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:55:57', '2022-08-22 02:55:57'),
(646, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 02:56:01', '2022-08-22 02:56:01'),
(647, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:56:10', '2022-08-22 02:56:10'),
(648, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:56:27', '2022-08-22 02:56:27'),
(649, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:56:39', '2022-08-22 02:56:39'),
(650, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:56:50', '2022-08-22 02:56:50'),
(651, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:56:58', '2022-08-22 02:56:58'),
(652, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:57:49', '2022-08-22 02:57:49'),
(653, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:57:54', '2022-08-22 02:57:54'),
(654, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:58:15', '2022-08-22 02:58:15'),
(655, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:58:32', '2022-08-22 02:58:32'),
(656, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:59:17', '2022-08-22 02:59:17'),
(657, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:59:24', '2022-08-22 02:59:24'),
(658, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:59:35', '2022-08-22 02:59:35'),
(659, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:59:43', '2022-08-22 02:59:43'),
(660, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 02:59:59', '2022-08-22 02:59:59'),
(661, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 03:00:23', '2022-08-22 03:00:23'),
(662, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 05:09:39', '2022-08-22 05:09:39'),
(663, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 05:09:39', '2022-08-22 05:09:39'),
(664, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:10:44', '2022-08-22 05:10:44'),
(665, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:11:32', '2022-08-22 05:11:32'),
(666, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:13:11', '2022-08-22 05:13:11'),
(667, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:13:19', '2022-08-22 05:13:19'),
(668, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:13:21', '2022-08-22 05:13:21'),
(669, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:13:27', '2022-08-22 05:13:27'),
(670, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-22 05:13:33', '2022-08-22 05:13:33'),
(671, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-22', '2022-08-22 05:13:48', '2022-08-22 05:13:48'),
(672, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:38:39', '2022-08-23 00:38:39'),
(673, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 00:39:04', '2022-08-23 00:39:04'),
(674, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 00:39:13', '2022-08-23 00:39:13'),
(675, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:39:30', '2022-08-23 00:39:30'),
(676, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/category/serial', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 00:39:33', '2022-08-23 00:39:33'),
(677, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:40:46', '2022-08-23 00:40:46'),
(678, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:41:33', '2022-08-23 00:41:33'),
(679, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:42:55', '2022-08-23 00:42:55'),
(680, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:43:08', '2022-08-23 00:43:08'),
(681, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:45:10', '2022-08-23 00:45:10'),
(682, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:45:54', '2022-08-23 00:45:54'),
(683, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:46:09', '2022-08-23 00:46:09'),
(684, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:46:53', '2022-08-23 00:46:53'),
(685, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:47:30', '2022-08-23 00:47:30'),
(686, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:48:06', '2022-08-23 00:48:06'),
(687, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:48:08', '2022-08-23 00:48:08'),
(688, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:48:09', '2022-08-23 00:48:09'),
(689, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Apple Safari', NULL, '2022-08-23 00:48:21', '2022-08-23 00:48:21'),
(690, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:48:46', '2022-08-23 00:48:46'),
(691, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:48:56', '2022-08-23 00:48:56'),
(692, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:49:03', '2022-08-23 00:49:03'),
(693, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:49:32', '2022-08-23 00:49:32'),
(694, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:49:59', '2022-08-23 00:49:59'),
(695, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:50:13', '2022-08-23 00:50:13'),
(696, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:50:27', '2022-08-23 00:50:27'),
(697, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:50:58', '2022-08-23 00:50:58'),
(698, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:51:19', '2022-08-23 00:51:19'),
(699, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:51:40', '2022-08-23 00:51:40'),
(700, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:51:56', '2022-08-23 00:51:56'),
(701, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:52:32', '2022-08-23 00:52:32'),
(702, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:52:57', '2022-08-23 00:52:57'),
(703, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:53:19', '2022-08-23 00:53:19'),
(704, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:54:02', '2022-08-23 00:54:02'),
(705, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/post/edit/article/5', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:55:41', '2022-08-23 00:55:41'),
(706, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:55:44', '2022-08-23 00:55:44'),
(707, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:56:23', '2022-08-23 00:56:23'),
(708, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:56:59', '2022-08-23 00:56:59'),
(709, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:57:19', '2022-08-23 00:57:19'),
(710, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:57:45', '2022-08-23 00:57:45'),
(711, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:59:08', '2022-08-23 00:59:08'),
(712, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 00:59:11', '2022-08-23 00:59:11'),
(713, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 00:59:40', '2022-08-23 00:59:40'),
(714, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 01:01:19', '2022-08-23 01:01:19'),
(715, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:02:44', '2022-08-23 01:02:44'),
(716, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:17:56', '2022-08-23 01:17:56'),
(717, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/category/serial', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:18:01', '2022-08-23 01:18:01'),
(718, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/search?', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:32:38', '2022-08-23 01:32:38'),
(719, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:32:43', '2022-08-23 01:32:43'),
(720, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:32:47', '2022-08-23 01:32:47'),
(721, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:36:14', '2022-08-23 01:36:14'),
(722, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:37:05', '2022-08-23 01:37:05'),
(723, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 01:54:51', '2022-08-23 01:54:51'),
(724, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/dashboard', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:06:22', '2022-08-23 02:06:22'),
(725, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:07:10', '2022-08-23 02:07:10'),
(726, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:19:36', '2022-08-23 02:19:36'),
(727, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/post/create/article', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:23:26', '2022-08-23 02:23:26'),
(728, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:23:39', '2022-08-23 02:23:39'),
(729, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:19', '2022-08-23 02:24:19'),
(730, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:20', '2022-08-23 02:24:20'),
(731, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:20', '2022-08-23 02:24:20'),
(732, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:24:25', '2022-08-23 02:24:25'),
(733, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:28', '2022-08-23 02:24:28'),
(734, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:31', '2022-08-23 02:24:31'),
(735, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:35', '2022-08-23 02:24:35'),
(736, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:35', '2022-08-23 02:24:35'),
(737, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:24:37', '2022-08-23 02:24:37'),
(738, 5, NULL, 'http://site.test/temancms/category/serial', 'http://site.test/temancms/page/contact-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:24:37', '2022-08-23 02:24:37'),
(739, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/category/serial', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:24:39', '2022-08-23 02:24:39'),
(740, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:44', '2022-08-23 02:24:44'),
(741, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:24:47', '2022-08-23 02:24:47'),
(742, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/story/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:24:50', '2022-08-23 02:24:50'),
(743, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/post/create/article', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:28:02', '2022-08-23 02:28:02'),
(744, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:28:05', '2022-08-23 02:28:05'),
(745, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:28:19', '2022-08-23 02:28:19'),
(746, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:28:22', '2022-08-23 02:28:22'),
(747, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:28:26', '2022-08-23 02:28:26'),
(748, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:28:28', '2022-08-23 02:28:28'),
(749, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:28:28', '2022-08-23 02:28:28'),
(750, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/settings-url', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:30:30', '2022-08-23 02:30:30'),
(751, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/article/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:30:33', '2022-08-23 02:30:33'),
(752, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/article/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria2', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:30:37', '2022-08-23 02:30:37'),
(753, 2, 'tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/article/tidak-benar-radiasi-ponsel-sebabkan-kematian-seorang-pria', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:30:40', '2022-08-23 02:30:40'),
(754, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/settings-url', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:31:09', '2022-08-23 02:31:09'),
(755, 2, 'test', 'http://site.test/temancms/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-23', '2022-08-23 02:31:11', '2022-08-23 02:31:11'),
(756, 5, NULL, 'http://site.test/temancms/category/reportase', 'http://site.test/temancms/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:31:15', '2022-08-23 02:31:15'),
(757, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/category/reportase', '127.0.0.1', 'Google Chrome', NULL, '2022-08-23 02:31:16', '2022-08-23 02:31:16'),
(758, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 00:38:14', '2022-08-25 00:38:14'),
(759, 3, 'contact-us', 'http://site.test/temancms/page/contact-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 00:38:20', '2022-08-25 00:38:20'),
(760, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/forgot-password', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 00:52:30', '2022-08-25 00:52:30'),
(761, 2, 'test', 'http://site.test/temancms/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 01:27:02', '2022-08-25 01:27:02'),
(762, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:13:28', '2022-08-25 03:13:28'),
(763, 3, 'contact-us', 'http://site.test/temancms/public/page/contact-us', 'http://site.test/temancms/public/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 03:13:41', '2022-08-25 03:13:41'),
(764, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:14:30', '2022-08-25 03:14:30'),
(765, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/users', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:15:03', '2022-08-25 03:15:03'),
(766, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:15:24', '2022-08-25 03:15:24'),
(767, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/users', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:15:33', '2022-08-25 03:15:33'),
(768, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:16:02', '2022-08-25 03:16:02'),
(769, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/dashboard', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 03:16:36', '2022-08-25 03:16:36'),
(770, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:17:04', '2022-08-25 03:17:04'),
(771, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:22:32', '2022-08-25 03:22:32'),
(772, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:22:55', '2022-08-25 03:22:55'),
(773, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:26:09', '2022-08-25 03:26:09'),
(774, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/dashboard', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:26:23', '2022-08-25 03:26:23'),
(775, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/dashboard', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:27:23', '2022-08-25 03:27:23'),
(776, 5, NULL, 'http://127.0.0.1:8000/category/reportase', 'http://127.0.0.1:8000/', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:27:25', '2022-08-25 03:27:25'),
(777, 5, NULL, 'http://127.0.0.1:8000/category/serial', 'http://127.0.0.1:8000/category/reportase', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:27:29', '2022-08-25 03:27:29'),
(778, 3, 'about-us', 'http://127.0.0.1:8000/page/about-us', 'http://127.0.0.1:8000/category/serial', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 03:27:31', '2022-08-25 03:27:31'),
(779, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:27:34', '2022-08-25 03:27:34'),
(780, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/setting-general', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:48:30', '2022-08-25 03:48:30'),
(781, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:48:33', '2022-08-25 03:48:33'),
(782, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/setting-general', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:49:18', '2022-08-25 03:49:18'),
(783, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/setting-general', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:50:10', '2022-08-25 03:50:10'),
(784, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:51:17', '2022-08-25 03:51:17'),
(785, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:53:35', '2022-08-25 03:53:35'),
(786, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/setting-general', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:53:48', '2022-08-25 03:53:48'),
(787, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:53:52', '2022-08-25 03:53:52'),
(788, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:54:10', '2022-08-25 03:54:10'),
(789, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:54:54', '2022-08-25 03:54:54'),
(790, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 03:55:34', '2022-08-25 03:55:34'),
(791, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:11:03', '2022-08-25 05:11:03'),
(792, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:11:25', '2022-08-25 05:11:25'),
(793, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:12:39', '2022-08-25 05:12:39'),
(794, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:13:25', '2022-08-25 05:13:25'),
(795, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:14:21', '2022-08-25 05:14:21'),
(796, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:14:53', '2022-08-25 05:14:53'),
(797, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:15:44', '2022-08-25 05:15:44'),
(798, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:16:18', '2022-08-25 05:16:18'),
(799, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:16:28', '2022-08-25 05:16:28'),
(800, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:16:42', '2022-08-25 05:16:42'),
(801, 2, 'test', 'http://site.test/temancms/story/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 05:17:12', '2022-08-25 05:17:12'),
(802, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/story/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:17:30', '2022-08-25 05:17:30'),
(803, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:18:21', '2022-08-25 05:18:21'),
(804, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:18:33', '2022-08-25 05:18:33'),
(805, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:21:19', '2022-08-25 05:21:19'),
(806, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:21:32', '2022-08-25 05:21:32'),
(807, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:21:58', '2022-08-25 05:21:58'),
(808, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:22:49', '2022-08-25 05:22:49'),
(809, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:23:39', '2022-08-25 05:23:39'),
(810, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:24:16', '2022-08-25 05:24:16'),
(811, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:26:38', '2022-08-25 05:26:38'),
(812, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:27:08', '2022-08-25 05:27:08'),
(813, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:27:49', '2022-08-25 05:27:49'),
(814, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:28:52', '2022-08-25 05:28:52'),
(815, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:29:20', '2022-08-25 05:29:20'),
(816, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:29:43', '2022-08-25 05:29:43'),
(817, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:30:46', '2022-08-25 05:30:46'),
(818, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:31:01', '2022-08-25 05:31:01'),
(819, 1, NULL, 'http://site.test/temancms/public', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:31:23', '2022-08-25 05:31:23'),
(820, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/public', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:31:43', '2022-08-25 05:31:43'),
(821, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:31:51', '2022-08-25 05:31:51'),
(822, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/setting-general', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:31:58', '2022-08-25 05:31:58'),
(823, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/setting/settings-url', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:32:16', '2022-08-25 05:32:16'),
(824, 2, 'test', 'http://site.test/temancms/article/test', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 05:32:23', '2022-08-25 05:32:23'),
(825, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/article/test', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:33:35', '2022-08-25 05:33:35'),
(826, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:34:09', '2022-08-25 05:34:09'),
(827, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:34:25', '2022-08-25 05:34:25'),
(828, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:35:29', '2022-08-25 05:35:29'),
(829, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 05:35:51', '2022-08-25 05:35:51'),
(830, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 05:41:47', '2022-08-25 05:41:47'),
(831, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 05:42:34', '2022-08-25 05:42:34'),
(832, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 05:45:33', '2022-08-25 05:45:33'),
(833, 3, 'about-us', 'http://site.test/temancms/page/about-us', 'http://site.test/temancms/', '127.0.0.1', 'Google Chrome', '2022-08-25', '2022-08-25 05:45:59', '2022-08-25 05:45:59'),
(834, 1, NULL, 'http://site.test/temancms', 'http://site.test/temancms/page/about-us', '127.0.0.1', 'Google Chrome', NULL, '2022-08-25 06:03:05', '2022-08-25 06:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `location` int(11) NOT NULL DEFAULT '1',
  `content_type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_custom` tinyint(1) NOT NULL DEFAULT '1',
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `title`, `language`, `content`, `short_code`, `order`, `location`, `content_type`, `status`, `is_custom`, `ad_id`, `poll_id`, `created_at`, `updated_at`) VALUES
(1, 'Popular Posts', 'en', NULL, 'popular_posts', 1, 1, 1, 1, 1, NULL, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(2, 'Follow Us', 'en', NULL, 'follow_us', 2, 1, 5, 1, 1, NULL, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(3, 'Newsletter', 'en', NULL, 'newletter', 3, 1, 4, 1, 1, NULL, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(4, 'Popular Posts', 'en', NULL, NULL, 1, 2, 1, 1, 1, NULL, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48'),
(5, 'Newsletter', 'en', NULL, NULL, 3, 2, 4, 1, 1, NULL, NULL, '2022-07-28 07:01:48', '2022-07-28 07:01:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_foreign` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_ad_image_id_foreign` (`ad_image_id`);

--
-- Indexes for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ad_locations_unique_name_unique` (`unique_name`),
  ADD KEY `ad_locations_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_slug_unique` (`slug`);

--
-- Indexes for table `app_intros`
--
ALTER TABLE `app_intros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crons_video_id_foreign` (`video_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flag_icons`
--
ALTER TABLE `flag_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_images_album_id_foreign` (`album_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_configs`
--
ALTER TABLE `language_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_parent_foreign` (`parent`),
  ADD KEY `menu_item_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_item_category_id_foreign` (`category_id`),
  ADD KEY `menu_item_page_id_foreign` (`page_id`),
  ADD KEY `menu_item_post_id_foreign` (`post_id`),
  ADD KEY `menu_item_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_locations_unique_name_unique` (`unique_name`),
  ADD KEY `menu_locations_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_image_id_foreign` (`image_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_options_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_results_poll_option_id_foreign` (`poll_option_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_image_id_foreign` (`image_id`),
  ADD KEY `posts_video_thumbnail_id_foreign` (`video_thumbnail_id`),
  ADD KEY `posts_video_id_foreign` (`video_id`),
  ADD KEY `posts_visibility_status_slider_language_auth_required_index` (`visibility`,`status`,`slider`,`language`,`auth_required`),
  ADD KEY `posts_featured_breaking_recommended_editor_picks_tags_index` (`featured`,`breaking`,`recommended`,`editor_picks`,`tags`),
  ADD KEY `posts_recommended_order_featured_order_id_index` (`recommended_order`,`featured_order`,`id`),
  ADD KEY `posts_post_type_video_url_type_total_hit_index` (`post_type`,`video_url_type`,`total_hit`),
  ADD KEY `posts_created_at_updated_at_index` (`created_at`,`updated_at`),
  ADD KEY `posts_user_id_category_id_index` (`user_id`,`category_id`),
  ADD KEY `posts_sub_category_id_video_thumbnail_id_index` (`sub_category_id`,`video_thumbnail_id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_answers_quiz_question_id_foreign` (`quiz_question_id`),
  ADD KEY `quiz_answers_image_id_foreign` (`image_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_questions_post_id_foreign` (`post_id`),
  ADD KEY `quiz_questions_image_id_foreign` (`image_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_results_post_id_foreign` (`post_id`),
  ADD KEY `quiz_results_image_id_foreign` (`image_id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_post_id_foreign` (`post_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rss_feeds_category_id_foreign` (`category_id`),
  ADD KEY `rss_feeds_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themes_name_index` (`name`);

--
-- Indexes for table `theme_sections`
--
ALTER TABLE `theme_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_sections_ad_id_foreign` (`ad_id`),
  ADD KEY `theme_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_image_id_foreign` (`image_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_trackers`
--
ALTER TABLE `visitor_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_poll_id_foreign` (`poll_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widgets_short_code_unique` (`short_code`),
  ADD KEY `widgets_ad_id_foreign` (`ad_id`),
  ADD KEY `widgets_poll_id_foreign` (`poll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_locations`
--
ALTER TABLE `ad_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_intros`
--
ALTER TABLE `app_intros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flag_icons`
--
ALTER TABLE `flag_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_configs`
--
ALTER TABLE `language_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_results`
--
ALTER TABLE `poll_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_sections`
--
ALTER TABLE `theme_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_trackers`
--
ALTER TABLE `visitor_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=835;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_ad_image_id_foreign` FOREIGN KEY (`ad_image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD CONSTRAINT `ad_locations_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crons`
--
ALTER TABLE `crons`
  ADD CONSTRAINT `crons_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `menu_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD CONSTRAINT `menu_locations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD CONSTRAINT `poll_results_poll_option_id_foreign` FOREIGN KEY (`poll_option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_thumbnail_id_foreign` FOREIGN KEY (`video_thumbnail_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD CONSTRAINT `quiz_answers_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_answers_quiz_question_id_foreign` FOREIGN KEY (`quiz_question_id`) REFERENCES `quiz_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_questions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_results_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `theme_sections`
--
ALTER TABLE `theme_sections`
  ADD CONSTRAINT `theme_sections_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `theme_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `widgets_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
