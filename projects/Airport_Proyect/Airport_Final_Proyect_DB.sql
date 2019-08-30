-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: aerolinea
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aeropuerto`
--

DROP TABLE IF EXISTS `aeropuerto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeropuerto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `ciudad_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ciudad_aeropuerto_idx` (`ciudad_id`),
  CONSTRAINT `fk_ciudad_aeropuerto` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeropuerto`
--

LOCK TABLES `aeropuerto` WRITE;
/*!40000 ALTER TABLE `aeropuerto` DISABLE KEYS */;
INSERT INTO `aeropuerto` VALUES (1,'Aeropuerto Internacional de la Ciudad de Mexico',1),(2,'Aeropuerto Internacional de Toluca',2),(3,'Aeropuerto Internacional del Norte',3),(4,'Aeropuerto Internacional de Monterrey',4),(5,'El Aeropuerto Internacional General Roberto Fierro Villalobos',5),(6,'Aeropuerto Ciudad Juarez',6),(7,'Aeropuerto Internacional John F. Kennedy',7),(8,'Aeropuerto Internacional de Phoenix-Sky Harbor',8),(9,'Aeropuerto Internacional de Yuma',9),(10,'Aeropuerto Meadows Field',10),(11,'Aeropuerto Internacional de Los Angeles',11),(12,'Aeropuerto Internacional Presidente Juscelino Kubitschek',12),(13,'Aeropuerto Internacional Salgado Filho',13),(14,'Aeropuerto Internacional Vásquez Cobo',14),(15,'Aeropuerto Internacional Eduardo Gomes',15),(16,'Aeropuerto Internacional de Natal',16),(17,'Aeropuerto Internacional Toronto Pearson',17),(18,'Aeropuerto Internacional de Ottawa',18);
/*!40000 ALTER TABLE `aeropuerto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avion`
--

DROP TABLE IF EXISTS `avion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `avion_modelo_idx` (`modelo_id`),
  CONSTRAINT `avion_modelo` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avion`
--

LOCK TABLES `avion` WRITE;
/*!40000 ALTER TABLE `avion` DISABLE KEYS */;
INSERT INTO `avion` VALUES (1,'\'Carolina\'',2),(2,'\'Fabiola\'',5),(3,'\'Hernan\'',2),(4,'\'Teo\'',1),(5,'\'Amadeo\'',3),(6,'\'Kokoro\'',1);
/*!40000 ALTER TABLE `avion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto`
--

DROP TABLE IF EXISTS `boleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boleto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pasajero_id` int(10) unsigned NOT NULL,
  `embalaje` decimal(10,0) NOT NULL,
  `vuelo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pasajero_idx` (`pasajero_id`),
  KEY `boleto_vuelo_idx` (`vuelo_id`),
  CONSTRAINT `boleto_vuelo` FOREIGN KEY (`vuelo_id`) REFERENCES `vuelo` (`id`),
  CONSTRAINT `fk_pasajero` FOREIGN KEY (`pasajero_id`) REFERENCES `pasajero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto`
--

LOCK TABLES `boleto` WRITE;
/*!40000 ALTER TABLE `boleto` DISABLE KEYS */;
INSERT INTO `boleto` VALUES (1,1,5,1),(2,2,3,1),(3,3,6,1),(4,4,9,1),(5,5,3,1),(6,6,4,2),(7,5,3,2),(8,4,5,2),(9,3,4,2),(10,2,5,2),(11,1,4,3),(12,2,3,3),(13,3,4,3),(14,4,5,3),(15,5,2,4),(16,6,3,4),(17,1,5,4),(18,1,4,5),(19,2,6,5),(20,3,1,5),(21,4,2,6),(22,5,5,6),(23,6,4,6),(24,5,2,7),(25,4,5,7),(26,3,2,7),(27,2,4,7),(28,1,5,8),(29,1,2,8),(30,2,3,8),(31,3,4,9),(32,4,5,9),(33,5,4,10),(34,2,1,10),(35,3,4,10),(36,4,2,11),(37,5,6,11),(38,6,2,11),(39,2,10,11);
/*!40000 ALTER TABLE `boleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(45) NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_estado_idx` (`estado_id`),
  CONSTRAINT `fk_estado` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Ciudad de Mexico',1),(2,'Toluca de Lerdo',1),(3,'Apodaca',2),(4,'Monterrey',2),(5,'Chihuahua',3),(6,'Cd. Juarez',3),(7,'Nueva York',4),(8,'Phoenix',5),(9,'Yuma',5),(10,'Bakersfield',6),(11,'Los Angeles',6),(12,'Brasilia',7),(13,'Porto Alegre',7),(14,'Leticia',8),(15,'Manaus',8),(16,'Parnamirim',9),(17,'Toronto',11),(18,'Ottawa',11);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crew` (
  `vuelo_id` int(10) unsigned NOT NULL,
  `empleado_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`empleado_id`,`vuelo_id`),
  KEY `fk_empleado_idx` (`empleado_id`),
  KEY `fk_vuelo_idx` (`vuelo_id`),
  CONSTRAINT `fk_empleado` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  CONSTRAINT `fk_vuelo` FOREIGN KEY (`vuelo_id`) REFERENCES `vuelo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,1),(4,1),(6,1),(9,1),(2,2),(3,2),(5,2),(7,2),(9,2),(11,2),(1,3),(4,3),(6,3),(8,3),(10,3),(3,4),(7,4),(10,4),(1,5),(5,5),(8,5),(11,5),(2,6),(6,6),(9,6),(3,7),(4,7),(7,7),(10,7),(2,8),(5,8),(8,8),(11,8);
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `gender` enum('hombre','mujer') NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `nacimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Don','Cangrejo','hombre','Piloto','1989-12-03'),(2,'Ricardo','Martinez','hombre','Copiloto','1984-02-14'),(3,'Frida','Kahlo','mujer','Copiloto','1986-12-01'),(4,'Viviana','Benavente','mujer','Piloto','1987-05-12'),(5,'Chayanne','Chayannes','hombre','Sobrecargo','1984-06-11'),(6,'Clara','Wieck','mujer','Sobrecargo','1876-02-29'),(7,'Señor ','Calamardo','hombre','Sobrecargo','2000-12-31'),(8,'Silvestre ','Revueltas','hombre','Piloto','1899-12-31');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  `pais_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estados_pais_idx` (`pais_id`),
  CONSTRAINT `estados_pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Estado de Mexico',1),(2,'Nuevo Leon',1),(3,'Chihuahua',1),(4,'Nueva York',2),(5,'Arizona',2),(6,'California',2),(7,'Roroaima',3),(8,'La Amazonas',3),(9,'Rio Grande do Norte',3),(10,'Manitoba',4),(11,'Ontario',4),(12,'Columbia Britanica',4),(13,'Novosibirsk',5),(14,'Moscow',5),(15,'San Petersburgo',5);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerario`
--

DROP TABLE IF EXISTS `itinerario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ruta_id` int(10) unsigned NOT NULL,
  `dia` enum('lunes','martes','miercoles','jueves','viernes','sabado','domingo') NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itinerario_ruta_idx` (`ruta_id`),
  CONSTRAINT `itinerario_ruta` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerario`
--

LOCK TABLES `itinerario` WRITE;
/*!40000 ALTER TABLE `itinerario` DISABLE KEYS */;
INSERT INTO `itinerario` VALUES (1,1,'lunes','13:30:00'),(2,1,'miercoles','13:30:00'),(3,1,'viernes','13:30:00'),(4,2,'martes','18:00:00'),(5,2,'jueves','18:00:00'),(6,2,'sabado','18:00:00'),(7,2,'sabado','18:00:00'),(8,3,'lunes','20:00:00'),(9,3,'martes','09:00:00'),(10,3,'miercoles','19:00:00'),(11,4,'jueves','10:00:00'),(12,4,'jueves','00:00:00'),(13,5,'jueves','19:00:00'),(14,5,'miercoles','21:00:00'),(15,6,'domingo','19:00:00'),(16,7,'sabado','10:00:00'),(17,8,'viernes','11:30:00'),(18,3,'martes','11:00:00');
/*!40000 ALTER TABLE `itinerario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `capacidad` decimal(10,0) NOT NULL,
  `n_asientos` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (1,'\'Boeing\'747',3,5),(2,'\'Boeing 777\'',3,5),(3,'Airbus A340\'',3,5),(4,'\'Airbus A330\'',3,5),(5,'\'Boeing 767\'',3,5);
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Mexico'),(2,'Estados Unidos'),(3,'Brasil'),(4,'Canada'),(5,'Moscow');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasajero`
--

DROP TABLE IF EXISTS `pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasajero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `gender` enum('Hombre','Mujer') NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajero`
--

LOCK TABLES `pasajero` WRITE;
/*!40000 ALTER TABLE `pasajero` DISABLE KEYS */;
INSERT INTO `pasajero` VALUES (1,'Ricardo',' Martin del Campo','Hombre','1995-10-15'),(2,'Nestor','Lira','Hombre','1995-10-15'),(3,'Erick','Vazquez','Hombre','1995-10-15'),(4,'Minerva','McGonagall','Mujer','1827-07-11'),(5,'Maria','Curie','Mujer','1867-11-07'),(6,'Sor Juana','de la Cruz','Mujer','1648-11-12');
/*!40000 ALTER TABLE `pasajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retraso`
--

DROP TABLE IF EXISTS `retraso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retraso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `motivo` enum('clima','fallaMecanica','otros') NOT NULL,
  `avion_id` int(10) unsigned NOT NULL,
  `vuelo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_avoin_idx` (`avion_id`),
  KEY `retraso_vuelo_idx` (`vuelo_id`),
  CONSTRAINT `fk_avion_retraso` FOREIGN KEY (`avion_id`) REFERENCES `avion` (`id`),
  CONSTRAINT `retraso_vuelo` FOREIGN KEY (`vuelo_id`) REFERENCES `vuelo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retraso`
--

LOCK TABLES `retraso` WRITE;
/*!40000 ALTER TABLE `retraso` DISABLE KEYS */;
/*!40000 ALTER TABLE `retraso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origen_id` int(10) unsigned NOT NULL,
  `destino_id` int(10) unsigned NOT NULL,
  `distancia` int(10) unsigned NOT NULL,
  `tiempo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `origen_id_idx` (`origen_id`),
  KEY `destino_id_idx` (`destino_id`),
  CONSTRAINT `destino_id` FOREIGN KEY (`destino_id`) REFERENCES `aeropuerto` (`id`),
  CONSTRAINT `origen_id` FOREIGN KEY (`origen_id`) REFERENCES `aeropuerto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutas`
--

LOCK TABLES `rutas` WRITE;
/*!40000 ALTER TABLE `rutas` DISABLE KEYS */;
INSERT INTO `rutas` VALUES (1,1,2,150,1550),(2,2,1,150,1550),(3,2,3,200,5000),(4,1,3,250,75015),(5,5,1,354,5165),(6,4,2,3215,16818),(7,6,1,8564,5166),(8,10,15,1358,58796);
/*!40000 ALTER TABLE `rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `hora_llegada` time DEFAULT NULL,
  `avion_id` int(10) unsigned NOT NULL,
  `itinerario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_avion_idx` (`avion_id`),
  CONSTRAINT `fk_avion` FOREIGN KEY (`avion_id`) REFERENCES `avion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
INSERT INTO `vuelo` VALUES (1,'2019-02-15','13:32:41','15:30:12',1,1),(2,'2019-06-06','13:45:23','18:59:45',3,3),(3,'2019-11-04',NULL,NULL,5,2),(4,'2020-03-04',NULL,NULL,4,6),(5,'2025-07-13',NULL,NULL,2,5),(6,'2019-01-01','19:44:58','21:09:39',1,4),(7,'2019-05-01','18:30:00','19:00:18',4,7),(8,'2018-12-25','20:53:22','22:15:35',6,9),(9,'2019-09-15',NULL,NULL,2,8),(10,'2019-05-10','19:03:05','00:15:35',5,11),(11,'2023-04-30',NULL,NULL,3,10);
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vuelos_reservados`
--

DROP TABLE IF EXISTS `vuelos_reservados`;
/*!50001 DROP VIEW IF EXISTS `vuelos_reservados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vuelos_reservados` AS SELECT 
 1 AS `Vuelo`,
 1 AS `Pasajero`,
 1 AS `Fecha`,
 1 AS `Horario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vuelos_retrasados`
--

DROP TABLE IF EXISTS `vuelos_retrasados`;
/*!50001 DROP VIEW IF EXISTS `vuelos_retrasados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vuelos_retrasados` AS SELECT 
 1 AS `vuelo`,
 1 AS `Modelo del avion`,
 1 AS `Tiempo de retraso`,
 1 AS `Ciudad de origen`,
 1 AS `Ciudad de destino`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vuelos_reservados`
--

/*!50001 DROP VIEW IF EXISTS `vuelos_reservados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vuelos_reservados` AS select `vuelo`.`id` AS `Vuelo`,concat(`pasajero`.`nombre`,`pasajero`.`apellido`) AS `Pasajero`,date_format(`vuelo`.`fecha`,'%d-%m-%Y') AS `Fecha`,concat(`itinerario`.`hora`,'hrs') AS `Horario` from (((`vuelo` join `boleto` on((`vuelo`.`id` = `boleto`.`vuelo_id`))) join `pasajero` on((`boleto`.`pasajero_id` = `pasajero`.`id`))) join `itinerario` on((`vuelo`.`itinerario_id` = `itinerario`.`id`))) where (`vuelo`.`fecha` > cast(now() as time)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vuelos_retrasados`
--

/*!50001 DROP VIEW IF EXISTS `vuelos_retrasados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vuelos_retrasados` AS select `vuelo`.`id` AS `vuelo`,`modelo`.`nombre` AS `Modelo del avion`,timediff(`vuelo`.`hora_salida`,`itinerario`.`hora`) AS `Tiempo de retraso`,`ciudad_de_aeropuerto`(`rutas`.`origen_id`) AS `Ciudad de origen`,`ciudad_de_aeropuerto`(`rutas`.`destino_id`) AS `Ciudad de destino` from ((((((((`vuelo` join `itinerario` on((`vuelo`.`itinerario_id` = `itinerario`.`id`))) join `avion` on((`vuelo`.`avion_id` = `avion`.`id`))) join `modelo` on((`avion`.`modelo_id` = `modelo`.`id`))) join `rutas` on((`itinerario`.`ruta_id` = `rutas`.`id`))) join `aeropuerto` on((`rutas`.`origen_id` = `aeropuerto`.`id`))) join `ciudad` on((`aeropuerto`.`ciudad_id` = `ciudad`.`id`))) join `estado` on((`ciudad`.`estado_id` = `estado`.`id`))) join `pais` on((`estado`.`pais_id` = `pais`.`id`))) where ((`itinerario`.`hora` - `vuelo`.`hora_salida`) < 0) group by `vuelo`.`id` order by `vuelo`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 23:46:22
