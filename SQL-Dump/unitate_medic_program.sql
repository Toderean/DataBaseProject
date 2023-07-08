-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unitate_medic
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `id_program` int NOT NULL AUTO_INCREMENT,
  `luni_inceput` time NOT NULL,
  `luni_sfarsit` time NOT NULL,
  `marti_inceput` time NOT NULL,
  `marti_sfarsit` time NOT NULL,
  `miercuri_inceput` time NOT NULL,
  `miercuri_sfarsit` time NOT NULL,
  `joi_inceput` time NOT NULL,
  `joi_sfarsit` time NOT NULL,
  `vineri_inceput` time NOT NULL,
  `vineri_sfarsit` time NOT NULL,
  `sambata_inceput` time NOT NULL,
  `sambata_sfarsit` time NOT NULL,
  `duminica_inceput` time NOT NULL,
  `duminica_sfarsit` time NOT NULL,
  PRIMARY KEY (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00'),(2,'07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00'),(3,'07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00','07:00:00','14:00:00');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-08 11:24:59
