-- MySQL dump 10.13  Distrib 5.7.20, for osx10.13 (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin@gmail.com','5ebe2294ecd0e0f08eab7690d2a6ee69','18-10-2016 04:18:16');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'E-commerce','E-commerce','2017-03-28 07:10:55',''),(2,'general','dsdas','2017-06-11 10:54:06','');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaintremark`
--

DROP TABLE IF EXISTS `complaintremark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaintremark`
--

LOCK TABLES `complaintremark` WRITE;
/*!40000 ALTER TABLE `complaintremark` DISABLE KEYS */;
INSERT INTO `complaintremark` VALUES (1,2,'in process','this is complain one ','2017-04-01 17:29:19'),(2,9,'in process','hiiiiiiiiiiiiiiiiiiii','2017-04-01 18:37:59'),(3,3,'in process','test','2017-05-02 15:57:43'),(4,19,'closed','case solved','2017-06-11 11:18:33');
/*!40000 ALTER TABLE `complaintremark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (3,'Dhaka','','2016-10-18 11:35:02',''),(4,'Chittagong','pbPB','2016-10-18 11:35:58','28-03-2017 03:40:02 PM'),(5,'Barishal','Haryana','2017-03-28 07:20:36',''),(6,'Khulna','fsdf','2017-06-11 10:54:12','');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,1,'Online SHopping','2017-03-28 07:11:07',''),(2,1,'E-wllaet','2017-03-28 07:11:20','');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomplaints`
--

DROP TABLE IF EXISTS `tblcomplaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomplaints`
--

LOCK TABLES `tblcomplaints` WRITE;
/*!40000 ALTER TABLE `tblcomplaints` DISABLE KEYS */;
INSERT INTO `tblcomplaints` VALUES (1,1,1,'E-wllaet','General Query','dhaka','test demo','test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo',NULL,'2017-03-30 16:52:40','in process','2018-03-30 17:39:04'),(2,1,1,'Online SHopping','General Query','khulna','testing','sample text for demo','','2017-03-30 17:05:56','in process','2018-03-30 17:39:07'),(3,1,1,'Online SHopping',' Complaint','borishal','ferwekt lwentgwewt','wetwetwe','','2017-03-30 17:07:51','in process','2018-03-30 17:39:10'),(4,1,1,'E-wllaet','General Query','dhaka','lkdlsfklsdf','fdsf,msd,f  f f','2. Compendium Selected Paper.doc','2017-03-30 17:13:14','closed','2018-03-30 17:39:11'),(5,1,1,'E-wllaet',' Complaint','dhaka','bgfhfgh','hfghfgh','1 (3).jpg','2017-03-30 17:14:55',NULL,'2018-03-30 17:39:13'),(6,1,1,'E-wllaet',' Complaint','dhaka','bgfhfgh','hfghfgh','1 (3).jpg','2017-03-30 17:20:16',NULL,'2018-03-30 17:39:16'),(7,1,1,'E-wllaet',' Complaint','rangpur','bgfhfgh','hfghfgh','1 (3).jpg','2017-03-30 17:20:56',NULL,'2018-03-30 17:39:20'),(8,1,1,'E-wllaet',' Complaint','Barishal','bgfhfgh','hfghfgh','1 (3).jpg','2017-03-30 17:23:05',NULL,'2018-03-30 17:39:23'),(9,1,1,'E-wllaet',' Complaint','Dhaka','bgfhfgh','hfghfgh','1 (3).jpg','2017-03-30 17:25:09','in process','2018-03-30 17:39:26'),(10,1,1,'E-wllaet',' Complaint','Khulna','bgfhfgh','hfghfgh','1 (3).jpg','2017-03-30 17:27:24',NULL,'2018-03-30 17:39:29'),(11,1,1,'Online SHopping','General Query','Khulna','dsflsdlflsdf','fsdfsdfsdf','avatar-1.jpg.png','2017-03-30 17:36:32',NULL,'2018-03-30 17:39:32'),(12,1,1,'Online SHopping','General Query','Dhaka','dsflsdlflsdf','fsdfsdfsdf','avatar-1.jpg.png','2017-03-30 17:37:09',NULL,'2018-03-30 17:39:35'),(13,1,1,'Online SHopping','General Query','Rangpur','dsflsdlflsdf','fsdfsdfsdf','avatar-1.jpg.png','2017-03-30 17:39:57',NULL,'2018-03-30 17:39:39'),(14,1,1,'Online SHopping',' Complaint','Khulna','vcxvxcvxcv','cvcx','doctorslog.sql','2017-03-30 17:41:19',NULL,'2018-03-30 17:39:42'),(15,1,1,'E-wllaet','General Query','Borishal','dsfsd','fsdfsdf','','2017-03-30 17:42:38',NULL,'2018-03-30 17:39:48'),(16,1,1,'E-wllaet','General Query','Dhaka','dsfsd','fsdfsdf','','2017-03-31 01:54:07',NULL,'2018-03-30 17:39:51'),(17,5,1,'E-wllaet',' Complaint','Chittagong','regarding refund','test test','','2017-06-11 10:57:49',NULL,'2018-03-30 17:39:58'),(18,5,1,'Online SHopping',' Complaint','Khulna','yhytr','rtytry','About Us.docx','2017-06-11 11:08:47',NULL,'2018-03-30 17:40:00'),(19,6,1,'Online SHopping',' Complaint','Borishal','regarding refund','Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw','About Us.docx','2017-06-11 11:15:24','closed','2018-03-30 17:40:03');
/*!40000 ALTER TABLE `tblcomplaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rajib','rajib@gmail.com','5ebe2294ecd0e0f08eab7690d2a6ee69',1670999999,'ssk road feni\n','dhaka','Bangladesh',3900,NULL,'2017-03-28 11:44:52','2018-03-30 17:43:22',1),(2,'sajal','sajal@gmail.com','5ebe2294ecd0e0f08eab7690d2a6ee69',1670999999,'ssk road feni\n','chittagong','Bangladesh',3900,NULL,'2017-03-28 16:58:04','2018-03-30 17:43:23',1),(3,'mithu','mithu@test.com','5ebe2294ecd0e0f08eab7690d2a6ee69',1670999999,'ssk road feni\n','chittagong','Bangladesh',3900,NULL,'2017-03-28 16:59:14','2018-03-30 17:43:24',1),(4,'akbar','akbar@gm.com','5ebe2294ecd0e0f08eab7690d2a6ee69',1670999999,'ssk road feni\n','chittagong','Bangladesh',3900,NULL,'2017-06-11 10:48:35','2018-03-30 17:43:24',1),(5,'ashraf','ashraf@abc.com','5ebe2294ecd0e0f08eab7690d2a6ee69',1670999999,'ssk road feni\n','chittagong','Bangladesh',3900,NULL,'2017-06-11 10:56:05','2018-03-30 17:43:25',1),(6,'sujan','sujan@xyz.com','5ebe2294ecd0e0f08eab7690d2a6ee69',1670999999,'ssk road feni\n','chittagong','Bangladesh',3900,NULL,'2017-06-11 11:13:05','2018-03-30 17:43:26',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 23:53:32
