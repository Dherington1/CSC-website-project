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
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idUsers_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (20,'dherington3','dherington3@comcast.net','Samison12',1,'2022-04-27 19:24:07'),(21,'dherington4','dherington4@comcast.net','Samison12',1,'2022-04-27 19:24:07'),(22,'dherington5','dherington5@comcast.net','Samison12',1,'2022-04-27 19:24:07'),(23,'dherington6','dherington6@comcast.net','Samison12',1,'2022-04-27 19:24:07'),(24,'Dherington1','dherington1@comcast.net','$',1,'2022-04-27 19:24:54'),(25,'DH1234','ddonuts06@yahoo.com','$',1,'2022-04-27 19:32:24'),(26,'DH8901','ddonuts02@yahoo.com','$2b$15$tgV.mFSKnwcCrqUx6mYck.7yv6k8vYe.M4sqs1HJh32B5hkSXihWG',1,'2022-04-27 19:46:20'),(27,'Dherington1890','ddonuts09@yahoo.com','$2b$15$wLWvNGFKo7z0f8z9V9EQyO5PCKFbYmiy9JtOarIm33gaYugjc3O5y',1,'2022-05-02 14:52:37'),(28,'Dherington18091','ddonuts80@yahoo.com','$2b$15$BF4ZlqTsHPyO6Q4LustrAeyY5EtcxoLDpI.uQyjHr6gzxpLZulXVW',1,'2022-05-02 15:32:57'),(29,'donuts06','test1@comcast.net','$2b$15$g/GVYHr6E3m.p36bwAfUFO63MSNvNaoy1FIeXHqc1gmHrEO0n4iOy',1,'2022-05-02 16:12:40'),(30,'test1','test@yahoo.com','$2b$15$R/OasXUBc3pyicdhd.zbC.x4rWXqf20I1bd38VJTy17ZkxsI.k3Ri',1,'2022-05-02 16:41:42'),(31,'Dherington1456','Ash@comcast.net','$2b$15$EvIgAdG67YUY45nTJ38Qq.x9bivN0q/czBhhx/xrXz1vIITuR1Aym',1,'2022-05-02 21:32:32'),(32,'DH2016','ashCash@yahoo.com','$2b$15$OMKD8xV9ykAeMPr9wQ7F6OMcFctv52xZ89E9d5ZvmQ2h7g9IRz2O.',1,'2022-05-08 14:35:06'),(33,'tester32','testt=er12@yahoo.com','$2b$15$.7VRaoUMOl4YHfQnCxyw1OrbCUXssdSngr7QrHcBuVd7gvQ.pL26y',1,'2022-05-08 16:45:45'),(34,'Dherington2019','dherington@yahoo.com','$2b$15$PUJsqE11x/u1BuhFQNvQbOUE7U5WADEUCYykZ0FEudDyVoht5to7C',1,'2022-05-08 17:05:54'),(35,'Connor23','connor23@yahoo.com','$2b$15$iuslcQVpkF/M7zJa5iwaPOCq8TxZKzlllhGf.lnCL1slkBZA5mV1W',1,'2022-05-12 16:55:26'),(36,'test901','test901@yahoo.com','$2b$15$R.I3DtikS8LNU9y.nRPwp.bCtAfJn.M0Rr5YCf2blQZutrL47I5pa',1,'2022-05-12 17:25:23');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 11:32:14
