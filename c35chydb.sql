-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: c35chydb
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `c35chydb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `chaity_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chaity_db`;

--
-- Table structure for table `adModule`
--

DROP TABLE IF EXISTS `adModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adModule`
--

LOCK TABLES `adModule` WRITE;
/*!40000 ALTER TABLE `adModule` DISABLE KEYS */;
/*!40000 ALTER TABLE `adModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'gods','{\"addups\":1,\"addself\":1,\"addbelows\":1,\"godemode\":1,\"accessfinance\":1,\"accessfinancereport\":1,\"exportfinancedata\":1,\"modifyfinance\":1,\"accessusers\":1,\"modifyusers\":1,\"exportusersdata\":1,\"accessbusiness\":1,\"accessbusinessreports\":1,\"exportbusiness\":1,\"modifybusiness\":1,\"accessbusinessdata\":1,\"modifybusinessdata\":1,\"exportbusinessdata\":1}','2014-12-24 13:23:36','2014-12-24 13:23:36');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_12_19_163951_create_videolist_table',1),('2014_12_23_162714_create_schedule_table',1),('2014_12_24_060739_create_tokens_table',1),('2012_12_06_225921_migration_cartalyst_sentry_install_users',2),('2012_12_06_225929_migration_cartalyst_sentry_install_groups',2),('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot',2),('2012_12_06_225988_migration_cartalyst_sentry_install_throttle',2),('2014_12_26_075657_create_session_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsGal`
--

DROP TABLE IF EXISTS `newsGal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsGal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `position` varchar(3) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsGal`
--

LOCK TABLES `newsGal` WRITE;
/*!40000 ALTER TABLE `newsGal` DISABLE KEYS */;
INSERT INTO `newsGal` VALUES (36,'uploads/0b951f44aa954051181f95de6262486055a1457af05c5.jpg',44,'1','2015-07-11 22:34:03','2015-07-11 22:34:03'),(37,'uploads/383ec9df433af98eb58a26d47eda3e7c55a1457b2b227.jpg',44,'1','2015-07-11 22:34:03','2015-07-11 22:34:03'),(38,'uploads/1769c61dabd36f01b65ed97f95464cbf55a1457b54763.jpg',44,'1','2015-07-11 22:34:03','2015-07-11 22:34:03'),(39,'uploads/90a88c022b2bcfe882b745dc5305b2b055a1457b73134.jpg',44,'1','2015-07-11 22:34:03','2015-07-11 22:34:03'),(40,'uploads/28deb67f9c92504374c75c51fa515ede55a1464129792.jpg',46,'1','2015-07-11 22:37:21','2015-07-11 22:37:21'),(41,'uploads/fcc65319b20551be4b951d3a1d5857ec55a146414ca7e.jpg',46,'1','2015-07-11 22:37:21','2015-07-11 22:37:21'),(42,'uploads/0fcac6b840d1ea3e6b280ca8020ef22f55a1464166268.jpg',46,'1','2015-07-11 22:37:21','2015-07-11 22:37:21'),(43,'uploads/c2b42cc00d67916f49faf2d39919b2f355a1464185e27.jpg',46,'1','2015-07-11 22:37:21','2015-07-11 22:37:21'),(44,'uploads/208277133b82ceb17a267bbec4eeeca255a14641a6529.jpg',46,'1','2015-07-11 22:37:21','2015-07-11 22:37:21'),(45,'uploads/32efbe335364b2fbe5a2c05658a4d02a55a14641dc8f7.jpg',46,'1','2015-07-11 22:37:21','2015-07-11 22:37:21'),(46,'uploads/3337ce57d62d95e75e54f73ce87c818e55a14642049b6.jpg',46,'1','2015-07-11 22:37:22','2015-07-11 22:37:22'),(47,'uploads/64d72e83ea903ee1de7da369836c215855a1469fbc4eb.jpg',47,'1','2015-07-11 22:38:55','2015-07-11 22:38:55'),(48,'uploads/6ef6b883e6cc76a2cc3df5414f1352ad55a1469fe9759.jpg',47,'1','2015-07-11 22:38:56','2015-07-11 22:38:56'),(49,'uploads/6ca480f613a84953458fe0315064efb255a146a01128f.jpg',47,'1','2015-07-11 22:38:56','2015-07-11 22:38:56'),(50,'uploads/5672f21415942fd26d0d8a6358dc804a55a146a0e487e.jpg',47,'1','2015-07-11 22:38:57','2015-07-11 22:38:57'),(51,'uploads/dfb9d38af8fbfd74413e689dc1c4cfae55a146a11ad44.jpg',47,'1','2015-07-11 22:38:57','2015-07-11 22:38:57'),(52,'uploads/d258daa1b491beaaebddfe6d1b2d69e455a164de375fc.jpg',48,'1','2015-07-12 00:47:58','2015-07-12 00:47:58');
/*!40000 ALTER TABLE `newsGal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (7,'Test','test','2015-04-13','2015-05-02',0,4,'2015-04-13 15:53:20','2015-04-15 06:21:24'),(8,'Awesome Show!','','2015-04-15','2015-04-18',1,4,'2015-04-15 06:24:37','2015-04-15 06:24:40');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1a4b35516657c7e53590808cae071dddb9035d1a','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0JmaWcyYWk5Qk9mM0s4Rm11dzF1M2VGTXJRb1hZR0E2eVY4dndRQSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NzA1MDtzOjE6ImMiO2k6MTQzOTc4NzA0MjtzOjE6ImwiO3M6MToiMCI7fX0=',1439787050),('1b139a614a7054bbc01d95dba5a5dc9f649aba02','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHFSeHVOWE1JVld0UThXcDZmZjdDWFl2MXNRRWVMaHJzek9GNjNGTSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTI4NTtzOjE6ImMiO2k6MTQzOTc4NTI4MztzOjE6ImwiO3M6MToiMCI7fX0=',1439785285),('1bc55af4028f419b3e77c287a43043124f6059ba','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0hHa2xwaEJnbjFYa09tSFJHanp1THNUbzY4SlB4bjV3UHF5UmtScCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3ODgzOTQ7czoxOiJjIjtpOjE0Mzk3ODgzOTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439788394),('1c7fddf8622be6c87e87a42ea5b0773f80f2a8a9','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHpHSkVTU0piZ2I5OXg1R0Y5N0VNdXJlOXRabjVYQ0hPUlVvb2REbSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3ODczODE7czoxOiJjIjtpOjE0Mzk3ODczODE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439787381),('24cb230a8e99445cbd16d2efd8c5daafae8629e6','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWdGWnJUdk9uVFJlYkk3Q2ZNZHB5THNzMDA3WVRNZVlOTjc5S2dESiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMxMjtzOjE6ImMiO2k6MTQzOTc4NTMxMDtzOjE6ImwiO3M6MToiMCI7fX0=',1439785312),('293110ebafcdfc620852ddcac186021f5fc602b7','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDczOVdHTHk1NFR5aDdyU2g4TEpkbTVCdWY0TXZTcjBtZUpxOGJPVSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMzMTtzOjE6ImMiO2k6MTQzOTc4NTMzMDtzOjE6ImwiO3M6MToiMCI7fX0=',1439785331),('41cf6930bff0f476f804fbe8a330ea206761562f','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFF6RElMTXBRMHBqR1ZqdFBXTHplZFZqUDN1V3RiQ2RMelNHRWJEYyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3ODUxNDM7czoxOiJjIjtpOjE0Mzk3ODUxNDM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439785143),('42bd1b3d13904cad93f6e3c1dc63f06c862c98c7','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjg3eXRXTTVtbkVJMzYzOGRmcm9hRENGR2RGbWN0Y25uMFpneUZQTyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTEzMDg7czoxOiJjIjtpOjE0Mzk3OTEzMDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439791308),('430a8dc5acde62524630aa27e0382fe764ef031f','YTozOntzOjY6Il90b2tlbiI7czo0MDoibThuT2R5elZmQ2haMWJHSVZDSElkV2laZ3ZFcU5heHhaODdPVmdLeCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5OTY1NztzOjE6ImMiO2k6MTQzOTc5OTY1NTtzOjE6ImwiO3M6MToiMCI7fX0=',1439799657),('4b74fa76ffa0bbc2904b38eb355cd86d4ac38034','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlc1emg1aEMwNjZMZUpPM1NjSWc1THJ0YjNXSEFtakZHR1lSUEFQeCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTE2Njk7czoxOiJjIjtpOjE0Mzk3OTE2Njk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439791669),('4df85d98cc07b7fb92c2518ccb2fb54d4a4708a8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXhVS2NlTzBQcnZnaktmRXpzSlNQa0w1cEo5Y295Y0Z6djk0VHdkWSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMyODtzOjE6ImMiO2k6MTQzOTc4NTMyNztzOjE6ImwiO3M6MToiMCI7fX0=',1439785328),('4e76f805f47ef5423e13dd73bfb660222758eee9','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk9ZVm1abjNFdW4wa2JLZWFpOTlCN0Y4Z3o0MzV2RjhOY29mc2ZCWCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMwODtzOjE6ImMiO2k6MTQzOTc4NTMwNztzOjE6ImwiO3M6MToiMCI7fX0=',1439785308),('62667b9d51bb48b4c0ce0992da47d9f09f28e942','YTozOntzOjY6Il90b2tlbiI7czo0MDoiajJFclh2WHFjZWk5MDFiemRSY2d6NGhJc0lJSEIxMjVTZ2dnc09lcyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTA0MjY7czoxOiJjIjtpOjE0Mzk3OTA0MjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439790426),('750b0617cc7628db83104bb28a412c32af12211b','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXlZOE5vVGFCQWlEOHBoOVh0N2ExRW4zdDB4cW5nNWo3cWxRaFVYNSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMxNTtzOjE6ImMiO2k6MTQzOTc4NTMxNDtzOjE6ImwiO3M6MToiMCI7fX0=',1439785315),('754fb8f8ae3ce15c848b9d3dcb50276e25801726','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmE3OHhoeGdpUUtkaXNVOTNPTVNjeWk1YWN2MHFyWTlRS3Z6ODFEVCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTA0OTk7czoxOiJjIjtpOjE0Mzk3OTA0OTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439790499),('77346e508255a78de08b92bdb03f7b38815e443b','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnBGYk5hTFQzRnRmWXpURE5WdmdWeGRLV3Fod1NSNVZYckdNRXV0eiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTI2NTtzOjE6ImMiO2k6MTQzOTc4NTI2MztzOjE6ImwiO3M6MToiMCI7fX0=',1439785265),('7f0b7ec0732974ff31291d934d63192a0af77000','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkMwcW9pQXdnam1HREpuN3lMRnFRbkcyMmJDblI1dGZpMmJrZTN2RiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTA3MDQ7czoxOiJjIjtpOjE0Mzk3OTA3MDQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439790704),('85abafa74852dc51142172406333c13085c1ca37','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlF3S3VYSnJ1MGhmemlNWXEwMlJkYVNTcEx4UmZsckVJbFRjRnNNZSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5MzkwNTtzOjE6ImMiO2k6MTQzOTc5MzY1ODtzOjE6ImwiO3M6MToiMCI7fX0=',1439793905),('8d1ce91bc7d4fed77c4f4ac10e5f8792043a7bf2','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG5yRU00YUVIVVpoNzVyTDZtMnFMRjVHR0FTbnF0c2R0T0tkeGp6YyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMzNTtzOjE6ImMiO2k6MTQzOTc4NTMzMztzOjE6ImwiO3M6MToiMCI7fX0=',1439785335),('94839a1bb6bac3efaad8a7ef68c79e55dafb6381','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSURaa1RCU2t5cjI3Q0xlSnp5b1NQT1FEcUdmUnZ0ZmVPanMxNFVBWCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTI3ODtzOjE6ImMiO2k6MTQzOTc4NTI3NztzOjE6ImwiO3M6MToiMCI7fX0=',1439785278),('949e8f0014e13c7de530356da9b77e17350619cc','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS043RHNadXhXdGFQemtqZFVKV3NiNk52TVVzN0M5WWtSUXlib1daUSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTM2NzY7czoxOiJjIjtpOjE0Mzk3OTM2NzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439793676),('9c6cb2e84347f87a850684691841ff887c7f67a6','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXdVTDZtcENYUXNaVUJmc2o5VGF0NG50RFZqVFFMOW1maUpqNkZVVyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMzOTtzOjE6ImMiO2k6MTQzOTc4NTMzNjtzOjE6ImwiO3M6MToiMCI7fX0=',1439785339),('9caac4738cc4f6109f2c941760f690bc7db573e8','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDJIeXNLQlk5UkxuZ21ERWNIREN1R0lpTld4d3J2d2hrUGg4cDl2ZyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5OTkxNDtzOjE6ImMiO2k6MTQzOTc5OTkxMTtzOjE6ImwiO3M6MToiMCI7fX0=',1439799914),('9cf0d3097f39bd4caf532787ad489d7436f0487f','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3A1Ukg3Sm1rWHRhV1pWd1NocjdGVHBBSHJ1R0tMSGdJVGJBYklxVyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTg4OTE7czoxOiJjIjtpOjE0Mzk3OTg4OTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439798891),('a6c86fd14fd2bdc00b91f6520704b05f72c751ee','YTozOntzOjY6Il90b2tlbiI7czo0MDoibVdIeVA4U0dySjZTbDJvbHJRb2VPUnR1NWkydENHVUhYSmx4eTR6NyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTEzODg7czoxOiJjIjtpOjE0Mzk3OTEzODg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439791388),('a80e8907d412e253d1ad9f804f26b7ba00974e78','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGlpaDhIenF6Zmp0Z3BMSjRwSzN2YVNOTlU4bExTclVHTGVFOEdIQiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMyNTtzOjE6ImMiO2k6MTQzOTc4NTMyMjtzOjE6ImwiO3M6MToiMCI7fX0=',1439785325),('b0e78654735d67cec7dc186a731e7ed0d9c751c5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGlyZGZqRkxHRXk2UTZJUFJoaUhUWGV3am5BdEV1eVB0TzRGekp2USI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5NjIwNztzOjE6ImMiO2k6MTQzOTc5NjE4ODtzOjE6ImwiO3M6MToiMCI7fX0=',1439796207),('bc056bde723ebbea1ed45500267f757cd1e2f01d','YTozOntzOjY6Il90b2tlbiI7czo0MDoicllYUzFvY1U1Q3B3SGU1YkF6MDU4aGRIa1p6c1dOQUR4cWFBOTdXMiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5OTg4NztzOjE6ImMiO2k6MTQzOTc5OTYzNDtzOjE6ImwiO3M6MToiMCI7fX0=',1439799887),('bf8b8aaa7ad2651c8437a3cd7a148525ba6b5d70','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXRXQkZOR3o2NWdxdUo2NndpMlYyOVpmQlZRb1hENUhIWnpMYkJHWCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3ODQ4MDU7czoxOiJjIjtpOjE0Mzk3ODQ4MDU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439784805),('c76d5a3a2da9b823c9436dd691a9fff686b42af2','YTozOntzOjY6Il90b2tlbiI7czo0MDoieHlCdEl3VzlnNkJ0aVJ2M1BYZFpmS04wZDRHUGo1M3hNZlYzRGlIbCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTk0Njg7czoxOiJjIjtpOjE0Mzk3OTk0Njg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439799468),('e365f9dbefd391986181592cfc44c71668cd6958','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUIxd2l1c0pTQTQ5Rk1CWUtpSHVsNldpTHExMzE2NTk5YWVVRlBCZSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5MjQ3ODtzOjE6ImMiO2k6MTQzOTc5MjQ3NTtzOjE6ImwiO3M6MToiMCI7fX0=',1439792478),('e3f5bd9099d4e5bd1bf242d2c1bd2c9a4d0dc3dc','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlNnQXEzTkd2cnQ5OTR0VjRoYW9STGE5MnE1NHEya2FZY21lSjdycSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc4NTMyMDtzOjE6ImMiO2k6MTQzOTc4NTMxNztzOjE6ImwiO3M6MToiMCI7fX0=',1439785320),('e559120d326129d28a97e68bd4e3f1643570c577','YTozOntzOjY6Il90b2tlbiI7czo0MDoibDhFNDlPcHFEMkZ4QVlaQ3FndWtNaGpEa0lGcGRkZFVodGVXUUhXUiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQzOTc5NzAxMjtzOjE6ImMiO2k6MTQzOTc5Njk1MjtzOjE6ImwiO3M6MToiMCI7fX0=',1439797012),('e90e7b3731469141533b43e8346dc449831e3f4b','YTozOntzOjY6Il90b2tlbiI7czo0MDoicDNPUmdaR3JseU1PM2dPMDVJYjBwa2g3OGcxS1Rxdzg4aDJXRDFoUiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTg2MzI7czoxOiJjIjtpOjE0Mzk3OTg2MzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439798633),('e92ed49ffc146edb74bf7b3fa7cc3900a4ae1fa0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTZLUjlyNDIzdmF6cXJrdkgybnVKVVhaeTBpRmFMTXBMR0d4T0tKSiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTA0MTg7czoxOiJjIjtpOjE0Mzk3OTA0MTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439790419),('ff3b83465c818691f1696eab95f964133ac22cbb','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGhpeXpucGpOMEVIeXp4dnBJeUZjaThLMTZ4Qkp3Z1B0TlpRd0I2eiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Mzk3OTg4OTM7czoxOiJjIjtpOjE0Mzk3OTg4OTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1439798893);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` VALUES (1,1,NULL,4,0,0,'2015-04-07 06:52:31',NULL,NULL),(2,3,NULL,0,0,0,NULL,NULL,NULL),(3,2,'127.0.0.1',4,0,0,'2014-12-26 15:21:07',NULL,NULL),(4,2,'202.4.173.61',0,0,0,NULL,NULL,NULL),(5,2,'103.19.252.82',0,0,0,NULL,NULL,NULL),(6,2,'103.15.141.134',0,0,0,NULL,NULL,NULL),(7,2,'117.18.229.55',0,0,0,NULL,NULL,NULL),(8,2,'103.230.6.194',0,0,0,NULL,NULL,NULL),(9,4,'127.0.0.1',0,0,0,NULL,NULL,NULL),(10,5,'127.0.0.1',0,0,0,NULL,NULL,NULL),(11,5,'119.148.14.146',0,0,0,NULL,NULL,NULL),(12,5,'103.19.252.82',0,0,0,NULL,NULL,NULL),(13,5,'103.230.107.3',0,0,0,NULL,NULL,NULL),(14,5,'103.19.252.202',0,0,0,NULL,NULL,NULL),(15,6,'119.148.14.146',0,0,0,NULL,NULL,NULL),(16,6,'103.19.252.202',0,0,0,NULL,NULL,NULL),(17,6,'202.4.106.125',0,0,0,NULL,NULL,NULL),(18,6,'103.230.106.2',0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,1,'d1313b37a2d07dc51999beaa0246058302552911d478d4692ba739714702f880','2015-01-24 13:34:25','||1||Chrome||||Win8.1|||||||1|1','2014-12-24 13:34:25','2014-12-24 13:34:25'),(2,2,'8b2cf71941bafa79a286ca638f43a42c5362c5b7aa77bdd9fe6abd01fd648442','2015-01-24 16:37:44','||1||Chrome||||Win8.1|||||||1|1','2014-12-24 16:37:44','2014-12-24 16:37:44'),(3,3,'d39664b82cb551e58e7c7c702018dbddfb32ca065450f82ef3f30c9b17bc8957','2015-01-24 17:54:08','||1||Chrome||||Win8.1|||||||1|1','2014-12-24 17:54:08','2014-12-24 17:54:08');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin@nettv24.tv','$2y$10$gSWQjZkfTF.U4T9AAiBN.ONUM9zFGDTVm7zws0USTrkb/XijeUQge',NULL,1,NULL,NULL,'2015-02-12 09:02:19','$2y$10$BNSbeVjPTwnYeTSvhUxIueLUWZkIGRcD.MFARBL044mSjUB9uQTv6',NULL,'Ratul','Ahmed','2014-12-24 16:06:59','2015-02-12 09:02:19'),(4,'rain@walker.com','$2y$10$Vk9jE5mBBXjBfLd1zlIVE.ZJxvpl3qvOzYn1r1icgw.h.abuqjQG2',NULL,1,NULL,NULL,'2015-04-13 15:27:51','$2y$10$6kHvX.N0PrTcS2GKCtOTy.cmV7fsYR0RZ5dYvyQVeLBXCKDpOeM9m',NULL,'Rain','Walker','2015-04-07 06:53:43','2015-04-13 15:27:51'),(5,'admin@livetvapp.com','$2y$10$/2e6fCGP7itS/WsJOcZhbei0mV0C.6KQZuv33iCIF1yOqNcOi1l3.',NULL,1,NULL,NULL,'2015-06-30 06:45:38','$2y$10$0yiRzw3cGx3/SE3ihHm/puSXNrHr.9mcJPeq9CrE0Adqkj3KJqKbK',NULL,'Live','Admin','2015-04-09 07:17:28','2015-06-30 06:45:38'),(6,'admin@chaity.com','$2y$10$R98BsJ0b1/6E4.xlz80UB..n.qtwfs3P1M0GCJjDkUem12mVQMq4S',NULL,1,NULL,NULL,'2015-07-11 18:58:27','$2y$10$1dkgy8SrE3u5Gj4RWT1lT.n.cCqaUN/dt/3oRTczZYsDthYqB.VtW',NULL,'Live','Admin','2015-06-30 07:20:57','2015-07-11 18:58:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videolist`
--

DROP TABLE IF EXISTS `videolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videolist`
--

LOCK TABLES `videolist` WRITE;
/*!40000 ALTER TABLE `videolist` DISABLE KEYS */;
INSERT INTO `videolist` VALUES (4,'Krewella - Say Goodbye (Audio)','Music video by Krewella performing Say Goodbye. (C) 2014 Columbia Records, a Division of Sony Music EntertainmentDownload \"Say Goodbye\" on iTunes: http://smarturl.it/saygoodbyeitunes','https://www.youtube.com/watch?v=aOj7wJxPtZc&index=1&list=LL28uVvGFBlLR3zeu5BpBn_A','https://i.ytimg.com/vi/aOj7wJxPtZc/default.jpg',1,4,1,'7:53:28 PM','236',7,'2015-04-13 15:54:02','2015-04-13 15:54:02'),(5,'Paris Blohm ft. Charles - Demons [Exclusive]','Grab the track on Beatport! :) - http://goo.gl/mcN4jwSpotify! - http://spoti.fi/1xTKqIa•Proximity - Your favorite music you haven\'t heard yet.» Facebook: http://bit.ly/FBProximity» Twitter: http://bit.ly/ProximityTwitterParis Blohm\'s home is on Proximity.','https://www.youtube.com/watch?v=XVjeOTKeAjw&index=2&list=LL28uVvGFBlLR3zeu5BpBn_A','https://i.ytimg.com/vi/XVjeOTKeAjw/default.jpg',1,4,2,'11:54:13 PM','222',7,'2015-04-13 15:54:29','2015-04-13 15:54:29'),(6,'Zedd - I Want You To Know (Audio) ft. Selena Gomez','Get “I Want You To Know” ft. Selena Gomez: http://smarturl.it/IWantYouToKnow','https://www.youtube.com/watch?v=67qworViFpY&index=4&list=LL28uVvGFBlLR3zeu5BpBn_A','https://i.ytimg.com/vi/67qworViFpY/default.jpg',1,4,3,'9:54:42 PM','240',7,'2015-04-13 15:54:52','2015-04-13 15:54:52'),(7,'CGI & VFX Reel HD: \"VFX Reel\" - by James Kirk','Check out this very inspiring \"VFX Reel\" by the talented James Kirk! James is currently FX Technical Director at Industrial Light & Magic. For more information, please see the details below:Porfolio - https://vimeo.com/user3571057SUBSCRIBE - to TheCGBros ','https://www.youtube.com/watch?v=ly-Fzkz4H7Q','https://i.ytimg.com/vi/ly-Fzkz4H7Q/default.jpg',1,4,4,'11:57:55 pm','230',7,'2015-04-13 18:11:35','2015-04-13 18:11:35'),(8,'Surface Pro 3 Challenge: Will I Buy It?','http://www.angeloftech.comHere are my results and review for the Surface Pro 3 challenge and what went into making this decision.http://www.plus.google.com/+EricaGriffinRegistry modification: in [HKEY_CURRENT_USER\\Software\\Google\\Chrome\\Profile]. The flag','https://www.youtube.com/watch?v=QKfv83MJruA','https://i.ytimg.com/vi/QKfv83MJruA/default.jpg',1,4,6,'12:01:45 am','965',7,'2015-04-13 18:12:20','2015-04-13 18:12:20'),(9,'Action Movies Full Movies English ★ ★ Hollywood Adventure Action Sci Fi New Movies','Thanks for your watching!Don\'t forget Subscribe channel for more new action movies !!','https://www.youtube.com/watch?v=4Im1DjnutvE','https://i.ytimg.com/vi/4Im1DjnutvE/default.jpg',1,4,1,'12:31:50 PM','6669',8,'2015-04-15 06:32:09','2015-04-15 06:32:09'),(10,'How does a plane\'s black box actually work?','A plane\'s black box is actually orange, it records crucial data, and can withstand temperatures of more than 1000 degrees Celsius, as aviation expert David Barry explains.The black boxes from Malaysian Airlines flight MH17 have been finally handed over by','https://www.youtube.com/watch?v=JqHXSa1moVY','https://i.ytimg.com/vi/JqHXSa1moVY/default.jpg',1,4,2,'2:23:00 pm','208',8,'2015-04-15 06:33:44','2015-04-15 06:33:44');
/*!40000 ALTER TABLE `videolist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-21 15:59:48
