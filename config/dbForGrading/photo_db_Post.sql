-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: photo_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `Post`
--

DROP TABLE IF EXISTS `Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Post` (
  `idPost` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photopath` varchar(2048) NOT NULL,
  `thumbnail` varchar(2048) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `fk_userId` int NOT NULL,
  PRIMARY KEY (`idPost`),
  UNIQUE KEY `idPost_UNIQUE` (`idPost`),
  KEY `post author_idx` (`fk_userId`),
  CONSTRAINT `post_author` FOREIGN KEY (`fk_userId`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Post`
--

LOCK TABLES `Post` WRITE;
/*!40000 ALTER TABLE `Post` DISABLE KEYS */;
INSERT INTO `Post` VALUES (10,'testing ','testing post','public/images/upload/8c5e1349ea6f4e4ac39c7edbb8bef7f1ac28d724d17c.png','public/images/upload/thumbnail-8c5e1349ea6f4e4ac39c7edbb8bef7f1ac28d724d17c.png',1,'2022-05-02 21:59:13',31),(11,'testing 809','first post :)','public/images/upload/533349d00458c152a204585f8e2f4937d4a0f69466bb.png','public/images/upload/thumbnail-533349d00458c152a204585f8e2f4937d4a0f69466bb.png',1,'2022-05-08 14:35:48',32),(12,'chicken','chicken','public/images/upload/fa4ce003a8f2b264e5f63a1536a393059f175110a9ec.png','public/images/upload/thumbnail-fa4ce003a8f2b264e5f63a1536a393059f175110a9ec.png',1,'2022-05-08 14:36:08',32),(13,'test 5','testing !!!!1','public/images/upload/365a5a3c45ee8062962e95a65f84d0c7ee3e920bf74d.png','public/images/upload/thumbnail-365a5a3c45ee8062962e95a65f84d0c7ee3e920bf74d.png',1,'2022-05-10 17:09:57',32),(14,'next row test','be on the next row','public/images/upload/4d245453c9260754ca92a5337586d7e4f78a043578be.png','public/images/upload/thumbnail-4d245453c9260754ca92a5337586d7e4f78a043578be.png',1,'2022-05-10 17:10:18',32),(15,'My Gaming Pc','Specs: \r\ni7 7600k\r\n32gb G skill ram\r\n2 3tb HDD\r\n1 500gb M.2\r\n1 2tb SDD\r\n3080 Gpu','public/images/upload/56d36f487ffc5c4855e0415ff65fd0227e14375826b4.jpeg','public/images/upload/thumbnail-56d36f487ffc5c4855e0415ff65fd0227e14375826b4.jpeg',1,'2022-05-12 13:38:39',32),(16,'Gaming setup','Hoping to increase the size of my desk in the next year.','public/images/upload/754f4435474514037091b0ac7297fc78c8f60462df73.jpeg','public/images/upload/thumbnail-754f4435474514037091b0ac7297fc78c8f60462df73.jpeg',1,'2022-05-12 13:39:41',32),(17,'Gaming setup ','Random setup from online','public/images/upload/e5310b6a38e603c9a5194829446dc30def08d87ed282.png','public/images/upload/thumbnail-e5310b6a38e603c9a5194829446dc30def08d87ed282.png',1,'2022-05-12 13:40:11',32),(18,'testing 801','Testing by 901','public/images/upload/034480b31da4f9fb332d3827b77bb635b9394da4f50d.png','public/images/upload/thumbnail-034480b31da4f9fb332d3827b77bb635b9394da4f50d.png',1,'2022-05-12 17:27:17',36),(19,'big description test','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available','public/images/upload/76c5679af7fcb71d9f0091d4a848bf3471dda4cfefd5.png','public/images/upload/thumbnail-76c5679af7fcb71d9f0091d4a848bf3471dda4cfefd5.png',1,'2022-05-15 11:18:51',26);
/*!40000 ALTER TABLE `Post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 11:32:15
