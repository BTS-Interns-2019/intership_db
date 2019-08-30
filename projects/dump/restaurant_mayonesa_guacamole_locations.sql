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
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(120) NOT NULL,
  `country` varchar(120) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Greenholt, Witting and Walsh','70 Prairieview Pass','Kuzovatovo','Russia','240-946-9185','2019-08-29 17:08:01','2019-08-29 17:08:01'),(2,'Gottlieb, Mayert and Waters','4 Oriole Parkway','Tivat','Montenegro','847-990-0460','2019-08-29 17:08:01','2019-08-29 17:08:01'),(3,'Ullrich and Sons','0332 Grasskamp Junction','Binjiang','China','810-672-6866','2019-08-29 17:08:01','2019-08-29 17:08:01'),(4,'Reichel, Lockman and Hudson','11248 Meadow Valley Pass','Jincheng','China','210-946-7414','2019-08-29 17:08:01','2019-08-29 17:08:01'),(5,'O\'Conner Group','1 Bayside Parkway','Nariño','Colombia','294-207-5373','2019-08-29 17:08:01','2019-08-29 17:08:01'),(6,'Bode Group','5 Hauk Place','Nāḩīyat Saddat al Hindīyah','Iraq','703-920-9719','2019-08-29 17:08:01','2019-08-29 17:08:01'),(7,'Ullrich and Sons','774 Crowley Plaza','Tengah','Indonesia','532-201-4518','2019-08-29 17:08:02','2019-08-29 17:08:02'),(8,'Bednar-Mayer','77 Kedzie Lane','Uryupinsk','Russia','622-948-1073','2019-08-29 17:08:02','2019-08-29 17:08:02'),(9,'Dickens LLC','23488 Fremont Crossing','Acacías','Colombia','504-718-9108','2019-08-29 17:08:02','2019-08-29 17:08:02'),(10,'Schmitt Group','3 Elmside Center','Lyon','France','976-981-7259','2019-08-29 17:08:02','2019-08-29 17:08:02');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-30 16:11:39
