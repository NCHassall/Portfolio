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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customer_ID` int NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Building_Number` int NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(60) NOT NULL,
  `Postcode` char(8) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alice','Smith',23,'Main Street','Birmingham','B1 1DE','alice.smith@gmail.com'),(2,'Bob','Johnson',45,'Elm Street','Nottingham','NG5 0AB','bobster.j@hotmail.co.uk'),(3,'Charlie','Lee',78,'Oak Avenue','Bristol','BS14 9UE','charles.lee.junior@gmail.com'),(4,'David','Brown',260,'Maple Drive','Nottingham','NG1 7XE','d-brown@gmail.com'),(5,'Emma','Davis',135,'Pine Street','Liverpool','L11 8NH','emmadavis@hotmail.co.uk'),(6,'Emma','Wilson',9,'Cedar Road','Liverpool','L4 ORB','EMMAWILSON@GMAIL.CO.UK'),(7,'Grace','Martin',82,'Willow Lane','Norwich','NR7 5ES','gracemartin2003@gmail.com'),(8,'Henry','Jackson',35,'Cherry Street','Newcastle','NE2 2LE','henryCmartin@hotmail.com'),(9,'Isabel','Taylor',68,'Birch Avenue','Norwich','NR10 3RR','isabeltaylor93@outlook.com'),(10,'Jayne','Anderson',3,'Juniper Avenue','St Albans','AL6 7EE','75janderson@gmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `monitoring_stock`
--

DROP TABLE IF EXISTS `monitoring_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitoring_stock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Last_Update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoring_stock`
--

LOCK TABLES `monitoring_stock` WRITE;
/*!40000 ALTER TABLE `monitoring_stock` DISABLE KEYS */;
INSERT INTO `monitoring_stock` VALUES (1,'2023-03-26 13:13:34');
/*!40000 ALTER TABLE `monitoring_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Purchased` timestamp NOT NULL,
  `Shipped` date DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `fk_Product_ID` (`Product_ID`),
  KEY `fk_Customer_ID` (`Customer_ID`),
  CONSTRAINT `fk_Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  CONSTRAINT `fk_Product_ID` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,7,8,'2022-11-05 13:06:27','2022-11-10'),(2,16,8,'2022-11-05 13:32:22','2022-11-10'),(3,3,5,'2022-11-05 18:18:06','2022-11-07'),(4,3,6,'2022-11-14 09:07:46','2022-11-15'),(5,12,5,'2022-11-28 22:34:57','2022-12-02'),(6,8,10,'2022-11-28 23:13:44','2022-11-29'),(7,2,9,'2022-12-02 12:13:44','2022-12-03'),(8,4,8,'2022-12-07 13:33:25','2022-12-08'),(9,8,8,'2022-12-07 13:14:27','2022-12-08'),(10,6,2,'2022-12-13 20:05:33',NULL),(11,4,1,'2022-12-13 20:07:44','2022-12-15'),(12,2,7,'2022-12-14 06:07:44','2022-12-15'),(13,9,4,'2022-12-14 10:33:42','2022-12-18'),(14,15,3,'2022-12-14 11:02:44','2022-12-18'),(15,16,8,'2022-12-14 13:06:27','2022-12-18'),(16,4,10,'2022-12-16 23:08:45','2022-12-18'),(17,2,7,'2022-12-18 15:44:23','2022-12-19'),(18,1,4,'2022-12-19 00:04:34','2022-12-20'),(19,11,6,'2022-12-24 04:55:34','2023-01-04'),(20,3,7,'2022-12-25 19:22:45','2023-12-29');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `idx_Product_Name` (`Product_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Spring_Flower',69.99,'Wall_Decoration',2),(2,'Tree_of_Life',42.99,'Wall_Decoration',2),(3,'Ginkgo_Leaf',90.76,'Wall_Decoration',4),(4,'Botanical_Leaf',14.99,'Wall_Decoration',6),(5,'Lotus_Leaf',62.99,'Wall_Decoration',1),(6,'Monstera_Leaves',84.93,'Wall_Decoration',3),(7,'Flower_Girl_Keepsake',7.95,'Wedding',10),(8,'Bridesmaid_Initial',9.00,'Wedding',15),(9,'Mother_Of_The_Bride',4.75,'Wedding',2),(10,'Will_You_Be_My',10.00,'Wedding',5),(11,'Place_Cards',2.50,'Wedding',20),(12,'Name_Hoop',10.99,'Birthday',1),(13,'Cake_Topper',9.50,'Birthday',1),(14,'Name_Puzzle',11.20,'Birthday',1),(15,'Table_Confetti',5.95,'Birthday',2),(16,'Gift_Plaque',12.50,'Birthday',2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `Review_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Rating` int NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Review_ID`),
  KEY `fk_Product_Review` (`Product_ID`),
  KEY `fk_Customer_Review` (`Customer_ID`),
  CONSTRAINT `fk_Customer_Review` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  CONSTRAINT `fk_Product_Review` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,7,8,'Henry',5,'2022-11-12'),(2,16,8,'Henry',5,'2022-11-12'),(3,12,5,'Emma',5,'2023-01-02'),(4,2,9,'Isabel',5,'2022-12-10'),(5,2,7,'Grace',4,'2023-01-26'),(6,4,10,'Jayne',5,'2023-01-12'),(7,16,8,'Henry',5,'2022-12-29');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shop_analysis`
--

DROP TABLE IF EXISTS `shop_analysis`;
/*!50001 DROP VIEW IF EXISTS `shop_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shop_analysis` AS SELECT 
 1 AS `product_ID`,
 1 AS `product_name`,
 1 AS `category`,
 1 AS `total_orders`,
 1 AS `unique_customers`,
 1 AS `total_sales_amount`,
 1 AS `average_rating`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Dumping events for database 'designs'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `check_low_stock` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `check_low_stock` ON SCHEDULE EVERY 24 HOUR STARTS '2023-03-26 14:13:34' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	INSERT INTO monitoring_stock(Last_Update)
    VALUES (Now());
	UPDATE products
    SET is_low_stock = 1
    WHERE quantity_in_stock <= 2;

END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'designs'
--
/*!50003 DROP FUNCTION IF EXISTS `Product_Profit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Product_Profit`(
    product_name VARCHAR(100)
) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE Profit DECIMAL(10,2);
    
    SELECT SUM(p.price - m.cost) INTO Profit
    FROM products AS p
    JOIN manufacture AS m ON
    p.product_name = m.product_name
    WHERE p.product_name = product_name;
   
    RETURN Profit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCustomer`(
IN Customer_id INT,
IN First_Name VARCHAR(100),
IN Email VARCHAR(100))
BEGIN

INSERT INTO customers(customer_ID, First_Name, Email)
VALUES (customer_ID, First_Name, Email);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lowercase_emails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lowercase_emails`()
BEGIN
UPDATE Customers
SET email = LOWER(email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `shop_analysis`
--

/*!50001 DROP VIEW IF EXISTS `shop_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shop_analysis` AS select `p`.`Product_ID` AS `product_ID`,`p`.`Product_Name` AS `product_name`,`p`.`Category` AS `category`,count(`o`.`Order_ID`) AS `total_orders`,count(distinct `o`.`Customer_ID`) AS `unique_customers`,sum(`py`.`Amount`) AS `total_sales_amount`,avg(`r`.`Rating`) AS `average_rating` from (((((`products` `p` join `orders` `o` on((`p`.`Product_ID` = `o`.`Product_ID`))) join `customers` `c` on((`o`.`Customer_ID` = `c`.`Customer_ID`))) join `transactions` `t` on((`t`.`Order_ID` = `o`.`Order_ID`))) join `payments` `py` on((`py`.`Payment_ID` = `t`.`Payment_ID`))) left join `reviews` `r` on((`p`.`Product_ID` = `r`.`Product_ID`))) group by `p`.`Product_ID` order by `total_sales_amount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 14:19:40
