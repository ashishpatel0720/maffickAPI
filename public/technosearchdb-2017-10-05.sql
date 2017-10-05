-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: technosearch
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Ashish Patel','ashishpatel0720@gmail.com','705047900',' this is test contact, here  you will see all people who has contacted us...','2017-10-02 11:19:28','2017-10-02 11:19:28'),(2,'Ashish Patel','ashishpatel0720@gmail.com','7705047900',' this is test2 for contact api','2017-10-04 11:44:15','2017-10-04 11:44:15'),(3,'Ashish  patel ','ashishpatel0720@gmail.com','','this is test3','2017-10-04 11:49:05','2017-10-04 11:49:05'),(4,'Ashish  patel ','ashishpatel0720@gmail.com','','This is test3 from website','2017-10-04 13:02:43','2017-10-04 13:02:43'),(5,'Ashish  patel ','ashishpatel0720@gmail.com','','adfsdf','2017-10-04 16:25:14','2017-10-04 16:25:14'),(6,'hsj','hsh@gmail.com','5457','v,v','2017-10-05 10:07:45','2017-10-05 10:07:45'),(7,'bharat','x@gmail.com','','hi','2017-10-05 10:13:47','2017-10-05 10:13:47'),(8,'bharat','y@gmail.com','97667','hi 2','2017-10-05 10:14:15','2017-10-05 10:14:15'),(9,'bharat','g@gmail.com','918889731492','hi','2017-10-05 10:23:13','2017-10-05 10:23:13');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem_statement` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `longitude` double(10,8) NOT NULL,
  `lattitude` double(10,8) NOT NULL,
  `event_datatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact1` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `description1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact2` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faculty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,'TECHNO-FIFA','techno-fifa','competitions','NULL','\nA football gaming competition where best players lock horns against each other with comparable teams where the winner is decided by knock out method.\n\n',77.40871100,23.21784200,'2017-10-05 11:57:57','ADARSH YADAV','addy.yadav178@gmail.com','9993876958','Civil, 3rd Year','','','','','','2017-10-01 20:18:40','2017-10-05 11:57:57'),(4,'CIVIL BRIDGE','civil-bridge','competitions','NULL','A 2-day event in which the participants are required to make a Cantilever bridge using popsicle sticks\n',77.40871100,23.21784200,'2017-10-05 11:55:15','Shivam Dudharia','shivamdudharia@gmail.com','9993876958','civil 3rd year','','','','','','2017-10-01 20:25:32','2017-10-01 20:25:32'),(6,'RANGMANCH','rangmanch','competitions','NULL','A \'performing arts\' competition on themes that revolve around the latest technological changes in the country.\n\n\n',77.40710400,23.21659000,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:48:44','2017-10-01 20:48:44'),(7,'10 IS 2','10-is-2','competitions','NULL','A Computer Science based quiz competition which puts forward the revolutionary ideas and\ntechnical advancements in the field of artificial intelligence\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:50:38','2017-10-01 20:50:38'),(8,'KODACHROME','kodachrome','competitions','NULL','A bi-annual theme based photo exhibition that invites entries from all the college students. \n\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:52:22','2017-10-01 20:52:22'),(9,'Guest Lectures','guest-lectures','lectures','NULL','A series of informational interactive sessions where learned professors and professionals from all around to deliver speeches.\n\n\n\n\n\n',77.40707100,23.21592400,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:54:02','2017-10-01 20:54:02'),(10,'ILLUMINATI','illuminati','competitions','NULL','A 3-day literary event that revolves around the concept of illuminati, a secret society that opposes obscurantism. Participants work as its member to solve cases of deliberate vagueness and mysteries.\n\n\n\n\n',77.40707100,23.21592400,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:54:58','2017-10-01 20:54:58'),(11,'Market Guru 6.0','market-guru-60','competitions','NULL','Market Guru aims to award and acknowledge participants who excel at market analysis.Events are \ndesigned in order to check business acumen and algorithm decoding skills of the participants.\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:56:21','2017-10-01 20:56:21'),(13,'Pandora’s Box 2.0','pandoras-box-20','competitions','NULL','As the name suggests, Pandora\'s Box fabricates evils in the form of literary hurdles that will check the participants\' knowledge of literature and eloquence of speech.\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:57:53','2017-10-01 20:57:53'),(14,'AIR MARSHAL','air-marshal','competitions','NULL','An afoot competition where intricately designed RC-planes race against each other.\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:59:07','2017-10-01 20:59:07'),(15,'PROPULSION','propulsion','competitions','NULL','In propulsion, water bots race against time in an arena full of obstacles on different levels of increasing difficulty.\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:00:30','2017-10-01 21:00:30'),(16,'HOVERRUN','hoverrun','competitions','NULL','Hoverrun is a multi-level/multi-field competition where Air-Cushion Vehicles(Hovercrafts) completea pre-defined course having elements of ice, mud, water and sand etc. in it.\n\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:02:32','2017-10-01 21:02:32'),(17,'CRIME ALLEY 2','crime-alley-2','competitions','NULL','A muder mystery based treasure hunt which requires participants to decode clues with logical reasoning.\n\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:03:05','2017-10-01 21:03:05'),(18,' FUSBALL','fusball','competitions','NULL','In this football based game, penalties will be the key intruments to embark the victory of teams.\n\n\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:03:38','2017-10-01 21:03:38'),(19,'C-BAY','c-bay','competitions','NULL','An online coding competition where coding proficiency will be required to solve problems.\n\n\n.\n\n\n',77.40563300,23.21637700,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:04:56','2017-10-01 21:04:56'),(20,'Tech Enigma 2.0','tech-enigma-20','competitions','NULL','Tech Enigma puts forth, a technical conundrum that requires rigorous brainstorming to be solved.\n\n.\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:06:11','2017-10-01 21:06:11'),(21,'Electrobuzz 3.0','electrobuzz-30','competitions','NULL','Electrobuzz aims to test contestants on their ability to repair various electrical circuits by making use of theoritical knowledge.\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:07:16','2017-10-01 21:07:16'),(22,'CircuitRun 3.0','circuitrun-30','competitions','NULL','A 3-Tier competition where preliminary rounds(Written Test and Treasure Hunt) culminate by making a circuit using the knowledge of Logic Gates.\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:07:54','2017-10-01 21:07:54'),(23,'CODE KRIEGERS','code-kriegers','competitions','NULL','A 3-Tier competition where preliminary rounds(Written Test and Treasure Hunt) culminate by making a circuit using the knowledge of Logic Gates.\nHere, participants will be mercenary soldiers who will have to finish the given assassination job by making effective use of coding and programming grip and comprehension.\n\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:12:25','2017-10-01 21:12:25'),(24,'SWAANG','swaang','competitions','NULL','A creative writing contest on the theme of \"technical advancements and ethnic values\"\n\n\n',77.40628100,23.21548700,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:13:39','2017-10-01 21:13:39'),(25,'QUIZZOTICA','quizzotica','competitions','NULL','An annual quiz competition that emphasises on the importance of General Awareness in the lives of Technocrats, in specific and public, broadly.\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:14:51','2017-10-01 21:14:51');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2016_10_08_214036_create_event_table',1),(6,'2016_10_10_183918_create_contact_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-05 17:28:22
