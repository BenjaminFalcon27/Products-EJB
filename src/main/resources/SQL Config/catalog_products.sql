CREATE DATABASE  IF NOT EXISTS `catalog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `catalog`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: catalog
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(160) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop X1',210.04,'Powerful laptopezaeaze',50,'Laptops','2024-01-17'),(2,'Gaming PC Pro',1995.99,'High-performance gaming PC with dedicated graphics and fast processor.',30,'Desktops','2024-01-18'),(3,'Smartphone TechMax',699.99,'Feature-packed smartphone with a large display and advanced camera system.',100,'Smartphones','2024-01-19'),(4,'Programming Book Bundle',79.99,'A collection of books covering various programming languages and development practices.',20,'Books','2024-01-20'),(5,'Wireless Mechanical Keyboard',129.99,'Mechanical keyboard with wireless connectivity for a seamless typing experience.',40,'Accessories','2024-01-21'),(6,'Data Science Course',299.99,'Comprehensive online course covering data science concepts and tools.',15,'Online Courses','2024-02-01'),(7,'Developer Monitor HD',499.99,'High-resolution monitor designed for developers with multiple coding windows.',25,'Monitors','2024-02-02'),(8,'Cloud Storage Subscription',9.99,'Monthly subscription for cloud storage service with secure data backup.',200,'Services','2024-02-03'),(9,'Security Software Suite',149.99,'Comprehensive security software suite to protect your computer from threats.',35,'Software','2024-02-04'),(10,'Web Development Framework',79.99,'Powerful web development framework for building modern and scalable web applications.',18,'Frameworks','2024-02-05'),(11,'Tech News Subscription',5.99,'Monthly subscription to stay updated on the latest technology news and trends.',150,'Subscriptions','2024-02-06'),(12,'Portable External SSD',179.99,'Fast and compact external SSD for storing and transferring large files on the go.',30,'Storage','2024-02-07'),(13,'AI-powered Camera Drone',799.99,'Camera drone with AI capabilities for capturing stunning aerial footage.',10,'Drones','2024-02-08'),(14,'Virtual Reality Headset',349.99,'Immersive virtual reality headset for an interactive and realistic gaming experience.',15,'VR','2024-02-09'),(15,'Professional Audio Mixer',299.99,'Audio mixer for professional sound production and music recording.',12,'Audio Equipment','2024-02-10'),(16,'Graphic Design Software',129.99,'Advanced graphic design software for creating stunning visuals and digital artwork.',22,'Software','2024-02-11'),(17,'Smart Home Security System',399.99,'Smart home security system with cameras, sensors, and remote monitoring capabilities.',8,'Smart Home','2024-02-12'),(18,'eLearning Platform Membership',19.99,'Access to a variety of online courses and educational content on a monthly subscription basis.',100,'Online Learning','2024-02-13'),(20,'AI-powered Fitness Tracker',79,'Fitness tracker with AI algorithms for personalized workout recommendations and health monitoring.',50,'Wearables','2024-02-15');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 13:16:10
