-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `sup_id` int NOT NULL,
  `sup_name` varchar(255) NOT NULL,
  `sup_mobile` varchar(20) DEFAULT NULL,
  `sup_email` varchar(255) DEFAULT NULL,
  `e_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'supplier1','0123456789','supplier1@gmail.com','supplier1 Street, Vietnam'),(2,'supplier2','0123456789','supplier2@gmail.com','supplier2 Street, Vietnam'),(3,'supplier3','0123456789','supplier3@gmail.com','supplier3 Street, Vietnam'),(4,'supplier4','0123456789','supplier4@gmail.com','supplier4 Street, Vietnam'),(5,'supplier5','0123456789','supplier5@gmail.com','supplier5 Street, Vietnam'),(6,'supplier6','0123456789','supplier6@gmail.com','supplier6 Street, Vietnam'),(7,'supplier7','0123456789','supplier7@gmail.com','supplier7 Street, Vietnam'),(8,'supplier8','0123456789','supplier8@gmail.com','supplier8 Street, Vietnam'),(9,'supplier9','0123456789','supplier9@gmail.com','supplier9 Street, Vietnam'),(10,'supplier10','0123456789','supplier10@gmail.com','supplier10 Street, Vietnam'),(11,'supplier11','0123456789','supplier11@gmail.com','supplier11 Street, Vietnam'),(12,'supplier12','0123456789','supplier12@gmail.com','supplier12 Street, Vietnam'),(13,'supplier13','0123456789','supplier13@gmail.com','supplier13 Street, Vietnam'),(14,'supplier14','0123456789','supplier14@gmail.com','supplier14 Street, Vietnam'),(15,'supplier15','0123456789','supplier15@gmail.com','supplier15 Street, Vietnam'),(16,'supplier16','0123456789','supplier16@gmail.com','supplier16 Street, Vietnam'),(17,'supplier17','0123456789','supplier17@gmail.com','supplier17 Street, Vietnam'),(18,'supplier18','0123456789','supplier18@gmail.com','supplier18 Street, Vietnam'),(19,'supplier19','0123456789','supplier19@gmail.com','supplier19 Street, Vietnam'),(20,'supplier20','0123456789','supplier20@gmail.com','supplier20 Street, Vietnam');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 21:21:55
