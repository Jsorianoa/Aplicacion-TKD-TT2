-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: interpolitecnicos
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `categoria` int NOT NULL,
  `nombre_categoria` varchar(30) DEFAULT NULL,
  `peso_rango` float DEFAULT NULL,
  `edad_rango` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competidor`
--

DROP TABLE IF EXISTS `competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competidor` (
  `no_boleta` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `categoria` varchar(7) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `division` varchar(7) DEFAULT NULL,
  `peso` decimal(4,2) DEFAULT NULL,
  `grado` varchar(8) DEFAULT NULL,
  `id_escuela` varchar(9) DEFAULT NULL,
  `id_profesor` int DEFAULT NULL,
  `nss` int DEFAULT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competidor`
--

LOCK TABLES `competidor` WRITE;
/*!40000 ALTER TABLE `competidor` DISABLE KEYS */;
INSERT INTO `competidor` VALUES (2014630515,'ISRAEL VAZQUEZ','JUVENIL',17,'M','Heavy',74.00,'NEGRA','ESCOM',NULL,NULL,'$2b$10$S44GPCdWqS/ynwB63Ql4I.WUNwv7AQWaJ15zLpxFXRhCEsbCTFjtC'),(2014630515,'ISRAEL VAZQUEZ','JUVENIL',17,'M','Heavy',74.00,'NEGRA','ESCOM',NULL,NULL,'$2b$10$sAN8sJAB1A3l/49AgQex8.i/CcOEYg2negYReUlZUBmYaLOoysiu.'),(2014630515,'ISRAEL VAZQUEZ','JUVENIL',17,'M','Heavy',74.00,'NEGRA','ESCOM',NULL,NULL,'$2b$10$2jz6IvNpsFUqYcMpvMbAUe.v2IWZhX8Vs7NqguQ8LOyZIts9eHge6'),(2014630515,'ISRAEL VAZQUEZ','JUVENIL',17,'M','Heavy',74.00,'NEGRA','ESCOM',NULL,NULL,'$2b$10$b07x0V4GWD8jB3zgvXWyJeEqTRfMKnEr3wUC7kDU6kHwkGEtXsWcu'),(2014630483,'JORGE SORIANO','JUVENIL',17,'M','Heavy',74.00,'NEGRA','ESCOM',NULL,NULL,'$2b$10$CdiCEgCGGWr8ZDZ/XsdSFORx5q00WJoOO1AFuqHR/OVbOpTHCrrA2'),(2015630309,'Gabriela Moedano',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2b$10$0Uqaqq30lNdnhlOMZMB4OuFZ0VFqHLbWe9EyxdiRgNLVxVEHJm/aG'),(2016630303,'Juan Gabriel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2b$10$bmCvz8W77WxkfPeYSMZ72OAAtFkP6dApsWj5n2vluFtQPCIPEhmF6'),(2016000000,'juan Hernandez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2b$10$CLwOAEJg3J/tqHkcRdmtj.f3jjhURSes4SntopJjVIhb.paRxUOKK'),(2017171717,'Javier Gomez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2b$10$KCxNowP4wa4LzWmVdPAdj.zR6X6qetaJ3zELcFxdfBGZjopobwsQa');
/*!40000 ALTER TABLE `competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id_evento` int NOT NULL,
  `nombre_evento` varchar(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_escuela` int DEFAULT NULL,
  `id_grafica` int DEFAULT NULL,
  `no_boleta` int DEFAULT NULL,
  `ranking_superior` varchar(50) DEFAULT NULL,
  `id_juez` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grafica`
--

DROP TABLE IF EXISTS `grafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grafica` (
  `id_grafica` int NOT NULL,
  `categoria` varchar(12) DEFAULT NULL,
  `grado` varchar(12) DEFAULT NULL,
  `numero_competidores` int DEFAULT NULL,
  `id_juez` int DEFAULT NULL,
  `primero` int DEFAULT NULL,
  `segundo` int DEFAULT NULL,
  `tercero` int DEFAULT NULL,
  `tercero2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grafica`
--

LOCK TABLES `grafica` WRITE;
/*!40000 ALTER TABLE `grafica` DISABLE KEYS */;
/*!40000 ALTER TABLE `grafica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juez`
--

DROP TABLE IF EXISTS `juez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juez` (
  `id_juez` int NOT NULL,
  `password` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juez`
--

LOCK TABLES `juez` WRITE;
/*!40000 ALTER TABLE `juez` DISABLE KEYS */;
/*!40000 ALTER TABLE `juez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id_profesor` int NOT NULL,
  `Nombre` varchar(80) DEFAULT NULL,
  `id_escuela` varchar(12) DEFAULT NULL,
  `contraseña` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-24  2:32:28
