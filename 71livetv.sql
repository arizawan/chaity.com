/*
 Navicat Premium Data Transfer

 Source Server         : MAMP
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : 71livetv

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 08/25/2015 13:06:37 PM
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
INSERT INTO `groups` VALUES ('1', 'gods', '{\"addups\":1,\"addself\":1,\"addbelows\":1,\"godemode\":1,\"accessfinance\":1,\"accessfinancereport\":1,\"exportfinancedata\":1,\"modifyfinance\":1,\"accessusers\":1,\"modifyusers\":1,\"exportusersdata\":1,\"accessbusiness\":1,\"accessbusinessreports\":1,\"exportbusiness\":1,\"modifybusiness\":1,\"accessbusinessdata\":1,\"modifybusinessdata\":1,\"exportbusinessdata\":1}', '2014-12-24 19:23:36', '2014-12-24 19:23:36');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
INSERT INTO `sessions` VALUES ('7c3c63aac41cb7b9d3f28d8ef052a41211d40c71', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGFCUk1pMGZiMjZncVltOTlUbUphTkthSGo0cXRUYWpuU1ZtcURXYSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzNjcxODE4ODtzOjE6ImMiO2k6MTQzNjcxNzAxNztzOjE6ImwiO3M6MToiMCI7fX0=', '1436718189'), ('81e7df043c537f31dfdcae86f9306e1a269663aa', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGZHa0kzSjAzeTQ4OTNqdmp3aVhMblBsajlrVVlwWUxCbWtaMHFxRiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzc0MTcwOTc7czoxOiJjIjtpOjE0Mzc0MTcwOTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1437417097');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `tokens` VALUES ('1', '1', 'd1313b37a2d07dc51999beaa0246058302552911d478d4692ba739714702f880', '2015-01-24 19:34:25', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-24 19:34:25', '2014-12-24 19:34:25'), ('2', '2', '8b2cf71941bafa79a286ca638f43a42c5362c5b7aa77bdd9fe6abd01fd648442', '2015-01-24 22:37:44', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-24 22:37:44', '2014-12-24 22:37:44'), ('3', '3', 'd39664b82cb551e58e7c7c702018dbddfb32ca065450f82ef3f30c9b17bc8957', '2015-01-24 23:54:08', '||1||Chrome||||Win8.1|||||||1|1', '2014-12-24 23:54:08', '2014-12-24 23:54:08');
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
INSERT INTO `users` VALUES ('9', 'admin@chaity.com', '$2y$10$R98BsJ0b1/6E4.xlz80UB..n.qtwfs3P1M0GCJjDkUem12mVQMq4S', null, '1', null, null, null, '$2y$10$1dkgy8SrE3u5Gj4RWT1lT.n.cCqaUN/dt/3oRTczZYsDthYqB.VtW', null, 'Live', 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
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
