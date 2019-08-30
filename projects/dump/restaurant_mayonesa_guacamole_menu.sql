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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `details` varchar(320) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Papas fritas',22.50,'Orden de 200gr','2019-08-29 18:53:41','2019-08-29 18:53:41'),(2,'Huevos con jamon',44.00,'Orden de 2 huevos con frijoles fritos y rebanadas de jitomate','2019-08-29 18:53:41','2019-08-29 18:53:41'),(3,'Chorizo argentino',150.00,'Corte de 450 gramos con frijoles fritos y ensalada','2019-08-29 18:53:42','2019-08-29 18:53:42'),(4,'Fajitas de pollo',80.00,'350 gramos de fajitas de pollo con arroz blanco','2019-08-29 18:53:42','2019-08-29 18:53:42'),(5,'Flan de vainilla',21.00,'100gr','2019-08-29 18:53:42','2019-08-29 18:53:42'),(6,'Hamburguesita',25.00,'Hamburguesa pequeña','2019-08-29 18:53:42','2019-08-29 18:53:42'),(7,'Refresco 355ml',15.00,'Cocacola, Sprite, Fanta, Fresca, Manzanita life','2019-08-29 18:53:42','2019-08-29 18:53:42'),(8,'Margarita',35.00,'Hecho con tequila de la casa','2019-08-29 18:53:42','2019-08-29 18:53:42'),(9,'Burrito',40.00,'Dos tortillas de harina, carne de tacos, crema, salsa mexicana, frijoles de la olla, arroz rojo','2019-08-29 18:53:42','2019-08-29 18:53:42'),(10,'Alitas',50.00,'Orden de 6 alitas','2019-08-29 18:53:42','2019-08-29 18:53:42'),(11,'Pay de queso',28.00,'100gr con mermelada de mango o fresa','2019-08-29 18:53:43','2019-08-29 18:53:43'),(12,'Flan de café',22.00,'100gr','2019-08-29 18:53:43','2019-08-29 18:53:43'),(13,'Jericaya',16.00,'100gr','2019-08-29 18:53:43','2019-08-29 18:53:43'),(14,'Gelatina',16.00,'100gr de limón o fresa','2019-08-29 18:53:43','2019-08-29 18:53:43'),(15,'Fresas con crema',20.00,'100gr','2019-08-29 18:53:43','2019-08-29 18:53:43'),(16,'Copa de 7 Leguas Blanco',65.00,'80ml','2019-08-29 18:53:43','2019-08-29 18:53:43'),(17,'Copa de 7 Leguas Reposado',80.00,'80ml','2019-08-29 18:53:43','2019-08-29 18:53:43'),(18,'Copa de 7 Leguas Añejo',100.00,'80ml','2019-08-29 18:53:43','2019-08-29 18:53:43'),(19,'XX Lager cerveza',18.00,'355ml','2019-08-29 18:53:43','2019-08-29 18:53:43'),(20,'XX Ambar cerveza',18.00,'355ml','2019-08-29 18:53:43','2019-08-29 18:53:43'),(21,'Indio cerveza',17.00,'355ml','2019-08-29 18:53:44','2019-08-29 18:53:44'),(22,'Tacos de pastor',8.00,'Tortilla de 8cm','2019-08-29 18:53:44','2019-08-29 18:53:44'),(23,'Tacos de barbacoa',10.00,'Tortilla de 10cm','2019-08-29 18:53:44','2019-08-29 18:53:44'),(24,'Hamburguesa',50.00,'Hamburguesa regular','2019-08-29 18:53:44','2019-08-29 18:53:44'),(25,'Hot cakes',40.00,'300gr con fresa y/o platano y/o una bola de helado','2019-08-29 18:53:44','2019-08-29 18:53:44');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 20:52:34
