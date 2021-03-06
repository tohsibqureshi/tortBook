-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: tortbook
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `c_id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `messege` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES (1,'tohsib.qureshi@rakuten.com','hi, \r\n    how are you','Tohsib Qureshi','9809809890');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (13),(13),(13);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_no` bigint NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `i_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `informant_name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `suspect_name` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `u_id` bigint NOT NULL,
  `r` bigint DEFAULT NULL,
  PRIMARY KEY (`report_no`),
  KEY `FK74racsf5q65nfxernx5mlg6bt` (`r`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (8,'test report','2/3/2020','8fdfa5ad-1290-4a35-a783-5c54c31d96a4_alta-libre-1ratio_default_0.jpg','Tohsib Qureshi','Rajendra Nagar','Rohan','Tohsib Qureshi',2,NULL),(10,'The theft of electricity is non bailable offence under relevant provisions of the Electricity Act 2003. Theft of electricity is not only a loss to the BEST Undertaking, but it is loss to Society and Nation at large.','20/3/2020','8fdfa5ad-1290-4a35-a783-5c54c31d96a4_alta-libre-1ratio_default_0.jpg','Tohsib Qureshi','Vijay Nagar','Rohan','Tohsib Qureshi',2,NULL),(12,'Electricity theft - Illegal & Dangerous\r\n\r\nThe theft of electricity is non bailable offence under relevant provisions of the Electricity Act 2003. Theft of electricity is not only a loss to the BEST Undertaking, but it is loss to Society and Nation at large. It raises the cost of electricity to genuine customers. Further, it can lead to serious injury or death to general public and can cause financial loss due to electrical accidents, fires & explosions.\r\nFacts about theft of electricity\r\n\r\nUnder the clause 135 of the Electricity Act, 2003, the theft of electricity is punishable with imprisonment for a term, which may extend to three years or fine or both. The theft of electricity means whoever dishonestly indulges in the following:\r\n\r\nTaking direct supply without electric meter\r\nTampering of electric meter, loop connection or any other device or method which interferes the accurate registration of the meter.','21/10/22','p1.png','Lavish Rathore','Bhavarkua','Rajeev','Lavish Rathore',11,NULL);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lu` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'tohsib.qureshi@rakuten.com','8fdfa5ad-1290-4a35-a783-5c54c31d96a4_alta-libre-1ratio_default_0.jpg',_binary '\0','Tohsib Qureshi','123456','tohsib.qureshi@rakuten.com'),(11,'lavish.rakuten@gmail.com','p1.png',_binary '\0','Lavish Rathore','123456','lavish.rakuten@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 13:20:24
