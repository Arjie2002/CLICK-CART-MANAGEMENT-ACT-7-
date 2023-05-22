-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping_db
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'user1','5f4dcc3b5aa765d61d8327deb882cf99'),(5,'a','a');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `Category_ID` int NOT NULL,
  `Category_Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Men\'s Wear','Men\'s Wear (Tops and Bottoms)'),(2,'Women\'s Apparel','Women\'s Wear'),(3,'Mobile & Gadgets','Different Mobile & Gadgets'),(4,'Beauty Products','Beauty Products for all'),(5,'Toys','Toys for Kids and Babies'),(6,'Home Appliances','Home Accessories'),(7,'Kids & Babies Wear','Kids & Babies Wear'),(8,'Computer Accessories','Different Computer Accessories'),(9,'Food & Beverages','Foods & Beverages to cooke'),(10,'Animal Accessories','Accessories for Animals');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Cust_ID` int NOT NULL,
  `Cust_FirstName` varchar(255) DEFAULT NULL,
  `Cust_LastName` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cust_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Arjie','Beredo','09955778070'),(2,'Claude Allen','Belgado','09123456789'),(3,'Daryle','Marbella','09123456798'),(4,'John Elbert','Latuna','09123456879'),(5,'Euge','Banza','09123456789'),(6,'Ely','Vergara','09345678912'),(7,'Martin','Torre','09456789123'),(8,'Ivan Klyde','Llaneta','09567891234'),(9,'Mickey','Beredo','09678912345'),(10,'John Paul','Beredo','09789123456'),(11,'John','Otilla','9123457691'),(12,'Teddy','Enaje','9123445123'),(13,'Rhoane','Marano','9123231234'),(14,'Tiya','Els','9283748591'),(15,'Joriza','Oliva','9123458901');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!50001 DROP VIEW IF EXISTS `customer_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_order` AS SELECT 
 1 AS `Cust_ID`,
 1 AS `Cust_FirstName`,
 1 AS `Cust_LastName`,
 1 AS `Order_name`,
 1 AS `Order_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `odetails`
--

DROP TABLE IF EXISTS `odetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odetails` (
  `Ord_ID` int DEFAULT NULL,
  `Prod_ID` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  KEY `OrderOrder Details` (`Ord_ID`),
  KEY `Prod_ID` (`Prod_ID`),
  KEY `ProductOrder Details1` (`Prod_ID`),
  CONSTRAINT `Order_ID` FOREIGN KEY (`Ord_ID`) REFERENCES `orders` (`Order_ID`) ON UPDATE CASCADE,
  CONSTRAINT `Product_ID` FOREIGN KEY (`Prod_ID`) REFERENCES `product` (`Product_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odetails`
--

LOCK TABLES `odetails` WRITE;
/*!40000 ALTER TABLE `odetails` DISABLE KEYS */;
INSERT INTO `odetails` VALUES (1,101,75,1),(2,102,200,1),(3,103,69000,1),(4,104,200,1),(5,105,99,1),(6,106,150,1),(7,107,75,1),(8,108,1500,1),(9,109,150,1),(10,110,45,1);
/*!40000 ALTER TABLE `odetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL,
  `Order_Name` longtext,
  `Order_Date` varchar(255) DEFAULT NULL,
  `Total_Amount` int DEFAULT NULL,
  `Customer_ID` int DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `CustomerOrder1` (`Customer_ID`),
  CONSTRAINT `Cust_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Cust_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Nike Men\'s Shirt','10-6-2022',110,1),(2,'Korean Summer Sandal','10-7-2022',293,2),(3,'phone 14 Pro Max','10-8-2022',101023,3),(4,'Aloe Vera Moisturizing Skin Care','10-9-2022',293,4),(5,'Baby Shaker Hand Hammer Toy','10-10-2022',145,5),(6,'Tough Mama Electric Fan','10-11-2022',219,6),(7,'Mickey Mouse Headband','10-12-2022',110,7),(8,'Razer Mouse Wireles','10-13-2022',2197,8),(9,'Bonus Fries','10-15-2022',219,9),(10,'Dog Laces','10-16-2022',65,10);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL,
  `Product_Name` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Categ_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `CategoryProduct` (`Categ_ID`),
  CONSTRAINT `Categ_ID` FOREIGN KEY (`Categ_ID`) REFERENCES `category` (`Category_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (101,'Nike Men\'s Shirt',75,10,1),(102,'Korean Summer Sandal',200,10,2),(103,'Iphone 14 Pro Max',69000,10,3),(104,'Aloe Vera Moisturizing Skin Care',200,10,4),(105,'Baby Shaker Hand Hammer Toy',99,10,5),(106,'Tough Mama Electric Fan',150,10,6),(107,'Mickey Mouse Headband',75,10,7),(108,'Razer Mouse Wireles',1500,10,8),(109,'Bonus Fries',150,10,9),(110,'Dog Laces',45,10,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!50001 DROP VIEW IF EXISTS `product_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_category` AS SELECT 
 1 AS `Product_ID`,
 1 AS `Product_Name`,
 1 AS `Price`,
 1 AS `Category_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `specific_productid`
--

DROP TABLE IF EXISTS `specific_productid`;
/*!50001 DROP VIEW IF EXISTS `specific_productid`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `specific_productid` AS SELECT 
 1 AS `Order_Date`,
 1 AS `Cust_FirstName`,
 1 AS `Order_Name`,
 1 AS `Total_Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'shopping_db'
--

--
-- Dumping routines for database 'shopping_db'
--
/*!50003 DROP FUNCTION IF EXISTS `addAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `addAmount`(oldval double, amount double) RETURNS double
    DETERMINISTIC
begin
	declare newval double;
	set newval = oldval * (1 + amount);
	return newval;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAmount`(in amount double)
begin
	declare done int default 0;
	declare oid int;
	declare tamount int;
	declare ordrec cursor for select Order_ID, Total_Amount from orders;
	declare continue handler for not found set done = 1;
    
	open ordrec;
    
	repeat
		fetch ordrec into oid, tamount;
		update orders
		set Total_Amount = tamount + round(tamount * amount)
		where Order_ID = oid;
	until done
	end repeat;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateProductName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateProductName`(
IN prod_id INT,
IN in_name VARCHAR(255)
)
BEGIN
UPDATE product
SET product_name = in_name
WHERE product_id = prod_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customer_order`
--

/*!50001 DROP VIEW IF EXISTS `customer_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_order` AS select `customer`.`Cust_ID` AS `Cust_ID`,`customer`.`Cust_FirstName` AS `Cust_FirstName`,`customer`.`Cust_LastName` AS `Cust_LastName`,`orders`.`Order_Name` AS `Order_name`,`orders`.`Order_Date` AS `Order_Date` from (`customer` join `orders`) where (`orders`.`Customer_ID` = `customer`.`Cust_ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_category`
--

/*!50001 DROP VIEW IF EXISTS `product_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_category` AS select `product`.`Product_ID` AS `Product_ID`,`product`.`Product_Name` AS `Product_Name`,`product`.`Price` AS `Price`,`category`.`Category_Name` AS `Category_Name` from (`product` join `category`) where (`product`.`Categ_ID` = `category`.`Category_ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `specific_productid`
--

/*!50001 DROP VIEW IF EXISTS `specific_productid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `specific_productid` AS select `orders`.`Order_Date` AS `Order_Date`,`customer`.`Cust_FirstName` AS `Cust_FirstName`,`orders`.`Order_Name` AS `Order_Name`,`orders`.`Total_Amount` AS `Total_Amount` from (`orders` join `customer`) where (`orders`.`Customer_ID` = `customer`.`Cust_ID`) */;
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

-- Dump completed on 2023-05-23  0:15:35
