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
-- Table structure for table `manufacture`
--

DROP TABLE IF EXISTS `manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacture` (
  `Manufacture_Code` int NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Materials` varchar(50) NOT NULL,
  `Length_MM` float DEFAULT NULL,
  `Width_MM` float DEFAULT NULL,
  `Cost` decimal(10,2) NOT NULL,
  `Supplier` varchar(50) NOT NULL,
  PRIMARY KEY (`Manufacture_Code`),
  KEY `idx_Product_Name` (`Product_Name`),
  CONSTRAINT `fk_Product_Name` FOREIGN KEY (`Product_Name`) REFERENCES `products` (`Product_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacture`
--

LOCK TABLES `manufacture` WRITE;
/*!40000 ALTER TABLE `manufacture` DISABLE KEYS */;
INSERT INTO `manufacture` VALUES (1,'Spring_Flower','MDF',850,570,17.00,'Latham'),(2,'Tree_of_Life','MDF',670,1150,18.00,'Latham'),(3,'Tree_of_Life','Veneered_Plywood',670,1150,12.00,'Kitronik'),(4,'Ginkgo_Leaf','Steel',730,760,9.00,'The_Metal_Store'),(5,'Ginkgo_Leaf','Powder_Coating',NULL,NULL,0.90,'Frost'),(6,'Botanical_Leaf','Veneered_Plywood',190,190,26.00,'Latham'),(7,'Lotus_Leaf','MDF',700,600,15.00,'Latham'),(8,'Monstera_Leaves','Veneered_Plywood',700,1200,12.00,'Kitronik'),(9,'Flower_Girl_Keepsake','Laser_Ply',55,30,0.20,'Hobarts'),(10,'Bridesmaid_Initial','Laser_Ply',75,75,0.45,'Hobarts'),(11,'Bridesmaid_Initial','White_Perspex',75,75,1.20,'Hindleys'),(12,'Mother_Of_The_Bride','Laser_Ply',50,30,0.18,'Hobarts'),(13,'Will_You_Be_My','Laser_Ply',100,100,0.55,'Hobarts'),(14,'Place_Cards','Veneered_Plywood',55,55,0.25,'Kitronik'),(15,'Name_Hoop','MDF',200,250,3.00,'Latham'),(16,'Cake_Topper','Veneered_Plywood',200,100,1.25,'Kitronik'),(17,'Cake_Topper','Mirrored_Perspex',30,30,0.20,'Hindleys'),(18,'Name_Puzzle','Birch_Plywood',330,100,1.26,'Latham'),(19,'Table_Confetti','Laser_Ply',30,30,0.10,'Hobarts'),(20,'Gift_Plaque','Clear_Perspex',100,100,1.80,'Hindleys');
/*!40000 ALTER TABLE `manufacture` ENABLE KEYS */;
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
