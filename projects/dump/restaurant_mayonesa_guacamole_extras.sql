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
-- Table structure for table `extras`
--

DROP TABLE IF EXISTS `extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extras` (
  `extra_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`extra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extras`
--

LOCK TABLES `extras` WRITE;
/*!40000 ALTER TABLE `extras` DISABLE KEYS */;
INSERT INTO `extras` VALUES (1,'Aguacate',15.50,'2019-08-29 17:07:10','2019-08-29 17:07:10'),(2,'Blue cheese',12.00,'2019-08-29 17:07:10','2019-08-29 17:07:10'),(3,'Chocolate',10.50,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(4,'Whipped cream',15.00,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(5,'Crema',25.00,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(6,'Pan tostado',15.00,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(7,'Shot de licor',35.00,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(8,'Guacamole',35.50,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(9,'Pepinillos',12.50,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(10,'Ketchup',5.50,'2019-08-29 17:07:11','2019-08-29 17:07:11'),(11,'Chocolate chips',5.50,'2019-08-29 17:07:12','2019-08-29 17:07:12'),(12,'Cilantro',3.50,'2019-08-29 17:07:12','2019-08-29 17:07:12'),(13,'Cebolla',5.00,'2019-08-29 17:07:12','2019-08-29 17:07:12'),(14,'Mostaza',3.00,'2019-08-29 17:07:12','2019-08-29 17:07:12'),(15,'Salsa picante',7.50,'2019-08-29 17:07:12','2019-08-29 17:07:12');
/*!40000 ALTER TABLE `extras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 20:52:35
