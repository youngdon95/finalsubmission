-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: IRD
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `Adminlogin`
--

DROP TABLE IF EXISTS `Adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adminlogin` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adminlogin`
--

LOCK TABLES `Adminlogin` WRITE;
/*!40000 ALTER TABLE `Adminlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `Adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApUsers`
--

DROP TABLE IF EXISTS `ApUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApUsers` (
  `id` int(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `BirthCertiNum` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `parish` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `birthday_day` varchar(5) DEFAULT NULL,
  `birthday_month` varchar(20) DEFAULT NULL,
  `birthday_year` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApUsers`
--

LOCK TABLES `ApUsers` WRITE;
/*!40000 ALTER TABLE `ApUsers` DISABLE KEYS */;
INSERT INTO `ApUsers` VALUES (1,'Adijah','Palmer','762','2299999','kartel@yahoo.com','Portmore','Kingston','Jamaica','7','2','1970','male','worlboss'),(63311,'Michael','Green','111-111-1111','','mic@yahoo.com','khk','Parish','Country','18','1','1998','Male','Michael23'),(30354,'Michael','Green','111-111-1111','','mic@yahoo.com','khk','Parish','Country','18','1','1998','Male','Michael23'),(22652,'Michael','Green','111-111-1111','','mic@yahoo.com','khk','Parish','Country','18','1','1998','Male','Michael23'),(47444,'Michael','Green','111-111-1111','','mic@yahoo.com','khk','Parish','Country','18','1','1998','Male','Michael23'),(20509,'Michael','Green','111-111-1111','','mic@yahoo.com','khk','Parish','Country','18','1','1998','Male','Michael23'),(87141,'Michael','Green','111-111-1111','','mic@yahoo.com','khk','Parish','Country','18','1','1998','Male','Michael23'),(23958,'Odaine','Forbes','123-456-7895','','odaine.forbes@yahoo.','mobay','stann','jamaica','19','7','1995','Male','Adrene123');
/*!40000 ALTER TABLE `ApUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AppLic`
--

DROP TABLE IF EXISTS `AppLic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AppLic` (
  `images_path` varchar(20) DEFAULT NULL,
  `submission_date` varchar(10) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `trn` varchar(10) DEFAULT NULL,
  `place_of_b` varchar(15) DEFAULT NULL,
  `countryOfBirth` varchar(15) DEFAULT NULL,
  `parish` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `street` varchar(10) DEFAULT NULL,
  `Mother` varchar(20) DEFAULT NULL,
  `Father` varchar(20) DEFAULT NULL,
  `NIS` varchar(20) DEFAULT NULL,
  `occupation` varchar(5) DEFAULT NULL,
  `passport` varchar(10) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `email` varchar(5) DEFAULT NULL,
  `receipt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppLic`
--

LOCK TABLES `AppLic` WRITE;
/*!40000 ALTER TABLE `AppLic` DISABLE KEYS */;
/*!40000 ALTER TABLE `AppLic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AppUsers`
--

DROP TABLE IF EXISTS `AppUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AppUsers` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `BirthCertiNum` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `parish` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `birthday_day` varchar(5) DEFAULT NULL,
  `birthday_month` varchar(20) DEFAULT NULL,
  `birthday_year` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `password_digest` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AppUsers`
--

LOCK TABLES `AppUsers` WRITE;
/*!40000 ALTER TABLE `AppUsers` DISABLE KEYS */;
INSERT INTO `AppUsers` VALUES ('Adijah','Palmer','762','2299999','kartel@yahoo.com','Portmore','Kingston','Jamaica','7','2','1970','male','2321','worlboss');
/*!40000 ALTER TABLE `AppUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `BirthCertiNum` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `parish` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('romarioomartin@gmail','19950209'),('likemike11@yahoo.com','2016'),('odaine@yahoo.com','2016'),('adrene@yahoo.com','2016');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `trn` varchar(20) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES ('Romario','Martin','125-978-475','a111111'),('Michael','Green','126-978-475','b111111'),('Adrene','McIntosh','127-978-475','c111111'),('Odaine','Forbes','128-978-475','d111111'),('Michael','Jordan','130-978-475','e111111'),('Lebron','James','131-978-475','f111111'),('Steph','Curry','132-978-475','g111111'),('Kyrie','Irving','133-978-475','h111111'),('Kanye','Kardashian','134-978-475','i111111');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'romariomartin@gmail.','martin'),(4,'likemike@yahoo.com','michael'),(1,'romario1995@hotmail.','martin'),(6,'romario@gmail.com','martin'),(12,'620078849','romario');
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

-- Dump completed on 2016-12-03 17:07:15
