-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: runcloud
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `textmessage` longtext,
  `ttime` datetime DEFAULT NULL,
  `class` char(10) DEFAULT NULL,
  `title` char(10) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  `account` char(10) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `personal_id` (`personal_id`),
  KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'<p><span style=\"font-size: 18px;\">﻿ttttttttttttttttttttttttttttttttttttttt</span><br></p>','2016-09-04 19:57:24','all','test',NULL,'aaa'),(2,'<p><span style=\"font-size: 18px;\">﻿</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><br></p>','2016-09-04 20:00:34','all','測試',NULL,'aaa'),(3,'<p><span style=\"font-size: 18px;\">﻿</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><br></p><p><span style=\"background-color: transparent;\"><span style=\"font-size: 18px; line-height: 27px;\">測試</span><br></span></p><p><span style=\"background-color: transparent;\"><span style=\"font-size: 18px; line-height: 27px;\">測試</span><br></span></p><p><span style=\"background-color: transparent;\"><span style=\"font-size: 18px; line-height: 27px;\">測試</span></span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent; font-size: 18px; line-height: 27px;\">測試</span><span style=\"background-color: transparent;\"><br></span></p><p><span style=\"background-color: transparent;\"><span style=\"font-size: 18px; line-height: 27px;\">測試-!@#$%^&amp;*()_+</span><br></span></p>','2016-09-04 20:00:56','all','測試123',NULL,'aaa'),(4,'<p><span style=\"font-size: 18px;\">﻿jdjdjdhjdjddhhdhdhdhddhbdhxh</span><br></p>','2016-09-04 21:15:10','all','jdjfj',NULL,'aaa'),(5,'<p><span style=\"font-size: 18px;\">﻿ Schick daughter said and&nbsp;</span><br></p>','2016-09-04 22:32:25','all','Attached',NULL,'aaa'),(6,'<p><span style=\"font-size: 18px;\">﻿ woodblock fabric grin</span><br></p>','2016-09-04 22:34:21','all','School',NULL,'aaa'),(7,'<p><span style=\"font-size: 18px;\">﻿ all l jazz Indo being tracks Franco small then zoo KFC zoo KFC like odd KFC&nbsp;</span><br></p>','2016-09-04 22:36:01','all','Article al',NULL,'ppap'),(8,'<p><span style=\"font-size: 18px;\">﻿怡璇沒有病餓喔喔喔喔喔喔喔喔喔喔喔喔喔喔喔喔喔喔喔喔</span></p>','2016-09-01 10:52:10','all','暗暗',NULL,'paco');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) DEFAULT NULL,
  `textmessage` longtext,
  `ttime` datetime DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  `account` char(10) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `article_id` (`article_id`),
  KEY `account` (`account`),
  KEY `personal_id` (`personal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,2,'<p><span style=\"font-size: 18px;\">測試</span></p><p><span style=\"font-size: 18px;\">123456fkporwegker</span></p><p><span style=\"font-size: 18px;\">greghe</span></p><p><span style=\"font-size: 18px;\">100</span></p><p><span style=\"font-size: 18px;\">測</span></p>','2016-09-04 22:48:16',NULL,'aaa'),(2,1,'<p>\n            <span style=\"font-size: 18px;\">﻿jreoigjoaepr</span></p><p><span style=\"font-size: 18px;\">測試</span></p>','2016-09-04 23:12:53',NULL,'aaa'),(3,4,'<p>\n            <span style=\"font-size: 18px;\">﻿wfwefwe</span></p>','2016-09-04 23:17:34',NULL,'aaa'),(4,4,'<p>fg4rety4</p><p>hfdhs</p>','2016-09-04 23:17:50',NULL,'aaa'),(5,1,'<p>\n            <span style=\"font-size: 18px;\">﻿</span></p>','2016-09-04 23:22:32',NULL,''),(6,1,'<p>\n            <span style=\"font-size: 18px;\">﻿</span></p>','2016-09-04 23:31:13',NULL,''),(7,1,'<p>\n            <span style=\"font-size: 18px;\">﻿</span></p>','2016-09-04 23:40:31',NULL,''),(8,4,'<p>\n            <span style=\"font-size: 18px;\">﻿</span></p>','2016-09-04 23:46:29',NULL,''),(9,6,'<p>\n            <span style=\"font-size: 18px;\">﻿fgesrghr</span></p>','2016-09-04 23:46:39',NULL,'ddd'),(10,1,'<p>\n            <span style=\"font-size: 18px;\">﻿hffbughfxctcgvybyrxr CT v</span></p>','2016-09-05 00:32:07',NULL,'ppap'),(11,5,'<p>\n            <span style=\"font-size: 18px;\">﻿test123</span></p>','2016-09-05 09:17:56',NULL,'ppap'),(12,3,'<p>\n            <span style=\"font-size: 18px;\">﻿/*-+0.651</span></p><p><span style=\"font-size: 18px;\">6541652</span></p>','2016-09-05 09:18:19',NULL,'ppap'),(13,8,'<p>\n            <span style=\"font-size: 18px;\">﻿有病</span></p>','2016-09-01 10:52:31',NULL,'paco'),(14,8,'<p>\n            <span style=\"font-size: 18px;\">﻿</span></p>','2016-09-04 23:23:49',NULL,''),(15,8,'<p>\n            <span style=\"font-size: 18px;\">﻿真的有病</span></p><p><span style=\"font-size: 18px;\"><br></span></p>','2016-09-04 23:24:07',NULL,'aaa'),(16,8,'<p>-.-</p><p><br></p>','2016-09-04 23:24:18',NULL,'aaa'),(17,8,'\n            ','2016-09-04 23:24:24',NULL,'aaa');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `friend_account` char(50) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`friend_id`),
  KEY `friend_account` (`friend_account`),
  KEY `personal_id` (`personal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_data`
--

DROP TABLE IF EXISTS `group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_data` (
  `group_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` char(50) DEFAULT NULL,
  `group_score` int(11) DEFAULT NULL,
  `group_photo` char(50) DEFAULT NULL,
  `group_place` char(50) DEFAULT NULL,
  PRIMARY KEY (`group_data_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_data`
--

LOCK TABLES `group_data` WRITE;
/*!40000 ALTER TABLE `group_data` DISABLE KEYS */;
INSERT INTO `group_data` VALUES (1,'測試組',555,'/var/www/html/test/img/test.jpg','台中市'),(2,'哈哈',87,NULL,NULL);
/*!40000 ALTER TABLE `group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_rank`
--

DROP TABLE IF EXISTS `group_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_rank` (
  `group_rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` char(50) DEFAULT NULL,
  `group_score` int(11) DEFAULT NULL,
  `group_place` char(50) DEFAULT NULL,
  PRIMARY KEY (`group_rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_rank`
--

LOCK TABLES `group_rank` WRITE;
/*!40000 ALTER TABLE `group_rank` DISABLE KEYS */;
INSERT INTO `group_rank` VALUES (1,'芋頭不要煮',5487,NULL);
/*!40000 ALTER TABLE `group_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_board`
--

DROP TABLE IF EXISTS `message_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_board` (
  `message_board_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) DEFAULT NULL,
  `content` char(100) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_board_id`),
  KEY `personal_id` (`personal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_board`
--

LOCK TABLES `message_board` WRITE;
/*!40000 ALTER TABLE `message_board` DISABLE KEYS */;
INSERT INTO `message_board` VALUES (1,'芋頭不要煮','我是八七',NULL);
/*!40000 ALTER TABLE `message_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `personal_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `group_data_id` int(11) DEFAULT NULL,
  `birth` char(50) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `sex` char(50) DEFAULT NULL,
  `personal_photo` char(50) DEFAULT NULL,
  `nickname` char(50) DEFAULT NULL,
  `personal_place` char(50) DEFAULT NULL,
  `guid` char(255) DEFAULT NULL,
  PRIMARY KEY (`personal_id`),
  KEY `school_id` (`school_id`),
  KEY `group_data_id` (`group_data_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'aaa','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'測試用',NULL,'737d1e2dee83146df5c5f1ca73e74378'),(2,'angel','angel',NULL,NULL,'19941001',165,41,'女','runcloud.dyps.tw/api/img/default.png','思思柔柔',NULL,'f3abae20237e0f9e0e5780052aeda578'),(3,'root','root',NULL,NULL,'1994/10/31',169,59,'男','runcloud.dyps.tw/api/img/default.png','脩',NULL,'3c1d7d1fca8ebd64c9513cdeccf2f399'),(4,'juang','juang',NULL,NULL,'19950502',174,60,'男','runcloud.dyps.tw/api/img/default.png','juang',NULL,'fbac88c1fd505c628f59e3add6af56fe'),(5,'bbb','bbb',1,NULL,'19940202',175,65,'男',NULL,'金',NULL,NULL),(6,'ccc','ccc',2,NULL,'19980202',180,60,'男',NULL,'明',NULL,NULL),(7,'abc@gmail.com','abc',1,0,'1995-02-12',60,175,'male','','å¤©','',NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_rank`
--

DROP TABLE IF EXISTS `personal_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_rank` (
  `personal_rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` char(50) DEFAULT NULL,
  `personal_score` int(11) DEFAULT NULL,
  `peraonal_place` char(50) DEFAULT NULL,
  `self_evaluation` int(11) DEFAULT NULL,
  PRIMARY KEY (`personal_rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_rank`
--

LOCK TABLES `personal_rank` WRITE;
/*!40000 ALTER TABLE `personal_rank` DISABLE KEYS */;
INSERT INTO `personal_rank` VALUES (1,'測試用',4852,'1',0),(2,'思思柔柔',2468,'2',0),(3,'juang',1296,'3',0),(4,'明',321,'4',0),(5,'金',123,'5',0);
/*!40000 ALTER TABLE `personal_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_message_board`
--

DROP TABLE IF EXISTS `re_message_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_message_board` (
  `re_message_board_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) DEFAULT NULL,
  `content` char(100) DEFAULT NULL,
  `personal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`re_message_board_id`),
  KEY `personal_id` (`personal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_message_board`
--

LOCK TABLES `re_message_board` WRITE;
/*!40000 ALTER TABLE `re_message_board` DISABLE KEYS */;
INSERT INTO `re_message_board` VALUES (1,'測試','測試測試測試',NULL);
/*!40000 ALTER TABLE `re_message_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_id` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `calorie` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `map_longitude` longtext,
  `map_latitude` longtext,
  `distance` float DEFAULT NULL,
  `velocity` float DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `personal_id` (`personal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (1,1,'00:00:51',432,'2016-12-15','120.68380122,120.6838764,120.6838974,120.68386898,120.68391994,120.6839068,120.68391956,120.68393147,120.68396537,','24.14995853,24.14993494,24.15004559,24.14999852,24.15004862,24.15007127,24.15015759,24.15022128,24.15027324,',NULL,NULL),(2,1,'00:01:39',432,'2016-12-15','120.68397764,120.68393847,120.68394969,120.68392523,120.68391952,120.68389849,120.68371218,120.68371327,120.68367894,120.68362507,120.6835802,120.68351251,120.68352999,120.68353375,120.68349525,120.68346746,120.68347176,','24.15036969,24.1503191,24.15032826,24.15037887,24.15045606,24.150485,24.15029739,24.15045114,24.15048095,24.15046448,24.15045715,24.15045048,24.15042136,24.15038607,24.150349,24.15031707,24.15027795,',NULL,NULL),(3,1,'00:00:39',432,'2016-12-15','120.68338499,120.68342237,120.68348394,120.68353876,120.68358471,120.68363924,','24.15001691,24.14995259,24.14991576,24.14988449,24.14985718,24.14984095,',NULL,NULL),(4,1,'00:00:34',432,'2016-12-16','120.66550865,120.66559683,120.66568591,120.66568088,120.6656256,120.66542246,120.66524437,','24.23064585,24.23038213,24.2299174,24.2295695,24.22918305,24.2287578,24.22825812,',NULL,NULL),(5,1,'00:02:36',432,'2016-12-16','120.68430235,120.68430074,120.68431952,120.68434807,120.68440073,120.68444008,120.68445621,120.68449816,120.68452354,120.68455172,120.68459959,120.68467229,120.68476536,120.68483903,120.6849435,120.68499177,120.68504549,120.68510912,120.68514852,120.68521728,120.68527179,120.68533071,120.68537495,120.68542641,120.68547959,120.68551103,120.68553096,120.68555166,120.68558233,120.68562707,','24.14987449,24.14983175,24.14983003,24.14984757,24.14985505,24.1498579,24.14986831,24.14985314,24.14982334,24.14978425,24.14974157,24.14972776,24.14973179,24.14970369,24.14966889,24.1496377,24.14961344,24.14959758,24.14958495,24.14956827,24.14954506,24.14951982,24.14951593,24.14950845,24.14949474,24.14947812,24.14944674,24.14941355,24.14938134,24.14935613,',NULL,NULL),(6,1,'00:02:17',432,'2016-12-16','120.68365776,120.68354333,120.68339757,120.68319592,120.68296174,120.68276949,120.68260401,120.68260174,120.68255036,120.68243023,120.68223993,120.68198644,120.68174157,120.68152047,120.68109824,120.68083702,120.68054157,120.68029122,120.68008836,120.67985564,120.67973334,120.67966294,120.67963023,','24.14888502,24.14871781,24.14831496,24.14783452,24.14733356,24.14682495,24.14659433,24.14653915,24.14641775,24.14597311,24.14557808,24.1451295,24.14474256,24.14442359,24.14406546,24.14375461,24.14346824,24.14320269,24.14304461,24.1428397,24.14271734,24.14265442,24.14264605,',NULL,NULL),(7,1,'00:01:10',432,'2016-12-16','120.67970228,120.67949094,120.67913332,120.67879709,120.67826047,120.67772165,120.67721941,120.67681782,120.67645636,120.67630257,120.67626645,120.6762559,','24.14259732,24.14243367,24.14204878,24.14170526,24.14125355,24.14073331,24.14031818,24.1399218,24.13959057,24.139421,24.13936938,24.13935894,',NULL,NULL),(8,1,'00:00:54',432,'2016-12-16','120.67581275,120.67576661,120.67580195,120.67580994,120.67579587,120.6757766,120.67574609,120.67574268,120.67571738,','24.13900525,24.13902796,24.13906813,24.13912283,24.13918316,24.13925586,24.13931521,24.13936959,24.13939325,',NULL,NULL),(9,1,'00:01:23',432,'2016-12-17','120.72860427,120.72838728,120.72822573,120.72792885,120.72743034,120.72681697,120.72611356,120.72536781,120.72442135,120.72388866,120.7235508,120.72348615,120.72347788,120.72348297,120.72346172,120.72339055,','24.32725736,24.32662047,24.32610913,24.32568922,24.32542781,24.32527853,24.32537213,24.32573527,24.32605827,24.32592058,24.32559129,24.3251444,24.32474433,24.32463006,24.3245622,24.3244153,',NULL,NULL),(10,1,'00:01:01',432,'2016-12-17','120.72375364,120.72412948,120.7245304,120.72486956,120.72518155,120.72530039,120.72511938,120.72489811,120.72469492,120.7245084,','24.32339342,24.32277611,24.32221286,24.32176019,24.32115084,24.32036666,24.31956734,24.31872508,24.31792175,24.31728276,',NULL,NULL),(11,1,'00:01:15',432,'2016-12-17','120.72427213,120.72414267,120.72398545,120.72378902,120.72360042,120.723419,120.72320307,120.72298898,120.72280513,120.72264194,120.72252724,120.72248844,','24.31654955,24.31598068,24.3153042,24.31455631,24.31382911,24.31306263,24.31237688,24.3116548,24.31091094,24.31021466,24.30964891,24.30944312,',NULL,NULL),(13,28,'00:00:19',432,'2016-12-29','120.68325243,120.68347497,120.68351529,','24.14956541,24.14942332,24.1494371,',NULL,NULL),(14,2,'00:05:00',1234,NULL,'120.68325,120.69','24.14956,24.14943',20,NULL),(15,2,'00:05:00',1234,'2017-01-04','120.68325,120.69','24.14956,24.14943',20,NULL),(16,0,'00:00:00',0,'2017-01-10','','',0,0),(17,1,'00:00:00',0,'2017-01-10','','',123,0),(18,0,'00:00:00',0,'2017-01-10','','',0,0),(19,1,'00:15:00',100,'2017-01-10','','',37.2,7.2),(20,0,'00:00:00',0,'2017-01-10','','',0,0),(21,4,'00:00:51',432,'2017-01-10','120.68391000000001,120.68390833333333,120.68389666666666,120.68390166666669,120.68393333333333,120.68394666666667,120.68399333333333,120.68399666666667,','24.149955,24.149826666666666,24.14986666666667,24.149918333333336,24.14997333333333,24.149994999999997,24.149978333333333,24.149951666666666,',42.5,3.8),(22,4,'00:01:40',432,'2017-01-10','120.68482,120.68488,120.68500166666666,120.68504833333333,120.685105,120.68515333333335,120.68522333333334,120.68526166666668,120.68530166666666,120.68531666666668,120.68534166666669,120.68536833333334,120.68543833333334,120.68550333333333,120.68555166666665,120.68559833333332,120.68566333333335,120.685725,','24.149733333333334,24.149600000000003,24.149535,24.149528333333333,24.149499999999996,24.14944666666667,24.14945,24.149441666666668,24.149421666666665,24.149376666666665,24.149318333333333,24.149285000000003,24.149291666666667,24.149268333333332,24.14925333333333,24.149233333333335,24.149241666666665,24.149229999999996,',119.6,4.8),(23,5,'00:00:05',123,'2017-01-10',NULL,NULL,NULL,NULL),(24,6,'00:00:16',321,'2017-01-10',NULL,NULL,NULL,NULL),(25,4,'00:08:10',432,'2017-01-11','120.69903500000001,120.69908333333333,120.70026333333333,120.69987,120.69953333333333,120.69908500000001,120.698915,120.698975,120.69906166666667,120.69908666666667,120.69911166666667,120.69911500000002,120.69913666666667,120.69917666666667,120.69917500000001,120.69892833333333,120.69845333333333,120.69794500000002,120.69736333333334,120.69677833333331,120.69617500000001,120.695615,120.69520833333333,120.69455166666667,120.69390166666666,120.69323833333334,120.69274333333333,120.69232500000001,120.69185166666666,120.69147166666669,120.69132166666668,120.69120833333334,120.69087499999999,120.69048,120.69021833333333,120.690055,120.68985333333333,120.68958833333333,120.68943666666668,120.689275,120.689135,120.68908333333333,120.68906166666666,120.68903666666665,120.68892166666667,120.68875666666666,120.68855833333333,120.68829666666667,120.68806333333332,120.68781833333333,120.68754833333332,120.68735833333334,120.68715166666668,120.68684666666668,120.68640333333333,120.68599999999999,120.68581166666667,120.68580500000002,','24.153950000000002,24.154029999999995,24.153983333333333,24.153880000000004,24.15393166666667,24.153965000000003,24.154198333333337,24.154618333333328,24.155019999999997,24.155221666666662,24.15532333333333,24.155333333333335,24.155413333333332,24.155551666666664,24.15556333333333,24.155584999999995,24.15559,24.155618333333337,24.155646666666666,24.155656666666665,24.15567666666667,24.15567666666667,24.155611666666665,24.155629999999995,24.155665,24.15568,24.155779999999996,24.155898333333333,24.156049999999997,24.15617666666667,24.15589,24.155603333333335,24.15568,24.155839999999998,24.155873333333336,24.155813333333338,24.155408333333337,24.15500666666667,24.154490000000003,24.154118333333333,24.153948333333332,24.153868333333335,24.153871666666667,24.153538333333337,24.153088333333336,24.152611666666665,24.152105,24.151561666666666,24.150991666666663,24.150468333333333,24.14990833333333,24.14934166666667,24.14896666666667,24.148970000000002,24.14911833333333,24.14925333333333,24.149308333333337,24.149231666666665,',2398,29.8);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_photo`
--

DROP TABLE IF EXISTS `record_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_photo` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` char(100) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_photo`
--

LOCK TABLES `record_photo` WRITE;
/*!40000 ALTER TABLE `record_photo` DISABLE KEYS */;
INSERT INTO `record_photo` VALUES (1,'runcloud.dyps.tw/api/img/test1.png'),(2,'runcloud.dyps.tw/api/img/test1.png'),(3,'runcloud.dyps.tw/api/img/test1.png'),(4,'runcloud.dyps.tw/api/img/test2.png'),(5,'runcloud.dyps.tw/api/img/test3.png'),(6,'runcloud.dyps.tw/api/img/test4.png'),(7,'runcloud.dyps.tw/api/img/test5.png'),(8,'runcloud.dyps.tw/api/img/test6.png'),(9,'runcloud.dyps.tw/api/img/test7.png'),(10,'runcloud.dyps.tw/api/img/test8.png'),(11,'runcloud.dyps.tw/api/img/test9.png');
/*!40000 ALTER TABLE `record_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` char(50) DEFAULT NULL,
  `school_place` char(50) DEFAULT NULL,
  `region` char(50) DEFAULT NULL,
  `school_photo` char(50) DEFAULT NULL,
  `school_score` int(11) DEFAULT NULL,
  `leaderboard` int(11) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'國立台中科技大學',NULL,NULL,'img/nutc_logo1.gif',NULL,NULL),(2,'國立勤益科技大學',NULL,NULL,'img/nutc_logo2.png',NULL,NULL);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_rank`
--

DROP TABLE IF EXISTS `school_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_rank` (
  `school_rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_place` char(50) DEFAULT NULL,
  `school_score` int(11) DEFAULT NULL,
  `school_name` char(50) DEFAULT NULL,
  PRIMARY KEY (`school_rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_rank`
--

LOCK TABLES `school_rank` WRITE;
/*!40000 ALTER TABLE `school_rank` DISABLE KEYS */;
INSERT INTO `school_rank` VALUES (1,'1',321,'國立勤益科技大學'),(2,'2',123,'國立台中科技大學');
/*!40000 ALTER TABLE `school_rank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-18  9:40:07
