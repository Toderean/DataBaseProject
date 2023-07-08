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
-- Table structure for table `user1`
--

DROP TABLE IF EXISTS `user1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user1` (
  `username` varchar(255) NOT NULL,
  `parola` varchar(255) NOT NULL,
  `cnp` int NOT NULL,
  `nume` varchar(255) NOT NULL,
  `prenume` varchar(255) NOT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `numarTel` varchar(20) DEFAULT NULL,
  `contIban` varchar(255) DEFAULT NULL,
  `nrCon` int NOT NULL,
  `dataAngajarii` date NOT NULL,
  `functie` varchar(30) DEFAULT NULL,
  `salariu` int NOT NULL,
  `nrOre` int NOT NULL,
  PRIMARY KEY (`cnp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user1`
--

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;
INSERT INTO `user1` VALUES ('medic1','medic1',101,'Paul','Stefanescu','Strada nr 3','0766123123','50BTRL..',2,'2020-11-11','medic',2000,180),('medic2','medic2',102,'Raul','Dumitrescu','Strada nr 4','0762223123','75BTRL..',3,'2019-01-02','medic',2500,190),('medic3','medic3',103,'Anghel','Pop','Strada nr 5','0722223123','80BTRL..',4,'2018-01-02','medic',3000,200),('asist1','asist1',104,'Ana','Mateescu','Strada nr 6','07999999999','60BTRL..',5,'2019-10-20','asistent',2000,200),('asist2','asist2',105,'Andrei','Ioan','Strada nr 7','07888888888','12BTRL..',6,'2019-10-21','asistent',2000,200),('asist3','asist3',106,'Maria','Pop','Strada nr 8','07776543212','22BTRL..',7,'2019-10-22','asistent',2000,200),('123','123',123,'123','132','123','123','123',7,'2020-10-10','admin',9000,200),('tode','tode',1052002,'Toderean','Razvan','acasa','0766430908','50..',1,'2010-10-20','admin',3000,200);
/*!40000 ALTER TABLE `user1` ENABLE KEYS */;
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
