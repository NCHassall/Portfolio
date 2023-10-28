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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `Transaction_ID` int NOT NULL,
  `Payment_ID` int NOT NULL,
  `Order_ID` int NOT NULL,
  `Date_and_Time` timestamp NOT NULL,
  `Refund` tinyint(1) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `fk_Payment_ID` (`Payment_ID`),
  KEY `fk_Order_ID` (`Order_ID`),
  CONSTRAINT `fk_Order_ID` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  CONSTRAINT `fk_Payment_ID` FOREIGN KEY (`Payment_ID`) REFERENCES `payments` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1,'2022-11-05 13:06:27',0),(2,2,2,'2022-11-05 13:32:22',0),(3,3,3,'2022-11-05 18:18:06',0),(4,4,4,'2022-11-14 09:07:46',0),(5,5,5,'2022-11-28 22:34:57',0),(6,6,6,'2022-11-28 23:13:44',0),(7,7,7,'2022-12-02 12:13:44',1),(8,8,8,'2022-12-07 13:33:25',0),(9,9,9,'2022-12-07 13:14:27',0),(10,10,10,'2022-12-13 20:05:33',0),(11,11,11,'2022-12-13 20:07:44',0),(12,12,12,'2022-12-14 06:07:44',1),(13,13,13,'2022-12-14 10:33:42',0),(14,14,14,'2022-12-14 11:02:44',0),(15,15,15,'2022-12-14 13:06:27',0),(16,16,16,'2022-12-16 23:08:45',0),(17,17,17,'2022-12-18 15:44:23',0),(18,18,18,'2022-12-19 00:04:34',0),(19,19,19,'2022-12-24 04:55:34',0),(20,20,20,'2022-12-25 19:22:45',0);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
