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
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` mediumtext NOT NULL,
  `fk_authorId` int NOT NULL,
  `fk_postId` int NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `comment_author_idx` (`fk_authorId`),
  KEY `comment_belongsTo_idx` (`fk_postId`),
  CONSTRAINT `key_toPost` FOREIGN KEY (`fk_postId`) REFERENCES `Post` (`idPost`),
  CONSTRAINT `key_toUser` FOREIGN KEY (`fk_authorId`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES (6,'hello',32,11,'2022-05-10 11:08:12'),(7,'hello',32,11,'2022-05-10 11:08:12'),(8,'testing',32,11,'2022-05-10 11:44:12'),(9,'testing',32,11,'2022-05-10 11:44:13'),(10,'fdhjsafdsa',32,10,'2022-05-10 15:22:19'),(11,'fdhjsafdsa',32,10,'2022-05-10 15:22:19'),(12,'fdhjsafdsa',32,10,'2022-05-10 15:22:20'),(13,'fdhjsafdsa',32,10,'2022-05-10 15:22:21'),(14,'fdhjsafdsa',32,10,'2022-05-10 15:22:21'),(15,'fdhjsafdsa',32,10,'2022-05-10 15:22:21'),(16,'fdhjsafdsa',32,10,'2022-05-10 15:22:21'),(17,'fdhjsafdsa',32,10,'2022-05-10 15:22:21'),(18,'Testing comment',32,15,'2022-05-12 13:40:42'),(19,'                      nice build',32,16,'2022-05-12 14:02:59'),(20,'Testing comment #2                    ',32,15,'2022-05-12 14:21:27'),(21,'Testing comment #3                      ',32,15,'2022-05-12 14:22:23'),(22,'                      Testing comment #4',32,15,'2022-05-12 14:23:22'),(23,'         In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available             ',32,15,'2022-05-12 14:30:29'),(24,'                      test ',32,18,'2022-05-12 17:27:31'),(25,'                      testing for user',36,16,'2022-05-12 17:39:59'),(26,'                      comment testing',26,15,'2022-05-15 11:17:40'),(27,'                      testing',26,19,'2022-05-15 11:19:08');
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
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
