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
-- Table structure for table `order_extras`
--

DROP TABLE IF EXISTS `order_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_extras` (
  `order_id` int(10) unsigned DEFAULT NULL,
  `extra_id` int(10) unsigned DEFAULT NULL,
  KEY `order_extras_extra_index_idx` (`extra_id`),
  KEY `order_extras_order_index_idx` (`order_id`),
  CONSTRAINT `order_extras_extra_index` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`extra_id`),
  CONSTRAINT `order_extras_order_index` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_extras`
--

LOCK TABLES `order_extras` WRITE;
/*!40000 ALTER TABLE `order_extras` DISABLE KEYS */;
INSERT INTO `order_extras` VALUES (801,11),(369,8),(119,2),(221,2),(28,7),(187,3),(823,15),(299,11),(875,15),(495,6),(556,13),(453,3),(428,6),(101,12),(947,6),(900,12),(125,10),(57,7),(167,11),(937,1),(756,8),(827,12),(379,10),(389,8),(56,14),(639,3),(465,5),(166,12),(506,2),(859,10),(311,4),(344,11),(734,8),(20,9),(552,9),(210,15),(570,1),(887,15),(37,15),(985,3),(52,12),(866,10),(791,15),(261,11),(671,10),(962,9),(407,1),(982,9),(593,3),(438,11),(788,2),(145,13),(675,12),(887,8),(202,3),(364,4),(355,13),(631,13),(776,13),(859,3),(855,6),(756,14),(654,6),(965,7),(277,11),(244,15),(52,4),(703,4),(568,3),(998,10),(882,10),(250,5),(647,10),(804,8),(956,4),(851,15),(73,1),(858,6),(431,8),(239,10),(888,13),(929,5),(987,2),(150,3),(844,7),(289,5),(473,7),(22,15),(456,2),(576,11),(187,3),(309,8),(210,1),(448,1),(919,12),(926,11),(376,1),(412,7),(256,11),(856,10),(6,11),(274,6),(628,12),(60,3),(514,4),(975,10),(971,14),(114,6),(59,12),(611,11),(7,6),(409,7),(613,6),(386,13),(317,7),(932,8),(247,8),(882,8),(975,13),(781,14),(992,8),(335,2),(854,3),(987,13),(824,1),(732,5),(689,3),(312,15),(874,8),(139,14),(342,1),(191,11),(949,5),(818,4),(977,5),(532,8),(649,5),(463,7),(838,10),(532,1),(812,13),(8,3),(902,11),(722,13),(141,15),(151,7),(754,1),(926,9),(487,9),(568,11),(854,15),(686,9),(217,7),(558,1),(176,8),(332,13),(152,9),(131,15),(692,2),(323,11),(298,7),(22,11),(583,4),(182,12),(301,6),(27,1),(817,10),(795,2),(302,3),(517,11),(540,7),(270,9),(840,6),(658,8),(193,6),(953,6),(444,1),(592,9),(584,7),(604,5),(304,12),(665,14),(944,7),(778,13),(155,11),(690,12),(597,14),(819,10),(434,15),(412,8),(283,7),(222,8),(566,8),(857,1),(479,7),(89,9),(112,4),(465,15),(581,2),(813,6);
/*!40000 ALTER TABLE `order_extras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-30 10:03:51
