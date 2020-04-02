-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ffwsv2
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `AgentID` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `AgentName` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `AgentPhone` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `AgentLocation` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `AgentType` decimal(1,0) NOT NULL,
  `DPL` decimal(10,2) NOT NULL,
  `TippingFactor` decimal(10,2) DEFAULT NULL,
  `Normal` decimal(10,2) DEFAULT NULL,
  `SiagaLower` decimal(10,2) DEFAULT NULL,
  `SiagaUpper` decimal(10,2) DEFAULT NULL,
  `CriticalLower` decimal(10,2) DEFAULT NULL,
  `Sedimen` decimal(10,2) DEFAULT NULL,
  `bts_elev_awas` decimal(10,2) DEFAULT NULL,
  `bts_elev_siaga` decimal(10,2) DEFAULT NULL,
  `bts_elev_waspada` decimal(10,2) DEFAULT NULL,
  `ReportSchedule` decimal(3,0) DEFAULT '60',
  `PRain1` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PRain2` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PRain3` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PRain4` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PWater1` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PWater2` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PWater3` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `PWater4` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `NRain1` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `NRain2` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `NRain3` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `NRain4` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `NWater1` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `NWater2` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `NWater3` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `NWater4` varchar(25) COLLATE latin1_general_ci DEFAULT 'null',
  `RemoteID` varchar(6) COLLATE latin1_general_ci NOT NULL DEFAULT 'passwo',
  `LocationID` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `Reference` varchar(6) COLLATE latin1_general_ci NOT NULL DEFAULT '000000',
  `Offset` int(11) DEFAULT '0',
  `DAS` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Sungai` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `LRain` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `ll` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `wilayah` tinyint(3) DEFAULT NULL,
  `lbi` float DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `lengkung_kapasitas` varchar(1024) COLLATE latin1_general_ci DEFAULT NULL,
  `elev_max` float DEFAULT NULL,
  `expose` tinyint(1) NOT NULL DEFAULT '1',
  `cname` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `kab` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  `latest_siaga` int(1) DEFAULT '0',
  `urutan` int(11) DEFAULT NULL,
  `tinggi_sonar` int(11) DEFAULT NULL,
  `prima_id` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `logger_model` int(11) DEFAULT '10',
  `pressure_offset` float DEFAULT NULL,
  `pressure_factor` float DEFAULT NULL,
  `elev_puncak` float DEFAULT NULL,
  `batas_rembesan` float DEFAULT NULL COMMENT 'Batas rembesan dalam Cm',
  `vn_tin1_limit` float DEFAULT NULL,
  `vn_tin2_limit` float DEFAULT NULL,
  `vn_tin3_limit` float DEFAULT NULL,
  `vn_q1_limit` float DEFAULT NULL,
  `vn_q2_limit` float DEFAULT NULL,
  `vn_q3_limit` float DEFAULT NULL,
  `vn1_panjang_saluran` float DEFAULT NULL,
  `vn2_panjang_saluran` float DEFAULT NULL,
  `vn3_panjang_saluran` float DEFAULT NULL,
  `pie1a_elev_dasar_pipa` float DEFAULT NULL,
  `pie1b_elev_dasar_pipa` float DEFAULT NULL,
  `pie1c_elev_dasar_pipa` float DEFAULT NULL,
  `pie2a_elev_dasar_pipa` float DEFAULT NULL,
  `pie2b_elev_dasar_pipa` float DEFAULT NULL,
  `pie2c_elev_dasar_pipa` float DEFAULT NULL,
  `pie3a_elev_dasar_pipa` float DEFAULT NULL,
  `pie3b_elev_dasar_pipa` float DEFAULT NULL,
  `pie3c_elev_dasar_pipa` float DEFAULT NULL,
  `pie4a_elev_dasar_pipa` float DEFAULT NULL,
  `pie4b_elev_dasar_pipa` float DEFAULT NULL,
  `pie4c_elev_dasar_pipa` float DEFAULT NULL,
  `pie5a_elev_dasar_pipa` float DEFAULT NULL,
  `pie5b_elev_dasar_pipa` float DEFAULT NULL,
  `pie5c_elev_dasar_pipa` float DEFAULT NULL,
  `pie1a_panjang_pipa` int(11) DEFAULT NULL COMMENT 'dalam senti',
  `pie1b_panjang_pipa` int(11) DEFAULT NULL,
  `pie1c_panjang_pipa` int(11) DEFAULT NULL,
  `pie2a_panjang_pipa` int(11) DEFAULT NULL,
  `pie2b_panjang_pipa` int(11) DEFAULT NULL,
  `pie2c_panjang_pipa` int(11) DEFAULT NULL,
  `pie3a_panjang_pipa` int(11) DEFAULT NULL,
  `pie3b_panjang_pipa` int(11) DEFAULT NULL,
  `pie3c_panjang_pipa` int(11) DEFAULT NULL,
  `pie4a_panjang_pipa` int(11) DEFAULT NULL,
  `pie4b_panjang_pipa` int(11) DEFAULT NULL,
  `pie4c_panjang_pipa` int(11) DEFAULT NULL,
  `pie5a_panjang_pipa` int(11) DEFAULT NULL,
  `pie5b_panjang_pipa` int(11) DEFAULT NULL,
  `pie5c_panjang_pipa` int(11) DEFAULT NULL,
  `pie1a_batas_tek_pori` float DEFAULT NULL,
  `pie1b_batas_tek_pori` float DEFAULT NULL,
  `pie1c_batas_tek_pori` float DEFAULT NULL,
  `pie2a_batas_tek_pori` float DEFAULT NULL,
  `pie2b_batas_tek_pori` float DEFAULT NULL,
  `pie2c_batas_tek_pori` float DEFAULT NULL,
  `pie3a_batas_tek_pori` float DEFAULT NULL,
  `pie3b_batas_tek_pori` float DEFAULT NULL,
  `pie3c_batas_tek_pori` float DEFAULT NULL,
  `pie4a_batas_tek_pori` float DEFAULT NULL,
  `pie4b_batas_tek_pori` float DEFAULT NULL,
  `pie4c_batas_tek_pori` float DEFAULT NULL,
  `pie5a_batas_tek_pori` float DEFAULT NULL,
  `pie5b_batas_tek_pori` float DEFAULT NULL,
  `pie5c_batas_tek_pori` float DEFAULT NULL,
  PRIMARY KEY (`AgentID`),
  KEY `AgentName` (`AgentName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ahmad_yani`
--

DROP TABLE IF EXISTS `ahmad_yani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ahmad_yani` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ahmadyani`
--

DROP TABLE IF EXISTS `ahmadyani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ahmadyani` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136389 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alerttable`
--

DROP TABLE IF EXISTS `alerttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerttable` (
  `No` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `APhoneNumber` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `AlertType` int(11) NOT NULL,
  `AlertStatus` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `AlertLocation` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `AlertID` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `babat`
--

DROP TABLE IF EXISTS `babat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `babat` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65803 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `babat_barrage`
--

DROP TABLE IF EXISTS `babat_barrage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `babat_barrage` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=203455 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `badegan`
--

DROP TABLE IF EXISTS `badegan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badegan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1096 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `balongpanggang`
--

DROP TABLE IF EXISTS `balongpanggang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balongpanggang` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=261999 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bangunsari`
--

DROP TABLE IF EXISTS `bangunsari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangunsari` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=233966 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `baturetno`
--

DROP TABLE IF EXISTS `baturetno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baturetno` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=239057 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `batuwarno`
--

DROP TABLE IF EXISTS `batuwarno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batuwarno` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=249881 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_blimbing`
--

DROP TABLE IF EXISTS `bd_blimbing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_blimbing` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_botok`
--

DROP TABLE IF EXISTS `bd_botok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_botok` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_brambang`
--

DROP TABLE IF EXISTS `bd_brambang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_brambang` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_cengklik`
--

DROP TABLE IF EXISTS `bd_cengklik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_cengklik` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=88294 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_dawuhan`
--

DROP TABLE IF EXISTS `bd_dawuhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_dawuhan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_delingan`
--

DROP TABLE IF EXISTS `bd_delingan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_delingan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_duwur`
--

DROP TABLE IF EXISTS `bd_duwur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_duwur` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_gebyar`
--

DROP TABLE IF EXISTS `bd_gebyar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_gebyar` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_gembong`
--

DROP TABLE IF EXISTS `bd_gembong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_gembong` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_gondang`
--

DROP TABLE IF EXISTS `bd_gondang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_gondang` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41203 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_gonggang`
--

DROP TABLE IF EXISTS `bd_gonggang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_gonggang` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52372 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_jombor`
--

DROP TABLE IF EXISTS `bd_jombor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_jombor` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_kedung_bendo`
--

DROP TABLE IF EXISTS `bd_kedung_bendo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_kedung_bendo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_kedung_brubus`
--

DROP TABLE IF EXISTS `bd_kedung_brubus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_kedung_brubus` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_kedunguling`
--

DROP TABLE IF EXISTS `bd_kedunguling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_kedunguling` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_kembangan`
--

DROP TABLE IF EXISTS `bd_kembangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_kembangan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_ketro`
--

DROP TABLE IF EXISTS `bd_ketro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_ketro` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_krisak`
--

DROP TABLE IF EXISTS `bd_krisak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_krisak` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=23478 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_lalung`
--

DROP TABLE IF EXISTS `bd_lalung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_lalung` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_mulur`
--

DROP TABLE IF EXISTS `bd_mulur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_mulur` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_nawangan`
--

DROP TABLE IF EXISTS `bd_nawangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_nawangan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_ngancar`
--

DROP TABLE IF EXISTS `bd_ngancar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_ngancar` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_notopuro`
--

DROP TABLE IF EXISTS `bd_notopuro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_notopuro` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_pacal`
--

DROP TABLE IF EXISTS `bd_pacal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_pacal` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40461 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_parangjoho`
--

DROP TABLE IF EXISTS `bd_parangjoho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_parangjoho` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_plumbon`
--

DROP TABLE IF EXISTS `bd_plumbon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_plumbon` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_pondok`
--

DROP TABLE IF EXISTS `bd_pondok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_pondok` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_prijetan`
--

DROP TABLE IF EXISTS `bd_prijetan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_prijetan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12077 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_sangiran`
--

DROP TABLE IF EXISTS `bd_sangiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_sangiran` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_saradan`
--

DROP TABLE IF EXISTS `bd_saradan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_saradan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_songputri`
--

DROP TABLE IF EXISTS `bd_songputri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_songputri` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_telaga_ngebel`
--

DROP TABLE IF EXISTS `bd_telaga_ngebel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_telaga_ngebel` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_telaga_pasir`
--

DROP TABLE IF EXISTS `bd_telaga_pasir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_telaga_pasir` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_telagangebel`
--

DROP TABLE IF EXISTS `bd_telagangebel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_telagangebel` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bd_wonogiri`
--

DROP TABLE IF EXISTS `bd_wonogiri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_wonogiri` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=100178 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendo`
--

DROP TABLE IF EXISTS `bendo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendo` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2973 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_alert`
--

DROP TABLE IF EXISTS `bendung_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) DEFAULT NULL,
  `tanggall` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `tmab` float DEFAULT NULL,
  `spillwayb_q` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_colo`
--

DROP TABLE IF EXISTS `bendung_colo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_colo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242796 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_a`
--

DROP TABLE IF EXISTS `bendung_form_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `bukaan_pintu1` float DEFAULT NULL,
  `vol_pintu1` float DEFAULT '0',
  `debit_rerata_pintu1` float DEFAULT '0',
  `jam_pintu1` time DEFAULT NULL,
  `bukaan_pintu2` float DEFAULT NULL,
  `vol_pintu2` float DEFAULT '0',
  `debit_rerata_pintu2` float DEFAULT '0',
  `jam_pintu2` time DEFAULT NULL,
  `h_pelimpahutama` float DEFAULT NULL,
  `vol_pelimpahutama` float DEFAULT '0',
  `debit_pelimpahutama` float DEFAULT '0',
  `jam_pelimpahutama` time DEFAULT NULL,
  `vol_total_pelepasan` float DEFAULT '0',
  `debit_rerata_total_pelepasan` float DEFAULT '0',
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_a1`
--

DROP TABLE IF EXISTS `bendung_form_a1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_a1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `luas_baku` int(11) DEFAULT NULL,
  `nama_di` text,
  `luas_terlayani` int(11) DEFAULT NULL,
  `padi_jenistanaman` text,
  `palawija_jenistanaman` text,
  `bero_jenistanaman` text,
  `padi_umurtanaman` text,
  `palawija_umurtanaman` text,
  `padi_sisaumur` text,
  `palawija_sisaumur` text,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b`
--

DROP TABLE IF EXISTS `bendung_form_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) DEFAULT NULL,
  `waktu` date DEFAULT NULL,
  `retakan_puncak_bendung` text,
  `penurunan_puncak_bendung` text,
  `kelurusan_puncak_bendung` text,
  `retakan_lereng_hulu` text,
  `penurunan_lereng_hulu` text,
  `tonjolan_lereng_hulu` text,
  `retakan_lereng_hilir` text,
  `penurunan_lereng_hilir` text,
  `tonjolan_lereng_hilir` text,
  `retakan_pd_beton` text,
  `gerusan_ujung_hilir` text,
  `mengetahui_petugas` tinyint(1) DEFAULT NULL,
  `mengetahui_koordinator` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b1_1`
--

DROP TABLE IF EXISTS `bendung_form_b1_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b1_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) DEFAULT NULL,
  `waktu` date DEFAULT NULL,
  `kondisi_cuaca` text,
  `tinggi` float DEFAULT NULL,
  `panjang` float DEFAULT NULL,
  `kond_jln_atas_mercu` text,
  `tanda_penurunan_mercu` text,
  `tanda_pergerakan_mercu` text,
  `kond_pembuang_mercu` text,
  `kond_pagar_mercu` text,
  `tanda_gerakan_lerenghulu` text,
  `tonjolan_lubangbenam_retakan_lerenghulu` text,
  `erosi_penurunan_lerenghulu` text,
  `dimana_kedalaman_lebarpanjangretakan_lerenghulu` text,
  `tumbuhan_sarangbinatang_lerenghulu` text,
  `tanda_retak_platbeton` text,
  `dimana_kedalaman_lebarpanjangretakan_platbeton` text,
  `parimeter_joint_platbeton` text,
  `kond_beton_platbeton` text,
  `erosi_platbeton` text,
  `kond_permukaan_buitmen` text,
  `erosi_buitmen` text,
  `tanda_gerakan_riprap` text,
  `rusak_krn_cuaca_riprap` text,
  `pelapukan_riprap` text,
  `erosi_riprap` text,
  `slip_dbwhair_riprap` text,
  `tanda_gerakan_lerenghilir` text,
  `tonjolan_lubangbenam_retak_lerenghilir` text,
  `erosi_penurunan_longsorantanah_lerenghilir` text,
  `dimana_kedalaman_lebarpanjangretakan_lerenghilir` text,
  `slip_dbwhair_lerenghilir` text,
  `tanda_rembesan` text,
  `dimana_kuantitas_warna_rembesan` text,
  `kondtumbuhan` text,
  `jns_plindung_lereng` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b1_2`
--

DROP TABLE IF EXISTS `bendung_form_b1_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b1_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `jenis_bendung` text,
  `pintu_jml_jenis_bendung` text,
  `pengoperasian_bendung` text,
  `operasidarurat_bendung` text,
  `pelimpahbantu_bendung` text,
  `jplimphbantu_bendung` text,
  `kondisi_salpengahantar` text,
  `lantdasar_salpenghantar` text,
  `lereng_salpenghantar` text,
  `kondisi_spillweir` text,
  `auserosi_spillweir` text,
  `lokasi_spillweir` text,
  `kondisi_dinding` text,
  `auserosi_dinding` text,
  `dmn_dinding` text,
  `kondisijoint_dinding` text,
  `kondisisaluran_dinding` text,
  `kond_salcuram` text,
  `auserosi_salcuram` text,
  `lapbasah_salcuram` text,
  `dmn_salcuram` text,
  `jenis_kolam` text,
  `kondisi_kolam` text,
  `auserosi_kolam` text,
  `lapbasah_kolam` text,
  `dmn_kolam` text,
  `ketidakwajaran_kinerja` text,
  `tandaslip_dsekitar` text,
  `tandarembesan_dsekitar` text,
  `jenistumbuhan_dsekitar` text,
  `gangguan_dsekitar` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b1_3`
--

DROP TABLE IF EXISTS `bendung_form_b1_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b1_3` (
  `id` int(11) NOT NULL,
  `bendungan_id` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `lok_piezometer` text,
  `jumlah_piezometer` text,
  `jenis_piezometer` text,
  `kond_baik_piezometer` text,
  `kond_tdkbaik_piezometer` text,
  `lok_alt_rembesan` text,
  `jml_alt_rembesan` text,
  `jns_alt_rembesan` text,
  `kond_altbaik_rembesan` text,
  `kond_alttdkbaik_rembesan` text,
  `lok_altpnurunan` text,
  `jml_altpnurunan` text,
  `jns_altpnurunan` text,
  `kond_altbaikpnurunan` text,
  `kond_alttdkbaikpnurunan` text,
  `lok_multilayer` text,
  `jml_multilayer` text,
  `jns_multilayer` text,
  `kond_baikmultilayer` text,
  `kond_tdkbaikmultilayer` text,
  `lok_observasi` text,
  `jml_observasi` text,
  `jns_observasi` text,
  `kond_baikobservasi` text,
  `kond_tdkbaikobservasi` text,
  `lok_inclinometer` text,
  `jml_inclinometer` text,
  `jns_inclinometer` text,
  `kond_baikinclinometer` text,
  `kond_tdkbaikinclinometer` text,
  `tandaerosi_kakibendung` text,
  `aliranlubang_kakibendung` text,
  `lapsbasah_kakibendung` text,
  `dmn_kakibendung` text,
  `lihat_lubang_benam_tumpuanbendung` text,
  `slip_tumpuanbendung` text,
  `tndapatahan_tumpuanbendung` text,
  `retakan_tumpuanbendung` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b1_4`
--

DROP TABLE IF EXISTS `bendung_form_b1_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b1_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `lok_inlet` text,
  `jns_inlet` text,
  `akses_inlet` text,
  `kond_inlet` text,
  `auserosi_inlet` text,
  `lapbas_inlet` text,
  `dmnlok_inlet` text,
  `kondsamb_inlet` text,
  `kondsalbuang_inlet` text,
  `pintu_hidromekanik` text,
  `katupjenis_hidromekanik` text,
  `metodoperasi_hidromekanik` text,
  `pengoperasiandarurat_hidromekanik` text,
  `kond_hidromekanik` text,
  `lok_outlet` text,
  `jns_outlet` text,
  `akses_outlet` text,
  `kond_outlet` text,
  `auserosi_outlet` text,
  `lapsbas_outlet` text,
  `dmnlok_outlet` text,
  `kondsamb_outlet` text,
  `kondsalbuang_outlet` text,
  `ukur_gorong` text,
  `kond_gorong` text,
  `auserosi_gorong` text,
  `lapsbas_gorong` text,
  `dmnlok_gorong` text,
  `kondsamb_gorong` text,
  `kondsalbuang_gorong` text,
  `endapan_gorong` text,
  `endapan_waduk` text,
  `tebingsungai_hilir` text,
  `erosipengikisan_hilir` text,
  `pengaruhtumbuhan_hilir` text,
  `habitatterdekat_hilir` text,
  `jumlahpenduduk_hilir` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b3`
--

DROP TABLE IF EXISTS `bendung_form_b3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `waktu` date DEFAULT NULL,
  `mslah_pbendung` text,
  `tndkan_pbendung` text,
  `mslah_lerhulubend` text,
  `tndkan_lerhulubend` text,
  `mslah_lerhilirbend` text,
  `tndkan_lerhilirbend` text,
  `mslah_instrumentasi` text,
  `tndkan_instrumentasi` text,
  `mslah_pmbuang` text,
  `tndkan_pmbuang` text,
  `mslah_tumpuan` text,
  `tndkan_tumpuan` text,
  `mslah_plimpah` text,
  `tndkan_plimpah` text,
  `mslah_inlet` text,
  `tndkan_inlet` text,
  `mslah_hidromekanik` text,
  `tndkan_hidromekanik` text,
  `mslah_outlet` text,
  `tndkan_outlet` text,
  `mslah_waduk` text,
  `tndkan_waduk` text,
  `mslah_bagsungai` text,
  `tndkan_bagsungai` text,
  `mslah_lain` text,
  `tndkan_lain` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b4_1_p1`
--

DROP TABLE IF EXISTS `bendung_form_b4_1_p1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b4_1_p1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `no` text,
  `waktu` date DEFAULT NULL,
  `potongan_melintang` text,
  `p_no1a` text,
  `lok_no1a` text,
  `elevpuncak_no1a` float DEFAULT NULL,
  `elevtip_no1a` float DEFAULT NULL,
  `panjpipa_no1a` float DEFAULT NULL,
  `pembacaan_no1a` float DEFAULT NULL,
  `elevpie_no1a` float DEFAULT NULL,
  `p_no1b` text,
  `lok_no1b` text,
  `elevpuncak_no1b` float DEFAULT NULL,
  `elevtip_no1b` float DEFAULT NULL,
  `panjpipa_no1b` float DEFAULT NULL,
  `pembacaan_no1b` float DEFAULT NULL,
  `elevpie_no1b` float DEFAULT NULL,
  `p_no1c` text,
  `lok_no1c` text,
  `elevpuncak_no1c` float DEFAULT NULL,
  `elevtip_no1c` float DEFAULT NULL,
  `panjpipa_no1c` float DEFAULT NULL,
  `pembacaan_no1c` float DEFAULT NULL,
  `elevpie_no1c` float DEFAULT NULL,
  `p_no1d` text,
  `lok_no1d` text,
  `elevpuncak_no1d` float DEFAULT NULL,
  `elevtip_no1d` float DEFAULT NULL,
  `panjpipa_no1d` float DEFAULT NULL,
  `pembacaan_no1d` float DEFAULT NULL,
  `elevpie_no1d` float DEFAULT NULL,
  `p_no1e` text,
  `lok_no1e` text,
  `elevpuncak_no1e` float DEFAULT NULL,
  `elevtip_no1e` float DEFAULT NULL,
  `panjpipa_no1e` float DEFAULT NULL,
  `pembacaan_no1e` float DEFAULT NULL,
  `elevpie_no1e` float DEFAULT NULL,
  `p_no1f` text,
  `lok_no1f` text,
  `elevpuncak_no1f` float DEFAULT NULL,
  `elevtip_no1f` float DEFAULT NULL,
  `panjpipa_no1f` float DEFAULT NULL,
  `pembacaan_no1f` float DEFAULT NULL,
  `elevpie_no1f` float DEFAULT NULL,
  `p_no1g` text,
  `lok_no1g` text,
  `elevpuncak_no1g` float DEFAULT NULL,
  `elevtip_no1g` float DEFAULT NULL,
  `panjpipa_no1g` float DEFAULT NULL,
  `pembacaan_no1g` float DEFAULT NULL,
  `elevpie_no1g` float DEFAULT NULL,
  `p_no1h` text,
  `lok_no1h` text,
  `elevpuncak_no1h` float DEFAULT NULL,
  `elevtip_no1h` float DEFAULT NULL,
  `panjpipa_no1h` float DEFAULT NULL,
  `pembacaan_no1h` float DEFAULT NULL,
  `elevpie_no1h` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b4_1_p2`
--

DROP TABLE IF EXISTS `bendung_form_b4_1_p2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b4_1_p2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `no` text,
  `waktu` date DEFAULT NULL,
  `potongan_melintang` text,
  `p_no2a` text,
  `lok_no2a` text,
  `elevpuncak_no2a` float DEFAULT NULL,
  `elevtip_no2a` float DEFAULT NULL,
  `panjpipa_no2a` float DEFAULT NULL,
  `pembacaan_no2a` float DEFAULT NULL,
  `elevpie_no2a` float DEFAULT NULL,
  `p_no2b` text,
  `lok_no2b` text,
  `elevpuncak_no2b` float DEFAULT NULL,
  `elevtip_no2b` float DEFAULT NULL,
  `panjpipa_no2b` float DEFAULT NULL,
  `pembacaan_no2b` float DEFAULT NULL,
  `elevpie_no2b` float DEFAULT NULL,
  `p_no2c` text,
  `lok_no2c` text,
  `elevpuncak_no2c` float DEFAULT NULL,
  `elevtip_no2c` float DEFAULT NULL,
  `panjpipa_no2c` float DEFAULT NULL,
  `pembacaan_no2c` float DEFAULT NULL,
  `elevpie_no2c` float DEFAULT NULL,
  `p_no2d` text,
  `lok_no2d` text,
  `elevpuncak_no2d` float DEFAULT NULL,
  `elevtip_no2d` float DEFAULT NULL,
  `panjpipa_no2d` float DEFAULT NULL,
  `pembacaan_no2d` float DEFAULT NULL,
  `elevpie_no2d` float DEFAULT NULL,
  `p_no2e` text,
  `lok_no2e` text,
  `elevpuncak_no2e` float DEFAULT NULL,
  `elevtip_no2e` float DEFAULT NULL,
  `panjpipa_no2e` float DEFAULT NULL,
  `pembacaan_no2e` float DEFAULT NULL,
  `elevpie_no2e` float DEFAULT NULL,
  `p_no2f` text,
  `lok_no2f` text,
  `elevpuncak_no2f` float DEFAULT NULL,
  `elevtip_no2f` float DEFAULT NULL,
  `panjpipa_no2f` float DEFAULT NULL,
  `pembacaan_no2f` float DEFAULT NULL,
  `elevpie_no2f` float DEFAULT NULL,
  `p_no2g` text,
  `lok_no2g` text,
  `elevpuncak_no2g` float DEFAULT NULL,
  `elevtip_no2g` float DEFAULT NULL,
  `panjpipa_no2g` float DEFAULT NULL,
  `pembacaan_no2g` float DEFAULT NULL,
  `elevpie_no2g` float DEFAULT NULL,
  `p_no2h` text,
  `lok_no2h` text,
  `elevpuncak_no2h` float DEFAULT NULL,
  `elevtip_no2h` float DEFAULT NULL,
  `panjpipa_no2h` float DEFAULT NULL,
  `pembacaan_no2h` float DEFAULT NULL,
  `elevpie_no2h` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b4_1_p3`
--

DROP TABLE IF EXISTS `bendung_form_b4_1_p3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b4_1_p3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `no` text,
  `waktu` date DEFAULT NULL,
  `potongan_melintang` text,
  `p_no3a` text,
  `lok_no3a` text,
  `elevpuncak_no3a` float DEFAULT NULL,
  `elevtip_no3a` float DEFAULT NULL,
  `panjpipa_no3a` float DEFAULT NULL,
  `pembacaan_no3a` float DEFAULT NULL,
  `elevpie_no3a` float DEFAULT NULL,
  `p_no3b` text,
  `lok_no3b` text,
  `elevpuncak_no3b` float DEFAULT NULL,
  `elevtip_no3b` float DEFAULT NULL,
  `panjpipa_no3b` float DEFAULT NULL,
  `pembacaan_no3b` text,
  `elevpie_no3b` float DEFAULT NULL,
  `p_no3c` text,
  `lok_no3c` text,
  `elevpuncak_no3c` float DEFAULT NULL,
  `elevtip_no3c` float DEFAULT NULL,
  `panjpipa_no3c` float DEFAULT NULL,
  `pembacaan_no3c` float DEFAULT NULL,
  `elevpie_no3c` float DEFAULT NULL,
  `p_no3d` text,
  `lok_no3d` text,
  `elevpuncak_no3d` float DEFAULT NULL,
  `elevtip_no3d` float DEFAULT NULL,
  `panjpipa_no3d` float DEFAULT NULL,
  `pembacaan_no3d` float DEFAULT NULL,
  `elevpie_no3d` float DEFAULT NULL,
  `p_no3e` text,
  `lok_no3e` text,
  `elevpuncak_no3e` float DEFAULT NULL,
  `elevtip_no3e` float DEFAULT NULL,
  `panjpipa_no3e` float DEFAULT NULL,
  `pembacaan_no3e` float DEFAULT NULL,
  `elevpie_no3e` float DEFAULT NULL,
  `p_no3f` text,
  `lok_no3f` text,
  `elevpuncak_no3f` float DEFAULT NULL,
  `elevtip_no3f` float DEFAULT NULL,
  `panjpipa_no3f` float DEFAULT NULL,
  `pembacaan_no3f` float DEFAULT NULL,
  `elevpie_no3f` float DEFAULT NULL,
  `p_no3g` text,
  `lok_no3g` text,
  `elevpuncak_no3g` float DEFAULT NULL,
  `elevtip_no3g` float DEFAULT NULL,
  `panjpipa_no3g` float DEFAULT NULL,
  `pembacaan_no3g` float DEFAULT NULL,
  `elevpie_no3g` float DEFAULT NULL,
  `p_no3h` text,
  `lok_no3h` text,
  `elevpuncak_no3h` float DEFAULT NULL,
  `elevtip_no3h` float DEFAULT NULL,
  `panjpipa_no3h` float DEFAULT NULL,
  `pembacaan_no3h` float DEFAULT NULL,
  `elevpie_no3h` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b4_1_p4`
--

DROP TABLE IF EXISTS `bendung_form_b4_1_p4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b4_1_p4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `no` text,
  `waktu` date DEFAULT NULL,
  `potongan_melintang` text,
  `p_no4a` text,
  `lok_no4a` text,
  `elevpuncak_no4a` float DEFAULT NULL,
  `elevtip_no4a` float DEFAULT NULL,
  `panjpipa_no4a` float DEFAULT NULL,
  `pembacaan_no4a` float DEFAULT NULL,
  `elevpie_no4a` float DEFAULT NULL,
  `p_no4b` text,
  `lok_no4b` text,
  `elevpuncak_no4b` float DEFAULT NULL,
  `elevtip_no4b` float DEFAULT NULL,
  `panjpipa_no4b` float DEFAULT NULL,
  `pembacaan_no4b` float DEFAULT NULL,
  `elevpie_no4b` float DEFAULT NULL,
  `p_no4c` text,
  `lok_no4c` text,
  `elevpuncak_no4c` float DEFAULT NULL,
  `elevtip_no4c` float DEFAULT NULL,
  `panjpipa_no4c` float DEFAULT NULL,
  `pembacaan_no4c` float DEFAULT NULL,
  `elevpie_no4c` float DEFAULT NULL,
  `p_no4d` text,
  `lok_no4d` text,
  `elevpuncak_no4d` float DEFAULT NULL,
  `elevtip_no4d` float DEFAULT NULL,
  `panjpipa_no4d` float DEFAULT NULL,
  `pembacaan_no4d` float DEFAULT NULL,
  `elevpie_no4d` float DEFAULT NULL,
  `p_no4e` text,
  `lok_no4e` text,
  `elevpuncak_no4e` float DEFAULT NULL,
  `elevtip_no4e` float DEFAULT NULL,
  `panjpipa_no4e` float DEFAULT NULL,
  `pembacaan_no4e` float DEFAULT NULL,
  `elevpie_no4e` float DEFAULT NULL,
  `p_no4f` text,
  `lok_no4f` text,
  `elevpuncak_no4f` float DEFAULT NULL,
  `elevtip_no4f` float DEFAULT NULL,
  `panjpipa_no4f` float DEFAULT NULL,
  `pembacaan_no4f` float DEFAULT NULL,
  `elevpie_no4f` float DEFAULT NULL,
  `p_no4g` text,
  `lok_no4g` text,
  `elevpuncak_no4g` float DEFAULT NULL,
  `elevtip_no4g` float NOT NULL,
  `panjpipa_no4g` float NOT NULL,
  `pembacaan_no4g` float NOT NULL,
  `elevpie_no4g` float NOT NULL,
  `p_no4h` text NOT NULL,
  `lok_no4h` text NOT NULL,
  `elevpuncak_no4h` float NOT NULL,
  `elevtip_no4h` float NOT NULL,
  `panjpipa_no4h` float NOT NULL,
  `pembacaan_no4h` float NOT NULL,
  `elevpie_no4h` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bendung_form_b4_1_p5`
--

DROP TABLE IF EXISTS `bendung_form_b4_1_p5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bendung_form_b4_1_p5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) NOT NULL,
  `no` text,
  `waktu` date DEFAULT NULL,
  `potongan_melintang` text,
  `p_no5a` text,
  `lok_no5a` text,
  `elevpuncak_no5a` float DEFAULT NULL,
  `elevtip_no5a` float DEFAULT NULL,
  `panjpipa_no5a` float DEFAULT NULL,
  `pembacaan_no5a` float DEFAULT NULL,
  `elevpie_no5a` float DEFAULT NULL,
  `p_no5b` text,
  `lok_no5b` text,
  `elevpuncak_no5b` float DEFAULT NULL,
  `elevtip_no5b` float DEFAULT NULL,
  `panjpipa_no5b` float DEFAULT NULL,
  `pembacaan_no5b` float DEFAULT NULL,
  `elevpie_no5b` float DEFAULT NULL,
  `p_no5c` text,
  `lok_no5c` text,
  `elevpuncak_no5c` float DEFAULT NULL,
  `elevtip_no5c` float DEFAULT NULL,
  `panjpipa_no5c` float DEFAULT NULL,
  `pembacaan_no5c` float DEFAULT NULL,
  `elevpie_no5c` float DEFAULT NULL,
  `p_no5d` text,
  `lok_no5d` text,
  `elevpuncak_no5d` float DEFAULT NULL,
  `elevtip_no5d` float DEFAULT NULL,
  `panjpipa_no5d` float DEFAULT NULL,
  `pembacaan_no5d` float DEFAULT NULL,
  `elevpie_no5d` float DEFAULT NULL,
  `p_no5e` text,
  `lok_no5e` text,
  `elevpuncak_no5e` float DEFAULT NULL,
  `elevtip_no5e` float DEFAULT NULL,
  `panjpipa_no5e` float DEFAULT NULL,
  `pembacaan_no5e` float DEFAULT NULL,
  `elevpie_no5e` float DEFAULT NULL,
  `p_no5f` text,
  `lok_no5f` text,
  `elevpuncak_no5f` float DEFAULT NULL,
  `elevtip_no5f` float DEFAULT NULL,
  `panjpipa_no5f` float DEFAULT NULL,
  `pembacaan_no5f` float DEFAULT NULL,
  `elevpie_no5f` float DEFAULT NULL,
  `p_no5g` text,
  `lok_no5g` text,
  `elevpuncak_no5g` float DEFAULT NULL,
  `elevtip_no5g` float DEFAULT NULL,
  `panjpipa_no5g` float DEFAULT NULL,
  `pembacaan_no5g` float DEFAULT NULL,
  `elevpie_no5g` float DEFAULT NULL,
  `p_no5h` text,
  `lok_no5h` text,
  `elevpuncak_no5h` float DEFAULT NULL,
  `elevtip_no5h` float DEFAULT NULL,
  `panjpipa_no5h` float DEFAULT NULL,
  `pembacaan_no5h` float DEFAULT NULL,
  `elevpie_no5h` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bengkelo_lor`
--

DROP TABLE IF EXISTS `bengkelo_lor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bengkelo_lor` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=101391 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bogoharjo`
--

DROP TABLE IF EXISTS `bogoharjo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bogoharjo` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bojonegoro`
--

DROP TABLE IF EXISTS `bojonegoro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bojonegoro` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=278225 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bojonegoro_awlr`
--

DROP TABLE IF EXISTS `bojonegoro_awlr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bojonegoro_awlr` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=231989 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bojonegoro_barrage`
--

DROP TABLE IF EXISTS `bojonegoro_barrage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bojonegoro_barrage` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=288274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bojonegoro_kapas`
--

DROP TABLE IF EXISTS `bojonegoro_kapas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bojonegoro_kapas` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bojonegorokalikethek_arr`
--

DROP TABLE IF EXISTS `bojonegorokalikethek_arr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bojonegorokalikethek_arr` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94511 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brangkal`
--

DROP TABLE IF EXISTS `brangkal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brangkal` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2410 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bulurejo`
--

DROP TABLE IF EXISTS `bulurejo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulurejo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cangkring`
--

DROP TABLE IF EXISTS `cangkring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cangkring` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cepu`
--

DROP TABLE IF EXISTS `cepu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cepu` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=475461 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cepuarr`
--

DROP TABLE IF EXISTS `cepuarr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cepuarr` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136722 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colo_weir`
--

DROP TABLE IF EXISTS `colo_weir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colo_weir` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=458403 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curahhujan`
--

DROP TABLE IF EXISTS `curahhujan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curahhujan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` date DEFAULT NULL,
  `agent_id` int(11) NOT NULL,
  `pagi` float DEFAULT NULL,
  `sore` float DEFAULT NULL,
  `malam` float DEFAULT NULL,
  `tmalam` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `manual` float DEFAULT NULL,
  `mtime_total` datetime DEFAULT NULL,
  `origin_manual` varchar(35) DEFAULT NULL,
  `mtime_manual` datetime DEFAULT NULL,
  `num_t` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158026 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curahhujan_terkini`
--

DROP TABLE IF EXISTS `curahhujan_terkini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curahhujan_terkini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendungan_id` int(11) DEFAULT NULL,
  `tanggall` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `ch_terkini` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doplang`
--

DROP TABLE IF EXISTS `doplang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doplang` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=223992 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `floodway_bridge_c`
--

DROP TABLE IF EXISTS `floodway_bridge_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floodway_bridge_c` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=65699 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flow`
--

DROP TABLE IF EXISTS `flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gate_id` int(11) DEFAULT NULL,
  `waktu` date DEFAULT NULL,
  `opened` float DEFAULT NULL COMMENT 'Bukaan pintu (meter)',
  `value` float DEFAULT NULL COMMENT 'Arus (Q) (meter kubik/detik)',
  `timed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flow_gate_id_exists` (`gate_id`),
  CONSTRAINT `flow_gate_id_exists` FOREIGN KEY (`gate_id`) REFERENCES `gate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9209 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(35) DEFAULT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `fname` varchar(35) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gate`
--

DROP TABLE IF EXISTS `gate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bendung_id` int(11) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `io` enum('i','o') DEFAULT 'o',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gerdu`
--

DROP TABLE IF EXISTS `gerdu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerdu` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19654 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giriwoyo`
--

DROP TABLE IF EXISTS `giriwoyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giriwoyo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=226756 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gunungan`
--

DROP TABLE IF EXISTS `gunungan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gunungan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=240656 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jarum`
--

DROP TABLE IF EXISTS `jarum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jarum` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=281760 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jati_weir`
--

DROP TABLE IF EXISTS `jati_weir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jati_weir` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=147455 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jatipuro`
--

DROP TABLE IF EXISTS `jatipuro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jatipuro` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=185481 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jatirogo`
--

DROP TABLE IF EXISTS `jatirogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jatirogo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=210761 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jatisrono`
--

DROP TABLE IF EXISTS `jatisrono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jatisrono` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=487015 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jejeruk`
--

DROP TABLE IF EXISTS `jejeruk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jejeruk` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=150217 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jurug`
--

DROP TABLE IF EXISTS `jurug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurug` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jurug_idx` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=579956 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jurug2`
--

DROP TABLE IF EXISTS `jurug2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurug2` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=198390 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jurug3`
--

DROP TABLE IF EXISTS `jurug3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurug3` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jurug4`
--

DROP TABLE IF EXISTS `jurug4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurug4` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jururejo`
--

DROP TABLE IF EXISTS `jururejo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jururejo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=312580 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kajangan`
--

DROP TABLE IF EXISTS `kajangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kajangan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kalijambe`
--

DROP TABLE IF EXISTS `kalijambe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalijambe` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=245692 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kalilamong`
--

DROP TABLE IF EXISTS `kalilamong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalilamong` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=202971 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kalipepe_ptpn`
--

DROP TABLE IF EXISTS `kalipepe_ptpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalipepe_ptpn` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jurug_idx` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=149444 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kalipepe_tirtonadi`
--

DROP TABLE IF EXISTS `kalipepe_tirtonadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalipepe_tirtonadi` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77838 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kalipepe_tuguboto`
--

DROP TABLE IF EXISTS `kalipepe_tuguboto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kalipepe_tuguboto` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jurug_idx` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=79886 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `karangbinangun`
--

DROP TABLE IF EXISTS `karangbinangun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karangbinangun` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=57175 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `karanggeneng`
--

DROP TABLE IF EXISTS `karanggeneng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karanggeneng` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106081 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `karangnongko`
--

DROP TABLE IF EXISTS `karangnongko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karangnongko` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29716 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `karangpandan`
--

DROP TABLE IF EXISTS `karangpandan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `karangpandan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=317486 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kebonagung`
--

DROP TABLE IF EXISTS `kebonagung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kebonagung` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=249631 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kedungupit`
--

DROP TABLE IF EXISTS `kedungupit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kedungupit` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=269689 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kenteng`
--

DROP TABLE IF EXISTS `kenteng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kenteng` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=17294 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ketonggo`
--

DROP TABLE IF EXISTS `ketonggo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ketonggo` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125259 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ketonggo_bridge`
--

DROP TABLE IF EXISTS `ketonggo_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ketonggo_bridge` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=409440 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kiringan`
--

DROP TABLE IF EXISTS `kiringan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kiringan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111886 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `klaten`
--

DROP TABLE IF EXISTS `klaten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klaten` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=305524 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kualitas_air`
--

DROP TABLE IF EXISTS `kualitas_air`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kualitas_air` (
  `id_pos` int(11) DEFAULT NULL,
  `waktu` date DEFAULT NULL,
  `suhu` float DEFAULT NULL,
  `ph` float DEFAULT NULL,
  `tds` int(11) DEFAULT NULL,
  `tss` int(11) DEFAULT NULL,
  `ot` float DEFAULT NULL,
  `b` float DEFAULT NULL,
  `no3` float DEFAULT NULL,
  `no2` float DEFAULT NULL,
  `nh3` float DEFAULT NULL,
  `po4` float DEFAULT NULL,
  `cl` float DEFAULT NULL,
  `fe` float DEFAULT NULL,
  `mn` float DEFAULT NULL,
  `na` float DEFAULT NULL,
  `kok` float DEFAULT NULL,
  `kob` float DEFAULT NULL,
  `mbas` float DEFAULT NULL,
  `cl_2` float DEFAULT NULL,
  `m_n_l` int(11) DEFAULT NULL,
  `kmnO4` float DEFAULT NULL,
  `f` float DEFAULT NULL,
  `s` float DEFAULT NULL,
  `so4` float DEFAULT NULL,
  `cn` float DEFAULT NULL,
  `pb` float DEFAULT NULL,
  `cu` float DEFAULT NULL,
  `ni` float DEFAULT NULL,
  `cr` float DEFAULT NULL,
  `cr6` float DEFAULT NULL,
  `b_coli` int(11) DEFAULT NULL,
  `debit` float DEFAULT NULL,
  `lab` varchar(35) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=860 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lamong`
--

DROP TABLE IF EXISTS `lamong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lamong` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lamongan`
--

DROP TABLE IF EXISTS `lamongan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lamongan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=316182 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `latlondas`
--

DROP TABLE IF EXISTS `latlondas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latlondas` (
  `AgentID` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `lat` text COLLATE latin1_general_ci NOT NULL,
  `lon` text COLLATE latin1_general_ci NOT NULL,
  `html` text COLLATE latin1_general_ci NOT NULL,
  `label` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `AgentName` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `Phone` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `ReceivedDate` date DEFAULT NULL,
  `ReceivedTime` time DEFAULT NULL,
  `LocationCode` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `ReportsPeriod` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `Elevation` decimal(10,0) DEFAULT NULL,
  `LocationName` varchar(25) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lokasi`
--

DROP TABLE IF EXISTS `lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `ll` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `wilayah` int(10) DEFAULT NULL,
  `urutan` int(10) DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_idx` (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Nama lokasi Pos Sample Kualitas Air';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `madiun`
--

DROP TABLE IF EXISTS `madiun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madiun` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=271250 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `malo_bridge`
--

DROP TABLE IF EXISTS `malo_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malo_bridge` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=3887 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `napel`
--

DROP TABLE IF EXISTS `napel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `napel` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=234725 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nawangan`
--

DROP TABLE IF EXISTS `nawangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nawangan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=264816 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nepen`
--

DROP TABLE IF EXISTS `nepen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nepen` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242888 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_ticker`
--

DROP TABLE IF EXISTS `news_ticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_ticker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(250) COLLATE latin1_general_ci DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `is_show` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ngadipiro`
--

DROP TABLE IF EXISTS `ngadipiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngadipiro` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134106 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ngadipiro_mrg`
--

DROP TABLE IF EXISTS `ngadipiro_mrg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngadipiro_mrg` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ngandong`
--

DROP TABLE IF EXISTS `ngandong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngandong` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=196531 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ngawi`
--

DROP TABLE IF EXISTS `ngawi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngawi` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298221 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nglirip`
--

DROP TABLE IF EXISTS `nglirip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nglirip` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=250093 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nglirip_dam`
--

DROP TABLE IF EXISTS `nglirip_dam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nglirip_dam` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` varchar(11) COLLATE latin1_general_ci DEFAULT '0',
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=339593 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ngrambe`
--

DROP TABLE IF EXISTS `ngrambe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngrambe` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=209416 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ngrembang`
--

DROP TABLE IF EXISTS `ngrembang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngrembang` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=205274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pabelan`
--

DROP TABLE IF EXISTS `pabelan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pabelan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pabelan_idx` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=348242 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacal_dam`
--

DROP TABLE IF EXISTS `pacal_dam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacal_dam` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=201234 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacitan`
--

DROP TABLE IF EXISTS `pacitan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacitan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=226304 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacitan_arr`
--

DROP TABLE IF EXISTS `pacitan_arr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacitan_arr` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=251323 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `padangan`
--

DROP TABLE IF EXISTS `padangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `padangan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=282373 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pajeng`
--

DROP TABLE IF EXISTS `pajeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pajeng` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133525 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parangjoho`
--

DROP TABLE IF EXISTS `parangjoho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parangjoho` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=279073 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `passwd`
--

DROP TABLE IF EXISTS `passwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `userpasswd` varchar(128) DEFAULT NULL,
  `realname` varchar(1024) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `password` varchar(128) DEFAULT NULL,
  `table_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `penguapan`
--

DROP TABLE IF EXISTS `penguapan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penguapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `penguapan` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `peren`
--

DROP TABLE IF EXISTS `peren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peren` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=241445 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `peren_arr`
--

DROP TABLE IF EXISTS `peren_arr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peren_arr` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=243571 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `periodic`
--

DROP TABLE IF EXISTS `periodic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device` varchar(10) NOT NULL,
  `sampling` datetime NOT NULL,
  `tick` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `wl_scale` int(11) DEFAULT NULL,
  `received` datetime NOT NULL,
  `battery` int(11) NOT NULL,
  `sq` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `altitude` float DEFAULT NULL,
  `last_on` datetime DEFAULT NULL,
  `rain` float DEFAULT NULL,
  `wlevel` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Menampung data dari logger';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `petugas`
--

DROP TABLE IF EXISTS `petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tp_lahir` varchar(35) DEFAULT NULL,
  `tg_lahir` date DEFAULT NULL,
  `sms` varchar(35) DEFAULT NULL,
  `wa` varchar(35) DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `kode` varchar(15) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `lulusan` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pracimantoro`
--

DROP TABLE IF EXISTS `pracimantoro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracimantoro` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=465208 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purwantoro`
--

DROP TABLE IF EXISTS `purwantoro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purwantoro` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=296657 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `putat`
--

DROP TABLE IF EXISTS `putat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `putat` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=250413 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `randublatung`
--

DROP TABLE IF EXISTS `randublatung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `randublatung` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` varchar(11) COLLATE latin1_general_ci DEFAULT '0',
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=430491 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rejoso`
--

DROP TABLE IF EXISTS `rejoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rejoso` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` varchar(11) COLLATE latin1_general_ci DEFAULT '0',
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=494037 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requestresponse`
--

DROP TABLE IF EXISTS `requestresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requestresponse` (
  `ReqDate` date DEFAULT NULL,
  `ReqTime` time DEFAULT NULL,
  `ReqPhone` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `ReqMessage` varchar(180) COLLATE latin1_general_ci DEFAULT NULL,
  `ReqID` varchar(25) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ringinrejo`
--

DROP TABLE IF EXISTS `ringinrejo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ringinrejo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=661 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sekayu`
--

DROP TABLE IF EXISTS `sekayu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sekayu` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=370846 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sembung`
--

DROP TABLE IF EXISTS `sembung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sembung` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=178096 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sembung_kidul`
--

DROP TABLE IF EXISTS `sembung_kidul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sembung_kidul` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serenan`
--

DROP TABLE IF EXISTS `serenan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serenan` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112693 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slahung`
--

DROP TABLE IF EXISTS `slahung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slahung` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=240618 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `songputri`
--

DROP TABLE IF EXISTS `songputri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songputri` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=275656 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sooko`
--

DROP TABLE IF EXISTS `sooko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sooko` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=254631 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sragen`
--

DROP TABLE IF EXISTS `sragen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sragen` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=287859 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sumberrejo`
--

DROP TABLE IF EXISTS `sumberrejo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sumberrejo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=214731 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_1911_1`
--

DROP TABLE IF EXISTS `t_1911_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_1911_1` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tangen_bridge`
--

DROP TABLE IF EXISTS `tangen_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tangen_bridge` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` float DEFAULT NULL,
  `Humidity` float DEFAULT NULL,
  `Rain` float DEFAULT NULL,
  `Rain1` float DEFAULT NULL,
  `Rain2` float DEFAULT NULL,
  `Rain3` float DEFAULT NULL,
  `Rain4` float DEFAULT NULL,
  `WLevel` float DEFAULT NULL,
  `WLevel1` float DEFAULT NULL,
  `WLevel2` float DEFAULT NULL,
  `WLevel3` float DEFAULT NULL,
  `WLevel4` float DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=350139 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tangen_bridge_2`
--

DROP TABLE IF EXISTS `tangen_bridge_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tangen_bridge_2` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=234191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tawangmangu`
--

DROP TABLE IF EXISTS `tawangmangu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tawangmangu` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=312111 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tegalombo`
--

DROP TABLE IF EXISTS `tegalombo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tegalombo` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=107089 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `telaga_ngebel`
--

DROP TABLE IF EXISTS `telaga_ngebel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telaga_ngebel` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `telagangebel`
--

DROP TABLE IF EXISTS `telagangebel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telagangebel` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=142967 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tma`
--

DROP TABLE IF EXISTS `tma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` date DEFAULT NULL,
  `jam` varchar(2) DEFAULT NULL,
  `manual` float DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `pagi` float DEFAULT NULL,
  `siang` float DEFAULT NULL,
  `sore` float DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `origin` varchar(35) DEFAULT NULL,
  `num_t` int(11) DEFAULT '0',
  `telemetri` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221864 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tpl_agent`
--

DROP TABLE IF EXISTS `tpl_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpl_agent` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tritis`
--

DROP TABLE IF EXISTS `tritis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tritis` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=309500 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `turi`
--

DROP TABLE IF EXISTS `turi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turi` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=164815 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usrgrp_assoc`
--

DROP TABLE IF EXISTS `usrgrp_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usrgrp_assoc` (
  `username` varchar(128) DEFAULT NULL,
  `groupname` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `v_giriwoyo_rain`
--

DROP TABLE IF EXISTS `v_giriwoyo_rain`;
/*!50001 DROP VIEW IF EXISTS `v_giriwoyo_rain`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_giriwoyo_rain` AS SELECT 
 1 AS `SamplingDate`,
 1 AS `SamplingTime`,
 1 AS `Rain`,
 1 AS `Temperature`,
 1 AS `Humidity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_randublatung_rain`
--

DROP TABLE IF EXISTS `v_randublatung_rain`;
/*!50001 DROP VIEW IF EXISTS `v_randublatung_rain`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_randublatung_rain` AS SELECT 
 1 AS `SamplingDate`,
 1 AS `SamplingTime`,
 1 AS `Rain`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_sembung`
--

DROP TABLE IF EXISTS `v_sembung`;
/*!50001 DROP VIEW IF EXISTS `v_sembung`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_sembung` AS SELECT 
 1 AS `SamplingDate`,
 1 AS `SamplingTime`,
 1 AS `Rain`,
 1 AS `Temperature`,
 1 AS `Humidity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `waduk_daily`
--

DROP TABLE IF EXISTS `waduk_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waduk_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(11) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `elevasi` double DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `tma6` float DEFAULT NULL,
  `vol6` decimal(15,2) DEFAULT NULL,
  `tma12` float DEFAULT NULL,
  `vol12` decimal(15,2) DEFAULT NULL,
  `tma18` float DEFAULT NULL,
  `vol18` decimal(15,2) DEFAULT NULL,
  `rembesan` double DEFAULT NULL,
  `curahhujan` float DEFAULT '0',
  `inflow_q` float DEFAULT '0',
  `inflow_v` float DEFAULT '0',
  `outflow_v` float DEFAULT '0',
  `outflow_q` float DEFAULT '0',
  `intake_q` float DEFAULT '0',
  `intake_v` float DEFAULT '0',
  `spillway_v` float DEFAULT NULL,
  `spillway_q` float DEFAULT NULL,
  `vnotch_tin` float DEFAULT NULL,
  `vnotch_q` float DEFAULT NULL,
  `vnotch_tin1` float DEFAULT NULL,
  `vnotch_q1` float DEFAULT NULL,
  `vnotch_tin2` float DEFAULT NULL,
  `vnotch_q2` float DEFAULT NULL,
  `vnotch_tin3` float DEFAULT NULL,
  `vnotch_q3` float DEFAULT NULL,
  `inflow` float DEFAULT NULL,
  `outflow` float DEFAULT NULL,
  `mtime` datetime DEFAULT NULL,
  `a1` float DEFAULT NULL,
  `b1` float DEFAULT NULL,
  `c1` float DEFAULT NULL,
  `a2` float DEFAULT NULL,
  `b2` float DEFAULT NULL,
  `c2` float DEFAULT NULL,
  `a3` float DEFAULT NULL,
  `b3` float DEFAULT NULL,
  `c3` float DEFAULT NULL,
  `a4` float DEFAULT NULL,
  `b4` float DEFAULT NULL,
  `c4` float DEFAULT NULL,
  `a5` float DEFAULT NULL,
  `b5` float DEFAULT NULL,
  `c5` float DEFAULT NULL,
  `po_inflow_q` float DEFAULT '0',
  `po_inflow_v` float DEFAULT NULL,
  `po_outflow_q` float DEFAULT NULL,
  `po_tma` float DEFAULT NULL,
  `po_outflow_v` float DEFAULT NULL,
  `po_vol` decimal(15,2) DEFAULT NULL,
  `po_bona` float DEFAULT NULL,
  `po_bonb` float DEFAULT NULL,
  `vol_bona` float NOT NULL DEFAULT '0',
  `vol_bonb` float NOT NULL DEFAULT '0',
  `cu` varchar(25) DEFAULT NULL,
  `mu` varchar(25) DEFAULT NULL,
  `ctime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16313 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `waduk_delingan`
--

DROP TABLE IF EXISTS `waduk_delingan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waduk_delingan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=193004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `waduk_gondang`
--

DROP TABLE IF EXISTS `waduk_gondang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waduk_gondang` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=268509 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `waduk_nawangan`
--

DROP TABLE IF EXISTS `waduk_nawangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waduk_nawangan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=291718 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `waduk_notopuro`
--

DROP TABLE IF EXISTS `waduk_notopuro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waduk_notopuro` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177670 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wadukdahuan`
--

DROP TABLE IF EXISTS `wadukdahuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wadukdahuan` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=311322 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wadukkedungbrubus`
--

DROP TABLE IF EXISTS `wadukkedungbrubus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wadukkedungbrubus` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=152052 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wadukpondok`
--

DROP TABLE IF EXISTS `wadukpondok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wadukpondok` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=142465 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `waduksangiran`
--

DROP TABLE IF EXISTS `waduksangiran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waduksangiran` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM AUTO_INCREMENT=258404 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `widang`
--

DROP TABLE IF EXISTS `widang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widang` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46000 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `winonggo_bridge`
--

DROP TABLE IF EXISTS `winonggo_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winonggo_bridge` (
  `RID` decimal(10,0) NOT NULL DEFAULT '0',
  `ReceivedDate` date NOT NULL DEFAULT '0000-00-00',
  `ReceivedTime` time NOT NULL DEFAULT '00:00:00',
  `DataType` decimal(1,0) NOT NULL DEFAULT '0',
  `StatusPort` char(4) NOT NULL DEFAULT '',
  `SamplingDate` date NOT NULL DEFAULT '0000-00-00',
  `SamplingTime` time NOT NULL DEFAULT '00:00:00',
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tgl_jam_index` (`SamplingDate`,`SamplingTime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wonogiri`
--

DROP TABLE IF EXISTS `wonogiri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wonogiri` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=305277 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wonogiri_dam`
--

DROP TABLE IF EXISTS `wonogiri_dam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wonogiri_dam` (
  `RID` decimal(10,0) NOT NULL,
  `ReceivedDate` date NOT NULL,
  `ReceivedTime` time NOT NULL,
  `DataType` decimal(1,0) NOT NULL,
  `StatusPort` char(4) COLLATE latin1_general_ci NOT NULL,
  `SamplingDate` date NOT NULL,
  `SamplingTime` time NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Humidity` int(11) DEFAULT NULL,
  `Rain` int(11) DEFAULT NULL,
  `Rain1` int(11) DEFAULT NULL,
  `Rain2` int(11) DEFAULT NULL,
  `Rain3` int(11) DEFAULT NULL,
  `Rain4` int(11) DEFAULT NULL,
  `WLevel` int(11) DEFAULT NULL,
  `WLevel1` int(11) DEFAULT NULL,
  `WLevel2` int(11) DEFAULT NULL,
  `WLevel3` int(11) DEFAULT NULL,
  `WLevel4` int(11) DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `ch` float DEFAULT NULL,
  `battery` float DEFAULT NULL,
  `up_since` datetime DEFAULT NULL,
  `sq` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=486713 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `v_giriwoyo_rain`
--

/*!50001 DROP VIEW IF EXISTS `v_giriwoyo_rain`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`narayana_ffws`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_giriwoyo_rain` AS select `giriwoyo`.`SamplingDate` AS `SamplingDate`,`giriwoyo`.`SamplingTime` AS `SamplingTime`,`giriwoyo`.`Rain` AS `Rain`,`giriwoyo`.`Temperature` AS `Temperature`,`giriwoyo`.`Humidity` AS `Humidity` from `giriwoyo` where (`giriwoyo`.`Rain` > 0) order by `giriwoyo`.`SamplingDate` desc,`giriwoyo`.`SamplingTime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_randublatung_rain`
--

/*!50001 DROP VIEW IF EXISTS `v_randublatung_rain`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`narayana_ffws`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_randublatung_rain` AS select `randublatung`.`SamplingDate` AS `SamplingDate`,`randublatung`.`SamplingTime` AS `SamplingTime`,`randublatung`.`Rain` AS `Rain` from `randublatung` where (`randublatung`.`Rain` > 0) order by `randublatung`.`SamplingDate` desc,`randublatung`.`SamplingTime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sembung`
--

/*!50001 DROP VIEW IF EXISTS `v_sembung`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`narayana_ffws`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sembung` AS select `sembung`.`SamplingDate` AS `SamplingDate`,`sembung`.`SamplingTime` AS `SamplingTime`,`sembung`.`Rain` AS `Rain`,`sembung`.`Temperature` AS `Temperature`,`sembung`.`Humidity` AS `Humidity` from `sembung` where (`sembung`.`Rain` > 0) order by `sembung`.`SamplingDate` desc,`sembung`.`SamplingTime` desc */;
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

-- Dump completed on 2020-04-03  5:23:17
