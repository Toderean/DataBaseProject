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
-- Table structure for table `programare`
--

DROP TABLE IF EXISTS `programare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programare` (
  `id_p` int NOT NULL AUTO_INCREMENT,
  `ziua` date DEFAULT NULL,
  `ora` time DEFAULT NULL,
  `durata` time DEFAULT NULL,
  `CNP` int DEFAULT NULL,
  `serviciu` varchar(100) DEFAULT NULL,
  `unitate_medicala` varchar(255) DEFAULT NULL,
  `nume_pacient` varchar(255) NOT NULL,
  `prenume_pacient` varchar(255) NOT NULL,
  PRIMARY KEY (`id_p`),
  KEY `CNP` (`CNP`),
  CONSTRAINT `programare_ibfk_1` FOREIGN KEY (`CNP`) REFERENCES `medic` (`CNP`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programare`
--

LOCK TABLES `programare` WRITE;
/*!40000 ALTER TABLE `programare` DISABLE KEYS */;
INSERT INTO `programare` VALUES (7,'2020-11-12','09:00:00','00:20:00',101,'RMN','Somesana','Pop','Vasile'),(8,'2020-09-10','10:00:00','00:20:00',101,'RMN','Somesana','Pop','Maria'),(9,'2020-05-12','12:00:00','02:00:00',102,'Chirurgie','Catena','Ioan','Andrei'),(10,'2020-06-12','11:00:00','01:00:00',102,'RMN','Catena','Victoria','Mariana'),(11,'2020-12-12','08:00:00','00:30:00',103,'Chirurgie','Policlinica 1','Marian','Ion'),(12,'2020-01-25','09:00:00','03:00:00',103,'Operatie de Menisc','Policlinica 1','Popescu','Iordache');
/*!40000 ALTER TABLE `programare` ENABLE KEYS */;
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
