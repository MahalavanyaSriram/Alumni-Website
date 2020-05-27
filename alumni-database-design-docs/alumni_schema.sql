-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: spring2020dbdonthisaram.cbqv3byoorcj.us-east-2.rds.amazonaws.com    Database: Project Sprint 3
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Account` (
  `Email_id` varchar(50) NOT NULL,
  `User_id` int(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Account_Type` int(50) NOT NULL,
  PRIMARY KEY (`Email_id`),
  KEY `User_id` (`User_id`),
  KEY `Account_Type` (`Account_Type`),
  CONSTRAINT `Account_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `User` (`User_id`),
  CONSTRAINT `Account_ibfk_2` FOREIGN KEY (`Account_Type`) REFERENCES `Account_Type` (`Account_Type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES ('Adams@gmail.com',74,'uncc1272',2),('Alan@gmail.com',25,'uncc1234',1),('Allen@gmail.com',67,'uncc1265',2),('Anderson@gmail.com',47,'uncc1245',2),('Ariel@gmail.com',30,'uncc1234',1),('Arna@gmail.com',9,'uncc1234',2),('Baker@gmail.com',73,'uncc1271',2),('Brown@gmail.com',39,'uncc1237',2),('Campbell@gmail.com',78,'uncc1276',2),('Carter@gmail.com',81,'uncc1279',2),('Clark@gmail.com',60,'uncc1258',2),('csmith23@ancc.edu',4,'csmith1234',1),('Davis@gmail.com',42,'uncc1240',2),('donna@gmail.com',3,'Donna1232',2),('dsmith56@gmail.com',2,'dsmith12344',2),('Evans@gmail.com',83,'uncc1281',2),('Francis@gmail.com',26,'uncc1234',1),('Franklin@gmail.com',8,'uncc1234',2),('Garcia@gmail.com',43,'uncc1241',2),('George@gmail.com',21,'uncc1234',1),('Gonzalez@gmail.com',58,'uncc1256',2),('Graham@gmail.com',22,'uncc1234',1),('Green@gmail.com',72,'uncc1270',2),('Hall@gmail.com',65,'uncc1263',2),('Harold1@gmail.com',19,'uncc1234',2),('Harold@gmail.com ',13,'uncc1234',2),('Harris@gmail.com',59,'uncc1257',2),('harvey@gmail.com',5,'Harvey67777',1),('Hernandez@gmail.com',50,'uncc1248',2),('Hill@gmail.com',76,'uncc1274',2),('jack.rayan123@gmail.com',7,'password188',3),('Jackson@gmail.com',53,'uncc1251',2),('James1@gmail.com',24,'uncc1234',1),('James@gmail.com ',17,'uncc1234',2),('Jerry@gmail.com',28,'uncc1234',1),('John@gmail.com',12,'uncc1234',2),('Johnson@gmail.com',37,'uncc1235',2),('Jon@gmail.com',14,'uncc1234',2),('Jones@gmail.com',40,'uncc1238',2),('Justin@gmail.com',35,'uncc1234',1),('jyoung@ancc.edu',1,'pass',2),('Kenneth@gmail.com',34,'uncc1234',1),('Kimberly@gmail.com',20,'uncc1234',2),('King@gmail.com',70,'uncc1268',2),('Larry@gmail.com',16,'uncc1234',2),('Lee@gmail.com',57,'uncc1255',2),('Lewis@gmail.com',61,'uncc1259',2),('Lisa@gmail.com',10,'uncc1234',2),('Lopez@gmail.com',56,'uncc1254',2),('Loree@gmail.com',31,'uncc1234',1),('Malcolm@gmail.com',23,'uncc1234',1),('Marnie@gmail.com',11,'uncc1234',2),('Martin@gmail.com',52,'uncc1250',2),('Martinez@gmail.com',46,'uncc1244',2),('mhernand34@ancc.edu',6,'password2',1),('Miller@gmail.com',41,'uncc1239',2),('Mitchell@gmail.com',79,'uncc1277',2),('Moore@gmail.com',51,'uncc1249',2),('Neal@gmail.com',33,'uncc1234',1),('Nelson@gmail.com',75,'uncc1273',2),('Neville@gmail.com ',15,'uncc1234',2),('Paul@gmail.com',32,'uncc1234',1),('Perez@gmail.com',64,'uncc1262',2),('Philip@gmail.com',18,'uncc1234',2),('Phillips@gmail.com',82,'uncc1280',2),('Ramirez@gmail.com',77,'uncc1275',2),('Roberts@gmail.com',80,'uncc1278',2),('Robinson@gmail.com',62,'uncc1260',2),('Rodriguez@gmail.com',44,'uncc1242',2),('Sanchez@gmail.com',68,'uncc1266',2),('Scott@gmail.com',71,'uncc1269',2),('Smith@gmail.com',36,'uncc1234',2),('Stanley@gmail.com',27,'uncc1234',1),('Taylor@gmail.com',48,'uncc1246',2),('Thomas@gmail.com',49,'uncc1247',2),('Thompson@gmail.com',54,'uncc1252',2),('Torres@gmail.com',85,'uncc1283',2),('Turner@gmail.com',84,'uncc1282',2),('Walker@gmail.com',63,'uncc1261',2),('Wesley@gmail.com',29,'uncc1234',1),('White@gmail.com',55,'uncc1253',2),('Williams@gmail.com',38,'uncc1236',2),('Wilson@gmail.com',45,'uncc1243',2),('Wright@gmail.com',69,'uncc1267',2),('Young@gmail.com',66,'uncc1264',2);
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Account_Type`
--

DROP TABLE IF EXISTS `Account_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Account_Type` (
  `Account_Type_id` int(50) NOT NULL AUTO_INCREMENT,
  `Account_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Account_Type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_Type`
--

LOCK TABLES `Account_Type` WRITE;
/*!40000 ALTER TABLE `Account_Type` DISABLE KEYS */;
INSERT INTO `Account_Type` VALUES (1,'Student'),(2,'Alumni'),(3,'Admin');
/*!40000 ALTER TABLE `Account_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Administrator`
--

DROP TABLE IF EXISTS `Administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Administrator` (
  `Admin_id` int(255) NOT NULL,
  PRIMARY KEY (`Admin_id`),
  CONSTRAINT `Administrator_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrator`
--

LOCK TABLES `Administrator` WRITE;
/*!40000 ALTER TABLE `Administrator` DISABLE KEYS */;
INSERT INTO `Administrator` VALUES (7);
/*!40000 ALTER TABLE `Administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alumni`
--

DROP TABLE IF EXISTS `Alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alumni` (
  `Alumni_id` int(255) NOT NULL,
  `Current_work_place` varchar(50) NOT NULL,
  `Prior_work_place` varchar(50) NOT NULL,
  `Industry` varchar(100) NOT NULL,
  `Experience` varchar(50) NOT NULL,
  `Graduation_year` int(4) NOT NULL,
  PRIMARY KEY (`Alumni_id`),
  KEY `Graduation_year_indx` (`Graduation_year`),
  KEY `Work_Place` (`Current_work_place`,`Prior_work_place`),
  CONSTRAINT `Alumni_ibfk_1` FOREIGN KEY (`Alumni_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alumni`
--

LOCK TABLES `Alumni` WRITE;
/*!40000 ALTER TABLE `Alumni` DISABLE KEYS */;
INSERT INTO `Alumni` VALUES (1,'Deloitte','PricewaterhouseCoopers','Finance','4 years',2017),(2,'Google','Amazon','Information Technology','1 years',2018),(3,'Google','Facebook','Information Technology','10 years',2010),(8,'Google','Advanced Micro Devices','Information Technology','4 years',2017),(9,'JD.com','Wayfair','Information Technology','4 years',2017),(10,'Alibaba','AEON','Information Technology','4 years',2017),(11,'Facebook','Ahold Delhaize','Information Technology','4 years',2017),(12,'Tencent','Asics','Information Technology','3 years',2018),(13,'Netflix','Airbus','Information Technology','3 years',2018),(14,'PayPal','Aitken Spence','Information Technology','3 years',2018),(15,'Booking','AkzoNobel','Information Technology','3 years',2018),(16,'Baidu','Alcatel-Lucent','Information Technology','10 years',2010),(17,'eBay','Alfa Laval','Information Technology','5 years',2015),(18,'Salesforce.com','All Nippon Airways','Information Technology','7 years',2019),(19,'Expedia','Adobe','Information Technology','10 years',2010),(20,'Bloomberg L.P.','Uber','Information Technology','10 years',2010),(36,'JPMorgan Chase','Barclays Investment Bank','Finance','4 years',2017),(37,'Goldman Sachs','Deutsche Bank','Finance','3 years',2018),(38,'BofA Securities','UBS','Finance','5 years',2016),(39,'Morgan Stanley','RBC Capital Markets','Finance','10 years',2009),(40,'Citigroup','Wells Fargo Securities','Finance','7 years',2014),(41,'Credit Suisse','HSBC','Finance','4 years',2017),(42,'Mizuho','Jefferies Group','Finance','3 years',2018),(43,'Johnson & Johnson','pfizer','Biotechnology','5 years',2016),(44,'Johnson & Johnson','pfizer','Biotechnology','10 years',2009),(45,'pfizer','Johnson & Johnson','Biotechnology','7 years',2014),(46,'DowDuPont','Shin-Etsu Chemical','Chemical','4 years',2017),(47,'BASF','Shin-Etsu Chemical','Chemical','3 years',2018),(48,'Sinopec','Mitsui Chemicals','Chemical','5 years',2016),(49,'Sabic','Solvay','Chemical','10 years',2009),(50,'Ineos','Yara','Chemical','7 years',2014),(51,'Formosa Plastics','Chevron Phillips Chemical','Chemical','4 years',2017),(52,'ExxonMobil Chemical','DSM','Chemical','3 years',2018),(53,'LyondellBasell Industries','Indorama','Chemical','5 years',2016),(54,'Mitsubishi Chemical','Asahi Kasei','Chemical','10 years',2009),(55,'LG Chem','Arkema','Chemical','7 years',2014),(56,'Reliance Industries','Syngenta','Chemical','4 years',2017),(57,'PetroChina','Eastman Chemical','Chemical','3 years',2018),(58,'Air Liquide','Borealis','Chemical','5 years',2016),(59,'Toray Industries','Mitsui Chemicals','Chemical','10 years',2009),(60,'Evonik Industries','Solvay','Chemical','7 years',2014),(61,'Covestro','Yara','Chemical','4 years',2017),(62,'Bayer','Chevron Phillips Chemical','Chemical','3 years',2018),(63,'Sumitomo Chemical','DSM','Chemical','5 years',2016),(64,'Braskem','Indorama','Chemical','10 years',2009),(65,'Lotte Chemical','Asahi Kasei','Chemical','7 years',2014),(66,'Linde plc','Arkema','Chemical','4 years',2017),(67,'Lazard','JPMorgan Chase','Finance','3 years',2018),(68,'Nomura','Goldman Sachs','Finance','5 years',2016),(69,'Evercore Partners','BofA Securities','Finance','10 years',2009),(70,'BMO Capital Markets','Morgan Stanley','Finance','7 years',2014),(71,'Mitsubishi UFJ Financial Group','Citigroup','Finance','4 years',2017),(72,'Mizuho','Credit Suisse','Finance','3 years',2018),(73,'BNP Paribas','Mizuho','Finance','5 years',2016),(74,'Science Applications','Avanade','Information Technology','10 years',2009),(75,'Unisys','Booz Allen Hamilton','Information Technology','7 years',2014),(76,'Accenture','Broadcom Inc.','Information Technology','4 years',2017),(77,'Alten','CGI Group','Information Technology','3 years',2018),(78,'Altran','Cognizant Technology Solutions','Information Technology','5 years',2016),(79,'Atos','Conduent','Information Technology','10 years',2009),(80,'Capgemini','DXC Technology','Information Technology','7 years',2014),(81,'Deloitte','EPAM Systems','Information Technology','4 years',2017),(82,'Grant Thornton International','Genpact','Information Technology','3 years',2018),(83,'Indra','IBM Global Services','Information Technology','5 years',2016),(84,'KPMG','Softtek','Information Technology','10 years',2009),(85,'NTT Ltd.','Syntel','Information Technology','7 years',2014);
/*!40000 ALTER TABLE `Alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Alumni_details`
--

DROP TABLE IF EXISTS `Alumni_details`;
/*!50001 DROP VIEW IF EXISTS `Alumni_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Alumni_details` AS SELECT 
 1 AS `Alumni_id`,
 1 AS `Alumni_name`,
 1 AS `Alumni_Email`,
 1 AS `Current_work_place`,
 1 AS `Address`,
 1 AS `Contact_number`,
 1 AS `Prior_work_place`,
 1 AS `Industry`,
 1 AS `Experience`,
 1 AS `Graduation_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Club_Members`
--

DROP TABLE IF EXISTS `Club_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Club_Members` (
  `Club_id` int(255) NOT NULL,
  `Alumni_id` int(255) NOT NULL,
  PRIMARY KEY (`Club_id`,`Alumni_id`),
  KEY `Alumni_id` (`Alumni_id`),
  CONSTRAINT `Club_Members_ibfk_1` FOREIGN KEY (`Club_id`) REFERENCES `Clubs` (`Club_id`),
  CONSTRAINT `Club_Members_ibfk_2` FOREIGN KEY (`Alumni_id`) REFERENCES `Alumni` (`Alumni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Club_Members`
--

LOCK TABLES `Club_Members` WRITE;
/*!40000 ALTER TABLE `Club_Members` DISABLE KEYS */;
INSERT INTO `Club_Members` VALUES (1,1),(2,1),(5,1),(1,2),(2,2),(3,2),(5,2),(1,3),(2,3),(5,3),(7,3),(8,3),(1,8),(2,8),(5,8),(7,8),(8,8),(1,9),(2,9),(5,9),(7,9),(8,9),(1,10),(2,10),(5,10),(7,10),(8,10),(1,11),(2,11),(5,11),(7,11),(8,11),(1,12),(2,12),(5,12),(7,12),(8,12),(1,13),(2,13),(5,13),(7,13),(8,13),(1,14),(2,14),(5,14),(7,14),(8,14),(1,15),(2,15),(5,15),(6,15),(7,15),(8,15),(1,16),(2,16),(5,16),(6,16),(7,16),(8,16),(1,17),(2,17),(5,17),(6,17),(7,17),(8,17),(1,18),(2,18),(5,18),(6,18),(7,18),(1,19),(2,19),(5,19),(6,19),(7,19),(1,20),(2,20),(5,20),(6,20),(7,20),(1,36),(2,36),(5,36),(6,36),(7,36),(1,37),(2,37),(5,37),(6,37),(7,37),(1,38),(2,38),(5,38),(7,38),(1,39),(2,39),(5,39),(7,39),(1,40),(2,40),(5,40),(7,40),(1,41),(2,41),(5,41),(1,42),(2,42),(5,42),(1,43),(2,43),(5,43),(2,44),(3,44),(5,44),(2,45),(3,45),(5,45),(2,46),(3,46),(5,46),(2,47),(3,47),(5,47),(2,48),(3,48),(2,49),(3,49),(2,50),(3,50),(5,50),(2,51),(3,51),(5,51),(2,52),(3,52),(5,52),(2,53),(3,53),(5,53),(2,54),(3,54),(5,54),(2,55),(3,55),(5,55),(3,56),(3,57),(4,57),(3,58),(4,58),(3,59),(4,59),(3,60),(4,60),(3,61),(4,61),(3,62),(4,62),(3,63),(4,63),(3,64),(4,64),(3,65),(4,65),(3,66),(4,66),(4,67),(4,68),(4,69),(4,70),(6,70),(4,71),(6,71),(4,72),(6,72),(4,73),(6,73),(8,73),(4,74),(6,74),(8,74),(4,75),(6,75),(8,75),(4,76),(6,76),(8,76),(4,77),(7,77),(8,77),(4,78),(7,78),(8,78),(4,79),(4,80),(4,81),(4,82),(4,83),(4,84),(4,85);
/*!40000 ALTER TABLE `Club_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clubs`
--

DROP TABLE IF EXISTS `Clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clubs` (
  `Club_id` int(255) NOT NULL AUTO_INCREMENT,
  `Club_Name` varchar(20) NOT NULL,
  `Club_Description` varchar(200) NOT NULL,
  `Club_Leader` int(255) NOT NULL,
  `Created_by` int(255) NOT NULL,
  PRIMARY KEY (`Club_id`),
  KEY `Club_Leader` (`Club_Leader`),
  KEY `Created_by` (`Created_by`),
  CONSTRAINT `Clubs_ibfk_1` FOREIGN KEY (`Club_Leader`) REFERENCES `Alumni` (`Alumni_id`),
  CONSTRAINT `Clubs_ibfk_2` FOREIGN KEY (`Created_by`) REFERENCES `Administrator` (`Admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clubs`
--

LOCK TABLES `Clubs` WRITE;
/*!40000 ALTER TABLE `Clubs` DISABLE KEYS */;
INSERT INTO `Clubs` VALUES (1,'Career Center','club for individual development',1,7),(2,'Academic Excellence','club for improvement in academics',2,7),(3,'Basketball','gaming club',3,7),(4,'Health & Fitness','Club for Health & Wellness',18,7),(5,'Arts & Culture','Club for Arts & Culture',65,7),(6,'Diversity','Club for Diversity & Multicultural',51,7),(7,'Religions','Club for Religions',45,7),(8,'Soccer','Club for Golf players',65,7);
/*!40000 ALTER TABLE `Clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Event` (
  `Event_id` int(255) NOT NULL AUTO_INCREMENT,
  `Event_name` varchar(50) NOT NULL,
  `Event_description` varchar(200) NOT NULL,
  `Organizing_club` int(255) NOT NULL,
  `Event_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Event_id`),
  KEY `Organizing_club` (`Organizing_club`),
  KEY `Event_info` (`Event_name`,`Organizing_club`),
  CONSTRAINT `Event_ibfk_1` FOREIGN KEY (`Organizing_club`) REFERENCES `Clubs` (`Club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES (1,'Exploring Careers','Attend this event hosted by the Career Center to learn more about potential careers and how your current skills are applicable.',1,'2020-05-03 16:00:00'),(2,'Time Management','Attend this eventLearn to effectively organize your time and tasks so you can accomplish your goals',2,'2020-05-07 10:30:00'),(3,'Men\'s Basketball','Watch and enjoy the basketball match between two college teams',3,'2020-05-10 16:30:00'),(4,'Cardio Dance','This event creatively blends elements of various dance styles for a fun workout that everyone can do',4,'2020-05-06 16:00:00'),(5,'Lunch Time Art','Join this event during the lunch hour to use art as a way to express love and loss',5,'2020-05-08 11:30:00'),(6,'Yoga','Gentle yoga eases you through a series of poses and stretches that leaves you feeling rejuvenated and refreshed!',4,'2020-05-13 15:00:00'),(7,'Cardio Kickboxing','Come let out your inner boxer in this high-energy, choreographed shadow-boxing event',4,'2020-05-14 13:00:00'),(8,'Goal Setting','Identify short and long term goals, and create a specific, realistic, and well-informed action plan for achieving them.',1,'2020-05-15 14:30:00'),(9,'Meditation and Restorative Yoga','session involving information on benefits of meditation and to assist the body in releasing stress and tension.',4,'2020-05-16 12:30:00'),(10,'Bible Study','Join this event for a time in the Word, worship, and prayer',7,'2020-05-17 15:30:00'),(11,'\nStream Your Talent ','Get ready for another chance to show your talent',2,'2020-05-20 16:00:00'),(12,'Womens Soccer Match','Watch and enjoy soccer match',8,'2020-05-21 13:30:00');
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Follow`
--

DROP TABLE IF EXISTS `Follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Follow` (
  `Follower_id` int(255) NOT NULL,
  `Following_id` int(255) NOT NULL,
  PRIMARY KEY (`Follower_id`,`Following_id`),
  KEY `Following_id` (`Following_id`),
  CONSTRAINT `Follow_ibfk_1` FOREIGN KEY (`Follower_id`) REFERENCES `User` (`User_id`),
  CONSTRAINT `Follow_ibfk_2` FOREIGN KEY (`Following_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Follow`
--

LOCK TABLES `Follow` WRITE;
/*!40000 ALTER TABLE `Follow` DISABLE KEYS */;
INSERT INTO `Follow` VALUES (4,2),(5,2),(6,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(4,3),(5,3),(6,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(1,4),(3,5),(4,5),(2,6),(4,84),(5,84),(6,84),(21,84),(22,84),(23,84),(24,84),(25,84),(26,84),(27,84),(28,84),(29,84),(30,84),(31,84),(32,84),(33,84),(34,84),(35,84);
/*!40000 ALTER TABLE `Follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Follow_Details`
--

DROP TABLE IF EXISTS `Follow_Details`;
/*!50001 DROP VIEW IF EXISTS `Follow_Details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Follow_Details` AS SELECT 
 1 AS `Follower_Name`,
 1 AS `Follower_Email`,
 1 AS `Following_Name`,
 1 AS `Following_Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Job_Postings`
--

DROP TABLE IF EXISTS `Job_Postings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Job_Postings` (
  `Job_id` int(255) NOT NULL AUTO_INCREMENT,
  `Job_name` varchar(50) NOT NULL,
  `Job_description` varchar(200) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `Contact_number` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `Publisher` int(255) NOT NULL,
  `JP_Due_date` datetime DEFAULT NULL,
  `JP_last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`Job_id`),
  KEY `Publisher` (`Publisher`),
  KEY `Job_info` (`Job_description`,`Company`),
  CONSTRAINT `Job_Postings_ibfk_1` FOREIGN KEY (`Publisher`) REFERENCES `Alumni` (`Alumni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Job_Postings`
--

LOCK TABLES `Job_Postings` WRITE;
/*!40000 ALTER TABLE `Job_Postings` DISABLE KEYS */;
INSERT INTO `Job_Postings` VALUES (1,'Software Engineer','5 + years of Experience needed.','PK Applications Inc.','8927938479','Pkapplications.org',2,'2020-05-06 00:00:00','2020-04-20 17:59:10'),(2,'Developer','5 + years of Experience needed.','DA Cloud Inc.','9802848920','dacloud.in',3,'2019-08-03 00:00:00','2020-04-17 02:17:22'),(3,'Front end Developer','7+ years of Experience needed.','Spectrum','9806748929','spectrum.org',1,'2020-10-02 00:00:00','2020-04-16 23:13:15'),(4,'Software Engineer','2+ years experience','Google','9837939271','Google.com',8,'2020-08-03 00:00:00','2020-04-20 23:54:46'),(5,'UX designer','5+ years experience','Advanced Micro Devices','9875367883','Advanced Micro Devices.com',8,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(6,'UI developer','7+ years experience','Alibaba','8489098539','Alibaba.com',9,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(7,'QA','2+ years experience','Facebook','9854950051','Facebook.com',10,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(8,'DBA','5+ years experience','Tencent','8891849202','Tencent.com',11,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(9,'Devops','7+ years experience','Netflix','8439473873','Netflix.com',12,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(10,'Software Engineer','2+ years experience','PayPal','8568590887','PayPal.com',13,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(11,'UX designer','5+ years experience','Booking','9874838732','Booking.com',14,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(12,'UI developer','7+ years experience','Baidu','9935399934','Baidu.com',15,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(13,'QA','2+ years experience','eBay','9874837837','eBay.com',16,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(14,'DBA','5+ years experience','Salesforce.com','8729238299','Salesforce.com.com',17,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(15,'Devops','7+ years experience','Expedia','8921794394','Expedia.com',18,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(16,'Software Engineer','2+ years experience','Bloomberg L.P.','8374838923','Bloomberg L.P..com',19,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(17,'UX designer','10+ years experience','Advanced Micro Devices','9753894823','Advanced Micro Devices.com',8,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(18,'UI developer','7+ years experience','Wayfair','8539040249','Wayfair.com',9,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(19,'QA','2+ years experience','AEON','9249232930','AEON.com',10,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(20,'DBA','5+ years experience','Ahold Delhaize','9820239209','Ahold Delhaize.com',11,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(21,'Devops','7+ years experience','Asics','9373389124','Asics.com',12,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(22,'Software Engineer','2+ years experience','Airbus','9763827329','Airbus.com',13,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(23,'UX designer','5+ years experience','Aitken Spence','9873289274','Aitken Spence.com',14,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(24,'UI developer','7+ years experience','AkzoNobel','9873289913','AkzoNobel.com',15,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(25,'QA','2+ years experience','Alcatel-Lucent','9883472919','Alcatel-Lucent.com',16,'2020-08-03 00:00:00','2020-04-20 23:54:00'),(26,'DBA','5+ years experience','Alfa Laval','9873437298','Alfa Laval.com',17,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(27,'Devops','7+ years experience','All Nippon Airways','9273292392','All Nippon Airways.com',18,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(28,'Software Engineer','2+ years experience','Adobe','8724729329','Adobe.com',19,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(29,'UX designer','5+ years experience','Uber','9748279292','Uber.com',20,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(30,'UI developer','7+ years experience','Avanade','8724928429','Avanade.com',74,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(31,'QA','2+ years experience','Booz Allen Hamilton','9374947924','Booz Allen Hamilton.com',75,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(32,'DBA','5+ years experience','Broadcom Inc.','9742839283','Broadcom Inc..com',76,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(33,'Devops','7+ years experience','CGI Group','9831731389','CGI Group.com',77,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(34,'Software Engineer','2+ years experience','Cognizant Technology Solutions','9284924894','Cognizant Technology Solutions.com',78,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(35,'UX designer','5+ years experience','Conduent','9384928424','Conduent.com',79,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(36,'UI developer','7+ years experience','DXC Technology','9842949224','DXC Technology.com',80,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(37,'QA','2+ years experience','EPAM Systems','9249279724','EPAM Systems.com',81,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(38,'DBA','5+ years experience','Genpact','9849247294','Genpact.com',82,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(39,'Devops','7+ years experience','IBM Global Services','9479248294','IBM Global Services.com',83,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(40,'Software Engineer','2+ years experience','Softtek','9849242942','Softtek.com',84,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(41,'UX designer','5+ years experience','Syntel','9792849248','Syntel.com',85,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(42,'UI developer','7+ years experience','Science Applications','9842984823','Science Applications.com',74,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(43,'QA','2+ years experience','Unisys','9583984298','Unisys.com',75,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(44,'DBA','5+ years experience','Accenture','9472749249','Accenture.com',76,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(45,'Devops','7+ years experience','Alten','9472847208','Alten.com',77,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(46,'Software Engineer','2+ years experience','Altran','9359384938','Altran.com',78,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(47,'UX designer','5+ years experience','Atos','9353948928','Atos.com',79,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(48,'UI developer','7+ years experience','Capgemini','9384924829','Capgemini.com',80,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(49,'QA','2+ years experience','Deloitte','9028420392','Deloitte.com',81,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(50,'DBA','5+ years experience','Grant Thornton International','9029302390','Grant Thornton International.com',82,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(51,'Devops','7+ years experience','Indra','9359380394','Indra.com',83,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(52,'Software Engineer','2+ years experience','KPMG','9972923928','KPMG.com',84,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(53,'UX designer','5+ years experience','NTT Ltd.','9877788989','NTT Ltd..com',85,'2020-08-03 00:00:00','2020-04-20 23:54:01'),(54,'Operator','7+ years experience','Shin-Etsu Chemical','9374793402','Shin-Etsu Chemical.com',46,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(55,'Engineer','2+ years experience','Shin-Etsu Chemical','9748928490','Shin-Etsu Chemical.com',47,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(56,'Quality Engineer','5+ years experience','Mitsui Chemicals','9334902490','Mitsui Chemicals.com',48,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(57,'Production Engineer','7+ years experience','Solvay','9854985300','Solvay.com',49,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(58,'Cost Analyst','2+ years experience','Yara','9395839503','Yara.com',50,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(59,'Operator','5+ years experience','Chevron Phillips Chemical','9839384934','Chevron Phillips Chemical.com',51,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(60,'Engineer','7+ years experience','DSM','9985938398','DSM.com',52,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(61,'Quality Engineer','2+ years experience','Indorama','9394902934','Indorama.com',53,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(62,'Production Engineer','5+ years experience','Asahi Kasei','9638093403','Asahi Kasei.com',54,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(63,'Cost Analyst','7+ years experience','Arkema','9398039394','Arkema.com',55,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(64,'Operator','2+ years experience','Syngenta','9380393950','Syngenta.com',56,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(65,'Engineer','5+ years experience','Eastman Chemical','9309305032','Eastman Chemical.com',57,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(66,'Quality Engineer','fresh graduates','Borealis','9358930340','Borealis.com',58,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(67,'Production Engineer','fresh graduates','Mitsui Chemicals','9384938432','Mitsui Chemicals.com',59,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(68,'Cost Analyst','fresh graduates','Solvay','9843940294','Solvay.com',60,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(69,'Operator','fresh graduates','Yara','9494859030','Yara.com',61,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(70,'Engineer','fresh graduates','Chevron Phillips Chemical','9385938438','Chevron Phillips Chemical.com',62,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(71,'Quality Engineer','fresh graduates','DSM','9458958035','DSM.com',63,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(72,'Production Engineer','fresh graduates','Indorama','9496894684','Indorama.com',64,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(73,'Cost Analyst','fresh graduates','Asahi Kasei','9884997593','Asahi Kasei.com',65,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(74,'Operator','fresh graduates','Arkema','9584985458','Arkema.com',66,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(75,'Engineer','fresh graduates','DowDuPont','9485948594','DowDuPont.com',46,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(76,'Quality Engineer','fresh graduates','BASF','9393843841','BASF.com',47,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(77,'Production Engineer','fresh graduates','Sinopec','9912195390','Sinopec.com',48,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(78,'Cost Analyst','fresh graduates','Sabic','9479242427','Sabic.com',49,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(79,'Operator','fresh graduates','Ineos','9357937538','Ineos.com',50,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(80,'Engineer','fresh graduates','Formosa Plastics','9459458301','Formosa Plastics.com',51,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(81,'Quality Engineer','fresh graduates','ExxonMobil Chemical','9479283238','ExxonMobil Chemical.com',52,'2020-08-03 00:00:00','2020-04-20 23:54:02'),(82,'Production Engineer','fresh graduates','LyondellBasell Industries','9837939271','LyondellBasell Industries.com',53,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(83,'Cost Analyst','fresh graduates','Mitsubishi Chemical','9875367883','Mitsubishi Chemical.com',54,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(84,'Operator','fresh graduates','LG Chem','8489098539','LG Chem.com',55,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(85,'Engineer','fresh graduates','Reliance Industries','9854950051','Reliance Industries.com',56,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(86,'Quality Engineer','fresh graduates','PetroChina','8891849202','PetroChina.com',57,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(87,'Production Engineer','fresh graduates','Air Liquide','8439473873','Air Liquide.com',58,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(88,'Cost Analyst','fresh graduates','Toray Industries','8568590887','Toray Industries.com',59,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(89,'Operator','fresh graduates','Evonik Industries','9874838732','Evonik Industries.com',60,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(90,'Engineer','fresh graduates','Covestro','9935399934','Covestro.com',61,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(91,'Quality Engineer','fresh graduates','Bayer','9874837837','Bayer.com',62,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(92,'Production Engineer','fresh graduates','Sumitomo Chemical','8729238299','Sumitomo Chemical.com',63,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(93,'Cost Analyst','fresh graduates','Braskem','8921794394','Braskem.com',64,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(94,'Operator','fresh graduates','Lotte Chemical','8374838923','Lotte Chemical.com',65,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(95,'Engineer','fresh graduates','Linde plc','9753894823','Linde plc.com',66,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(96,'Accountant','fresh graduates','JPMorgan Chase','8539040249','JPMorgan Chase.com',67,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(97,'Auditor','fresh graduates','Goldman Sachs','9249232930','Goldman Sachs.com',68,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(98,'Budget Analyst','fresh graduates','BofA Securities','9820239209','BofA Securities.com',69,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(99,'Cost Estimator','fresh graduates','Morgan Stanley','9373389124','Morgan Stanley.com',70,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(100,'finance Associate','fresh graduates','Citigroup','9763827329','Citigroup.com',71,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(101,'Accountant','fresh graduates','Credit Suisse','9873289274','Credit Suisse.com',72,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(102,'Auditor','fresh graduates','Mizuho','9873289913','Mizuho.com',73,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(103,'Budget Analyst','fresh graduates','Lazard','9883472919','Lazard.com',67,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(104,'Cost Estimator','fresh graduates','Nomura','9873437298','Nomura.com',68,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(105,'finance Associate','fresh graduates','Evercore Partners','9273292392','Evercore Partners.com',69,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(106,'Accountant','fresh graduates','BMO Capital Markets','8724729329','BMO Capital Markets.com',70,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(107,'Auditor','fresh graduates','Mitsubishi UFJ Financial Group','9748279292','Mitsubishi UFJ Financial Group.com',71,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(108,'Budget Analyst','fresh graduates','Mizuho','8724928429','Mizuho.com',72,'2020-08-03 00:00:00','2020-04-20 23:54:03'),(109,'Cost Estimator','fresh graduates','BNP Paribas','9374947924','BNP Paribas.com',73,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(110,'finance Associate','fresh graduates','Barclays Investment Bank','9742839283','Barclays Investment Bank.com',36,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(111,'Accountant','fresh graduates','Deutsche Bank','9831731389','Deutsche Bank.com',37,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(112,'Auditor','fresh graduates','UBS','9284924894','UBS.com',38,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(113,'Budget Analyst','fresh graduates','RBC Capital Markets','9384928424','RBC Capital Markets.com',39,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(114,'Cost Estimator','fresh graduates','Wells Fargo Securities','9842949224','Wells Fargo Securities.com',40,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(115,'finance Associate','fresh graduates','HSBC','9249279724','HSBC.com',41,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(116,'Accountant','fresh graduates','Jefferies Group','9849247294','Jefferies Group.com',42,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(117,'Auditor','fresh graduates','pfizer','9479248294','pfizer.com',43,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(118,'Budget Analyst','fresh graduates','pfizer','9849242942','pfizer.com',44,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(119,'Cost Estimator','fresh graduates','Johnson & Johnson','9792849248','Johnson & Johnson.com',45,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(120,'finance Associate','fresh graduates','JPMorgan Chase','9842984823','JPMorgan Chase.com',36,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(121,'Accountant','fresh graduates','Goldman Sachs','9583984298','Goldman Sachs.com',37,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(122,'Auditor','fresh graduates','BofA Securities','9472749249','BofA Securities.com',38,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(123,'Budget Analyst','fresh graduates','Morgan Stanley','9472847208','Morgan Stanley.com',39,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(124,'Cost Estimator','fresh graduates','Citigroup','9359384938','Citigroup.com',40,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(125,'finance Associate','fresh graduates','Credit Suisse','9353948928','Credit Suisse.com',41,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(126,'Accountant','fresh graduates','Mizuho','9384924829','Mizuho.com',42,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(127,'Auditor','fresh graduates','Johnson & Johnson','9028420392','Johnson & Johnson.com',43,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(128,'Budget Analyst','fresh graduates','Johnson & Johnson','9029302390','Johnson & Johnson.com',44,'2020-08-03 00:00:00','2020-04-20 23:54:04'),(129,'Cost Estimator','fresh graduates','pfizer','9359380394','pfizer.com',45,'2020-08-03 00:00:00','2020-04-20 23:54:04');
/*!40000 ALTER TABLE `Job_Postings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Participant_details`
--

DROP TABLE IF EXISTS `Participant_details`;
/*!50001 DROP VIEW IF EXISTS `Participant_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Participant_details` AS SELECT 
 1 AS `Event_name`,
 1 AS `Participant`,
 1 AS `Participant_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Participants`
--

DROP TABLE IF EXISTS `Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Participants` (
  `Event_id` int(255) NOT NULL,
  `User_id` int(255) NOT NULL,
  PRIMARY KEY (`Event_id`,`User_id`),
  KEY `User_id` (`User_id`),
  CONSTRAINT `Participants_ibfk_1` FOREIGN KEY (`Event_id`) REFERENCES `Event` (`Event_id`),
  CONSTRAINT `Participants_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants`
--

LOCK TABLES `Participants` WRITE;
/*!40000 ALTER TABLE `Participants` DISABLE KEYS */;
INSERT INTO `Participants` VALUES (3,2),(1,3),(2,3),(2,4),(3,4),(1,5),(1,8),(2,9),(3,10),(4,11),(5,12),(6,13),(7,14),(8,15),(9,16),(10,17),(11,18),(12,19),(1,20),(2,21),(3,22),(4,23),(5,24),(6,25),(7,26),(8,27),(9,28),(10,29),(11,30),(12,31),(1,32),(2,33),(3,34),(4,35),(5,36),(6,37),(7,38),(8,39),(9,40),(10,41),(11,42),(12,43),(11,44),(11,45),(11,46),(11,47),(11,48),(11,49),(11,50),(11,51),(11,52),(11,53),(11,54),(11,55),(11,56),(11,57),(11,58),(2,59),(3,60),(4,61),(5,62),(6,63),(7,64),(8,65),(9,66),(10,67),(11,68),(12,69),(3,70),(4,71),(5,72),(6,73),(7,74),(8,75),(9,76),(10,77),(1,78),(2,79),(3,80),(4,81),(5,82),(6,83),(2,84),(1,85);
/*!40000 ALTER TABLE `Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `Student_id` int(255) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Year` int(4) NOT NULL,
  `Credits_till_date` int(4) NOT NULL,
  `GPA` float NOT NULL,
  `Stream` varchar(30) NOT NULL,
  `Degree` varchar(30) NOT NULL,
  PRIMARY KEY (`Student_id`),
  KEY `Academic_info` (`Stream`,`Degree`),
  CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `User` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (4,'College of Computing',2020,26,3.8,'Bioinformatics','Undergraduate'),(5,'College of Computing',2021,15,3.9,'Computer Science','graduate'),(6,'College of Arts',2022,9,4,'Physics','graduate'),(21,'College of Computing',2019,9,3.14,'Bioinformatics','Undergraduate'),(22,'College of Computing',2019,16,3.45,'Bioinformatics','Undergraduate'),(23,'College of Computing',2020,18,3.46,'Computer Science','graduate'),(24,'College of Computing',2020,21,4,'Computer Science','graduate'),(25,'College of Arts',2019,24,3.82,'Physics','Undergraduate'),(26,'College of Arts',2019,9,3.67,'Physics','Undergraduate'),(27,'College of Arts',2020,16,3.87,'Physics','graduate'),(28,'Civil',2020,18,4,'Urban Engineering','Undergraduate'),(29,'Civil',2019,21,3.67,'Urban Engineering','graduate'),(30,'Civil',2020,24,3.78,'Coastal Engineering','Undergraduate'),(31,'Civil',2019,9,3.92,'Coastal Engineering','Undergraduate'),(32,'Electrical',2019,16,3.98,'Power Engineering','graduate'),(33,'Electrical',2019,18,3.99,'Power Engineering','graduate'),(34,'Electrical',2020,21,3.57,'Signal Processing','Undergraduate'),(35,'Electrical',2020,24,4,'Signal Processing','Undergraduate');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Student_details`
--

DROP TABLE IF EXISTS `Student_details`;
/*!50001 DROP VIEW IF EXISTS `Student_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Student_details` AS SELECT 
 1 AS `Student_name`,
 1 AS `Student_Email`,
 1 AS `Stream`,
 1 AS `Degree`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `User_id` int(255) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(200) NOT NULL,
  `Last_name` varchar(200) NOT NULL,
  `Address_line_1` varchar(50) NOT NULL,
  `Address_line_2` varchar(50) DEFAULT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Zip_Code` varchar(5) NOT NULL,
  `Contact_number` varchar(20) NOT NULL,
  PRIMARY KEY (`User_id`),
  KEY `Address` (`Address_line_1`,`Address_line_2`,`City`,`State`,`Zip_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Jacob','Young','AR Buildings',NULL,'Sanfrancisco','California','94015','9804635879'),(2,'David','Smith','1600 Amphitheatre Parkway',NULL,'Mountain View','California','94043','980433444'),(3,'Donna','Paulsen','1600 Amphitheatre Parkway',NULL,'Mountain View','California','94043','9327462382'),(4,'Charlie','Smith','3560 Apartments','Apt No 325','Charlotte','NC','22798','9364829282'),(5,'Harvey','Specter','KK Apartments','Apt No 235','Charlotte','NC','28288','9356735189'),(6,'Maria','Hernandez','The Lowrie','Apt No 625','Charlotte','NC','20887','9456282990'),(7,'Jack','Ryan','JK Buildings','Apt No 450','Atlanta','Georgia','30040','9876637839'),(8,'Franklin','Bondonno','Arlington Ave','Apt No 10','San Francisco','California','94015','9837939271'),(9,'Arna','Bontemps','Harman St','Apt No 11','San Francisco','California','94015','9875367883'),(10,'Lisa','Breckenridge','Bartow Ave','Apt No 12','San Francisco','California','94015','8489098539'),(11,'Marnie','Breckenridge','Brook Ave','Apt No 13','San Francisco','California','94015','9854950051'),(12,'John','Burden','Crotona Pkwy','Apt No 14','San Francisco','California','94015','8891849202'),(13,'Harold','Clark','Riverside Dr','Apt No 15','San Francisco','California','94015','8439473873'),(14,'Jon','Dybdahl','Concord Ave','Apt No 16','San Francisco','California','94015','8568590887'),(15,'Neville','Gallimore','Stadium Ave','Apt No 17','San Francisco','California','94015','9874838732'),(16,'Larry','Geraty','Autumn Ave','Apt No 18','Mountain View','California','94943','9935399934'),(17,'James','Haughton','Beverley Rd','Apt No 19','Mountain View','California','94943','9874837837'),(18,'Philip','Hoffman','Linden Blvd','Apt No 20','Mountain View','California','94943','8729238299'),(19,'Harold','Hopp','Albemarle Rd','Apt No 21','Charlotte','NC','22798','8921794394'),(20,'Kimberly','Howard','Colonial Rd','Apt No 22','Charlotte','NC','22798','8374838923'),(21,'George','Knight','Bedford Ave','Apt No 23','Mountain View','California','94943','9753894823'),(22,'Graham','Maxwell','Clarendon Rd','Apt No 24','Mountain View','California','94943','8539040249'),(23,'Malcolm','Maxwell','Parsons Blvd','Apt No 25','Mountain View','California','94943','9249232930'),(24,'James','McElhany','Ave Of The Americas','Apt No 26','Mountain View','California','94943','9820239209'),(25,'Alan','Nakanishi','Nagle Ave','Apt No 27','Charlotte','NC','28288','9373389124'),(26,'Francis','Nichol','Bay Pkwy','Apt No 28','Charlotte','NC','28288','9763827329'),(27,'Stanley','Payne','University Ave','Apt No 29','Charlotte','NC','28288','9873289274'),(28,'Jerry','Pettis','Washington Ave','Apt No 30','Charlotte','NC','20887','9873289913'),(29,'Wesley','Pomeroy','Bay St Landing','Apt No 31','Charlotte','NC','20887','9883472919'),(30,'Ariel','Roth','Northern Blvd','Apt No 32','Atlanta','Georgia','30040','9873437298'),(31,'Loree','Sutton','Corona Ave','Apt No 33','Atlanta','Georgia','30040','9273292392'),(32,'Paul','Tatsuguchi','Merrick Blvd','Apt No 34','Atlanta','Georgia','30040','8724729329'),(33,'Neal','Wilson','Tillotson Ave','Apt No 35','Atlanta','Georgia','30040','9748279292'),(34,'Kenneth','Wood','Westchester Ave','Apt No 36','Atlanta','Georgia','30040','8724928429'),(35,'Justin','Wright','Williams Ave','Apt No 37','Atlanta','Georgia','30040','9374947924'),(36,'Smith','Bondonno','Arlington Ave','Apt No 101','San Francisco','California','94015','9742839283'),(37,'Johnson','Bontemps','Harman St','Apt No 111','San Francisco','California','94015','9831731389'),(38,'Williams','Breckenridge','Bartow Ave','Apt No 121','San Francisco','California','94015','9284924894'),(39,'Brown','Breckenridge','Brook Ave','Apt No 131','San Francisco','California','94015','9384928424'),(40,'Jones','Burden','Crotona Pkwy','Apt No 141','San Francisco','California','94015','9842949224'),(41,'Miller','Clark','Riverside Dr','Apt No 151','San Francisco','California','94015','9249279724'),(42,'Davis','Dybdahl','Concord Ave','Apt No 161','San Francisco','California','94015','9849247294'),(43,'Garcia','Gallimore','Stadium Ave','Apt No 171','San Francisco','California','94015','9479248294'),(44,'Rodriguez','Geraty','Autumn Ave','Apt No 181','Mountain View','California','94943','9849242942'),(45,'Wilson','Haughton','Beverley Rd','Apt No 191','Mountain View','California','94943','9792849248'),(46,'Martinez','Hoffman','Linden Blvd','Apt No 201','Mountain View','California','94943','9842984823'),(47,'Anderson','Hopp','Albemarle Rd','Apt No 211','Charlotte','NC','22798','9583984298'),(48,'Taylor','Howard','Colonial Rd','Apt No 221','Charlotte','NC','22798','9472749249'),(49,'Thomas','Knight','Bedford Ave','Apt No 231','Mountain View','California','94943','9472847208'),(50,'Hernandez','Maxwell','Clarendon Rd','Apt No 241','Mountain View','California','94943','9359384938'),(51,'Moore','Maxwell','Parsons Blvd','Apt No 251','Mountain View','California','94943','9353948928'),(52,'Martin','McElhany','Ave Of The Americas','Apt No 261','Mountain View','California','94943','9384924829'),(53,'Jackson','Nakanishi','Nagle Ave','Apt No 271','Charlotte','NC','28288','9028420392'),(54,'Thompson','Nichol','Bay Pkwy','Apt No 281','Charlotte','NC','28288','9029302390'),(55,'White','Payne','University Ave','Apt No 291','Charlotte','NC','28288','9359380394'),(56,'Lopez','Pettis','Washington Ave','Apt No 301','Charlotte','NC','20887','9972923928'),(57,'Lee','Pomeroy','Bay St Landing','Apt No 311','Charlotte','NC','20887','9877788989'),(58,'Gonzalez','Roth','Northern Blvd','Apt No 321','Atlanta','Georgia','30040','9374793402'),(59,'Harris','Sutton','Corona Ave','Apt No 331','Atlanta','Georgia','30040','9748928490'),(60,'Clark','Tatsuguchi','Merrick Blvd','Apt No 341','Atlanta','Georgia','30040','9334902490'),(61,'Lewis','Wilson','Tillotson Ave','Apt No 351','Atlanta','Georgia','30040','9854985300'),(62,'Robinson','Wood','Westchester Ave','Apt No 361','Atlanta','Georgia','30040','9395839503'),(63,'Walker','Wright','Williams Ave','Apt No 371','Atlanta','Georgia','30040','9839384934'),(64,'Perez','Bondonno','Bay St Landing','Apt No 231','San Francisco','California','94015','9985938398'),(65,'Hall','Bontemps','Northern Blvd','Apt No 241','San Francisco','California','94015','9394902934'),(66,'Young','Breckenridge','Corona Ave','Apt No 251','San Francisco','California','94015','9638093403'),(67,'Allen','Breckenridge','Merrick Blvd','Apt No 261','San Francisco','California','94015','9398039394'),(68,'Sanchez','Burden','Tillotson Ave','Apt No 271','San Francisco','California','94015','9380393950'),(69,'Wright','Clark','Westchester Ave','Apt No 281','San Francisco','California','94015','9309305032'),(70,'King','Dybdahl','Williams Ave','Apt No 291','San Francisco','California','94015','9358930340'),(71,'Scott','Gallimore','Arlington Ave','Apt No 301','San Francisco','California','94015','9384938432'),(72,'Green','Geraty','Harman St','Apt No 311','Mountain View','California','94943','9843940294'),(73,'Baker','Haughton','Bartow Ave','Apt No 321','Mountain View','California','94943','9494859030'),(74,'Adams','Hoffman','Brook Ave','Apt No 331','Mountain View','California','94943','9385938438'),(75,'Nelson','Hopp','Crotona Pkwy','Apt No 341','Charlotte','NC','22798','9458958035'),(76,'Hill','Howard','Riverside Dr','Apt No 361','Charlotte','NC','22798','9496894684'),(77,'Ramirez','Knight','Concord Ave','Apt No 371','Mountain View','California','94943','9884997593'),(78,'Campbell','Maxwell','Stadium Ave','Apt No 231','Mountain View','California','94943','9584985458'),(79,'Mitchell','Maxwell','Autumn Ave','Apt No 241','Mountain View','California','94943','9485948594'),(80,'Roberts','McElhany','Beverley Rd','Apt No 251','Mountain View','California','94943','9393843841'),(81,'Carter','Nakanishi','Bay St Landing','Apt No 261','Charlotte','NC','28288','9912195390'),(82,'Phillips','Nichol','Northern Blvd','Apt No 271','Charlotte','NC','28288','9479242427'),(83,'Evans','Payne','Corona Ave','Apt No 281','Charlotte','NC','28288','9357937538'),(84,'Turner','Pettis','Merrick Blvd','Apt No 291','Charlotte','NC','20887','9459458301'),(85,'Torres','Pomeroy','Tillotson Ave','Apt No 301','Charlotte','NC','20887','9479283238');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Alumni_details`
--

/*!50001 DROP VIEW IF EXISTS `Alumni_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdonthis`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Alumni_details` AS select `User`.`User_id` AS `Alumni_id`,concat_ws(' ',`User`.`First_name`,`User`.`Last_name`) AS `Alumni_name`,`Account`.`Email_id` AS `Alumni_Email`,`Alumni`.`Current_work_place` AS `Current_work_place`,concat_ws(' ',`User`.`Address_line_1`,`User`.`Address_line_2`,`User`.`City`,`User`.`State`,`User`.`Zip_Code`) AS `Address`,`User`.`Contact_number` AS `Contact_number`,`Alumni`.`Prior_work_place` AS `Prior_work_place`,`Alumni`.`Industry` AS `Industry`,`Alumni`.`Experience` AS `Experience`,`Alumni`.`Graduation_year` AS `Graduation_year` from ((`Alumni` join `User` on((`Alumni`.`Alumni_id` = `User`.`User_id`))) join `Account` on((`User`.`User_id` = `Account`.`User_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Follow_Details`
--

/*!50001 DROP VIEW IF EXISTS `Follow_Details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdonthis`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Follow_Details` AS select concat_ws(' ',`followers`.`First_name`,`followers`.`Last_name`) AS `Follower_Name`,`followersAccount`.`Email_id` AS `Follower_Email`,concat_ws(' ',`following`.`First_name`,`following`.`Last_name`) AS `Following_Name`,`followingAccount`.`Email_id` AS `Following_Email` from ((((`Follow` join `User` `followers` on((`followers`.`User_id` = `Follow`.`Follower_id`))) join `Account` `followersAccount` on((`followers`.`User_id` = `followersAccount`.`User_id`))) join `User` `following` on((`following`.`User_id` = `Follow`.`Following_id`))) join `Account` `followingAccount` on((`following`.`User_id` = `followingAccount`.`User_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Participant_details`
--

/*!50001 DROP VIEW IF EXISTS `Participant_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdonthis`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Participant_details` AS select `Event`.`Event_name` AS `Event_name`,concat_ws(' ',`User`.`First_name`,`User`.`Last_name`) AS `Participant`,`Account`.`Email_id` AS `Participant_email` from (((`User` join `Participants` on((`User`.`User_id` = `Participants`.`User_id`))) join `Event` on((`Participants`.`Event_id` = `Event`.`Event_id`))) join `Account` on((`User`.`User_id` = `Account`.`User_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Student_details`
--

/*!50001 DROP VIEW IF EXISTS `Student_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdonthis`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Student_details` AS select concat_ws(' ',`User`.`First_name`,`User`.`Last_name`) AS `Student_name`,`Account`.`Email_id` AS `Student_Email`,`Student`.`Stream` AS `Stream`,`Student`.`Degree` AS `Degree` from ((`Student` join `User` on((`Student`.`Student_id` = `User`.`User_id`))) join `Account` on((`User`.`User_id` = `Account`.`User_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 16:19:02
