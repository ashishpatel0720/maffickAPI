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
INSERT INTO `contact` VALUES (2,'Sudhanshu singh','sudhanshusingh0012@gmail.com','','Sir we are glad to see the technosearch competition again this year in Manit, sir my query is that for the Maze follower robot or line follower robot what will the basic structure and design of the path on which our robot will run, Sir I need a schematic design of the path so that we may get idea how to make our bots more accurate and more efficient, \nPlease send me the schematic or its details on my given email id\nThank you sir','2017-10-06 06:33:25','2017-10-06 06:33:25'),(3,'Sudhanshu singh','sudhanshusingh0012@gmail.com','','Sir please give me some description  and details of the circuitrun 3.0 competition\nI will wait for the reply\nThank you','2017-10-06 15:50:15','2017-10-06 15:50:15'),(8,'Siddarth','siddarthsuvarna99@gmail.com','','The event coordinator contact number for technofifa is put wrong there, can you send me the right contact number','2017-10-07 09:47:21','2017-10-07 09:47:21'),(9,'MANISHA','mnegi339@gmail.com','','need tor contact no to get all the details of techfest','2017-10-08 06:18:44','2017-10-08 06:18:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,'TECHNO-FIFA','techno-fifa','competitions','NULL','\nA football gaming competition where best players lock horns against each other with comparable teams where the winner is decided by knock out method.\n\n',77.40871100,23.21784200,'2017-10-08 15:59:32','ADARSH YADAV','addy.yadav178@gmail.com','9993876958','Civil, 3rd Year','','','','','','2017-10-01 20:18:40','2017-10-08 15:59:32'),(4,'CIVIL BRIDGE','civil-bridge','competitions','NULL','A 2-day event in which the participants are required to make a Cantilever bridge using popsicle sticks\n',77.40871100,23.21784200,'2017-10-15 11:55:15','Shivam Dudharia','shivamdudharia@gmail.com','9993876958','civil 3rd year','','','','','','2017-10-01 20:25:32','2017-10-01 20:25:32'),(6,'RANGMANCH','rangmanch','competitions','NULL','A \'performing arts\' competition on themes that revolve around the latest technological changes in the country.\n\n\n',77.40710400,23.21659000,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:48:44','2017-10-01 20:48:44'),(7,'10 IS 2','10-is-2','competitions','NULL','A Computer Science based quiz competition which puts forward the revolutionary ideas and\ntechnical advancements in the field of artificial intelligence\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:50:38','2017-10-01 20:50:38'),(8,'KODACHROME','kodachrome','competitions','NULL','A bi-annual theme based photo exhibition that invites entries from all the college students. \n\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:52:22','2017-10-01 20:52:22'),(9,'Guest Lectures','guest-lectures','lectures','NULL','A series of informational interactive sessions where learned professors and professionals from all around to deliver speeches.\n\n\n\n\n\n',77.40707100,23.21592400,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:54:02','2017-10-01 20:54:02'),(10,'ILLUMINATI','illuminati','competitions','NULL','A 3-day literary event that revolves around the concept of illuminati, a secret society that opposes obscurantism. Participants work as its member to solve cases of deliberate vagueness and mysteries.\n\n\n\n\n',77.40707100,23.21592400,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:54:58','2017-10-01 20:54:58'),(11,'Market Guru 6.0','market-guru-60','competitions','NULL','Market Guru aims to award and acknowledge participants who excel at market analysis.Events are \ndesigned in order to check business acumen and algorithm decoding skills of the participants.\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:56:21','2017-10-01 20:56:21'),(13,'Pandora’s Box 2.0','pandoras-box-20','competitions','NULL','As the name suggests, Pandora\'s Box fabricates evils in the form of literary hurdles that will check the participants\' knowledge of literature and eloquence of speech.\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:57:53','2017-10-01 20:57:53'),(14,'AIR MARSHAL','air-marshal','competitions','NULL','An afoot competition where intricately designed RC-planes race against each other.\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 20:59:07','2017-10-01 20:59:07'),(15,'PROPULSION','propulsion','competitions','NULL','In propulsion, water bots race against time in an arena full of obstacles on different levels of increasing difficulty.\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:00:30','2017-10-01 21:00:30'),(16,'HOVERRUN','hoverrun','competitions','NULL','Hoverrun is a multi-level/multi-field competition where Air-Cushion Vehicles(Hovercrafts) completea pre-defined course having elements of ice, mud, water and sand etc. in it.\n\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:02:32','2017-10-01 21:02:32'),(17,'CRIME ALLEY 2','crime-alley-2','competitions','NULL','A muder mystery based treasure hunt which requires participants to decode clues with logical reasoning.\n\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:03:05','2017-10-01 21:03:05'),(18,' FUSBALL','fusball','competitions','NULL','In this football based game, penalties will be the key intruments to embark the victory of teams.\n\n\n\n\n.\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:03:38','2017-10-01 21:03:38'),(19,'C-BAY','c-bay','competitions','NULL','An online coding competition where coding proficiency will be required to solve problems.\n\n\n.\n\n\n',77.40563300,23.21637700,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:04:56','2017-10-01 21:04:56'),(20,'Tech Enigma 2.0','tech-enigma-20','competitions','https://drive.google.com/open?id=0B3E0HVQvXgXVNV9faElvZ2lLQk0','Tech Enigma puts forth, a technical conundrum that requires rigorous brainstorming to be solved. It\'s for those geeky minds who have the zeal to pick out the not so obvious. You will be  working out your minds and then debug a circuit provided to you. Detective Conan wants you to deduce the mind boggling mysteries before you . Pick out best tools from your arsenal to debug the faulty circuit as it is the key to the culprit.\n So brace yourselves to experience the next level of Tech Enigma.\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','Apoorv Lokhande','lokhandeapoorv@gmail.com','8349541928','NULL','Ayush Tripathi','ayusht2396@gmail.com','9455525935','','','2017-10-01 21:06:11','2017-10-08 17:05:09'),(21,'Electrobuzz 3.0','electrobuzz-30','competitions','https://drive.google.com/open?id=0B3E0HVQvXgXVMTVCNEJTcksySzg','Do you like solving mysteries?\nIf yes then this is the place you must come. \nThis brainstorming event is for you.\nLife has never been easy in 221B, Bakers Street. Moriarty has hidden 5 bombs across the city. He is contacting Sherlock through a dumb person who can only make drawings. Sherlock has to understand the hints and solve it to reach to the destination since he can’t do both at the same time so inspector Lestard is following the places on Sherlock’s instruction. Dr Watson as usual is helping Sherlock.  Come and be the part of the unsolved mystery…… as Sherlock always says THE GAME IS ON……….\n\n\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','Abhishek Ranjan Singh','arscool.singh@gmail.com','8269535645','NULL','Ankit Verma','ankitverma1510@gmail.com','8840754424','','','2017-10-01 21:07:16','2017-10-08 17:03:31'),(22,'CircuitRun 3.0','circuitrun-30','competitions','https://drive.google.com/open?id=0B3E0HVQvXgXVU1AzY1lGdlUtb0U','If you are a \"Kindaichi\" looking for a quest, if the word \"adventure\" makes adrenaline rush through your body, if you want to explore your knowledge or just want to play with some captivating circuits-CIRCUIT RUN is what might catch your fancy. It is a team game in which you are supposed to hunt down the treasures.\n',77.40871100,23.21784200,'0000-00-00 00:00:00','Vedant Singh','vedantsingh1595@gmail.com','9165632290','NULL','Umang Mittal','','8058827744','','','2017-10-01 21:07:54','2017-10-08 17:02:28'),(23,'CODE KRIEGERS','code-kriegers','competitions','NULL','A 3-Tier competition where preliminary round (TreasureHunt-cum-CodeHunt) culminate by solving the code to reach a destination using the knowledge of Basic Programming.\nHere, participants will be mercenary soldiers who will have to finish the given assassination job by making effective use of coding and programming grip and comprehension.\n\n\n\n',77.40835100,23.21629300,'0000-00-00 00:00:00','Ayush Rathi','ayushrathi18@gmail.com','9461304727','NULL','Anuj Gupta','anupta45@gmail.com','8989859127','','','2017-10-01 21:12:25','2017-10-07 17:13:37'),(24,'SWAANG','swaang','competitions','NULL','A creative writing contest on the theme of \"technical advancements and ethnic values\"\n\n\n',77.40628100,23.21548700,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:13:39','2017-10-01 21:13:39'),(25,'QUIZZOTICA','quizzotica','competitions','NULL','An annual quiz competition that emphasises on the importance of General Awareness in the lives of Technocrats, in specific and public, broadly.\n\n',77.40871100,23.21784200,'0000-00-00 00:00:00','NULL','NUll@null.com','0','NULL','','','','','','2017-10-01 21:14:51','2017-10-01 21:14:51'),(26,'BAND NIGHT  ft. Chaar Hazaari','band-night-ft-chaar-hazaari','pronites','NULL','Chaar Hazaari is a Folk Rock band from Delhi. Since its inception in 2012, the band has grown interlacing contemporary, folk and classical music to create its inimitable sound. The lyrical themes of devotion, love, and nature find expression through the harmonizing fusion of traditional and western genres into Indian Folk and Modern Rock.\nThe music will attract you, the spirit will definitely make you stay. ',0.00000000,0.00000000,'2017-10-13 20:00:00','NULL','NULL@null.com','0','BAND NIGHT (13 OCT)','','','','','','2017-10-06 15:26:12','2017-10-06 15:26:59'),(27,'BAND NIGHT  ft. Nalayak band','band-night-ft-nalayak-band','pronites','NULL','DEFINED BY ITS ENCHANTING STAGE PERSONA, NALAYAK - THE BAND IS AN EMERGING, FIRST - OF - ITS KIND, INDEPENDENT ROCK BAND FROM CHANDIGARH. APPLAUDED FOR THE CRAZY ACTS AND STUPEFYING LIVE PERFORMANCES, NALAYAK\'S MUSIC GENTLY TEASES THE BIZARRENES OF THE ``MODERN SOCIETY``.',0.00000000,0.00000000,'2017-10-13 22:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 15:32:15','2017-10-06 15:32:15'),(28,'Laser Show','laser-show','pronites','NULL','Feel great extravaganza of laser lights with musical performances.',0.00000000,0.00000000,'2017-10-14 20:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 15:43:38','2017-10-06 15:43:38'),(29,'EDM NIGHT ft. Nina & Malika','edm-night-ft-nina-malika','pronites','NULL','Nina Shah and Malika Hayden are a female Dj duo.\nelectronic and dance music has been a major obsession for them, leading them to find their passion which is producing music and Djing. Their electric energy is contagious enough to get any party pumping!',0.00000000,0.00000000,'2017-10-14 21:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 15:49:11','2017-10-06 15:49:11'),(30,'DJ NIGHT ft. Zydec','dj-night-ft-zydec','pronites','NULL','Enjoy electronic and dance music with Zydec leading you to find your passion. \n',0.00000000,0.00000000,'2017-10-14 22:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 15:52:57','2017-10-06 15:52:57'),(31,'EDM NIGHT ft. DJ Carnivore','edm-night-ft-dj-carnivore','pronites','NULL','Abhishek Kale aka Carnivore is a professional DJ based out of New Delhi.\nDJ Carnivore never settles for \'good enough\', and he keeps exercising a stringent screening process with everything that he does to ensure that he creates that \"wow\" factor.',0.00000000,0.00000000,'2017-10-15 20:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 15:55:31','2017-10-06 15:55:31'),(32,'Artist Night ft. Hardy Sandhu','artist-night-ft-hardy-sandhu','pronites','NULL','Known for his charm and stellar performances, he has become the biggest hot property in the industry. \nEnjoy Stellar performances of Hardy Sandhu.',0.00000000,0.00000000,'2017-10-15 21:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 15:59:11','2017-10-06 15:59:11'),(33,'Cracker Show','cracker-show','pronites','NULL','Let\'s celebrate the closure of Central India\'s Biggest Technical Festival with Amazing Cracker show.',0.00000000,0.00000000,'2017-10-15 22:00:00','NULL','NULL@null.com','0','NULL','','','','','','2017-10-06 16:01:19','2017-10-06 16:01:19');
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

-- Dump completed on 2017-10-08 18:03:16
