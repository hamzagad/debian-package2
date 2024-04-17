-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: qstatslite
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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


-- Create the database
CREATE DATABASE qstats2 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
-- Create a user
CREATE USER qstats2@localhost;
-- Set a password for the user
SET PASSWORD FOR qstats2@localhost= PASSWORD ('Qst_ts2197Anm321');
-- Grant all privileges on the new database to the new user
GRANT ALL PRIVILEGES ON qstats2.* TO qstats2@localhost IDENTIFIED BY 'Qst_ts2197Anm321';
-- Flush the privileges to ensure they are reloaded and the new settings take effect
FLUSH PRIVILEGES;

-- Start using qstats2;
USE qstats2;

--
-- Table structure for table `qagent`
--
DROP TABLE IF EXISTS `qagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qagent` (
  `agent_id` int(6) NOT NULL AUTO_INCREMENT,
  `agent` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagent`
--

LOCK TABLES `qagent` WRITE;
/*!40000 ALTER TABLE `qagent` DISABLE KEYS */;
INSERT INTO `qagent` VALUES (1,'NONE');
/*!40000 ALTER TABLE `qagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qevent`
--

DROP TABLE IF EXISTS `qevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qevent` (
  `event_id` int(2) NOT NULL DEFAULT '0',
  `event` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qevent`
--

LOCK TABLES `qevent` WRITE;
/*!40000 ALTER TABLE `qevent` DISABLE KEYS */;
INSERT INTO `qevent` VALUES (1,'ABANDON'),(2,'AGENTDUMP'),(3,'AGENTLOGIN'),(4,'AGENTCALLBACKLOGIN'),(5,'AGENTLOGOFF'),(6,'AGENTCALLBACKLOGOFF'),(7,'COMPLETEAGENT'),(8,'COMPLETECALLER'),(9,'CONFIGRELOAD'),(10,'CONNECT'),(11,'ENTERQUEUE'),(12,'EXITWITHKEY'),(13,'EXITWITHTIMEOUT'),(14,'QUEUESTART'),(15,'SYSCOMPAT'),(16,'TRANSFER'),(17,'PAUSE'),(18,'UNPAUSE'),(19,'RINGNOANSWER');
/*!40000 ALTER TABLE `qevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qname`
--

DROP TABLE IF EXISTS `qname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qname` (
  `qname_id` int(6) NOT NULL AUTO_INCREMENT,
  `queue` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`qname_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qname`
--

LOCK TABLES `qname` WRITE;
/*!40000 ALTER TABLE `qname` DISABLE KEYS */;
INSERT INTO `qname` VALUES (1,'NONE');
/*!40000 ALTER TABLE `qname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_stats`
--

DROP TABLE IF EXISTS `queue_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue_stats` (
  `queue_stats_id` int(12) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(40) DEFAULT NULL,
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qname` int(6) DEFAULT NULL,
  `qagent` int(6) DEFAULT NULL,
  `qevent` int(2) DEFAULT NULL,
  `info1` varchar(40) DEFAULT NULL,
  `info2` varchar(40) DEFAULT NULL,
  `info3` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`queue_stats_id`),
  UNIQUE KEY `unico` (`uniqueid`,`datetime`,`qname`,`qagent`,`qevent`)
) ENGINE=InnoDB AUTO_INCREMENT=2321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_stats`
--

LOCK TABLES `queue_stats` WRITE;
/*!40000 ALTER TABLE `queue_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qusers`
--

DROP TABLE IF EXISTS `qusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qusers`
--

LOCK TABLES `qusers` WRITE;
/*!40000 ALTER TABLE `qusers` DISABLE KEYS */;
INSERT INTO `qusers` VALUES (1,'admin','20de37b24c1176357f9ad6b1bf23f6c0'),(2,'Supervisor','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `qusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-30 14:16:28
