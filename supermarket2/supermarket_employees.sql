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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `e_id` int NOT NULL,
  `e_name` varchar(255) NOT NULL,
  `e_email` varchar(255) DEFAULT NULL,
  `e_mobile` varchar(20) DEFAULT NULL,
  `e_location` varchar(255) DEFAULT NULL,
  `e_join_date` varchar(50) DEFAULT NULL,
  `d_id` int DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `employees_ibfk_1_idx` (`d_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `departments` (`d_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `db_users` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Quach Thanh Hung','quach30.5@gmail.com','0370157770','Street Number 1, Vietnam','02/06/2023',4),(2,'Nguyen Ngoc Yen','nguyen61.0@gmail.com','0564947930','Street Number 2, Vietnam','22/03/2023',4),(3,'Nguyen Quang Son','nguyen91.5@gmail.com','0972474822','Street Number 3, Vietnam','11/06/2022',1),(4,'Pham Trung Hieu','pham122.0@gmail.com','0252726686','Street Number 4, Vietnam','26/07/2022',2),(5,'Nguyen Van Trung','nguyen152.5@gmail.com','0566458124','Street Number 5, Vietnam','02/09/2024',2),(6,'Nguyen Hoang Phuc','nguyen183.0@gmail.com','0787361287','Street Number 6, Vietnam','02/11/2022',2),(7,'Doan Hai Thuong','doan213.5@gmail.com','0184762342','Street Number 7, Vietnam','09/02/2022',5),(8,'Nguyen Giang Minh','nguyen244.0@gmail.com','0530549000','Street Number 8, Vietnam','03/05/2024',4),(9,'Bui Duc Trong','bui274.5@gmail.com','0550656320','Street Number 9, Vietnam','25/02/2022',3),(10,'Vu Huy Minh','vu305.0@gmail.com','0118660101','Street Number 10, Vietnam','03/03/2024',3),(11,'Doan Thai Hung','doan335.5@gmail.com','0233785632','Street Number 11, Vietnam','19/08/2022',5),(12,'Pham Van Hung','pham366.0@gmail.com','0720830410','Street Number 12, Vietnam','16/09/2024',3),(13,'Nguyen Quang Dung','nguyen396.5@gmail.com','0481834631','Street Number 13, Vietnam','27/10/2022',3),(14,'Ha Xuan Son','ha427.0@gmail.com','0024766516','Street Number 14, Vietnam','10/10/2022',2),(15,'La Anh Duy','la457.5@gmail.com','0103704760','Street Number 15, Vietnam','23/11/2022',4),(16,'Tran Xuan Phong','tran488.0@gmail.com','0939975633','Street Number 16, Vietnam','22/06/2024',4),(17,'Tran Van Vinh','tran518.5@gmail.com','0965288194','Street Number 17, Vietnam','13/04/2023',4),(18,'Truong Manh Khiem','truong549.0@gmail.com','0931862937','Street Number 18, Vietnam','14/11/2023',3),(19,'Nguyen Kim Duc','nguyen579.5@gmail.com','0183258638','Street Number 19, Vietnam','11/11/2022',5),(20,'Pham Hai Duong','pham610.0@gmail.com','0932173055','Street Number 20, Vietnam','19/05/2023',2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
