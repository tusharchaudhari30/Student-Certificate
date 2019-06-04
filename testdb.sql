-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `certificate` (
  `ref_no` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `certificate` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ref_no`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
INSERT INTO `certificate` VALUES (61,1411760008,'2019-03-16 11:52:44','Bonafide'),(62,1611760049,'2019-03-16 12:29:41','Bonafide'),(63,1611760049,'2019-03-16 14:39:38','Bonafide'),(64,1411760008,'2019-03-16 15:20:08','LC'),(65,1411760008,'2019-03-16 15:21:11','LC'),(66,1411760008,'2019-03-16 15:21:29','LC'),(67,1411760008,'2019-03-16 15:22:05','LC'),(68,1411760008,'2019-03-16 15:23:02','LC'),(69,1411760008,'2019-03-16 15:24:32','LC'),(70,1411760008,'2019-03-16 15:25:33','LC'),(71,1411760008,'2019-03-16 15:26:38','LC'),(72,1411760008,'2019-03-16 15:31:55','LC'),(73,1411760008,'2019-03-16 15:38:56','LC'),(74,1411760008,'2019-03-16 15:39:31','Bonafide'),(75,1411760008,'2019-03-16 15:45:46','LC'),(76,1411760008,'2019-03-16 15:46:51','LC'),(77,1411760008,'2019-03-16 15:48:34','LC'),(78,1611760049,'2019-03-16 16:20:00','Bonafide'),(79,1611760049,'2019-03-17 20:06:45','Bonafide'),(80,1611760049,'2019-03-18 08:38:32','Bonafide');
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `enroll_no` int(10) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `parent_name` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  `last_institute` varchar(50) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `subcast` varchar(50) DEFAULT NULL,
  `progress` varchar(250) DEFAULT NULL,
  `conduct` varchar(250) DEFAULT NULL,
  `result_leave` varchar(50) DEFAULT NULL,
  `reason_leave` varchar(250) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `current_year` int(10) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `date_of_leave` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `bonafide` int(11) DEFAULT NULL,
  `LC` int(11) DEFAULT NULL,
  `Modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`enroll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='student database of collage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1411760008,'Shubham','Devidas','Dhande','Vijaya','Devidas Dhande','India','Jalgaon','Shree Swami Narayan','Leva Patidar','Leva Patil','good','good','55%','Completed education','Male','Computer',3,'2014-07-17','2019-03-16','1998-08-05',1,4,1),(1511760038,'Aishwariya','Mukesh','Badgujar','Minakshi','Mukesh Badgujar','India','Jalgaon','Shree Swami Narayan','Gujar','Gujar',NULL,NULL,NULL,NULL,'Female','Computer',3,'2015-05-15',NULL,'1999-02-22',0,0,1),(1611760049,'Tushar','Tejsing ','Chaudhari','Harsha','Tejsing Chaudhari','India','Jalgaon','A.T.Zambare','Rajput','Rajput',NULL,NULL,NULL,NULL,'Male','Computer',2,'2016-06-06',NULL,'2000-09-30',5,0,1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD` varchar(60) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `MOBILE_NUMBER` int(10) DEFAULT NULL,
  `FIRST_NAME` varchar(45) DEFAULT NULL,
  `LAST_NAME` varchar(45) DEFAULT NULL,
  `EMAIL_ID` varchar(90) NOT NULL,
  `USER_ROLE` varchar(20) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `MODIFIED_DATE` date DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$SzYSXv8Q5M4Ok8x.7V1XEecrVgfaf2n45GhrOQxjg1WStMFcA.NNK','tushar',84466,'tushar','chaudhari','blazeric30@gmail.com','Admin','2019-03-10',1,'2019-03-10'),(14,'$2a$10$u3aiErueMCuwlclWXYWq2empKfzWc5xrV5vFPqRc0GzltvRhb7xae','Shubham',NULL,'shubham','dhande','hackershub420@gmail.com','User','2019-03-10',1,NULL),(15,'$2a$10$0lGlG1TNQTy/WwSyAWA8zu9ZYaND5c5xRrabf.vgpWH89COveq8z2','Shubham',NULL,'shubham','dhande','hackershub420@gmail.com','User','2019-03-17',1,NULL);
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

-- Dump completed on 2019-03-31 16:44:19
