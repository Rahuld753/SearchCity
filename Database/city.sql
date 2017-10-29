-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: city
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `cntitem`
--

DROP TABLE IF EXISTS `cntitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cntitem` (
  `name` varchar(25) DEFAULT NULL,
  `cnt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cntitem`
--

LOCK TABLES `cntitem` WRITE;
/*!40000 ALTER TABLE `cntitem` DISABLE KEYS */;
INSERT INTO `cntitem` VALUES ('restaurant',20),('hospital',20),('school',20);
/*!40000 ALTER TABLE `cntitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cntitems`
--

DROP TABLE IF EXISTS `cntitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cntitems` (
  `name` varchar(25) DEFAULT NULL,
  `cnt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cntitems`
--

LOCK TABLES `cntitems` WRITE;
/*!40000 ALTER TABLE `cntitems` DISABLE KEYS */;
INSERT INTO `cntitems` VALUES ('Restaurants',20),('Hospitals',20),('Schools',20);
/*!40000 ALTER TABLE `cntitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `Location` varchar(25) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(13) DEFAULT NULL,
  `Image` varchar(25) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('Pune','Satyanand Hospital','Opposite Konark Pooram,, Kondhwa, Pune, Maharashtra 411048','020 2683 8194','satya.JPG','https://goo.gl/maps/MHtoC4jZJs72'),('Pune','Chintamani Hospital','53, Bibwewadi Road, Above Vidya Sahakari Bank, Jedhe Nagar, Bibwewadi, Pune, Maharashtra 411037','020 2421 2117','chinta.JPG','https://goo.gl/maps/PyWjDFESg782'),('Pune','Suraj Hospital','3, Bibwewadi Kondhwa Rd, Shree Sant Eknath Nagar, Bibvewadi, Pune, Maharashtra 411037','020 2427 3838','suraj.JPG','https://goo.gl/maps/R1Cqe6HBx7F2'),('Pune','Unity Ortho & Eye Hospital','Chandrabhaga Nagar, Dhankawadi, Pune, Maharashtra','020 2436 6858','unity.JPG','https://goo.gl/maps/jzwTJBoGuEs'),('Pune','Apollo Spectra Hospitals','P.no.9+10a S.NO.2/64, Opp Sanas Play Ground, Saras Baug Road, Sadashiv Peth, Pune, Maharashtra 411030','020 67206500','apollo.JPG','https://goo.gl/maps/gS3zrDLSYMx'),('Nashik','Apollo Hospitals','Plot No. 1, Swaminarayan Nagar, New Adgaon Naka, Panchavati, Near Lunge Mangal Karyalaya, Nashik, Maharashtra 422003','0253 251 0250','ap.JPG','https://goo.gl/maps/xqgMbJ7KTqE2'),('Nashik','Sahyadri Speciality Hospital Nashik','Mumbai-Agra Road, Near Dwarka Circle, Wadala Road, Nashik, Maharashtra 422011','0253 669 1666','sahyadri.JPG','https://goo.gl/maps/v1feVh3Cnf12'),('Nashik','Sarthak Hospitals Private Limited','Behind Papaya Nursery, Near Moulie Hall, Opp. Swami Samrath Mandir, Samta Nagar, Satpur Colony, Nashik, Maharashtra 422007','0253 235 3770','sarthak.JPG',NULL),('Nashik','Nerlikar Hospital and Research Center','Near Jehan Circle, Gangapur Road, Nashik, Maharashtra 422013','0253 234 2471','nerlikar.JPG','https://goo.gl/maps/pwHq3pV8nP42'),('Nashik','Muktai Hospital','Plot No.11, Opp Fame Adlabs, Shivaji Nagar, Nashik - Pune Road, Nashik, Maharashtra 422001','0253 242 2480','muktai.JPG','https://goo.gl/maps/PkdDDPoMLT62'),('Jalgaon','Orchid Multi Superspeciality Hospital','Plot No 271 , 272 , Jilha Peth , Jalgaon ,Old B J Market,, Opp PR High School, Jalgaon, Maharashtra 425001','0257 222 9749','orchid.JPG','https://goo.gl/maps/uPkf6pziYou'),('Jalgaon','Khadke Accidental Hospital','Bhaskar Market Rd, Pratap Nagar, Jalgaon, Maharashtra 425001','0257 223 8284','khadke.JPG',NULL),('Jalgaon','Vivekanand Eye Hospital','8, Gurukul Colony, MJ College Rd, Jalgaon, Maharashtra 425002','0257 223 3893','vivekanand.JPG','https://goo.gl/maps/6MVnQ5FcfK22'),('Jalgaon','Shripad Accident & ENT Hospital','Near Thorsangmitra Mangal Kartalaya, India Garage Road, Jalgaon, Maharashtra 425001','0257 222 5600','shripad.JPG','https://goo.gl/maps/dCRWuKhduq42'),('Jalgaon','Agarwal Hospital','National Highway 6, Ramanand Nagar, Jalgaon, Maharashtra 425002','0257 223 5200','agarwal.JPG',NULL),('Amravati','Galaxy Hospital & Apex Critical care','Rajapeth, Amravati, Maharashtra 444605','0721 256 6856','galaxy.JPG','https://goo.gl/maps/CbmV4vsfABF2'),('Amravati','Belokar Hospital','Vijay Colony Road, Rukmini Nagar, Amravati, Maharashtra 444606','0721 256 3495','belokar.JPG','https://goo.gl/maps/4Y8JJWun6TH2'),('Amravati','GetLife Hospital','Near Maratha Friends Club Ground, Vijay Colony, Behind 19 No. AMC School Rukhmini Nagar, Amravati, Maharashtra 444606','0721 257 1357','getlife.JPG','https://goo.gl/maps/MTd7HbHC1b52'),('Amravati','Manas Clinic','Vivekanand Colony, Amravati, Maharashtra 444606','094221 90700','manas.JPG','https://goo.gl/maps/GSGWcbRPH482'),('Amravati','Chintamani Hospital','Lane No.2, Bhau Colony, Radha Nagar, Amravati, Maharashtra 444604','0721 255 1143','chintamani.JPG','https://goo.gl/maps/qsmKKPc67EP2');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t2 after insert on hospital for each row
begin
update cntitems set cnt=cnt+1 where name="Hospitals";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t6 after delete on hospital for each row
begin
update cntitems set cnt=cnt-1 where name="Hospitals";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('Rahul','123abc'),('Akhilesh','456abc'),('Gaurav_G','123def'),('Gaurav','456def'),(NULL,NULL),(NULL,NULL),('Rahul_d','spider'),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL),(NULL,NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `Location` varchar(25) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES ('Pune','Madinah Restaurant','NIBM Road, Near Kausar Baug Masjid, Kausar Baugh, Kondhwa, Pune, Maharashtra 411048','089283 85828','madinah.JPG','https://goo.gl/maps/k9JDKwSgUbU2'),('Pune','Jyoti Pure Veg Restaurant','A1/1, Plot No-45/46, Ground Floor, Picaso Plaza, NIBM Cross Road, Kondhwa, Pune, Maharashtra 411048','020 26835968','Jyoti.JPG','https://goo.gl/maps/WxgmGkMS1Tx'),('Pune','Gokul Chinese Restaurant','Sadashiv Peth, Khajina Vihir Chowk, Near SP College, Pune, Maharashtra 411030','098601 94224','gokul.JPG','https://goo.gl/maps/BSSmqEQM36x'),('Pune','George Restaurant','No 2436, General Thimayya Road, East Street, Opposite Arora Tower, Camp, Pune, Maharashtra 411001','020 66020121','george.JPG','https://goo.gl/maps/PTjivWfNZgP2'),('Pune','Supriya Restaurant','Gitanjali Kunj, Opposite Nehru Memorial Hall, Ambedkar Road, Pune, Maharashtra 411011','020 26137477','supriya.JPG','https://goo.gl/maps/cFA3GphVWpQ2'),('Nashik','Barbeque Ville','Near Deccan Petrol Pump, Karambelkar Tower, Nashik, Maharashtra 422009','083809 03273','Barbeque.JPG','https://goo.gl/maps/VMKe2cRVDq52'),('Nashik','Divtya Budhlya Wada','Gangapur Road, Next to Dura Gas Pump, Ganpati Nagar, Anandwalli Gaon, Nashik, Maharashtra 422013','09527776999','Divtya.JPG','https://goo.gl/maps/NZm5cxC62Bs'),('Nashik','Barbeque Nation','2nd Floor, City Centre Mall, Sambaji Chowk, Lawate Nagar Banyan Square, Untwadi Nashik, Maharashtra','0253 6060008','Barbeque.JPG','https://goo.gl/maps/5V3wuMPWXXC2'),('Nashik','Veg Aroma','Gangapur Rd, Opposite Dura Gas Pump, Anandvalli, Nashik, Maharashtra 422005','0253 2339696','aroma.JPG','https://goo.gl/maps/j3mtUqvr5w72'),('Nashik','River Dine Restaurant','Opp Asaram Bapu Aashram Bridge, Near Nandawan Lawns, Savarkar Nagar, Extension, Off Gangapur Road, Nashik, Maharashtra 422013','0253 2343432','River.JPG','https://goo.gl/maps/7HoQzEwnRZT2'),('Jalgaon','Cafe To Creams Restaurant','Shop No.3, Near M.J. College, MJ College Road, Jalgaon, Maharashtra 425001','0257 2214777','cafe.JPG','https://goo.gl/maps/k1qPDWcAPtR2'),('Jalgaon','Sayali Restaurant','25, Ring Road, Pratap Nagar, Jalgaon, Maharashtra 425001','0257 2224433','sayali.JPG','https://goo.gl/maps/AEDraDiASmT2'),('Jalgaon','Grappie Restro & Bar','Shirsoli Road, Mehrun Lake, Tambapura, Jalgaon, Maharashtra 425001','0257 2264438','restro.JPG',NULL),('Jalgaon','Uttam Bhoj','Polan Peth, Shahunagar, Jalgaon, Maharashtra 425001','2229701','uttam.JPG','https://goo.gl/maps/Q49txuy3GzJ2'),('Jalgaon','Hotel Step Inn','Aakash Wani Chowk, Jalgaon, Maharashtra 425001','0257 2232342','step.JPG','https://goo.gl/maps/iRwPXbRgmSk'),('Amravati','New Sanman','New Sanman, Jawahar road, jaisthamb chowk amravati, Amravati, Maharashtra 444601','0721 2674004','sanman.JPG','https://goo.gl/maps/zDk7UTrRb1B2'),('Amravati','Taste of South TOS','Near Circuit House, Camp Road, Amravati, Maharashtra 444602','0721 2661666','tos.JPG','https://goo.gl/maps/UnNbwUaWtRk'),('Amravati','Hotel Rangoli Pearl','Nawathe Stop, Badnera Road, Amravati, Maharashtra 444607','0721 2511255','rangoli.JPG','https://goo.gl/maps/sPFQ5HFAg3C2'),('Amravati','Joshi\'s kitchen','11 Sugandh, State Bank Colony, Rajapeth, Amravati, 444606','072195 16161','joshi.JPG',NULL),('Amravati','Hotel Milestone','Near Deshmukh Lawn, Arjun Nagar, Amravati, Maharashtra 444602','084468 01752','milestone.JPG','https://goo.gl/maps/dhkrdLf5upj');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t1 after insert on restaurant for each row
begin
update cntitems set cnt=cnt+1 where name="Restaurants";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t4 after delete on restaurant for each row
begin
update cntitems set cnt=cnt-1 where name="Restaurants";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `Location` varchar(25) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(13) DEFAULT NULL,
  `Image` varchar(25) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES ('Pune','Kendriya Vidyalaya Southern Command','Tarapore Road, Near Parasi Gym Khana, Pune, Maharashtra 411001','020 2636 1737','kvs.JPG','https://goo.gl/maps/BSm2nKMryDk'),('Pune','Mount Carmel Convent School','Lulla Nagar, Pune, Maharashtra 411040','020 2683 3252','mount.JPG','https://goo.gl/maps/JnM6Jsp6QkQ2'),('Pune','Delhi Public School','Nyati Estate Road, Nyati County, Mohammed Wadi, Nyati Estate Road, Pune, Maharashtra 411060','020 2697 0428','dps.JPG',NULL),('Pune','St. Mary\'s School, Pune','5B, General Bhagat Marg, Camp, Pune, Maharashtra 411001','020 2635 6282','st.JPG','https://goo.gl/maps/K1ZVKkZSzhq'),('Pune','Army Public School','Opp Bank of Maharashtra, Ghorpadi Rd, Ghorpadi, Pune, Maharashtra 411001','078692 87065','aps.JPG','https://goo.gl/maps/WnSEkJiRQCM2'),('Nashik','Kendriya Vidyalaya Air Force Station','Nashik, Ojhar, Maharashtra 422221','02550 275 025','kvsn.JPG','https://goo.gl/maps/Rin2v2twsYC2'),('Nashik','Wisdom High International School','Gangapur Road, Rameshwar Nagar, Balawant Nagar, Anandvalli, Nashik, Maharashtra 422007','0253 233 8795','whis.JPG','https://goo.gl/maps/EryhJ61ykTF2'),('Nashik','Symbiosis School','Shravan Sector, Ashwin Nagar, Nashik, Maharashtra 422010','0253 237 9496','symbiosis.JPG','https://goo.gl/maps/9NmtxT285XB2'),('Nashik','St. Xavier\'s High School, Nashik','Nashik Pune Road, Opp Nehru Nagar, Nashik, Maharashtra 422006','0253 241 1644','xavier.JPG','https://goo.gl/maps/4xJQuU3jgaD2'),('Nashik','International School Nasik','Ebenezer International School, Chandsi, Near Anandvalli, Nashik 422 003., Nashik, Maharashtra 422003','088982 82828','ebe.JPG','https://goo.gl/maps/NjMxeu5kgao'),('Jalgaon','Kashinath Palod Public School','Shri Guru Nagar Behind Kolhe Hills, Jalgaon, Maharashtra 425002','0257 651 6416','kashinath.JPG','https://goo.gl/maps/AB5ijLpsnVv'),('Jalgaon','Bhagirath English School','Patel Nagar, Yashwant Nagar, Jalgaon, Maharashtra 425001','0257 226 3425','bhagirath.JPG','https://goo.gl/maps/8QjVzr37ycq'),('Jalgaon','RR Vidyalaya','Jaikisan Wadi, Jalgaon, Maharashtra 425001','0257 222 9546','rr.JPG','https://goo.gl/maps/wVNxBCRiSQm'),('Jalgaon','Podar International School','Survery No : 335/1, Opp: Bambhori Octroi Naka,, N.H. - 6, Jaikisan Wadi, Jalgaon, Maharashtra 425001','092722 34271','podar.JPG','https://goo.gl/maps/dr3rPciXkHt'),('Jalgaon','Ujjwal English School','Adarsh Nagar, Jalgaon, Maharashtra 425002','0257 226 1981','ujjwal.JPG','https://goo.gl/maps/FM6K3L2Kfuj'),('Amravati','Podar International School','Survey No. 84/2, Kathora, Opposite Pote Farm,, Kathora Road, Amravati, Maharashtra 444602','0721 600 3222','pis.JPG','https://goo.gl/maps/k1jRKrahsLr'),('Amravati','KK CAMBRIDGE INTERNATIONAL SCHOOL','Survey no. 39/2. Ahead of University, Mardi Road, State Highway 200, Amravati,, Maharashtra 444706','092096 23456','kk.JPG','https://goo.gl/maps/t2mNRFeuecG2'),('Amravati','Scholars Convent','Near Dasara Maidan, Badnera Road, Amravati, Maharashtra','098602 80450','sc.JPG','https://goo.gl/maps/LHzkZZjJdmn'),('Amravati','Jawahar Navodaya Vidyalaya','Navsari, V.M.V.Road, Amravati, Maharashtra 444604','0721 253 0888','jawahar.JPG','https://goo.gl/maps/iXnhQgkMtgN2'),('Amravati','Dnyanmata High School Amravati','Camp Road, Amravati, Maharashtra 444602','0721 266 3263','dhs.JPG','https://goo.gl/maps/ZHwxe3Vph6U2');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t3 after insert on school for each row
begin
update cntitems set cnt=cnt+1 where name="Schools";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t5 after delete on school for each row
begin
update cntitems set cnt=cnt-1 where name="Schools";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-02 21:09:50
