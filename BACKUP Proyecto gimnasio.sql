CREATE DATABASE  IF NOT EXISTS `proyecto_gimnasio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_gimnasio`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_gimnasio
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencias` (
  `id_asistencia` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_clase` int DEFAULT NULL,
  `fecha` date NOT NULL,
  `presente` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_asistencia`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id_clase`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (1,1,1,'2024-07-01',1),(2,2,2,'2024-07-02',1),(3,3,3,'2024-07-03',0);
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clases` (
  `id_clase` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `id_entrenador` int DEFAULT NULL,
  PRIMARY KEY (`id_clase`),
  KEY `id_entrenador` (`id_entrenador`),
  CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenadores` (`id_entrenador`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Clase de Yoga','Clase de yoga para todos los niveles',2),(2,'Clase de Pilates','Clase de pilates para fortalecer el core',3),(3,'Clase de Zumba','Clase de zumba para quemar calorías bailando',4),(4,'Clase de Fitness','Clase de fitness para mejorar la condición física',1),(5,'Clase de Funcional','Clase de funcional para mejorar el rendimiento corporal',5);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `cuil` varchar(200) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Perez','1985-06-15','juan.perez@example.com','123456789','20-12345678-9'),(2,'Maria','Lopez','1990-11-20','maria.lopez@example.com','987654321','27-98765432-1'),(3,'Carlos','Sanchez','1978-03-12','carlos.sanchez@example.com','555123456','20-55512345-6'),(4,'Ana','Gomez','1983-08-22','ana.gomez@example.com','444987654','27-44498765-4'),(5,'Luis','Martinez','1991-07-18','luis.martinez@example.com','123123123','20-12312312-3'),(6,'Laura','Fernandez','1987-09-23','laura.fernandez@example.com','456456456','27-45645645-6'),(7,'Miguel','Rodriguez','1980-12-05','miguel.rodriguez@example.com','789789789','20-78978978-9'),(8,'Sofia','Gonzalez','1995-02-14','sofia.gonzalez@example.com','321321321','27-32132132-1'),(9,'Pablo','Ramirez','1982-03-29','pablo.ramirez@example.com','654654654','20-65465465-4'),(10,'Andrea','Torres','1989-06-17','andrea.torres@example.com','987987987','27-98798798-7'),(11,'Jorge','Diaz','1981-08-11','jorge.diaz@example.com','147147147','20-14714714-7'),(12,'Natalia','Vega','1993-10-21','natalia.vega@example.com','258258258','27-25825825-8'),(13,'Fernando','Gutierrez','1977-04-07','fernando.gutierrez@example.com','369369369','20-36936936-9'),(14,'Camila','Silva','1992-11-15','camila.silva@example.com','123123124','27-12312312-4'),(15,'Diego','Morales','1986-01-30','diego.morales@example.com','456456457','20-45645645-7'),(16,'Valeria','Herrera','1984-05-25','valeria.herrera@example.com','789789788','27-78978978-8'),(17,'Martin','Rojas','1991-09-19','martin.rojas@example.com','321321322','20-32132132-2'),(18,'Lucia','Mendoza','1988-07-26','lucia.mendoza@example.com','654654655','27-65465465-5'),(19,'Florencia','Ortiz','1983-03-05','florencia.ortiz@example.com','147147148','27-14714714-8'),(20,'Sebastian','Romero','1987-10-16','sebastian.romero@example.com','258258259','20-25825825-9'),(22,'Julia','Sosa','1996-08-02','julia.sosa@example.com','369369360','27-36936936-0'),(23,'Marcos','Ruiz','1979-06-20','marcos.ruiz@example.com','123123125','20-12312312-5'),(24,'Paula','Navarro','1990-11-30','paula.navarro@example.com','456456458','27-45645645-8'),(25,'Ricardo','Ibarra','1985-02-22','ricardo.ibarra@example.com','789789789','20-78978978-9'),(26,'Elena','Farias','1992-05-18','elena.farias@example.com','321321323','27-32132132-3'),(27,'Oscar','Pereyra','1980-07-29','oscar.pereyra@example.com','654654656','20-65465465-6'),(28,'Gabriela','Mendez','1989-12-14','gabriela.mendez@example.com','987987989','27-98798798-9'),(29,'Victor','Alvarez','1986-09-08','victor.alvarez@example.com','147147149','20-14714714-9'),(30,'Carolina','Ramos','1993-06-03','carolina.ramos@example.com','258258260','27-25825826-0'),(31,'Rodrigo','Cabrera','1982-03-27','rodrigo.cabrera@example.com','369369361','20-36936936-1'),(32,'Patricia','Juarez','1981-10-17','patricia.juarez@example.com','123123126','27-12312312-6'),(33,'Ignacio','Benitez','1995-04-09','ignacio.benitez@example.com','456456459','20-45645645-9'),(34,'Cecilia','Aguirre','1984-02-28','cecilia.aguirre@example.com','789789780','27-78978978-0'),(35,'Rafael','Nieto','1987-05-23','rafael.nieto@example.com','321321324','20-32132132-4'),(36,'Lorena','Salinas','1990-08-11','lorena.salinas@example.com','654654657','27-65465465-7'),(37,'Francisco','Campos','1983-12-26','francisco.campos@example.com','987987980','20-98798798-0'),(38,'Alicia','Luna','1988-01-15','alicia.luna@example.com','147147150','27-14714715-0'),(39,'Gustavo','Escobar','1978-11-30','gustavo.escobar@example.com','258258261','20-25825826-1'),(40,'Marta','Brito','1986-07-20','marta.brito@example.com','369369362','27-36936936-2'),(41,'Felipe','Acosta','1991-03-06','felipe.acosta@example.com','123123127','20-12312312-7'),(42,'Angela','Molina','1994-05-27','angela.molina@example.com','456456460','27-45645646-0'),(43,'Manuel','Paz','1981-02-10','manuel.paz@example.com','789789781','20-78978978-1'),(44,'Ines','Arce','1985-09-25','ines.arce@example.com','321321325','27-32132132-5'),(45,'Alberto','Rico','1993-11-22','alberto.rico@example.com','654654658','20-65465465-8'),(46,'Veronica','Ledesma','1982-07-31','veronica.ledesma@example.com','987987981','27-98798798-1'),(47,'Alejandro','Ortega','1989-04-13','alejandro.ortega@example.com','147147151','20-14714715-1'),(48,'Romina','Guerra','1996-06-18','romina.guerra@example.com','258258262','27-25825826-2'),(49,'Mariano','Serra','1979-01-02','mariano.serra@example.com','369369363','20-36936936-3'),(50,'Monica','Delgado','1992-10-29','monica.delgado@example.com','123123128','27-12312312-8'),(51,'Roberto','Ferrer','1987-03-16','roberto.ferrer@example.com','456456461','20-45645646-1'),(52,'Adriana','Mendez','1986-04-14','adriana.mendez@example.com','789789782','27-78978978-2'),(53,'Esteban','Pereira','1982-05-10','esteban.pereira@example.com','321321326','20-32132132-6'),(54,'Federico','Garcia','1984-11-21','federico.garcia@example.com','654654659','20-65465465-9'),(55,'Ariana','Serrano','1991-08-15','ariana.serrano@example.com','987987982','27-98798798-2'),(56,'Hernan','Palacios','1987-09-07','hernan.palacios@example.com','147147152','20-14714715-2'),(57,'Julia','Cruz','1986-12-19','julia.cruz@example.com','258258263','27-25825826-3'),(58,'Marcelo','Benitez','1985-05-12','marcelo.benitez@example.com','369369364','20-36936936-4'),(59,'Sabrina','Salazar','1993-01-18','sabrina.salazar@example.com','123123129','27-12312312-9'),(60,'Luciano','Moreno','1988-02-20','luciano.moreno@example.com','456456462','20-45645646-2'),(61,'Paola','Escudero','1990-11-09','paola.escudero@example.com','789789783','27-78978978-3'),(62,'Martin','Quiroga','1989-04-02','martin.quiroga@example.com','321321327','20-32132132-7'),(63,'Diana','Coria','1992-06-30','diana.coria@example.com','654654660','27-65465466-0'),(64,'Ramon','Rosales','1983-08-12','ramon.rosales@example.com','987987983','20-98798798-3'),(65,'Miriam','Franco','1984-10-24','miriam.franco@example.com','147147153','27-14714715-3'),(66,'Eduardo','Castro','1979-12-29','eduardo.castro@example.com','258258264','20-25825826-4'),(67,'Patricia','Villalba','1985-03-15','patricia.villalba@example.com','369369365','27-36936936-5'),(68,'Enrique','Barrios','1982-07-22','enrique.barrios@example.com','123123130','20-12312313-0'),(69,'Silvia','Montes','1986-11-11','silvia.montes@example.com','456456463','27-45645646-3'),(70,'Javier','Mejia','1983-01-13','javier.mejia@example.com','789789784','20-78978978-4'),(71,'Cynthia','Ponce','1988-04-18','cynthia.ponce@example.com','321321328','27-32132132-8'),(72,'Cristian','Rivas','1994-12-28','cristian.rivas@example.com','654654661','20-65465466-1'),(73,'Paula','Brizuela','1991-09-03','paula.brizuela@example.com','987987984','27-98798798-4'),(74,'Ricardo','Oliva','1987-06-14','ricardo.oliva@example.com','147147154','20-14714715-4'),(75,'Clara','Roldan','1984-02-07','clara.roldan@example.com','258258265','27-25825826-5'),(76,'Sergio','Munoz','1981-05-23','sergio.munoz@example.com','369369366','20-36936936-6'),(77,'Lucia','Arias','1990-10-30','lucia.arias@example.com','123123131','27-12312313-1'),(78,'Carlos','Bautista','1989-07-25','carlos.bautista@example.com','456456464','20-45645646-4'),(79,'Claudia','Saavedra','1991-04-05','claudia.saavedra@example.com','789789785','27-78978978-5'),(80,'Rodrigo','Salas','1985-08-16','rodrigo.salas@example.com','321321329','20-32132132-9'),(81,'Daniela','Correa','1982-09-21','daniela.correa@example.com','654654662','27-65465466-2'),(82,'Marcelo','Valdez','1987-03-09','marcelo.valdez@example.com','987987985','20-98798798-5'),(83,'Nancy','Rojas','1993-06-12','nancy.rojas@example.com','147147155','27-14714715-5'),(84,'Esteban','Ruiz','1979-10-27','esteban.ruiz@example.com','258258266','20-25825826-6'),(85,'Lorena','Caceres','1984-11-03','lorena.caceres@example.com','369369367','27-36936936-7'),(86,'Julian','Soto','1992-01-24','julian.soto@example.com','123123132','20-12312313-2'),(87,'Monica','Cardenas','1983-07-06','monica.cardenas@example.com','456456465','27-45645646-5'),(88,'Francisco','Romero','1986-03-29','francisco.romero@example.com','789789786','20-78978978-6'),(89,'Gabriela','Moya','1991-11-14','gabriela.moya@example.com','321321330','27-32132133-0'),(90,'Miguel','Campos','1988-10-10','miguel.campos@example.com','654654663','20-65465466-3'),(91,'Patricia','Vargas','1986-06-05','patricia.vargas@example.com','987987986','27-98798798-6'),(92,'Mario','Figueroa','1979-04-16','mario.figueroa@example.com','147147156','20-14714715-6'),(93,'Florencia','Orellana','1985-09-19','florencia.orellana@example.com','258258267','27-25825826-7'),(94,'Pablo','Vega','1990-03-11','pablo.vega@example.com','369369368','20-36936936-8'),(95,'Ana','Fuentes','1984-02-25','ana.fuentes@example.com','123123133','27-12312313-3'),(96,'Juan','Chavez','1983-01-28','juan.chavez@example.com','456456466','20-45645646-6'),(97,'Adriana','Sanchez','1991-07-04','adriana.sanchez@example.com','789789787','27-78978978-7'),(98,'Javier','Santana','1989-12-08','javier.santana@example.com','321321331','20-32132133-1'),(99,'Carla','Barrera','1990-09-09','carla.barrera@example.com','654654664','27-65465466-4'),(100,'Luis','Medina','1987-05-15','luis.medina@example.com','987987987','20-98798798-7');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_cliente_insert` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO LogsClientes (id_cliente, operacion)
    VALUES (NEW.id_cliente, 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_cliente_update` AFTER UPDATE ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO LogsClientes (id_cliente, operacion)
    VALUES (NEW.id_cliente, 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_cliente_delete` AFTER DELETE ON `clientes` FOR EACH ROW BEGIN
    INSERT INTO LogsClientes (id_cliente, operacion)
    VALUES (OLD.id_cliente, 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `contrataciones`
--

DROP TABLE IF EXISTS `contrataciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrataciones` (
  `id_contratacion` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `fecha_contratacion` date NOT NULL,
  PRIMARY KEY (`id_contratacion`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `contrataciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `contrataciones_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrataciones`
--

LOCK TABLES `contrataciones` WRITE;
/*!40000 ALTER TABLE `contrataciones` DISABLE KEYS */;
INSERT INTO `contrataciones` VALUES (1,1,1,'2023-01-01'),(2,2,2,'2023-02-15'),(3,3,3,'2023-03-20'),(4,4,1,'2023-04-10'),(5,5,2,'2023-05-25'),(6,6,3,'2023-06-30'),(7,7,1,'2023-07-15'),(8,8,2,'2023-08-05'),(9,9,3,'2023-09-12'),(10,10,1,'2023-10-20');
/*!40000 ALTER TABLE `contrataciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Pedro','Fernández','Recepcionista','600789012','pedro.fernandez@example.com'),(2,'Lucía','Herrera','Administrativa','600890123','lucia.herrera@example.com'),(3,'Raúl','Domínguez','Mantenimiento','600901234','raul.dominguez@example.com');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenadores`
--

DROP TABLE IF EXISTS `entrenadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenadores` (
  `id_entrenador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id_entrenador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenadores`
--

LOCK TABLES `entrenadores` WRITE;
/*!40000 ALTER TABLE `entrenadores` DISABLE KEYS */;
INSERT INTO `entrenadores` VALUES (1,'Pedro','Martinez','Fitness','123123123'),(2,'Laura','Fernandez','Yoga','456456456'),(3,'Miguel','Rodriguez','Pilates','789789789'),(4,'Sofia','Gonzalez','Zumba','321321321'),(5,'Mariano','Nuñez','Funcional','3541627879');
/*!40000 ALTER TABLE `entrenadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `id_equipo` int NOT NULL AUTO_INCREMENT,
  `id_entrenador` int DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_entrenador` (`id_entrenador`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenadores` (`id_entrenador`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,1,'Cinta de correr','ProForm','Operativo'),(2,2,'Bicicleta estática','Schwinn','Operativo'),(3,3,'Pesas','Rogue','Operativo'),(4,1,'Máquina de remo','Concept2','En mantenimiento');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `id_pago` int DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_pago` (`id_pago`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id_pago`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,'2024-07-01',30.00),(2,2,'2024-07-02',80.00),(3,3,'2024-07-03',300.00);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id_feedback` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_clase` int DEFAULT NULL,
  `calificacion` int DEFAULT NULL,
  `comentario` text,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_feedback`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id_clase`) ON DELETE CASCADE,
  CONSTRAINT `feedback_chk_1` CHECK (((`calificacion` >= 1) and (`calificacion` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,1,5,'Excelente clase de Yoga','2024-07-01'),(2,2,2,4,'Muy buen entrenamiento, pero muy intenso','2024-07-02'),(3,3,3,3,'Buena clase, pero esperaba más','2024-07-03');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id_horario` int NOT NULL AUTO_INCREMENT,
  `id_clase` int DEFAULT NULL,
  `dia_semana` varchar(20) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id_clase`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,1,'Lunes','08:00:00','09:00:00'),(2,2,'Martes','10:00:00','11:00:00'),(3,3,'Miércoles','12:00:00','13:00:00');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `id_inscripcion` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_clase` int DEFAULT NULL,
  `fecha_inscripcion` date NOT NULL,
  PRIMARY KEY (`id_inscripcion`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id_clase`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` VALUES (1,1,1,'2024-06-01'),(2,2,2,'2024-06-05'),(3,3,3,'2024-06-10'),(4,4,4,'2024-06-15'),(5,1,2,'2024-06-20');
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsclientes`
--

DROP TABLE IF EXISTS `logsclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logsclientes` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `operacion` varchar(50) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `logsclientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsclientes`
--

LOCK TABLES `logsclientes` WRITE;
/*!40000 ALTER TABLE `logsclientes` DISABLE KEYS */;
INSERT INTO `logsclientes` VALUES (1,1,'INSERT','2024-08-26 04:13:07'),(2,2,'UPDATE','2024-08-26 04:13:07'),(3,3,'DELETE','2024-08-26 04:13:07'),(4,4,'INSERT','2024-08-26 04:13:07'),(5,5,'UPDATE','2024-08-26 04:13:07'),(6,6,'DELETE','2024-08-26 04:13:07'),(7,7,'INSERT','2024-08-26 04:13:07'),(8,8,'UPDATE','2024-08-26 04:13:07'),(9,9,'DELETE','2024-08-26 04:13:07'),(10,10,'INSERT','2024-08-26 04:13:07');
/*!40000 ALTER TABLE `logsclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membresias`
--

DROP TABLE IF EXISTS `membresias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membresias` (
  `id_membresia` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `duracion_meses` int NOT NULL,
  PRIMARY KEY (`id_membresia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membresias`
--

LOCK TABLES `membresias` WRITE;
/*!40000 ALTER TABLE `membresias` DISABLE KEYS */;
INSERT INTO `membresias` VALUES (1,'Mensual',55.00,1),(2,'Trimestral',135.00,3),(3,'Anual',500.00,12);
/*!40000 ALTER TABLE `membresias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_membresia` int DEFAULT NULL,
  `fecha_pago` date NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_membresia` (`id_membresia`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`id_membresia`) REFERENCES `membresias` (`id_membresia`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,1,'2024-05-01',55.00),(2,2,2,'2024-05-01',135.00),(3,3,3,'2024-05-01',500.00),(4,4,1,'2024-05-01',55.00),(5,1,2,'2024-06-01',135.00);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_pago_insert` BEFORE INSERT ON `pagos` FOR EACH ROW BEGIN
    IF NEW.monto < 0 THEN
        SIGNAL SQLSTATE '40000'
        SET MESSAGE_TEXT = 'El pago no puede ser con un valor negativo';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_clase` int DEFAULT NULL,
  `fecha_reserva` date NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id_clase`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,1,1,'2024-07-01','Confirmada'),(2,2,2,'2024-07-02','Pendiente'),(3,3,3,'2024-07-03','Cancelada');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutinas`
--

DROP TABLE IF EXISTS `rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutinas` (
  `id_rutina` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `id_entrenador` int DEFAULT NULL,
  `descripcion` text NOT NULL,
  `fecha_asignacion` date NOT NULL,
  PRIMARY KEY (`id_rutina`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_entrenador` (`id_entrenador`),
  CONSTRAINT `rutinas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `rutinas_ibfk_2` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenadores` (`id_entrenador`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutinas`
--

LOCK TABLES `rutinas` WRITE;
/*!40000 ALTER TABLE `rutinas` DISABLE KEYS */;
INSERT INTO `rutinas` VALUES (1,1,1,'Rutina de Yoga diaria','2024-07-01'),(2,2,2,'Rutina de entrenamiento funcional','2024-07-02'),(3,3,3,'Rutina avanzada de Pilates','2024-07-03');
/*!40000 ALTER TABLE `rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE,
  CONSTRAINT `servicios_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,1,1,'Masajes','Masajes de relajación y terapéuticos',50.00),(2,2,2,'Fisioterapia','Sesiones de fisioterapia personalizadas',70.00),(3,3,3,'Nutrición','Consultas de nutrición y dietas personalizadas',40.00);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_asistencias`
--

DROP TABLE IF EXISTS `vista_asistencias`;
/*!50001 DROP VIEW IF EXISTS `vista_asistencias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_asistencias` AS SELECT 
 1 AS `id_asistencia`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `nombre_clase`,
 1 AS `fecha`,
 1 AS `presente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_clases_horarios`
--

DROP TABLE IF EXISTS `vista_clases_horarios`;
/*!50001 DROP VIEW IF EXISTS `vista_clases_horarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clases_horarios` AS SELECT 
 1 AS `id_clase`,
 1 AS `nombre_clase`,
 1 AS `descripcion`,
 1 AS `dia_semana`,
 1 AS `hora_inicio`,
 1 AS `hora_fin`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_clientes_rutinas`
--

DROP TABLE IF EXISTS `vista_clientes_rutinas`;
/*!50001 DROP VIEW IF EXISTS `vista_clientes_rutinas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clientes_rutinas` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `id_rutina`,
 1 AS `descripcion`,
 1 AS `fecha_asignacion`,
 1 AS `nombre_entrenador`,
 1 AS `apellido_entrenador`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_entrenadores_clases`
--

DROP TABLE IF EXISTS `vista_entrenadores_clases`;
/*!50001 DROP VIEW IF EXISTS `vista_entrenadores_clases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_entrenadores_clases` AS SELECT 
 1 AS `id_entrenador`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `especialidad`,
 1 AS `id_clase`,
 1 AS `nombre_clase`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_feedback`
--

DROP TABLE IF EXISTS `vista_feedback`;
/*!50001 DROP VIEW IF EXISTS `vista_feedback`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_feedback` AS SELECT 
 1 AS `id_feedback`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `nombre_clase`,
 1 AS `calificacion`,
 1 AS `comentario`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas`
--

DROP TABLE IF EXISTS `vista_reservas`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas` AS SELECT 
 1 AS `id_reserva`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `nombre_clase`,
 1 AS `fecha_reserva`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'proyecto_gimnasio'
--

--
-- Dumping routines for database 'proyecto_gimnasio'
--
/*!50003 DROP FUNCTION IF EXISTS `calcularTotalPagado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcularTotalPagado`(in_cuil VARCHAR(100)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_pagado DECIMAL(10, 2);
    SELECT SUM(p.monto) INTO total_pagado
    FROM Pagos p
    JOIN Clientes c ON p.id_cliente = c.id_cliente
    WHERE c.cuil = in_cuil;
    RETURN total_pagado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtenerNombreCompletoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtenerNombreCompletoCliente`(in_cuil VARCHAR(100)) RETURNS varchar(200) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE nombre_completo VARCHAR(200);
    SELECT CONCAT(nombre, ' ', apellido) INTO nombre_completo
    FROM Clientes
    WHERE cuil = in_cuil;
    RETURN nombre_completo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegistrarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarCliente`(
    IN p_nombre VARCHAR(100),
    IN p_apellido VARCHAR(100),
    IN p_fecha_nacimiento DATE,
    IN p_email VARCHAR(100),
    IN p_telefono VARCHAR(15),
    IN p_cuil VARCHAR(200)
    )
BEGIN
    INSERT INTO Clientes (nombre, apellido, fecha_nacimiento, email, telefono, cuil)
    VALUES (p_nombre, p_apellido, p_fecha_nacimiento, p_email, p_telefono, p_cuil);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReporteAsistenciaCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ReporteAsistenciaCliente`(
    IN p_id_cliente INT
)
BEGIN
    SELECT 
        c.nombre AS Nombre_Clase,
        a.fecha AS Fecha_Asistencia,
        a.presente AS Presente
    FROM 
        Asistencias a
    JOIN 
        Clases c ON a.id_clase = c.id_clase
    WHERE 
        a.id_cliente = p_id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verCliente`(IN p_cuil VARCHAR(200))
BEGIN 
SELECT * FROM Clientes WHERE cuil = p_cuil;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_asistencias`
--

/*!50001 DROP VIEW IF EXISTS `vista_asistencias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_asistencias` AS select `a`.`id_asistencia` AS `id_asistencia`,`c`.`nombre` AS `nombre_cliente`,`c`.`apellido` AS `apellido_cliente`,`cl`.`nombre` AS `nombre_clase`,`a`.`fecha` AS `fecha`,`a`.`presente` AS `presente` from ((`asistencias` `a` join `clientes` `c` on((`a`.`id_cliente` = `c`.`id_cliente`))) join `clases` `cl` on((`a`.`id_clase` = `cl`.`id_clase`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_clases_horarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_clases_horarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clases_horarios` AS select `c`.`id_clase` AS `id_clase`,`c`.`nombre` AS `nombre_clase`,`c`.`descripcion` AS `descripcion`,`h`.`dia_semana` AS `dia_semana`,`h`.`hora_inicio` AS `hora_inicio`,`h`.`hora_fin` AS `hora_fin` from (`clases` `c` join `horarios` `h` on((`c`.`id_clase` = `h`.`id_clase`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_clientes_rutinas`
--

/*!50001 DROP VIEW IF EXISTS `vista_clientes_rutinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clientes_rutinas` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,`r`.`id_rutina` AS `id_rutina`,`r`.`descripcion` AS `descripcion`,`r`.`fecha_asignacion` AS `fecha_asignacion`,`e`.`nombre` AS `nombre_entrenador`,`e`.`apellido` AS `apellido_entrenador` from ((`clientes` `c` join `rutinas` `r` on((`c`.`id_cliente` = `r`.`id_cliente`))) join `entrenadores` `e` on((`r`.`id_entrenador` = `e`.`id_entrenador`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_entrenadores_clases`
--

/*!50001 DROP VIEW IF EXISTS `vista_entrenadores_clases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_entrenadores_clases` AS select `e`.`id_entrenador` AS `id_entrenador`,`e`.`nombre` AS `nombre`,`e`.`apellido` AS `apellido`,`e`.`especialidad` AS `especialidad`,`c`.`id_clase` AS `id_clase`,`c`.`nombre` AS `nombre_clase`,`c`.`descripcion` AS `descripcion` from (`entrenadores` `e` join `clases` `c` on((`e`.`id_entrenador` = `c`.`id_entrenador`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_feedback`
--

/*!50001 DROP VIEW IF EXISTS `vista_feedback`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_feedback` AS select `f`.`id_feedback` AS `id_feedback`,`c`.`nombre` AS `nombre_cliente`,`c`.`apellido` AS `apellido_cliente`,`cl`.`nombre` AS `nombre_clase`,`f`.`calificacion` AS `calificacion`,`f`.`comentario` AS `comentario`,`f`.`fecha` AS `fecha` from ((`feedback` `f` join `clientes` `c` on((`f`.`id_cliente` = `c`.`id_cliente`))) join `clases` `cl` on((`f`.`id_clase` = `cl`.`id_clase`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas` AS select `r`.`id_reserva` AS `id_reserva`,`c`.`nombre` AS `nombre_cliente`,`c`.`apellido` AS `apellido_cliente`,`cl`.`nombre` AS `nombre_clase`,`r`.`fecha_reserva` AS `fecha_reserva`,`r`.`estado` AS `estado` from ((`reservas` `r` join `clientes` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) join `clases` `cl` on((`r`.`id_clase` = `cl`.`id_clase`))) */;
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

-- Dump completed on 2024-08-28 13:01:24
