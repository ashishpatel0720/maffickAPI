-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: maffick
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,'Panache','panache','fashion','Panache is the flagship Event of Maffick.It is a fashion Compensation.It comprises of 2 rounds.First,online submission of designs and second,being the portrayal of those designs through Ramp walk.This year we have \"Around the world\" as it\'s theme.','Panache-The Fashion Competition is flagship Event of Maffick',0.00000000,0.00000000,'2018-03-23 00:00:00','Mansi Pradhan','me.mansi17@gmail.com','9406575080','Coordinator ','Vandita Saxena','','919893092809','','','2018-03-03 19:27:51','2018-03-10 05:23:13'),(4,'Street play competition','street-play-competition','general','A nukkad natak portraying any cause is to be performed.','This is a street play(Nukkad natak) competition where various nukkad teams will be competing to convey their message by their own very best way.\n',0.00000000,0.00000000,'2018-03-10 05:26:12','Saurabh mishra','saurabhmishra.22597@gmail.com','9644696012','A permanent member of official street play team of MANIT- Ae se aenak','Sonu chaturvedi','sharmamanku122@gmail.com','8349645694','','','2018-03-03 21:13:43','2018-03-10 05:26:12'),(5,'Swarangan- Solo Singing Competition','swarangan-solo-singing-competition','music','Register here: http://bit.ly/swarangan18\n\nEvent Structure- \n1.	Participants must register online and have to send an audio/video clip of 1-2 minutes on the email ID mentioned below.\n\nEmail ID- events.maffick2018@gmail.com\n\n2.	Selected candidates would per','“Music is a magical journey which transcends mind to Euphoria.”\n\nThere\'s something about the perfect song that pumps wanderlust of rhythm through the veins. So come travelers bring your grooves onto the streets of Maffick, at \'Swarangan\'. \nExpose your vocal spirit, free your heart exploding in the sky and let the audience follow your lead to the roots of your voice.\n',0.00000000,0.00000000,'2018-03-23 16:55:38','Yaman Chourey','yamanchourey@gmail.com','9685977803','Overall Coordinator of Swarangan-Solo Singing Competition of Maffick\'18, Annual Cultural Festival of NIT-Bhopal.','Sourabh Jain','sourabh7023@gmail.com','7023723325','','','2018-03-04 10:06:58','2018-03-10 05:28:17'),(6,'Anahad - Rock Band Competition ','anahad-rock-band-competition','music','1. Round  1  :-  This  is  the  online  eliminations  round,Bands  are required  to  send  their  videos  to  the  official  Maffick  mail  id,  via drive  link  with  public  access  or  youtube  links.  Shotlisted  bands will  be  notified.  \n\n2. Round ','“They  say  music  is  the  perfect  way  to  achieve  Nirvana”.  Does  your band  still  play  in  the  old  dusty  garages  in  your  home?  Do  you  believe that  you  have  the  talent  and  are  just  missing  short  of  an opportunity?  Well  then  here’s  your  chance  to  prove  your  worth! Anahad  ,  the  rock  band  competition  of  central  India’s  largest  cultural fest,  Maffick  ,  NIT  BHOPAL  is  giving  you  the  chance  to  bring  forth your  passion  for  music!!! ',0.00000000,0.00000000,'2018-03-23 15:15:35','Amber Nalin','nalinamber@gamil.com','919993086711','Coordinator','Ayush Agarwal','agarwalayush340@gmail.com','8435608776','','','2018-03-04 15:10:55','2018-03-10 05:29:47'),(7,'Body Rock- Solo/Duet Dance Competition','body-rock-soloduet-dance-competition','dance','Register here: http://bit.ly/bodyrock18\n\nEvent Structure-\n\nRound 1-\nIt will be a basic selection round. Contestants can select any dance style. \n\nPerformance duration: 1:30 to 2:00 minutes (Day 1).\n\nRound 2-\nThis will be 4-5 minutes dance performance in w','\"Practice like you\'ve never won\nperform like you\'ve never lost.\"\n\nHave you ever experienced the adrenalin rush of uproarious, deafening music? The thundering echoes of the cheering crowd loud enough to give you goosebumps? The euphoria of having your name carved in the minds of your audience, just by your dance moves? Have you ever had the exhilaration of performing in front of Central India\'s biggest crowd, and sending shock waves to them with every single move? \n\nTo all the dancers out there, come and grab your opportunity.\nMaffick, NIT-Bhopal presents \"BODY ROCK\" a Solo/Duet Dance Competition.\n\n',0.00000000,0.00000000,'2018-03-23 17:26:17','Aditya Raj Singh Chauhan','adityaraj13011@gmail.com','9753779675','Overall Coordinator of Maffick 2018\'s Solo/Duet Dance Competition \"Body Rock\".','Apoorva Panna','apoorva.panna70@gmail.com','7000910706','','','2018-03-04 16:55:27','2018-03-10 05:32:39'),(8,'Dance Fiesta- Street Dancing Competition','dance-fiesta-street-dancing-competition','dance','Register here: http://bit.ly/dancefiesta18\n\nDANCE FIESTA comprises of 3 rounds.\n\nRound 1 (Day 2)\nA basic selection round to filter out all the entries. Participants are required to present a dance routine for about 3-4 minutes.\n\nRound 2 (Day 3)\nQualifiers','“Dancing is a vertical expression of a horizontal desire.”\n-Robert Frost\n\nSet your stage. The music’s on.\nThis is your turn to take the center stage.\nMake the crowd go wild with what you do best.\nGrab your chance to show off your talent to the world as MANIT-Bhopal has come yet again with its Street Dancing Competition \"Dance Fiesta\" as a part of MAFFICK ’18.\nBelieve in yourself. You are braver than you think, more talented than you know and capable of more than you can imagine. So, don’t let the opportunity slip away as you get to flaunt your moves.\nAnd who knows, this might be your breakthrough.\n',0.00000000,0.00000000,'2018-03-23 14:00:00','Avani Sharma','sharmaavani1012@gmail.com','7089051529','Overall coordinator of Maffick 2018\'s Street Dancing Competition \"Dance Fiesta\". ','Sumit Kumar','sumit96cool@gmail.com','7224042302','','','2018-03-04 17:24:28','2018-03-10 05:33:22'),(9,'Movie Making Competition','movie-making-competition','general','The problem statement for the competition is - \" You have to be in a team of maximum of five members and work together to come out with a short movie that is to be shot, processed and developed during the three days of the fest. \" ','It\'s time to showcase your short filmmaking and post production skills and bring them to work. Be a part of Maffick 2018 and produce a short film depicting the over-all semblance of the fest. ',0.00000000,0.00000000,'2018-03-23 00:00:00','Himanshu Kanojiya','kanojiyah7991@gmail.com','8989806031','. ','','','','','','2018-03-04 20:06:15','2018-03-10 05:34:15'),(10,'MAFFICK RIDERS','maffick-riders','general','This is a 3-Day event starting with the rigorous interview round on the first day followed by physical tasks judging the overall strength of the riders on the second day and the finale ends with a secret task on completion of which the contestant will be ','A fun-packed extravaganza which is sure to give you the ride of a lifetime. Maffick Riders is MANIT\'s very own version of the popular TV show roadies. The perfect mixture of adventure and drama, Maffick Riders is a sure-fire way to satisfy the adrenaline junkie in you.',0.00000000,0.00000000,'2018-03-23 12:00:00','Kunal Panwar','kunal2194p@gmail.com','7597900799','4th Year, Electrical Dept.','Abhishek Parashar','akparashar99@gmail.com','8349339387','4th Year, Electrical Dept.','','2018-03-05 06:00:09','2018-03-10 05:34:55'),(11,'Mr. & Ms. Maffick','mr-ms-maffick','fashion','Event Structure: There are 3 rounds in this year\'s Edition of Mr. and Ms. Maffick.\n\n1st Round: The first round is a screening round consisting of Group Discussions and Personal Interviews. This round will be used to filter out candidates for further round','What can be easily termed as the largest personality hunt of the city, Mr. And Ms. Maffick is the best place for you to showcase your subtle wit, crackling sense of humour and that covetous glamour and leave an everlasting impression on the mind of every attendant of Maffick! After all who wouldn\'t want to be recognised for something you do the best - being your gorgeous self.\n',0.00000000,0.00000000,'2018-03-23 11:00:00','Julian Steeve Tirkey','tirkeyjuliansteeve@gmail.com','9479390230','-','Kanchan Chauhan','','7697790693','','','2018-03-09 14:24:00','2018-03-09 14:24:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_10_08_214036_create_event_table',1),(2,'2016_10_10_183918_create_contact_table',1);
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

-- Dump completed on 2018-03-10 10:36:49
