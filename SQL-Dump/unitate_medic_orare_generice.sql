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
-- Table structure for table `orare_generice`
--

DROP TABLE IF EXISTS `orare_generice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orare_generice` (
  `id_orar` int NOT NULL AUTO_INCREMENT,
  `CNP` int NOT NULL,
  `zi` varchar(100) NOT NULL,
  `ora_inceput` time NOT NULL,
  `ora_sfarsit` time NOT NULL,
  `unitate_medicala` varchar(100) NOT NULL,
  PRIMARY KEY (`id_orar`),
  KEY `CNP` (`CNP`),
  CONSTRAINT `orare_generice_ibfk_1` FOREIGN KEY (`CNP`) REFERENCES `user1` (`cnp`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orare_generice`
--

LOCK TABLES `orare_generice` WRITE;
/*!40000 ALTER TABLE `orare_generice` DISABLE KEYS */;
INSERT INTO `orare_generice` VALUES (1,101,'luni','07:00:00','14:00:00','Catena'),(2,101,'marti','07:00:00','14:00:00','Catena'),(3,101,'miercuri','07:00:00','14:00:00','Catena'),(4,101,'joi','07:00:00','14:00:00','Catena'),(5,101,'vineri','07:00:00','14:00:00','Catena'),(6,101,'sambata','07:00:00','14:00:00','Catena'),(7,101,'duminica','07:00:00','14:00:00','Catena'),(8,102,'luni','07:00:00','14:00:00','Somesana'),(9,102,'marti','07:00:00','14:00:00','Somesana'),(10,102,'miercuri','07:00:00','14:00:00','Somesana'),(11,102,'joi','07:00:00','14:00:00','Somesana'),(12,102,'vineri','07:00:00','14:00:00','Somesana'),(13,102,'sambata','07:00:00','14:00:00','Somesana'),(14,102,'duminica','07:00:00','14:00:00','Somesana'),(15,103,'luni','07:00:00','14:00:00','Policlinica 1'),(16,103,'marti','07:00:00','14:00:00','Policlinica 1'),(17,103,'miercuri','07:00:00','14:00:00','Policlinica 1'),(18,103,'joi','07:00:00','14:00:00','Policlinica 1'),(19,103,'vineri','07:00:00','14:00:00','Policlinica 1'),(20,103,'sambata','07:00:00','14:00:00','Policlinica 1'),(21,103,'duminica','07:00:00','14:00:00','Policlinica 1');
/*!40000 ALTER TABLE `orare_generice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-08 11:25:00
