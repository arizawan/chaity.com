-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2015 at 09:42 AM
-- Server version: 5.5.44
-- PHP Version: 5.4.41-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chaity_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adModule`
--

CREATE TABLE IF NOT EXISTS `adModule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(105) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `adlink` varchar(500) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'gods', '{"addups":1,"addself":1,"addbelows":1,"godemode":1,"accessfinance":1,"accessfinancereport":1,"exportfinancedata":1,"modifyfinance":1,"accessusers":1,"modifyusers":1,"exportusersdata":1,"accessbusiness":1,"accessbusinessreports":1,"exportbusiness":1,"modifybusiness":1,"accessbusinessdata":1,"modifybusinessdata":1,"exportbusinessdata":1}', '2014-12-25 00:23:36', '2014-12-25 00:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `homeContent`
--

CREATE TABLE IF NOT EXISTS `homeContent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `desc` mediumtext,
  `image` varchar(500) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `homeContent`
--

INSERT INTO `homeContent` (`id`, `type`, `desc`, `image`, `position`, `updatedby`, `active`, `updated_at`, `created_at`, `title`) VALUES
(1, 'garmentProduct', 'Garments Product ', 'uploads/dbac4a2202faf62559f1d72ac9c0c58555e0985c552c4.png', 1, 9, 1, '2015-08-28 23:20:28', '2015-08-28 23:20:28', ''),
(2, 'garmentProduct', 'Garments Product ', 'uploads/3ba1f2217d2167c960124577731f0f9f55e09871d0ac2.png', 2, 9, 1, '2015-08-28 23:20:49', '2015-08-28 23:20:49', ''),
(3, 'garmentProduct', 'Garments Product ', 'uploads/30b35014aa51f6520ce94e4f3dbb300055e098810cedf.png', 3, 9, 1, '2015-08-28 23:21:05', '2015-08-28 23:21:05', ''),
(4, 'garmentProduct', 'Garments Product ', 'uploads/04663cd563d9b59940fcda67fcc0bed655e0988c75e0d.png', 4, 9, 1, '2015-08-28 23:21:16', '2015-08-28 23:21:16', ''),
(5, 'garmentProduct', 'Garments Product ', 'uploads/ad35d72c4910797108b5f2f1768d720f55e0989946683.png', 5, 9, 1, '2015-08-28 23:21:29', '2015-08-28 23:21:29', ''),
(6, 'garmentProduct', 'Garments Product ', 'uploads/88f40ba8d91633c582c6196e5728861255e098a51d8ec.png', 6, 9, 1, '2015-08-28 23:21:41', '2015-08-28 23:21:41', ''),
(7, 'UndergarmentProduct', 'Under Garments Product ', 'uploads/183f8b02c446c165bcfefa6a081f664155e098d1adb71.png', 1, 9, 1, '2015-08-28 23:22:25', '2015-08-28 23:22:25', ''),
(8, 'UndergarmentProduct', 'Under Garments Product ', 'uploads/21e6d5368fa451920874479e64499eac55e098d9e7595.png', 2, 9, 1, '2015-08-28 23:22:33', '2015-08-28 23:22:33', ''),
(9, 'UndergarmentProduct', 'Under Garments Product ', 'uploads/dc72f3844a17018b93aece66327c36c255e098e3894e9.png', 3, 9, 1, '2015-08-28 23:22:43', '2015-08-28 23:22:43', ''),
(10, 'UndergarmentProduct', 'Under Garments Product ', 'uploads/8ed036f9e27b052685e5f10d17f87c2355e098f950e2e.png', 4, 9, 1, '2015-08-28 23:23:05', '2015-08-28 23:23:05', ''),
(12, 'UndergarmentProduct', 'Under Garments Product ', 'uploads/6d118f17bdb1d2f5ffc25515e24293f655e099233504f.png', 5, 9, 1, '2015-08-28 23:23:47', '2015-08-28 23:23:47', ''),
(13, 'UndergarmentProduct', 'Under Garments Product ', 'uploads/abaa330a8d97b469d5fddd676055e8fe55e0992e6538d.png', 6, 9, 1, '2015-08-28 23:23:58', '2015-08-28 23:23:58', ''),
(14, 'majorNews', '', 'uploads/be10a278dd3117b701a18a2fac649a7155e09947642e9.png', 1, 9, 1, '2015-08-28 23:24:23', '2015-08-28 23:24:23', ''),
(15, 'majorNews', '', 'uploads/976272be92b4fc232d5617dd8350215155e0994d3920c.png', 2, 9, 1, '2015-08-28 23:24:29', '2015-08-28 23:24:29', ''),
(16, 'majorNews', '', 'uploads/fa8bdfc118e3dffe47ecac97fdfafb7d55e0995448458.png', 3, 9, 1, '2015-08-28 23:24:36', '2015-08-28 23:24:36', ''),
(17, 'majorNews', '', 'uploads/c36f53b3fe9d61a7a1c49f36e3f6bda255e09968c11c0.png', 4, 9, 1, '2015-08-28 23:24:56', '2015-08-28 23:24:56', ''),
(18, 'majorNews', '', 'uploads/41048bf95482623aa4f20fcb70fe0f9d55e099761409f.png', 5, 9, 1, '2015-08-28 23:25:10', '2015-08-28 23:25:10', ''),
(19, 'majorNews', '', 'uploads/c998fadb810ef57e6f05552e85d9846c55e0997fe6488.png', 6, 9, 1, '2015-08-28 23:25:20', '2015-08-28 23:25:20', ''),
(20, 'majorNews', '', 'uploads/68a1abd87cc3b741a37cd333a5875b5855e0998a8e271.png', 7, 9, 1, '2015-08-28 23:25:30', '2015-08-28 23:25:30', ''),
(21, 'majorNews', '', 'uploads/852075ff6272e405f3dd701006d53df955e0999109daf.png', 8, 9, 1, '2015-08-28 23:25:37', '2015-08-28 23:25:37', ''),
(22, 'majorNews', '', 'uploads/cbf572f8a0676a8702532de3a76fe1e255e09998af5b9.png', 9, 9, 1, '2015-08-28 23:25:44', '2015-08-28 23:25:44', ''),
(23, 'latestNews', 'Chaity Group has recently Launch their new website. Its a full responsive website. You can visit this site from your phone also.  Please visit all the pages for your viewing we have describe our all division and section with the images, please visit our full website. Thank you. ', '', 1, 9, 1, '2015-08-28 23:30:14', '2015-08-28 23:30:14', 'Chaity Group Launch their new website');

-- --------------------------------------------------------

--
-- Table structure for table `homeSlides`
--

CREATE TABLE IF NOT EXISTS `homeSlides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(105) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `homeSlides`
--

INSERT INTO `homeSlides` (`id`, `title`, `desc`, `image`, `position`, `updatedby`, `active`, `updated_at`, `created_at`) VALUES
(1, 'Chaity Composite', 'Chaity Composite', 'uploads/3646a32f7f265bb45bafe83087e9915855e08178c54e9.jpg', 1, 9, 1, '2015-08-28 21:42:49', '2015-08-28 21:42:49'),
(2, 'Golf Green ', 'Golf Green ', 'uploads/954cec44bbc4df9d11039107edf1801155e08369124b8.jpg', 2, 9, 1, '2015-08-28 21:51:05', '2015-08-28 21:51:05'),
(3, 'Knitting', 'Knitting', 'uploads/afa9f5232c6363dd0ecd6a2559099cba55e084622078b.jpg', 3, 9, 1, '2015-08-28 21:55:14', '2015-08-28 21:55:14'),
(4, 'Sewing', 'Sewing', 'uploads/7a05e9a870764b093659b5e420081bc455e09718110f6.jpg', 4, 9, 1, '2015-08-28 23:15:04', '2015-08-28 23:15:04'),
(5, 'Dyeing ', 'Dyeing ', 'uploads/b13b3a4305b85f9f0c09287547d7ce5855e0977a08605.jpg', 5, 9, 1, '2015-08-28 23:16:42', '2015-08-28 23:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_12_19_163951_create_videolist_table', 1),
('2014_12_23_162714_create_schedule_table', 1),
('2014_12_24_060739_create_tokens_table', 1),
('2012_12_06_225921_migration_cartalyst_sentry_install_users', 2),
('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 2),
('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 2),
('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 2),
('2014_12_26_075657_create_session_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsGal`
--

CREATE TABLE IF NOT EXISTS `newsGal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `position` varchar(3) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `updatedby` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('0dcbf7c18e5e8f4142aba0c33b4398a40a470ff3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFBnTEc3TGViclJWSDVkMjNsQWs4dUkwSDF1N2R6UVJURzUwaE9FUSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDM2NDk7czoxOiJjIjtpOjE0NDIwNDM2NDk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442043650),
('14a5f71c9c405e15fb5d8f5d758cb419d1ac8de6', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnFxekRIQmxQSjdpRWt4aFcxcUFOZ09iZGY1VFQwMlQzV1QzdWs1YSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDg5MTg7czoxOiJjIjtpOjE0NDIwNDg5MTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442048918),
('1ab393e6cc6e4f93dd586845a17807fdba6cd7ca', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOU9MUUpBVEthNHhDSDNNR3VrNm01YXExVG5QakxPbDI1THFxeFZaWCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjA1MDM3ODtzOjE6ImMiO2k6MTQ0MjA1MDM3NztzOjE6ImwiO3M6MToiMCI7fX0=', 1442050378),
('20e4a28a079ac1f4325a863c2bbfd4c303379e82', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDlsc2xiTEdzY1g4ZkJuNnhIaXRjNElMRUFPeUthQ0RRakJobTFuRCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjAzMTIxMDtzOjE6ImMiO2k6MTQ0MjAzMTIwODtzOjE6ImwiO3M6MToiMCI7fX0=', 1442031210),
('25de779fb0d5e68377d16652be952adf343acd74', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDEwdDFzVTBFRXo3UU1Ham9xQTVVenp5RTBUYkN0WW5ZNHFCaExaRyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDA0NTY7czoxOiJjIjtpOjE0NDIwNDA0NTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442040456),
('27505c83dc6eca3fb47423506c091bed2dc4ec62', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTB2ZU4xbXpQSER2YVJpTFRtd1J3bzJ2ZGM2WUpRUkxMM25RV0dncyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzMwMTg7czoxOiJjIjtpOjE0NDIwMzMwMTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442033018),
('2c86e719693f08aa42c9dbbb47e436242847f878', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHp2VzdrQnpsQ0tFZnE0b2J4UWo0ejhnTGpFZVViMXdCbTNRS1BSVSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzE1ODg7czoxOiJjIjtpOjE0NDIwMzE1ODg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442031588),
('2f10c99cf119524069218d8c958092a7ef29b6ec', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU15ckRiR3VORXIxVFlnbnBOZ3R5bmhvU0YyYUh2ZHIxemdDY0lUeSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDQ3MDM7czoxOiJjIjtpOjE0NDIwNDQ3MDM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442044703),
('36af7793fcbb476d863f731c2191fce7fa89be77', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDhYN09VRkdUU3ZoTzRuZmJDeGFCTDh4ZGRKTDIzVHo3RmZvUU5KSiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzY1MTE7czoxOiJjIjtpOjE0NDIwMzY1MTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442036511),
('41afcf93e2593e9712713ef1a744b5e20a5a6851', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGxSV3QzRkYybUpvU0ExUlJza0NSaE92cmw1c0s5Z21XVjdRR3NkbSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDEyOTE7czoxOiJjIjtpOjE0NDIwNDEyOTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442041291),
('43cc9f6b79ea45aa788aa1c218de10efdfc940a4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHBnTWNORkxzMmJlaEs2dHBuOFhGRzdFWDBxdEVVNFVhSFlZVmZGMSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDI5NTE7czoxOiJjIjtpOjE0NDIwNDI5NTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442042951),
('548dde8eaf216d4115608f7b80d98b184e2fadce', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXRXT0V6MTQ0Q1RnMXJmR1kzQXdWZzRsZG10WERhdE9ya2NFM2JnTiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzg5NzA7czoxOiJjIjtpOjE0NDIwMzg5NzA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442038970),
('5c19114a497e43cdf283a78e902632329a447d9b', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEkwRFlGNlk1NHp6NDFpSktOZ2lTUjFEZ3lpYVR1bmZaYzlFVnJaRCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDEzNjA7czoxOiJjIjtpOjE0NDIwNDEzNjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442041361),
('6379c2dcd8d8c7f8f7f0505c2adf9ce22780662d', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0Q0dnY3TnI0U2VnZ3lZWjRGdmNVajZYZjk2aUI3eHNCWWF0RmF3MiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNTAxNDI7czoxOiJjIjtpOjE0NDIwNTAxNDI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442050142),
('6449a2dccd78c439cc6c90df4cfecce2612d850e', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHRUaFhSRUg0Ymw1QndHZFJraWlpcFhlc3lIazZMcUJyUlh6cTVibyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzYwMTY7czoxOiJjIjtpOjE0NDIwMzYwMTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442036016),
('6554ac0ba76eaab501c4ffbad7113446556f53d5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXl5Zjl4TGlFbU1hcGY3bTZmMkF4Z3hBaDR6cUVlOUt2cTBRdDI4ViI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNTAxMTg7czoxOiJjIjtpOjE0NDIwNTAxMTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442050118),
('70025fc034a83e64f9632f03850ea2b4f55bc929', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUxVQmJxbHVZMjlOUFhnTGVuUkRsdHpvcWZKUHVxTVlsbklpRWdjRSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzA4NTM7czoxOiJjIjtpOjE0NDIwMzA4NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442030853),
('76e5f8218c6b822f34a3414db1d6144acb398edf', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkd5NVBjSHFMOFh4QjRsT1dsOHl4eXE1VXhtR1dCalJSbGNEYkFsNyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzA4NTA7czoxOiJjIjtpOjE0NDIwMzA4NTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442030850),
('7860d4e9955371f884b43dc5f6d5a5afe12c28d2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUJTRHo0VkEzclI1WTVmWkI1MVg4NmVaTjFHb0NpbzFWZXYwSkNCcSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDA4MjM7czoxOiJjIjtpOjE0NDIwNDA4MjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442040823),
('7aabc407daeadf60ae08575aca56a0fe11de2843', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRERQcDRyMUh1OFdqVUo4ODhiODRCbDJKaG5kdGkwNk5zSW5LYWxuayI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNTA0Nzg7czoxOiJjIjtpOjE0NDIwNTA0Nzg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442050479),
('82aed3428dbb8fd67295c1df7be3287c3c72b5f1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1ZoSUtTWllrRmZjRnJnSmdaSlJBajRnVldPZkRwUkdvS2l5NVdUUiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzY1MTM7czoxOiJjIjtpOjE0NDIwMzY1MTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442036513),
('867865498edee2d432e28add8557bfd3a2ce566f', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUdiYUVCaDZkQUpGT2lKdEt5VjBvSG03R3JnTnF3YlFSV2hqTFVGTyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDA4MTE7czoxOiJjIjtpOjE0NDIwNDA4MTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442040812),
('8ae82ffe3f9d448d9f1c6d76fc8fb78aafe05b73', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnJJMTQxYlZvQU5UOVh3Y3JwdDZXcEZZYkRYOEhvU0pMUnllZE1kVSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzE1ODY7czoxOiJjIjtpOjE0NDIwMzE1ODY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442031586),
('8d8f022218df6c7cbf729ca11a2b960cf7aa06fd', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkRZWkRra29XdWVsYmtQUU9WSkpQSktqS3g0aTNseDhCaTY1anlXciI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDA4MjA7czoxOiJjIjtpOjE0NDIwNDA4MjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442040820),
('92123fe5f8d2cd24046d1e486507e9ca211b5e71', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTROVmhIb0pjSHhyWHhTM2lkZmxkVE1kaVBYRmhwdVlvMWZ2clNOMCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjAzODgwOTtzOjE6ImMiO2k6MTQ0MjAzODc3MztzOjE6ImwiO3M6MToiMCI7fX0=', 1442038809),
('94c55dd66be1a8086a2192213fe5b1b14e96ed81', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemw2S1NUTjlsSDR3Z0ZtN3dXYmc5dGU0QlB4REZZM1EzekhZTFdvRyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDc5OTk7czoxOiJjIjtpOjE0NDIwNDc5OTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442047999),
('96d34529e876f9062f1de725680b0ca5f37670ed', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXFrSVk3M1NLTjQ1dnpOeWg2a3VZZll5S1VXR213T0NBOVVVdUtJSiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjAzOTI5NDtzOjE6ImMiO2k6MTQ0MjAzOTI5MztzOjE6ImwiO3M6MToiMCI7fX0=', 1442039294),
('9be2bce22e09914627a2a9d04d71b85415bb5a31', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGtSc3oxNzRVRnNvWWMweGVZeVk4MlltS2NTcXEwV3pXMkVBaFRRMSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDk3NDg7czoxOiJjIjtpOjE0NDIwNDk3NDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442049748),
('9c0e2fc692a25ed0b7d849c84d14bcf0f7eec4e8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3JDVmNnRVFLeGRicXNXZ0ZjTTcyOTEzVEVWeWpzdnNVdFhBN0NvRSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzc2OTU7czoxOiJjIjtpOjE0NDIwMzc2OTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442037695),
('9ebac4bc98a975a9f3912ebc65ec8e5a89c8f5a8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2NnV3FrYTNaNDRKSmZ5c1VjeTNwN0cya3phMEtUSWFWak9MOG1oWCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzE1ODk7czoxOiJjIjtpOjE0NDIwMzE1ODk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442031589),
('a1d766a5055e7c8b5a78735131bf74f064c7d9e6', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1lCQmpwbW9aUWRscTdLMWxwTGhJdEFIdWlscDFHc2hhWm1UTHZ3UyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDI5NTE7czoxOiJjIjtpOjE0NDIwNDI5NTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442042951),
('a6cd37d0ecab69c98c5e5ecc0b29851152a8cdfc', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0FCREJXejZ2Y1BGVTN1T3piYVlIM2pWalppaEhydEZVQjBLeHJHNiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzA2NzM7czoxOiJjIjtpOjE0NDIwMzA2NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442030673),
('a74b1a9ca1d25dc10e75661906150865263200ea', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0liZnVLQW9EYWFySlhnb1doTHpqNlNUeGZVSk9ZRnR5dEhsZFRVYSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDE1MDM7czoxOiJjIjtpOjE0NDIwNDE1MDM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442041503),
('aa786c003b9330aaae7d1b33b397e5b238bc338b', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekZDSE1pbkY0SXlXS0hRNHRGbnNqc05HTEg1d2FSb2NzVlNiVlFaaiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjA1MDE0NTtzOjE6ImMiO2k6MTQ0MjA0ODk5ODtzOjE6ImwiO3M6MToiMCI7fX0=', 1442050145),
('b2c23bbe4299be7e9d0ec598e7ea3de89dc3c6ed', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHlYMUROSUtkb1hkMXBhYmlkaTNYZ1lnV0pkTnFrMXFsR1dXZWhidSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjA0ODg4ODtzOjE6ImMiO2k6MTQ0MjA0ODUxOTtzOjE6ImwiO3M6MToiMCI7fX0=', 1442048888),
('b6887c28a65e4fc735ee1f8457823816fd71418e', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1F4UGUwSzRvNU9jb1Jub0dpMEs2OUV0NVgzVUVOOXFUSUFkT2tSZyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzk4OTk7czoxOiJjIjtpOjE0NDIwMzk4OTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442039899),
('b7dbc1ab96c6f9793e20d637be3ea6f35299582e', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnpzZjcxamsxVHZTR1FqZnpJVmQ3eW5VNEVNQ2ZzN3NOVktsRE9IcyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDI2NjA7czoxOiJjIjtpOjE0NDIwNDI2NjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442042660),
('c09b5ce08ba6db12156f60f3feaa62f5a8062721', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUNFbUpWSWhTQkxaVWxDd3pmNzhHWHd5RG8xY1JXQ01mWHZ5cEdFdSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDk2MjQ7czoxOiJjIjtpOjE0NDIwNDk2MjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442049624),
('cfa0a0fc351a943a82175e675e322974b93003c7', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm5hMGh1NEp2N0FDUkhEOWtuSkxiMUx2eWVFdk00VjRMSERWNWYyOSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzc4NDk7czoxOiJjIjtpOjE0NDIwMzc4NDk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442037849),
('d28b86f5b27a8210365e646187053763ab2f4d97', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMm1xMjBLcWJlUGRMUDVoOGdKSXJubnp6RVJhanVjSXJhM05NUGJOciI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDc1OTk7czoxOiJjIjtpOjE0NDIwNDc1OTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442047599),
('e3b1f9b1a38bc8c8ca7efd13dec074fa110542d0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlAzOGVVVEdsZUVyTUx6WWlYVE81MjU0UlZBM2V3SHRPQ3lWaTJKaCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ0MjAzNzkwNDtzOjE6ImMiO2k6MTQ0MjAzNzgxMTtzOjE6ImwiO3M6MToiMCI7fX0=', 1442037904),
('e403423bb153574162d364cdb3ef381f5bd92ef8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEVBbDNycWE5YUVraGxnbmJzNkhpYUZETFJsUFNiT2FPUFM3NGNNRyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzYwNjA7czoxOiJjIjtpOjE0NDIwMzYwNjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442036060),
('eab193bd9debfa0fb48cb18cf0e4b0da3514e82d', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjNMMW1PQ094NHJYY2RZelBIUHJlWGZtSjIyWUllR1ZWTEp2eU1ydCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDkyNzQ7czoxOiJjIjtpOjE0NDIwNDkyNzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442049274),
('ed43c5faffc5404df3f98ed5730f1ef2b0298d70', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmpGSkp5d0JGdUQ5ckNzeTY2bldNbmFJckJaT3BqS0FUMnNSenRnbyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwNDA0NTU7czoxOiJjIjtpOjE0NDIwNDA0NTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442040455),
('ef5086fa348534fc3a4e6b5726b27d4aff829bcf', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1NVdldHaU5jZEtBeDhYbW5HWFQwUVFlWktQQXZwWEw0Z0JzemdVQyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0NDIwMzA4NTI7czoxOiJjIjtpOjE0NDIwMzA4NTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1442030852);

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 9, '119.148.14.146', 0, 0, 0, NULL, NULL, NULL),
(2, 9, '45.118.60.240', 0, 0, 0, NULL, NULL, NULL),
(3, 9, '45.118.62.118', 0, 0, 0, NULL, NULL, NULL),
(4, 9, '118.179.136.162', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `api_token` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `expires_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `api_token`, `expires_on`, `client`, `created_at`, `updated_at`) VALUES
(1, 1, 'd1313b37a2d07dc51999beaa0246058302552911d478d4692ba739714702f880', '2015-01-25 00:34:25', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-25 00:34:25', '2014-12-25 00:34:25'),
(2, 2, '8b2cf71941bafa79a286ca638f43a42c5362c5b7aa77bdd9fe6abd01fd648442', '2015-01-25 03:37:44', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-25 03:37:44', '2014-12-25 03:37:44'),
(3, 3, 'd39664b82cb551e58e7c7c702018dbddfb32ca065450f82ef3f30c9b17bc8957', '2015-01-25 04:54:08', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-25 04:54:08', '2014-12-25 04:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(9, 'admin@chaity.com', '$2y$10$R98BsJ0b1/6E4.xlz80UB..n.qtwfs3P1M0GCJjDkUem12mVQMq4S', NULL, 1, NULL, NULL, '2015-09-07 21:08:55', '$2y$10$DK1oQPeLuQhnM66wALNe.eC4wGzILZjFWSz171W8hkwxKnWC11rjq', NULL, 'Live', 'Admin', '0000-00-00 00:00:00', '2015-09-07 21:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videolist`
--

CREATE TABLE IF NOT EXISTS `videolist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(550) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(550) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `updatedby` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `length` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
