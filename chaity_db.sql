/*
 Navicat Premium Data Transfer

 Source Server         : MAMP
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : chaity_db

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 09/12/2015 17:50:42 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `adModule`
-- ----------------------------
DROP TABLE IF EXISTS `adModule`;
CREATE TABLE `adModule` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `galleryCategory`
-- ----------------------------
DROP TABLE IF EXISTS `galleryCategory`;
CREATE TABLE `galleryCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `galleryCategory`
-- ----------------------------
BEGIN;
INSERT INTO `galleryCategory` VALUES ('1', 'None...', '1', '9', '1', '2015-09-12 16:49:40', '2015-09-12 16:49:40'), ('3', 'Knit', '1', '9', '1', '2015-09-12 16:57:47', '2015-09-12 16:57:47');
COMMIT;

-- ----------------------------
--  Table structure for `galleryImages`
-- ----------------------------
DROP TABLE IF EXISTS `galleryImages`;
CREATE TABLE `galleryImages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT '1',
  `imageurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `groups`
-- ----------------------------
BEGIN;
INSERT INTO `groups` VALUES ('1', 'gods', '{\"addups\":1,\"addself\":1,\"addbelows\":1,\"godemode\":1,\"accessfinance\":1,\"accessfinancereport\":1,\"exportfinancedata\":1,\"modifyfinance\":1,\"accessusers\":1,\"modifyusers\":1,\"exportusersdata\":1,\"accessbusiness\":1,\"accessbusinessreports\":1,\"exportbusiness\":1,\"modifybusiness\":1,\"accessbusinessdata\":1,\"modifybusinessdata\":1,\"exportbusinessdata\":1}', '2014-12-25 06:23:36', '2014-12-25 06:23:36');
COMMIT;

-- ----------------------------
--  Table structure for `homeContent`
-- ----------------------------
DROP TABLE IF EXISTS `homeContent`;
CREATE TABLE `homeContent` (
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `homeContent`
-- ----------------------------
BEGIN;
INSERT INTO `homeContent` VALUES ('1', 'garmentProduct', 'Garments Product ', 'uploads/dbac4a2202faf62559f1d72ac9c0c58555e0985c552c4.png', '1', '9', '1', '2015-08-28 23:20:28', '2015-08-28 23:20:28', ''), ('2', 'garmentProduct', 'Garments Product ', 'uploads/3ba1f2217d2167c960124577731f0f9f55e09871d0ac2.png', '2', '9', '1', '2015-08-28 23:20:49', '2015-08-28 23:20:49', ''), ('3', 'garmentProduct', 'Garments Product ', 'uploads/30b35014aa51f6520ce94e4f3dbb300055e098810cedf.png', '3', '9', '1', '2015-08-28 23:21:05', '2015-08-28 23:21:05', ''), ('4', 'garmentProduct', 'Garments Product ', 'uploads/04663cd563d9b59940fcda67fcc0bed655e0988c75e0d.png', '4', '9', '1', '2015-08-28 23:21:16', '2015-08-28 23:21:16', ''), ('5', 'garmentProduct', 'Garments Product ', 'uploads/ad35d72c4910797108b5f2f1768d720f55e0989946683.png', '5', '9', '1', '2015-08-28 23:21:29', '2015-08-28 23:21:29', ''), ('6', 'garmentProduct', 'Garments Product ', 'uploads/88f40ba8d91633c582c6196e5728861255e098a51d8ec.png', '6', '9', '1', '2015-08-28 23:21:41', '2015-08-28 23:21:41', ''), ('7', 'UndergarmentProduct', 'Under Garments Product ', 'uploads/183f8b02c446c165bcfefa6a081f664155e098d1adb71.png', '1', '9', '1', '2015-08-28 23:22:25', '2015-08-28 23:22:25', ''), ('8', 'UndergarmentProduct', 'Under Garments Product ', 'uploads/21e6d5368fa451920874479e64499eac55e098d9e7595.png', '2', '9', '1', '2015-08-28 23:22:33', '2015-08-28 23:22:33', ''), ('9', 'UndergarmentProduct', 'Under Garments Product ', 'uploads/dc72f3844a17018b93aece66327c36c255e098e3894e9.png', '3', '9', '1', '2015-08-28 23:22:43', '2015-08-28 23:22:43', ''), ('10', 'UndergarmentProduct', 'Under Garments Product ', 'uploads/8ed036f9e27b052685e5f10d17f87c2355e098f950e2e.png', '4', '9', '1', '2015-08-28 23:23:05', '2015-08-28 23:23:05', ''), ('12', 'UndergarmentProduct', 'Under Garments Product ', 'uploads/6d118f17bdb1d2f5ffc25515e24293f655e099233504f.png', '5', '9', '1', '2015-08-28 23:23:47', '2015-08-28 23:23:47', ''), ('13', 'UndergarmentProduct', 'Under Garments Product ', 'uploads/abaa330a8d97b469d5fddd676055e8fe55e0992e6538d.png', '6', '9', '1', '2015-08-28 23:23:58', '2015-08-28 23:23:58', ''), ('14', 'majorNews', '', 'uploads/be10a278dd3117b701a18a2fac649a7155e09947642e9.png', '1', '9', '1', '2015-08-28 23:24:23', '2015-08-28 23:24:23', ''), ('15', 'majorNews', '', 'uploads/976272be92b4fc232d5617dd8350215155e0994d3920c.png', '2', '9', '1', '2015-08-28 23:24:29', '2015-08-28 23:24:29', ''), ('16', 'majorNews', '', 'uploads/fa8bdfc118e3dffe47ecac97fdfafb7d55e0995448458.png', '3', '9', '1', '2015-08-28 23:24:36', '2015-08-28 23:24:36', ''), ('17', 'majorNews', '', 'uploads/c36f53b3fe9d61a7a1c49f36e3f6bda255e09968c11c0.png', '4', '9', '1', '2015-08-28 23:24:56', '2015-08-28 23:24:56', ''), ('18', 'majorNews', '', 'uploads/41048bf95482623aa4f20fcb70fe0f9d55e099761409f.png', '5', '9', '1', '2015-08-28 23:25:10', '2015-08-28 23:25:10', ''), ('19', 'majorNews', '', 'uploads/c998fadb810ef57e6f05552e85d9846c55e0997fe6488.png', '6', '9', '1', '2015-08-28 23:25:20', '2015-08-28 23:25:20', ''), ('20', 'majorNews', '', 'uploads/68a1abd87cc3b741a37cd333a5875b5855e0998a8e271.png', '7', '9', '1', '2015-08-28 23:25:30', '2015-08-28 23:25:30', ''), ('21', 'majorNews', '', 'uploads/852075ff6272e405f3dd701006d53df955e0999109daf.png', '8', '9', '1', '2015-08-28 23:25:37', '2015-08-28 23:25:37', ''), ('22', 'majorNews', '', 'uploads/cbf572f8a0676a8702532de3a76fe1e255e09998af5b9.png', '9', '9', '1', '2015-08-28 23:25:44', '2015-08-28 23:25:44', ''), ('23', 'latestNews', 'Chaity Group has recently Launch their new website. Its a full responsive website. You can visit this site from your phone also.  Please visit all the pages for your viewing we have describe our all division and section with the images, please visit our full website. Thank you. ', '', '1', '9', '1', '2015-08-28 23:30:14', '2015-08-28 23:30:14', 'Chaity Group Launch their new website');
COMMIT;

-- ----------------------------
--  Table structure for `homeSlides`
-- ----------------------------
DROP TABLE IF EXISTS `homeSlides`;
CREATE TABLE `homeSlides` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `homeSlides`
-- ----------------------------
BEGIN;
INSERT INTO `homeSlides` VALUES ('1', 'Chaity Composite', 'Chaity Composite', 'uploads/3646a32f7f265bb45bafe83087e9915855e08178c54e9.jpg', '1', '9', '1', '2015-08-28 21:42:49', '2015-08-28 21:42:49'), ('2', 'Golf Green ', 'Golf Green ', 'uploads/954cec44bbc4df9d11039107edf1801155e08369124b8.jpg', '2', '9', '1', '2015-08-28 21:51:05', '2015-08-28 21:51:05'), ('3', 'Knitting', 'Knitting', 'uploads/afa9f5232c6363dd0ecd6a2559099cba55e084622078b.jpg', '3', '9', '1', '2015-08-28 21:55:14', '2015-08-28 21:55:14'), ('4', 'Sewing', 'Sewing', 'uploads/7a05e9a870764b093659b5e420081bc455e09718110f6.jpg', '4', '9', '1', '2015-08-28 23:15:04', '2015-08-28 23:15:04'), ('5', 'Dyeing ', 'Dyeing ', 'uploads/b13b3a4305b85f9f0c09287547d7ce5855e0977a08605.jpg', '5', '9', '1', '2015-08-28 23:16:42', '2015-08-28 23:16:42');
COMMIT;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `migrations`
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2014_12_19_163951_create_videolist_table', '1'), ('2014_12_23_162714_create_schedule_table', '1'), ('2014_12_24_060739_create_tokens_table', '1'), ('2012_12_06_225921_migration_cartalyst_sentry_install_users', '2'), ('2012_12_06_225929_migration_cartalyst_sentry_install_groups', '2'), ('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', '2'), ('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', '2'), ('2014_12_26_075657_create_session_table', '3');
COMMIT;

-- ----------------------------
--  Table structure for `newsGal`
-- ----------------------------
DROP TABLE IF EXISTS `newsGal`;
CREATE TABLE `newsGal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `position` varchar(3) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `sessions`
-- ----------------------------
BEGIN;
INSERT INTO `sessions` VALUES ('7e61ab4eede36f9ccdd59513516cd37852815e27', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXpUZU1oZm5NTWZ5SkNpeDhJNEM4SHdwMWhseTg1YTZiYzNBRDhaUCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE2OiJjYXJ0YWx5c3Rfc2VudHJ5IjthOjI6e2k6MDtpOjk7aToxO3M6NjA6IiQyeSQxMCRRRnUvbW5Ya01ERXM4ZkJzc2VyQ3NPMTQ5bHlOR0x6VVUvZU1FVG9XR21xOWhmSzUxYVNveSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDQyMDU4NTQ0O3M6MToiYyI7aToxNDQyMDUxMTE1O3M6MToibCI7czoxOiIwIjt9fQ==', '1442058544');
COMMIT;

-- ----------------------------
--  Table structure for `throttle`
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `throttle`
-- ----------------------------
BEGIN;
INSERT INTO `throttle` VALUES ('1', '9', '119.148.14.146', '0', '0', '0', null, null, null), ('2', '9', '45.118.60.240', '0', '0', '0', null, null, null), ('3', '9', '45.118.62.118', '0', '0', '0', null, null, null), ('4', '9', '118.179.136.162', '0', '0', '0', null, null, null), ('5', '9', '127.0.0.1', '0', '0', '0', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `tokens`
-- ----------------------------
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `api_token` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `expires_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `tokens`
-- ----------------------------
BEGIN;
INSERT INTO `tokens` VALUES ('1', '1', 'd1313b37a2d07dc51999beaa0246058302552911d478d4692ba739714702f880', '2015-01-25 06:34:25', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-25 06:34:25', '2014-12-25 06:34:25'), ('2', '2', '8b2cf71941bafa79a286ca638f43a42c5362c5b7aa77bdd9fe6abd01fd648442', '2015-01-25 09:37:44', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-25 09:37:44', '2014-12-25 09:37:44'), ('3', '3', 'd39664b82cb551e58e7c7c702018dbddfb32ca065450f82ef3f30c9b17bc8957', '2015-01-25 10:54:08', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-25 10:54:08', '2014-12-25 10:54:08');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('9', 'admin@chaity.com', '$2y$10$R98BsJ0b1/6E4.xlz80UB..n.qtwfs3P1M0GCJjDkUem12mVQMq4S', null, '1', null, null, '2015-09-12 15:55:07', '$2y$10$QFu/mnXkMDEs8fBsserCsO149lyNGLzUU/eMEToWGmq9hfK51aSoy', null, 'Live', 'Admin', '0000-00-00 00:00:00', '2015-09-12 15:55:07');
COMMIT;

-- ----------------------------
--  Table structure for `users_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `users_groups`
-- ----------------------------
BEGIN;
INSERT INTO `users_groups` VALUES ('1', '1'), ('2', '1'), ('3', '1'), ('4', '1'), ('5', '1'), ('6', '1');
COMMIT;

-- ----------------------------
--  Table structure for `videolist`
-- ----------------------------
DROP TABLE IF EXISTS `videolist`;
CREATE TABLE `videolist` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
