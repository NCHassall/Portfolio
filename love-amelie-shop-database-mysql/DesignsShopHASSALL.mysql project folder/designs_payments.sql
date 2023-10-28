-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: designs
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `Payment_ID` int NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Date` date NOT NULL,
  `Method` varchar(12) DEFAULT NULL,
  `Status` char(9) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,7.95,'2022-11-05','Credit_Card','Approved'),(2,12.50,'2022-11-05','Credit_Card','Approved'),(3,90.75,'2022-11-05','Debit_Card','Approved'),(4,90.75,'2022-11-14','Debit_Card','Approved'),(5,10.99,'2022-11-28','Debit_Card','Approved'),(6,9.00,'2022-11-28','PayPal','Approved'),(7,42.99,'2022-12-02','PayPal','Refunded'),(8,14.99,'2022-12-07','Credit_Card','Approved'),(9,9.00,'2022-12-07','Credit_Card','Approved'),(10,84.93,'2022-12-13','PayPal','Cancelled'),(11,14.99,'2022-12-13','Debit_Card','Approved'),(12,42.99,'2022-12-14','PayPal','Refunded'),(13,4.75,'2022-12-14','PayPal','Approved'),(14,5.95,'2022-12-14','PayPal','Approved'),(15,12.50,'2022-12-14','Credit_Card','Approved'),(16,14.99,'2022-12-16','Credit_Card','Approved'),(17,42.99,'2022-12-18','Debit_Card','Approved'),(18,69.99,'2022-12-19','PayPal','Approved'),(19,2.50,'2022-12-24','PayPal','Approved'),(20,90.75,'2022-12-25','PayPal','Pending');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 14:21:26
