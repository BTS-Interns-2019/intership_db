-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant_mayonesa_guacamole
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `use_id` int(10) unsigned DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reservation_id`),
  KEY `reservation_customer_index_idx` (`customer_id`),
  KEY `reservation_employee_index_idx` (`employee_id`),
  KEY `reservation_use_index_idx` (`use_id`),
  CONSTRAINT `reservation_customer_index` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `reservation_employee_index` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `reservation_use_index` FOREIGN KEY (`use_id`) REFERENCES `uses` (`use_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,4247,27,734,'2018-07-23 21:59:41','2019-08-29 00:13:57','2019-08-29 00:13:57'),(2,399,21,381,'2010-08-25 06:48:54','2019-08-29 00:13:57','2019-08-29 00:13:57'),(3,972,159,467,'1994-05-17 10:07:36','2019-08-29 00:13:57','2019-08-29 00:13:57'),(4,3073,47,NULL,'2003-09-29 05:28:19','2019-08-29 00:13:57','2019-08-29 00:13:57'),(5,3627,15,371,'1994-11-11 15:55:32','2019-08-29 00:13:57','2019-08-29 00:13:57'),(6,4187,83,NULL,'2004-11-14 12:38:56','2019-08-29 00:13:57','2019-08-29 00:13:57'),(7,3003,55,873,'2013-08-17 13:52:39','2019-08-29 00:13:57','2019-08-29 00:13:57'),(14,1302,101,190,'1991-09-01 18:40:21','2019-08-29 00:13:58','2019-08-29 00:13:58'),(15,878,40,159,'1998-12-11 05:55:54','2019-08-29 00:13:58','2019-08-29 00:13:58'),(17,125,43,465,'2005-11-07 19:00:44','2019-08-29 00:13:58','2019-08-29 00:13:58'),(19,4417,41,592,'2009-10-08 14:45:31','2019-08-29 00:13:58','2019-08-29 00:13:58'),(22,598,123,NULL,'2010-02-03 07:57:50','2019-08-29 00:13:59','2019-08-29 00:13:59'),(23,2462,196,NULL,'2016-06-28 03:12:23','2019-08-29 00:13:59','2019-08-29 00:13:59'),(25,3367,26,350,'2012-07-20 03:45:43','2019-08-29 00:13:59','2019-08-29 00:13:59'),(26,155,89,687,'1992-10-03 13:34:10','2019-08-29 00:13:59','2019-08-29 00:13:59'),(29,180,213,NULL,'2012-12-13 20:18:34','2019-08-29 00:13:59','2019-08-29 00:13:59'),(30,2441,158,952,'2011-02-25 23:44:56','2019-08-29 00:14:00','2019-08-29 00:14:00'),(32,4699,18,300,'1994-01-17 08:21:08','2019-08-29 00:14:00','2019-08-29 00:14:00'),(34,4996,128,141,'1998-06-09 06:20:11','2019-08-29 00:14:00','2019-08-29 00:14:00'),(38,2526,7,NULL,'2007-03-01 13:03:52','2019-08-29 00:14:00','2019-08-29 00:14:00'),(39,4298,205,308,'2010-11-20 21:33:55','2019-08-29 00:14:01','2019-08-29 00:14:01'),(47,4126,49,232,'2007-10-05 22:47:41','2019-08-29 00:14:01','2019-08-29 00:14:01'),(49,1358,86,524,'1994-11-11 18:19:52','2019-08-29 00:14:02','2019-08-29 00:14:02'),(50,4519,181,525,'2014-11-18 04:06:11','2019-08-29 00:14:02','2019-08-29 00:14:02'),(51,1754,72,NULL,'2014-01-11 01:22:46','2019-08-29 00:14:02','2019-08-29 00:14:02'),(52,1356,156,57,'2018-01-16 10:41:30','2019-08-29 00:14:02','2019-08-29 00:14:02'),(55,1240,201,696,'2000-01-31 17:24:24','2019-08-29 00:14:02','2019-08-29 00:14:02'),(58,3108,129,NULL,'2019-03-31 03:42:57','2019-08-29 00:14:03','2019-08-29 00:14:03'),(59,2690,120,164,'2015-04-20 04:31:11','2019-08-29 00:14:03','2019-08-29 00:14:03'),(62,4769,211,770,'2005-04-16 07:07:47','2019-08-29 00:14:03','2019-08-29 00:14:03'),(63,4329,32,386,'2000-09-05 20:56:40','2019-08-29 00:14:03','2019-08-29 00:14:03'),(64,4338,195,692,'2009-05-02 04:24:06','2019-08-29 00:14:04','2019-08-29 00:14:04'),(65,1868,238,906,'2009-08-14 01:50:49','2019-08-29 00:14:04','2019-08-29 00:14:04'),(66,4080,127,NULL,'2016-07-12 13:49:17','2019-08-29 00:14:04','2019-08-29 00:14:04'),(69,231,248,NULL,'1997-01-26 16:36:32','2019-08-29 00:14:04','2019-08-29 00:14:04'),(70,4594,246,255,'1995-10-31 18:58:07','2019-08-29 00:14:05','2019-08-29 00:14:05'),(71,570,25,548,'2000-08-04 19:42:04','2019-08-29 00:14:05','2019-08-29 00:14:05'),(72,2149,54,496,'2004-11-28 00:07:22','2019-08-29 00:14:05','2019-08-29 00:14:05'),(74,3101,214,722,'2009-07-08 00:46:28','2019-08-29 00:14:05','2019-08-29 00:14:05'),(75,3887,139,712,'1995-09-10 17:39:20','2019-08-29 00:14:05','2019-08-29 00:14:05'),(80,2436,213,119,'2005-07-17 10:02:20','2019-08-29 00:14:06','2019-08-29 00:14:06'),(82,2434,1,274,'2014-07-05 21:11:46','2019-08-29 00:14:06','2019-08-29 00:14:06'),(88,46,35,395,'1992-04-01 08:23:34','2019-08-29 00:14:06','2019-08-29 00:14:06'),(89,109,223,911,'1991-11-12 21:33:06','2019-08-29 00:14:06','2019-08-29 00:14:06'),(90,275,32,NULL,'1994-03-14 11:01:11','2019-08-29 00:14:06','2019-08-29 00:14:06'),(91,3116,147,NULL,'1992-01-08 22:30:34','2019-08-29 00:14:07','2019-08-29 00:14:07'),(93,3777,54,NULL,'1990-04-15 15:09:29','2019-08-29 00:14:07','2019-08-29 00:14:07'),(99,1766,139,NULL,'2002-06-25 19:18:12','2019-08-29 00:14:07','2019-08-29 00:14:07'),(100,1277,205,179,'1998-01-18 12:52:03','2019-08-29 00:14:08','2019-08-29 00:14:08');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-30 14:57:53
