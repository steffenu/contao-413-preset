-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: preset_db
-- ------------------------------------------------------
-- Server version	5.7.39

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
-- Table structure for table `tl_article`
--

DROP TABLE IF EXISTS `tl_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `inColumn` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `showTeaser` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8mb4_unicode_ci,
  `printable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_published_incolumn_start_stop` (`pid`,`published`,`inColumn`,`start`,`stop`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_article`
--

LOCK TABLES `tl_article` WRITE;
/*!40000 ALTER TABLE `tl_article` DISABLE KEYS */;
INSERT INTO `tl_article` VALUES (1,2,128,1689505227,'startseite','index',2,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(2,3,128,1689505259,'401','',2,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(3,4,128,1689505307,'403 - Zugriff verweigert','',2,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(4,5,128,1689505353,'404 - Seite nicht gefunden','',2,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(5,6,128,1689505374,'503 - Dienst nicht verfÃ¼gbar','',2,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(6,7,128,1691483429,'datenschutz','datenschutz',1,'main',NULL,'','',NULL,'','','',NULL,'','','1','',''),(7,8,128,1691483444,'impressum','impressum',1,'main',NULL,'','',NULL,'','','',NULL,'','','1','','');
/*!40000 ALTER TABLE `tl_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar`
--

DROP TABLE IF EXISTS `tl_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notify_admin',
  `sortOrder` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ascending',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar`
--

LOCK TABLES `tl_calendar` WRITE;
/*!40000 ALTER TABLE `tl_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_events`
--

DROP TABLE IF EXISTS `tl_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `featured` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `addTime` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `startTime` int(11) DEFAULT NULL,
  `endTime` int(11) DEFAULT NULL,
  `startDate` int(10) unsigned DEFAULT NULL,
  `endDate` int(10) unsigned DEFAULT NULL,
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `robots` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'above',
  `recurring` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repeatEach` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repeatEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `recurrences` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addEnclosure` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_published_featured_start_stop` (`pid`,`published`,`featured`,`start`,`stop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_events`
--

LOCK TABLES `tl_calendar_events` WRITE;
/*!40000 ALTER TABLE `tl_calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_calendar_feed`
--

DROP TABLE IF EXISTS `tl_calendar_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_calendar_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendars` blob,
  `format` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rss',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'source_teaser',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '25',
  `feedBase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `imgSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_calendar_feed`
--

LOCK TABLES `tl_calendar_feed` WRITE;
/*!40000 ALTER TABLE `tl_calendar_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_calendar_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments`
--

DROP TABLE IF EXISTS `tl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `addReply` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `reply` text COLLATE utf8mb4_unicode_ci,
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notified` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notifiedReply` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `source_parent_published` (`source`,`parent`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments`
--

LOCK TABLES `tl_comments` WRITE;
/*!40000 ALTER TABLE `tl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_comments_notify`
--

DROP TABLE IF EXISTS `tl_comments_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_comments_notify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(2048) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `addedOn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `source_parent_active_email` (`source`,`parent`,`active`,`email`),
  KEY `tokenremove` (`tokenRemove`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_comments_notify`
--

LOCK TABLES `tl_comments_notify` WRITE;
/*!40000 ALTER TABLE `tl_comments_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_comments_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_content`
--

DROP TABLE IF EXISTS `tl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'text',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `ptable` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a:2:{s:5:"value";s:0:"";s:4:"unit";s:2:"h2";}',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `showPreview` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `inline` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `overwriteMeta` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `imagemargin` varchar(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `imageUrl` text COLLATE utf8mb4_unicode_ci,
  `fullsize` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'above',
  `html` mediumtext COLLATE utf8mb4_unicode_ci,
  `listtype` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `listitems` blob,
  `tableitems` mediumblob,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thead` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `tfoot` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `tleft` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `sortable` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `sortIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortOrder` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `mooHeadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mooStyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mooClasses` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `highlight` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `markdownSource` varchar(12) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'sourceText',
  `code` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `target` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `overwriteLink` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useImage` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `useHomeDir` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `perRow` smallint(5) unsigned NOT NULL DEFAULT '4',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortBy` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `metaIgnore` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `customTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerSRC` blob,
  `youtube` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `vimeo` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerOptions` text COLLATE utf8mb4_unicode_ci,
  `playerStart` int(10) unsigned NOT NULL DEFAULT '0',
  `playerStop` int(10) unsigned NOT NULL DEFAULT '0',
  `playerCaption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playerAspect` varchar(8) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `splashImage` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerPreload` varchar(8) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerColor` varchar(6) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `youtubeOptions` text COLLATE utf8mb4_unicode_ci,
  `vimeoOptions` text COLLATE utf8mb4_unicode_ci,
  `sliderDelay` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderSpeed` int(10) unsigned NOT NULL DEFAULT '300',
  `sliderStartSlide` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sliderContinuous` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci,
  `cteAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `articleAlias` int(10) unsigned NOT NULL DEFAULT '0',
  `article` int(10) unsigned NOT NULL DEFAULT '0',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `module` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invisible` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `start` varchar(10) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `stop` varchar(10) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `contentElement` int(10) unsigned NOT NULL DEFAULT '0',
  `contentElementCategory` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `paraValue` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemanager` mediumtext COLLATE utf8mb4_unicode_ci,
  `script` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagemanager_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `com_order` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `com_perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_moderate` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_bbcode` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_requireLogin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid_ptable_invisible_start_stop` (`pid`,`ptable`,`invisible`,`start`,`stop`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content`
--

LOCK TABLES `tl_content` WRITE;
/*!40000 ALTER TABLE `tl_content` DISABLE KEYS */;
INSERT INTO `tl_content` VALUES (1,'text',1,'tl_article',128,0,'a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"h2\";}',NULL,'','','','',NULL,'','','','',NULL,'','','above',NULL,'',NULL,NULL,'','','','','',0,'ascending','','','','','sourceText',NULL,NULL,'','','','','','','',NULL,NULL,'',4,0,0,'','','','',NULL,'','',NULL,'',NULL,0,0,'','','','','',NULL,NULL,0,300,0,'',NULL,0,0,0,0,0,'',NULL,'','','','','',0,0,'','',NULL,NULL,NULL,'ascending',0,'','','','','');
/*!40000 ALTER TABLE `tl_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_content_elements`
--

DROP TABLE IF EXISTS `tl_content_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_content_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableElements` blob,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `sorting` (`sorting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content_elements`
--

LOCK TABLES `tl_content_elements` WRITE;
/*!40000 ALTER TABLE `tl_content_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_content_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_content_elements_category`
--

DROP TABLE IF EXISTS `tl_content_elements_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_content_elements_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `sorting` (`sorting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_content_elements_category`
--

LOCK TABLES `tl_content_elements_category` WRITE;
/*!40000 ALTER TABLE `tl_content_elements_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_content_elements_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_copyright`
--

DROP TABLE IF EXISTS `tl_copyright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_copyright` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_copyright`
--

LOCK TABLES `tl_copyright` WRITE;
/*!40000 ALTER TABLE `tl_copyright` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_copyright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_crawl_queue`
--

DROP TABLE IF EXISTS `tl_crawl_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_crawl_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` char(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri_hash` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `found_on` longtext COLLATE utf8mb4_unicode_ci,
  `level` smallint(6) NOT NULL,
  `processed` tinyint(1) NOT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `uri_hash` (`uri_hash`),
  KEY `processed` (`processed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_crawl_queue`
--

LOCK TABLES `tl_crawl_queue` WRITE;
/*!40000 ALTER TABLE `tl_crawl_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_crawl_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_cron_job`
--

DROP TABLE IF EXISTS `tl_cron_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_cron_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastRun` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_cron_job`
--

LOCK TABLES `tl_cron_job` WRITE;
/*!40000 ALTER TABLE `tl_cron_job` DISABLE KEYS */;
INSERT INTO `tl_cron_job` VALUES (1,'Contao\\CoreBundle\\Cron\\LegacyCron::onMinutely','2023-08-08 08:43:42'),(2,'Contao\\CoreBundle\\Cron\\LegacyCron::onHourly','2023-08-08 08:00:11'),(3,'Contao\\CoreBundle\\Cron\\LegacyCron::onDaily','2023-08-08 08:00:11'),(4,'Contao\\CoreBundle\\Cron\\LegacyCron::onWeekly','2023-08-07 07:32:24'),(5,'Contao\\CoreBundle\\Cron\\LegacyCron::onMonthly','2023-08-01 07:12:33'),(6,'Contao\\CoreBundle\\Cron\\PurgeExpiredDataCron::onHourly','2023-08-08 08:00:11'),(7,'Contao\\CoreBundle\\Cron\\PurgePreviewLinksCron','2023-08-08 08:00:11');
/*!40000 ALTER TABLE `tl_cron_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq`
--

DROP TABLE IF EXISTS `tl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` text COLLATE utf8mb4_unicode_ci,
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `robots` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'above',
  `addEnclosure` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `noComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid_published` (`pid`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq`
--

LOCK TABLES `tl_faq` WRITE;
/*!40000 ALTER TABLE `tl_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_faq_category`
--

DROP TABLE IF EXISTS `tl_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_faq_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `allowComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notify_admin',
  `sortOrder` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ascending',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_faq_category`
--

LOCK TABLES `tl_faq_category` WRITE;
/*!40000 ALTER TABLE `tl_faq_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_files`
--

DROP TABLE IF EXISTS `tl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1022) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `extension` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastModified` int(10) unsigned DEFAULT NULL,
  `found` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `importantPartX` double unsigned NOT NULL DEFAULT '0',
  `importantPartY` double unsigned NOT NULL DEFAULT '0',
  `importantPartWidth` double unsigned NOT NULL DEFAULT '0',
  `importantPartHeight` double unsigned NOT NULL DEFAULT '0',
  `meta` blob,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `copyrightStockPhotographyGroup` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `pid` (`pid`),
  KEY `path` (`path`(768)),
  KEY `extension` (`extension`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_files`
--

LOCK TABLES `tl_files` WRITE;
/*!40000 ALTER TABLE `tl_files` DISABLE KEYS */;
INSERT INTO `tl_files` VALUES (1,NULL,1691483695,_binary 'ƒ\rK #\Æ\îµ\îB¬\0','folder','files/content','','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','content',0,0,0,0,NULL,'',NULL),(2,NULL,1691483704,_binary 'ƒ\rK#\Æ\îµ\îB¬\0','folder','files/tpl','','22592ce8118b911a34f572c8e6712769',NULL,'1','tpl',0,0,0,0,NULL,'',NULL),(3,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rK#\Æ\îµ\îB¬\0','file','files/tpl/README.md','md','64c9c6e0b770ec27e8b59e25dc080774',NULL,'1','README.md',0,0,0,0,NULL,'',NULL),(4,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rK#\Æ\îµ\îB¬\0','folder','files/tpl/favicons','','cc24a00691ac0b80ec3ef7e418105dd9',NULL,'1','favicons',0,0,0,0,NULL,'',NULL),(5,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rK#\Æ\îµ\îB¬\0','file','files/tpl/favicons/favicon.ico','ico','d97aa24162769d50d27538d302945116',NULL,'1','favicon.ico',0,0,0,0,NULL,'',NULL),(6,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rK\0#\Æ\îµ\îB¬\0','folder','files/tpl/images','','529c7aa832e4afa92d8073008bd779e9',NULL,'1','images',0,0,0,0,NULL,'',NULL),(7,_binary 'ƒ\rK\0#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rJô#\Æ\îµ\îB¬\0','file','files/tpl/images/README.md','md','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','README.md',0,0,0,0,NULL,'',NULL),(8,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0','folder','files/tpl/css','','04755aacce07dda694b057109d7f6e56',NULL,'1','css',0,0,0,0,NULL,'',NULL),(9,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rJ\ß#\Æ\îµ\îB¬\0','file','files/tpl/css/css_reset.css','css','808b5c8f79bd00c6832f2a25b4b03f91',NULL,'1','css_reset.css',0,0,0,0,NULL,'',NULL),(10,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\rJ\Æ#\Æ\îµ\îB¬\0','file','files/tpl/css/inline.scss','scss','b17e37ab4907e76e89c87ebde7482582',NULL,'1','inline.scss',0,0,0,0,NULL,'',NULL),(11,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~[#\Æ\îµ\îB¬\0','folder','files/tpl/css/scss','','c00a19176694295083c48e0061baeae2',NULL,'1','scss',0,0,0,0,NULL,'',NULL),(12,_binary 'ƒ~[#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~W#\Æ\îµ\îB¬\0','file','files/tpl/css/scss/_navigation.scss','scss','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','_navigation.scss',0,0,0,0,NULL,'',NULL),(13,_binary 'ƒ~[#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~M#\Æ\îµ\îB¬\0','file','files/tpl/css/scss/_mixins.scss','scss','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','_mixins.scss',0,0,0,0,NULL,'',NULL),(14,_binary 'ƒ~[#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~H#\Æ\îµ\îB¬\0','file','files/tpl/css/scss/_body.scss','scss','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','_body.scss',0,0,0,0,NULL,'',NULL),(15,_binary 'ƒ~[#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~A#\Æ\îµ\îB¬\0','file','files/tpl/css/scss/_footer.scss','scss','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','_footer.scss',0,0,0,0,NULL,'',NULL),(16,_binary 'ƒ~[#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~:#\Æ\îµ\îB¬\0','file','files/tpl/css/scss/_defaults.scss','scss','815938aff4f95ca5a87df36f5904fd6f',NULL,'1','_defaults.scss',0,0,0,0,NULL,'',NULL),(17,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~5#\Æ\îµ\îB¬\0','file','files/tpl/css/style-guide-grid.css','css','5bdf77fdc6f08dd32a3af1bcaf364f6e',NULL,'1','style-guide-grid.css',0,0,0,0,NULL,'',NULL),(18,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~/#\Æ\îµ\îB¬\0','file','files/tpl/css/external.css','css','e4bcf8eeaf9d9faaecdcb05dd3c2779a',NULL,'1','external.css',0,0,0,0,NULL,'',NULL),(19,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~&#\Æ\îµ\îB¬\0','file','files/tpl/css/external.scss','scss','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','external.scss',0,0,0,0,NULL,'',NULL),(20,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ~#\Æ\îµ\îB¬\0','file','files/tpl/css/fonts.css','css','e40b59dd68620a23b4b5d1dd3935571f',NULL,'1','fonts.css',0,0,0,0,NULL,'',NULL),(21,_binary 'ƒ\rJ\í#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒF#\Æ\îµ\îB¬\0','file','files/tpl/css/inline.css','css','a3160f4b53b226091fc8fda72b480f47',NULL,'1','inline.css',0,0,0,0,NULL,'',NULL),(22,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒF#\Æ\îµ\îB¬\0','folder','files/tpl/svg','','529c7aa832e4afa92d8073008bd779e9',NULL,'1','svg',0,0,0,0,NULL,'',NULL),(23,_binary 'ƒF#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒF#\Æ\îµ\îB¬\0','file','files/tpl/svg/README.md','md','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','README.md',0,0,0,0,NULL,'',NULL),(24,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒF#\Æ\îµ\îB¬\0','folder','files/tpl/fonts','','529c7aa832e4afa92d8073008bd779e9',NULL,'1','fonts',0,0,0,0,NULL,'',NULL),(25,_binary 'ƒF#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒEý#\Æ\îµ\îB¬\0','file','files/tpl/fonts/README.md','md','d41d8cd98f00b204e9800998ecf8427e',NULL,'1','README.md',0,0,0,0,NULL,'',NULL),(26,_binary 'ƒ\rK#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒE÷#\Æ\îµ\îB¬\0','folder','files/tpl/script','','323cd3454509d9830d332f14aac37746',NULL,'1','script',0,0,0,0,NULL,'',NULL),(27,_binary 'ƒE÷#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒEò#\Æ\îµ\îB¬\0','folder','files/tpl/script/jquery','','b89ccb6c0eff831acd61ffebac2d720d',NULL,'1','jquery',0,0,0,0,NULL,'',NULL),(28,_binary 'ƒEò#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒE\ì#\Æ\îµ\îB¬\0','file','files/tpl/script/jquery/jquery.js','js','00727d1d5d9c90f7de826f1a4a9cc632',NULL,'1','jquery.js',0,0,0,0,NULL,'',NULL),(29,_binary 'ƒE÷#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒE\ã#\Æ\îµ\îB¬\0','folder','files/tpl/script/slick','','554b30241abd3d04c82e868b07ecbe2e',NULL,'1','slick',0,0,0,0,NULL,'',NULL),(30,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒE\Ð#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick.less','less','f5309cf6905194850b44fb78b8028b95',NULL,'1','slick.less',0,0,0,0,NULL,'',NULL),(31,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷ñ#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/config.rb','rb','c47857bcaf2a4cf98b1bce99c48d4cd9',NULL,'1','config.rb',0,0,0,0,NULL,'',NULL),(32,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\ì#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick.css','css','001e5e45fa140d00a9129eb037c45704',NULL,'1','slick.css',0,0,0,0,NULL,'',NULL),(33,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\æ#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick.js','js','5f8f4aed010e1afe499184d8197309f9',NULL,'1','slick.js',0,0,0,0,NULL,'',NULL),(34,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\à#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick-theme.css','css','897d865563baf8418db00ea8c63051cb',NULL,'1','slick-theme.css',0,0,0,0,NULL,'',NULL),(35,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\Ú#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick-theme.scss','scss','e97dc549d5450ebd34fe128eefc69cd6',NULL,'1','slick-theme.scss',0,0,0,0,NULL,'',NULL),(36,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\Ó#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick.min.js','js','d5a61c749e44e47159af8a6579dda121',NULL,'1','slick.min.js',0,0,0,0,NULL,'',NULL),(37,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\Ì#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/ajax-loader.gif','gif','c5cd7f5300576ab4c88202b42f6ded62',NULL,'1','ajax-loader.gif',0,0,0,0,NULL,'',NULL),(38,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷\Å#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick.scss','scss','f5309cf6905194850b44fb78b8028b95',NULL,'1','slick.scss',0,0,0,0,NULL,'',NULL),(39,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷¼#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/slick-theme.less','less','c7c46d5960843c56fdfc63a789349434',NULL,'1','slick-theme.less',0,0,0,0,NULL,'',NULL),(40,_binary 'ƒE\ã#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ÷¦#\Æ\îµ\îB¬\0','folder','files/tpl/script/slick/fonts','','052e1941d661bc30fa35b2c039347db4',NULL,'1','fonts',0,0,0,0,NULL,'',NULL),(41,_binary 'ƒ÷¦#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒÕ•#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/fonts/slick.svg','svg','f97e3bbf73254b0112091d0192f17aec',NULL,'1','slick.svg',0,0,0,0,NULL,'',NULL),(42,_binary 'ƒ÷¦#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒÕ‘#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/fonts/slick.eot','eot','ced611daf7709cc778da928fec876475',NULL,'1','slick.eot',0,0,0,0,NULL,'',NULL),(43,_binary 'ƒ÷¦#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒÕŒ#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/fonts/slick.ttf','ttf','d41f55a78e6f49a5512878df1737e58a',NULL,'1','slick.ttf',0,0,0,0,NULL,'',NULL),(44,_binary 'ƒ÷¦#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒÕ‡#\Æ\îµ\îB¬\0','file','files/tpl/script/slick/fonts/slick.woff','woff','b7c9e1e479de3b53f1e4e30ebac2403a',NULL,'1','slick.woff',0,0,0,0,NULL,'',NULL),(45,_binary 'ƒE÷#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒÕ‚#\Æ\îµ\îB¬\0','folder','files/tpl/script/lightbox','','303991c38a7d2a102994660390f0776c',NULL,'1','lightbox',0,0,0,0,NULL,'',NULL),(46,_binary 'ƒÕ‚#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\Õ}#\Æ\îµ\îB¬\0','file','files/tpl/script/lightbox/lupcom-lightbox.js','js','3f730543442bf1deaeaa3b9f971a8062',NULL,'1','lupcom-lightbox.js',0,0,0,0,NULL,'',NULL),(47,_binary 'ƒE÷#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\Õx#\Æ\îµ\îB¬\0','folder','files/tpl/script/splideslider','','e3df692d0ddab0af6df77102c9914775',NULL,'1','splideslider',0,0,0,0,NULL,'',NULL),(48,_binary 'ƒ\Õx#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\Õs#\Æ\îµ\îB¬\0','file','files/tpl/script/splideslider/splide.min.js','js','0758be5332e68750471d7862fe1a6942',NULL,'1','splide.min.js',0,0,0,0,NULL,'',NULL),(49,_binary 'ƒ\Õx#\Æ\îµ\îB¬\0',1689504600,_binary 'ƒ\Õl#\Æ\îµ\îB¬\0','file','files/tpl/script/splideslider/splide.min.css','css','f6a86e8018fc1f6ae254b339acbd1cdd',NULL,'1','splide.min.css',0,0,0,0,NULL,'',NULL);
/*!40000 ALTER TABLE `tl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form`
--

DROP TABLE IF EXISTS `tl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `sendViaEmail` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recipient` varchar(1022) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `format` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'raw',
  `skipEmpty` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `storeValues` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `targetTable` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'POST',
  `novalidate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `formID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowTags` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `leadEnabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `leadMaster` int(10) unsigned NOT NULL DEFAULT '0',
  `leadMenuLabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `leadLabel` text COLLATE utf8mb4_unicode_ci,
  `nc_notification` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `leadenabled` (`leadEnabled`),
  KEY `leadmaster` (`leadMaster`),
  KEY `leadenabled_leadmaster` (`leadEnabled`,`leadMaster`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form`
--

LOCK TABLES `tl_form` WRITE;
/*!40000 ALTER TABLE `tl_form` DISABLE KEYS */;
INSERT INTO `tl_form` VALUES (1,1691396104,'TestFormular (leer)','testformular-leer',0,'','','','','raw','','','','','POST','','a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}','','','',0,'',NULL,0);
/*!40000 ALTER TABLE `tl_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_form_field`
--

DROP TABLE IF EXISTS `tl_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8mb4_unicode_ci,
  `html` text COLLATE utf8mb4_unicode_ci,
  `options` blob,
  `mandatory` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rgxp` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customRgxp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `errorMsg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxImageWidth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxImageHeight` int(10) unsigned NOT NULL DEFAULT '0',
  `minval` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxval` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `step` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a:2:{i:0;i:4;i:1;i:40;}',
  `multiple` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extensions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'jpg,jpeg,gif,png,pdf,doc,docx,xls,xlsx,ppt,pptx',
  `storeFile` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accesskey` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fSize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `customTpl` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageSubmit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldSize` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jsType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `chunking` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `chunkSize` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `leadStore` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid_invisible` (`pid`,`invisible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_form_field`
--

LOCK TABLES `tl_form_field` WRITE;
/*!40000 ALTER TABLE `tl_form_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_forward_list`
--

DROP TABLE IF EXISTS `tl_forward_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_forward_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `forwardFrom` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `forwardTo` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `includeTrailingSlash` int(10) unsigned NOT NULL DEFAULT '1',
  `permanent` int(10) unsigned NOT NULL DEFAULT '0',
  `withQuery` int(10) unsigned NOT NULL DEFAULT '0',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `published` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_forward_list`
--

LOCK TABLES `tl_forward_list` WRITE;
/*!40000 ALTER TABLE `tl_forward_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_forward_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_image_size`
--

DROP TABLE IF EXISTS `tl_image_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_image_size` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `densities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  `formats` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skipIfDimensionsMatch` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lazyLoading` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_image_size`
--

LOCK TABLES `tl_image_size` WRITE;
/*!40000 ALTER TABLE `tl_image_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_image_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_image_size_item`
--

DROP TABLE IF EXISTS `tl_image_size_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_image_size_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `densities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_image_size_item`
--

LOCK TABLES `tl_image_size_item` WRITE;
/*!40000 ALTER TABLE `tl_image_size_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_image_size_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_imagemanager`
--

DROP TABLE IF EXISTS `tl_imagemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_imagemanager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `files` blob,
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`,`start`,`stop`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_imagemanager`
--

LOCK TABLES `tl_imagemanager` WRITE;
/*!40000 ALTER TABLE `tl_imagemanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_imagemanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_layout`
--

DROP TABLE IF EXISTS `tl_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rows` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2rwh',
  `headerHeight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `footerHeight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cols` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2cll',
  `widthLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widthRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sections` blob,
  `framework` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stylesheet` blob,
  `external` blob,
  `loadingOrder` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'external_first',
  `combineScripts` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `modules` blob,
  `template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minifyMarkup` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `lightboxSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defaultImageDensities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `viewport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `titleTag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `onload` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `head` text COLLATE utf8mb4_unicode_ci,
  `addJQuery` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jquery` text COLLATE utf8mb4_unicode_ci,
  `addMooTools` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mootools` text COLLATE utf8mb4_unicode_ci,
  `analytics` text COLLATE utf8mb4_unicode_ci,
  `externalJs` blob,
  `scripts` text COLLATE utf8mb4_unicode_ci,
  `script` text COLLATE utf8mb4_unicode_ci,
  `static` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `align` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'center',
  `externalCSSHead` blob,
  `orderExtCSSHead` blob,
  `externalCSS` blob,
  `orderExtCSS` blob,
  `externalLupcomJS` blob,
  `orderExtLupcomJS` blob,
  `externalJsHead` blob,
  `orderExtJsHead` blob,
  `newsfeeds` blob,
  `calendarfeeds` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_layout`
--

LOCK TABLES `tl_layout` WRITE;
/*!40000 ALTER TABLE `tl_layout` DISABLE KEYS */;
INSERT INTO `tl_layout` VALUES (1,1,1689505174,'standart','3rw','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','1cl','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}','a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}',_binary 'a:1:{i:0;a:4:{s:5:\"title\";s:0:\"\";s:2:\"id\";s:0:\"\";s:8:\"template\";s:13:\"block_section\";s:8:\"position\";s:3:\"top\";}}','a:0:{}',NULL,NULL,'external_first','1',_binary 'a:3:{i:0;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:1;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:2;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";s:1:\"1\";}}','','1','a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}','','','','','',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'','','center',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_lead`
--

DROP TABLE IF EXISTS `tl_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `master_id` int(10) unsigned NOT NULL DEFAULT '0',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `post_data` mediumblob,
  PRIMARY KEY (`id`),
  KEY `master_id` (`master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_lead`
--

LOCK TABLES `tl_lead` WRITE;
/*!40000 ALTER TABLE `tl_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_lead_data`
--

DROP TABLE IF EXISTS `tl_lead_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_lead_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `master_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  `label` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `master_id` (`master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_lead_data`
--

LOCK TABLES `tl_lead_data` WRITE;
/*!40000 ALTER TABLE `tl_lead_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_lead_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_lead_export`
--

DROP TABLE IF EXISTS `tl_lead_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_lead_export` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useTemplate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `template` binary(16) DEFAULT NULL,
  `startIndex` int(11) NOT NULL DEFAULT '0',
  `sheetIndex` int(11) NOT NULL DEFAULT '0',
  `headerFields` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `export` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fields` blob,
  `tokenFields` blob,
  `lastRun` int(11) DEFAULT NULL,
  `skipLastRun` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_lead_export`
--

LOCK TABLES `tl_lead_export` WRITE;
/*!40000 ALTER TABLE `tl_lead_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_lead_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_log`
--

DROP TABLE IF EXISTS `tl_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8mb4_unicode_ci,
  `func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_log`
--

LOCK TABLES `tl_log` WRITE;
/*!40000 ALTER TABLE `tl_log` DISABLE KEYS */;
INSERT INTO `tl_log` VALUES (1,1691396567,'BE','CRON','sunger','Purged the system log','Contao\\Automator::purgeSystemLog','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(2,1691396567,'BE','CRON','sunger','Purged the crawl queue','Contao\\Automator::purgeCrawlQueue','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(3,1691396567,'BE','CRON','sunger','Purged the shared cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(4,1691396567,'BE','CRON','sunger','Purged the image cache','Contao\\Automator::purgeImageCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(5,1691396567,'BE','CRON','sunger','Purged the shared cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(6,1691396567,'BE','CRON','sunger','Purged the preview cache','Contao\\Automator::purgePreviewCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(7,1691396567,'BE','CRON','sunger','Purged the shared cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(8,1691396567,'BE','CRON','sunger','Purged the script cache','Contao\\Automator::purgeScriptCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(9,1691396567,'BE','CRON','sunger','Purged the temp folder','Contao\\Automator::purgeTempFolder','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(10,1691396567,'BE','CRON','sunger','Purged the shared cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(11,1691396567,'BE','CRON','sunger','Purged the shared cache','Contao\\Automator::purgePageCache','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(12,1691396567,'BE','CRON','sunger','Regenerated the XML files','Contao\\Automator::generateXmlFiles','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(13,1691396567,'BE','CRON','sunger','Regenerated the symlinks','Contao\\Automator::generateSymlinks','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(14,1691481611,'BE','ACCESS','sunger','User &quot;sunger&quot; has been logged out automatically due to inactivity','Contao\\CoreBundle\\Security\\User\\ContaoUserProvider::validateSessionLifetime','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(15,1691481611,'FE','CRON','anon.','Purged the temp folder','Contao\\Automator::purgeTempFolder','N/A'),(16,1691481611,'FE','CRON','anon.','Purged the expired double opt-in tokens','Contao\\Automator::purgeOptInTokens','N/A'),(17,1691481617,'BE','ACCESS','sunger','User &quot;sunger&quot; has logged in','Contao\\CoreBundle\\Security\\Authentication\\AuthenticationSuccessHandler::onAuthenticationSuccess','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(18,1691481625,'BE','GENERAL','sunger','A new entry &quot;tl_user_group.id=7&quot; has been created','Contao\\DC_Table::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(19,1691481649,'BE','GENERAL','sunger','Version 1 of record &quot;tl_user_group.id=7&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(20,1691481652,'BE','GENERAL','sunger','Version 1 of record &quot;tl_user_group.id=1&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(21,1691481664,'BE','GENERAL','sunger','Version 2 of record &quot;tl_user_group.id=1&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(22,1691481672,'BE','GENERAL','sunger','Version 1 of record &quot;tl_user.id=2&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(23,1691481693,'BE','GENERAL','sunger','Version 1 of record &quot;tl_user.id=3&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(24,1691481701,'BE','GENERAL','sunger','Version 2 of record &quot;tl_user.id=3&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(25,1691482012,'BE','GENERAL','sunger','Version 1 of record &quot;tl_layout.id=1&quot; has been created (parent records: tl_theme.id=1)','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(26,1691482031,'BE','GENERAL','sunger','Version 1 of record &quot;tl_page.id=1&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(27,1691482430,'BE','GENERAL','sunger','Version 2 of record &quot;tl_page.id=1&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(28,1691483421,'BE','GENERAL','sunger','A new entry &quot;tl_page.id=7&quot; has been created','Contao\\DC_Table::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(29,1691483430,'BE','GENERAL','sunger','Version 1 of record &quot;tl_page.id=7&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(30,1691483436,'BE','GENERAL','sunger','A new entry &quot;tl_page.id=8&quot; has been created','Contao\\DC_Table::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(31,1691483444,'BE','GENERAL','sunger','Version 1 of record &quot;tl_page.id=8&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(32,1691483687,'BE','CONFIGURATION','sunger','The global configuration variable &quot;adminEmail&quot; has been changed from &quot;steffen.unger@lupcom.de&quot; to &quot;preset@lupcom.de&quot;','Contao\\DC_File::save','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(33,1691483691,'BE','GENERAL','sunger','Version 1 of record &quot;tl_files.id=1&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(34,1691483695,'BE','CRON','sunger','Regenerated the symlinks','Contao\\Automator::generateSymlinks','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(35,1691483695,'BE','FILES','sunger','Folder &quot;files/content&quot; has been published','tl_files::protectFolder','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(36,1691483695,'BE','GENERAL','sunger','Version 2 of record &quot;tl_files.id=1&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(37,1691483697,'BE','GENERAL','sunger','Version 1 of record &quot;tl_files.id=2&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(38,1691483704,'BE','CRON','sunger','Regenerated the symlinks','Contao\\Automator::generateSymlinks','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(39,1691483704,'BE','FILES','sunger','Folder &quot;files/tpl&quot; has been published','tl_files::protectFolder','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'),(40,1691483704,'BE','GENERAL','sunger','Version 2 of record &quot;tl_files.id=2&quot; has been created','Contao\\Versions::create','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36');
/*!40000 ALTER TABLE `tl_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member`
--

DROP TABLE IF EXISTS `tl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postal` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `login` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `assignDir` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginAttempts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `session` blob,
  `secret` binary(128) DEFAULT NULL,
  `useTwoFactor` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backupCodes` text COLLATE utf8mb4_unicode_ci,
  `trustedTokenVersion` int(10) unsigned NOT NULL DEFAULT '0',
  `newsletter` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `login_disable_start_stop` (`login`,`disable`,`start`,`stop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member`
--

LOCK TABLES `tl_member` WRITE;
/*!40000 ALTER TABLE `tl_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_member_group`
--

DROP TABLE IF EXISTS `tl_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_member_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `redirect` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `disable_start_stop` (`disable`,`start`,`stop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_member_group`
--

LOCK TABLES `tl_member_group` WRITE;
/*!40000 ALTER TABLE `tl_member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_module`
--

DROP TABLE IF EXISTS `tl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a:2:{s:5:"value";s:0:"";s:4:"unit";s:2:"h2";}',
  `type` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'navigation',
  `levelOffset` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardLimit` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `showProtected` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `defineRoot` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `rootPage` int(10) unsigned NOT NULL DEFAULT '0',
  `navigationTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `customTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `pages` blob,
  `showHidden` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `customLabel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autologin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `overviewPage` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `editable` blob,
  `memberTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `queryType` varchar(8) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'and',
  `fuzzy` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `contextLength` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `minKeywordLength` smallint(5) unsigned NOT NULL DEFAULT '4',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `searchType` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'simple',
  `searchTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `inColumn` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'main',
  `skipFirst` smallint(5) unsigned NOT NULL DEFAULT '0',
  `loadFirst` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `imgSize` varchar(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `useCaption` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `fullsize` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `multiSRC` blob,
  `orderSRC` blob,
  `html` text COLLATE utf8mb4_unicode_ci,
  `rss_cache` int(10) unsigned NOT NULL DEFAULT '3600',
  `rss_feed` text COLLATE utf8mb4_unicode_ci,
  `rss_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) unsigned NOT NULL DEFAULT '3',
  `disableCaptcha` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_groups` blob,
  `reg_allowLogin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_skipName` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_close` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_deleteDir` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_assignDir` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_text` text COLLATE utf8mb4_unicode_ci,
  `reg_password` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci,
  `protected` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `groups` blob,
  `guests` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cssID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rootPageDependentModules` blob,
  `faq_categories` blob,
  `faq_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `com_order` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `com_moderate` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_bbcode` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_requireLogin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `news_archives` blob,
  `news_featured` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'all_items',
  `news_jumpToCurrent` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `news_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `news_metaFields` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}',
  `news_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `news_format` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'news_month',
  `news_startDay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_order` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'order_date_desc',
  `news_showQuantity` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `list_table` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `list_fields` tinytext COLLATE utf8mb4_unicode_ci,
  `list_where` tinytext COLLATE utf8mb4_unicode_ci,
  `list_search` tinytext COLLATE utf8mb4_unicode_ci,
  `list_sort` tinytext COLLATE utf8mb4_unicode_ci,
  `list_info` tinytext COLLATE utf8mb4_unicode_ci,
  `list_info_where` tinytext COLLATE utf8mb4_unicode_ci,
  `list_layout` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `list_info_layout` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_calendar` blob,
  `cal_noSpan` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_hideRunning` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) unsigned NOT NULL DEFAULT '1',
  `cal_format` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'cal_month',
  `cal_ignoreDynamic` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_order` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `cal_readerModule` int(10) unsigned NOT NULL DEFAULT '0',
  `cal_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cal_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_featured` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'all_items',
  `newsletters` blob,
  `nl_channels` blob,
  `nl_text` text COLLATE utf8mb4_unicode_ci,
  `nl_hideChannels` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `nl_subscribe` text COLLATE utf8mb4_unicode_ci,
  `nl_unsubscribe` text COLLATE utf8mb4_unicode_ci,
  `nl_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `nc_notification` int(10) unsigned NOT NULL DEFAULT '0',
  `nc_activation_notification` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_module`
--

LOCK TABLES `tl_module` WRITE;
/*!40000 ALTER TABLE `tl_module` DISABLE KEYS */;
INSERT INTO `tl_module` VALUES (1,1,1689505901,'Seitenlayout - Header','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"h2\";}','html',0,0,'','','',0,'','mod_html_header',NULL,'','','',0,0,'',NULL,'',0,'and','','',4,0,'simple','','main',0,'',NULL,NULL,'','','',NULL,NULL,NULL,3600,NULL,'',3,'',NULL,'','','','','',NULL,'',0,NULL,NULL,NULL,'',NULL,'','',NULL,NULL,0,'ascending','','','','','',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','','news_month',0,'order_date_desc','','',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,'','',1,'cal_month','','ascending',0,0,'','','','all_items',NULL,NULL,NULL,'',NULL,NULL,'',0,0),(2,1,1689505921,'Seitenlayout - Footer','a:2:{s:5:\"value\";s:0:\"\";s:4:\"unit\";s:2:\"h2\";}','html',0,0,'','','',0,'','mod_html_footer',NULL,'','','',0,0,'',NULL,'',0,'and','','',4,0,'simple','','main',0,'',NULL,NULL,'','','',NULL,NULL,NULL,3600,NULL,'',3,'',NULL,'','','','','',NULL,'',0,NULL,NULL,NULL,'',NULL,'','',NULL,NULL,0,'ascending','','','','','',NULL,'all_items','',0,'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}','','news_month',0,'order_date_desc','','',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,'','',1,'cal_month','','ascending',0,0,'','','','all_items',NULL,NULL,NULL,'',NULL,NULL,'',0,0);
/*!40000 ALTER TABLE `tl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_nc_gateway`
--

DROP TABLE IF EXISTS `tl_nc_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_nc_gateway` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `queue_targetGateway` int(11) NOT NULL DEFAULT '0',
  `queue_delay` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `queue_cronEnable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `queue_cronInterval` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `queue_cronMessages` int(11) NOT NULL DEFAULT '0',
  `email_overrideSmtp` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_smtpHost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_smtpUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_smtpPass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_smtpEnc` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_smtpPort` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_connection` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_port` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postmark_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postmark_test` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postmark_ssl` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `queue_croninterval` (`queue_cronInterval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_nc_gateway`
--

LOCK TABLES `tl_nc_gateway` WRITE;
/*!40000 ALTER TABLE `tl_nc_gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_nc_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_nc_language`
--

DROP TABLE IF EXISTS `tl_nc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_nc_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallback` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recipients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachment_tokens` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachments` blob,
  `attachment_templates` blob,
  `email_sender_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_sender_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_recipient_cc` text COLLATE utf8mb4_unicode_ci,
  `email_recipient_bcc` text COLLATE utf8mb4_unicode_ci,
  `email_replyTo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_mode` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_text` text COLLATE utf8mb4_unicode_ci,
  `email_html` text COLLATE utf8mb4_unicode_ci,
  `email_external_images` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_storage_mode` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_nc_language`
--

LOCK TABLES `tl_nc_language` WRITE;
/*!40000 ALTER TABLE `tl_nc_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_nc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_nc_message`
--

DROP TABLE IF EXISTS `tl_nc_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_nc_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gateway` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email_priority` int(10) unsigned NOT NULL DEFAULT '0',
  `email_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postmark_tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postmark_trackOpens` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_nc_message`
--

LOCK TABLES `tl_nc_message` WRITE;
/*!40000 ALTER TABLE `tl_nc_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_nc_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_nc_notification`
--

DROP TABLE IF EXISTS `tl_nc_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_nc_notification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flatten_delimiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `templates` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_nc_notification`
--

LOCK TABLES `tl_nc_notification` WRITE;
/*!40000 ALTER TABLE `tl_nc_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_nc_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_nc_queue`
--

DROP TABLE IF EXISTS `tl_nc_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_nc_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sourceQueue` int(10) unsigned NOT NULL DEFAULT '0',
  `targetGateway` int(10) unsigned NOT NULL DEFAULT '0',
  `message` int(10) unsigned NOT NULL DEFAULT '0',
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `dateDelay` int(10) unsigned DEFAULT NULL,
  `dateSent` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `error` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tokens` blob,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachments` blob,
  PRIMARY KEY (`id`),
  KEY `message` (`message`),
  KEY `sourcequeue` (`sourceQueue`),
  KEY `targetgateway` (`targetGateway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_nc_queue`
--

LOCK TABLES `tl_nc_queue` WRITE;
/*!40000 ALTER TABLE `tl_nc_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_nc_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news`
--

DROP TABLE IF EXISTS `tl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `featured` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `robots` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `subheadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8mb4_unicode_ci,
  `addImage` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overwriteMeta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imagemargin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullsize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'above',
  `addEnclosure` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enclosure` blob,
  `source` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `articleId` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `pid_published_featured_start_stop` (`pid`,`published`,`featured`,`start`,`stop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news`
--

LOCK TABLES `tl_news` WRITE;
/*!40000 ALTER TABLE `tl_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_archive`
--

DROP TABLE IF EXISTS `tl_news_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_news_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `allowComments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `notify` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notify_admin',
  `sortOrder` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ascending',
  `perPage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bbcode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requireLogin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableCaptcha` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_archive`
--

LOCK TABLES `tl_news_archive` WRITE;
/*!40000 ALTER TABLE `tl_news_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_news_feed`
--

DROP TABLE IF EXISTS `tl_news_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_news_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `archives` blob,
  `format` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rss',
  `source` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'source_teaser',
  `maxItems` smallint(5) unsigned NOT NULL DEFAULT '25',
  `feedBase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `imgSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_news_feed`
--

LOCK TABLES `tl_news_feed` WRITE;
/*!40000 ALTER TABLE `tl_news_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_news_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter`
--

DROP TABLE IF EXISTS `tl_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `addFile` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `files` blob,
  `template` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sendText` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `externalImages` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `senderName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter`
--

LOCK TABLES `tl_newsletter` WRITE;
/*!40000 ALTER TABLE `tl_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_channel`
--

DROP TABLE IF EXISTS `tl_newsletter_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `template` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `senderName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_channel`
--

LOCK TABLES `tl_newsletter_channel` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_deny_list`
--

DROP TABLE IF EXISTS `tl_newsletter_deny_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_newsletter_deny_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_hash` (`pid`,`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_deny_list`
--

LOCK TABLES `tl_newsletter_deny_list` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_deny_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_deny_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_newsletter_recipients`
--

DROP TABLE IF EXISTS `tl_newsletter_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addedOn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_email` (`pid`,`email`),
  KEY `email` (`email`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_newsletter_recipients`
--

LOCK TABLES `tl_newsletter_recipients` WRITE;
/*!40000 ALTER TABLE `tl_newsletter_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_newsletter_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_opengraph`
--

DROP TABLE IF EXISTS `tl_opengraph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_opengraph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addOpengraph` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opengraphSRC` binary(16) DEFAULT NULL,
  `opengraphSRC_resized` binary(16) DEFAULT NULL,
  `opengraph_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opengraph_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_opengraph`
--

LOCK TABLES `tl_opengraph` WRITE;
/*!40000 ALTER TABLE `tl_opengraph` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_opengraph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_opt_in`
--

DROP TABLE IF EXISTS `tl_opt_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_opt_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdOn` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmedOn` int(10) unsigned NOT NULL DEFAULT '0',
  `removeOn` int(10) unsigned NOT NULL DEFAULT '0',
  `invalidatedThrough` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailText` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `removeon` (`removeOn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_opt_in`
--

LOCK TABLES `tl_opt_in` WRITE;
/*!40000 ALTER TABLE `tl_opt_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_opt_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_opt_in_related`
--

DROP TABLE IF EXISTS `tl_opt_in_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_opt_in_related` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `relTable` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reltable_relid` (`relTable`,`relId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_opt_in_related`
--

LOCK TABLES `tl_opt_in_related` WRITE;
/*!40000 ALTER TABLE `tl_opt_in_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_opt_in_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_page`
--

DROP TABLE IF EXISTS `tl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `requireItem` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `routePriority` int(11) NOT NULL DEFAULT '0',
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `robots` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `redirect` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'permanent',
  `jumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `redirectBack` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dns` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staticFiles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fallback` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableLanguageRedirect` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `favicon` binary(16) DEFAULT NULL,
  `robotsTxt` text COLLATE utf8mb4_unicode_ci,
  `maintenanceMode` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enableCanonical` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `canonicalLink` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `canonicalKeepParams` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `adminEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timeFormat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `datimFormat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `validAliasCharacters` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useFolderUrl` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `urlPrefix` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `urlSuffix` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `useSSL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `autoforward` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `includeLayout` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `subpageLayout` int(10) unsigned NOT NULL DEFAULT '0',
  `includeCache` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cache` int(10) unsigned NOT NULL DEFAULT '0',
  `alwaysLoadFromCache` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clientCache` int(10) unsigned NOT NULL DEFAULT '0',
  `includeChmod` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cuser` int(10) unsigned NOT NULL DEFAULT '0',
  `cgroup` int(10) unsigned NOT NULL DEFAULT '0',
  `chmod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noSearch` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cssClass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemap` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hide` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `guests` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tabindex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accesskey` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enforceTwoFactor` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twoFactorJumpTo` int(10) unsigned NOT NULL DEFAULT '0',
  `opengraphRootSRC` blob,
  `twitteruser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `whatsappprefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `type_dns` (`type`,`dns`),
  KEY `pid_published_type_start_stop` (`pid`,`published`,`type`,`start`,`stop`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_page`
--

LOCK TABLES `tl_page` WRITE;
/*!40000 ALTER TABLE `tl_page` DISABLE KEYS */;
INSERT INTO `tl_page` VALUES (1,0,128,1691482430,'root','root','preset-root','',0,'','de','',NULL,'permanent',0,'','','','','','','1','',NULL,NULL,'','','1','','','','','','','0-9a-z','1','','','1','','',NULL,'1',1,0,'',0,'',0,'',0,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','','','',0,'','1','','','',0,NULL,'',''),(2,1,32,1689505279,'startseite','regular','index','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',0,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',0,NULL,'',''),(3,1,64,1689505322,'401 - Nicht authentifiziert','error_401','','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',0,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','','','',0,'','1','','','',0,NULL,'',''),(4,1,192,1689505307,'403 - Zugriff verweigert','error_403','','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',0,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','','','',0,'','1','','','',0,NULL,'',''),(5,1,320,1689505353,'404 - Seite nicht gefunden','error_404','','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',0,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','','','',0,'','1','','','',0,NULL,'',''),(6,1,448,1689505374,'503 - Dienst nicht verfÃ¼gbar','error_503','','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',0,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','','','',0,'','1','','','',0,NULL,'',''),(7,1,48,1691483429,'datenschutz','regular','datenschutz','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',3,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',0,NULL,'',''),(8,1,56,1691483444,'impressum','regular','impressum','',0,'','','index,follow',NULL,'permanent',0,'','','','','','','','',NULL,NULL,'','','1','','','','','','','','','','','1','','',NULL,'',0,0,'',0,'',0,'',3,1,'a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}','','','map_default','','',0,'','1','','','',0,NULL,'','');
/*!40000 ALTER TABLE `tl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_preview_link`
--

DROP TABLE IF EXISTS `tl_preview_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_preview_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `showUnpublished` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restrictToUrl` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `createdAt` int(10) unsigned NOT NULL DEFAULT '0',
  `expiresAt` int(10) unsigned NOT NULL DEFAULT '0',
  `published` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdBy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_published_expiresat` (`id`,`published`,`expiresAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_preview_link`
--

LOCK TABLES `tl_preview_link` WRITE;
/*!40000 ALTER TABLE `tl_preview_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_preview_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_remember_me`
--

DROP TABLE IF EXISTS `tl_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_remember_me` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `series` binary(32) NOT NULL COMMENT '(DC2Type:binary_string)',
  `value` binary(64) NOT NULL COMMENT '(DC2Type:binary_string)',
  `lastUsed` datetime NOT NULL,
  `expires` datetime DEFAULT NULL,
  `class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `series` (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_remember_me`
--

LOCK TABLES `tl_remember_me` WRITE;
/*!40000 ALTER TABLE `tl_remember_me` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search`
--

DROP TABLE IF EXISTS `tl_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(2048) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `filesize` double NOT NULL DEFAULT '0',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protected` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vectorLength` double NOT NULL DEFAULT '0',
  `meta` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `checksum_pid` (`checksum`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search`
--

LOCK TABLES `tl_search` WRITE;
/*!40000 ALTER TABLE `tl_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search_index`
--

DROP TABLE IF EXISTS `tl_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_search_index` (
  `pid` int(10) unsigned NOT NULL,
  `termId` int(10) unsigned NOT NULL,
  `relevance` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`termId`,`pid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_index`
--

LOCK TABLES `tl_search_index` WRITE;
/*!40000 ALTER TABLE `tl_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_search_term`
--

DROP TABLE IF EXISTS `tl_search_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_search_term` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `documentFrequency` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `term` (`term`),
  KEY `documentfrequency` (`documentFrequency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_search_term`
--

LOCK TABLES `tl_search_term` WRITE;
/*!40000 ALTER TABLE `tl_search_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_search_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style`
--

DROP TABLE IF EXISTS `tl_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `selector` varchar(1022) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `height` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minwidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `minheight` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxwidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maxheight` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `positioning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `trbl` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `floating` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `clear` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `overflow` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `display` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alignment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `margin` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `padding` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `align` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `verticalalign` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `textalign` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `whitespace` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgcolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgposition` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shadowsize` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gradientColors` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `border` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderwidth` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderstyle` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bordercolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderradius` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `borderspacing` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `font` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontfamily` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontsize` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontcolor` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lineheight` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fontstyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `texttransform` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `textindent` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `letterspacing` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wordspacing` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `liststyletype` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `own` text COLLATE utf8mb4_unicode_ci,
  `invisible` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style`
--

LOCK TABLES `tl_style` WRITE;
/*!40000 ALTER TABLE `tl_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_style_sheet`
--

DROP TABLE IF EXISTS `tl_style_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embedImages` int(10) unsigned NOT NULL DEFAULT '0',
  `cc` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a:1:{i:0;s:3:"all";}',
  `mediaQuery` text COLLATE utf8mb4_unicode_ci,
  `vars` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_style_sheet`
--

LOCK TABLES `tl_style_sheet` WRITE;
/*!40000 ALTER TABLE `tl_style_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_style_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_theme`
--

DROP TABLE IF EXISTS `tl_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folders` blob,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vars` text COLLATE utf8mb4_unicode_ci,
  `easy_themes_internalTitle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_theme`
--

LOCK TABLES `tl_theme` WRITE;
/*!40000 ALTER TABLE `tl_theme` DISABLE KEYS */;
INSERT INTO `tl_theme` VALUES (1,1689504615,'standart','preset@lupcom.de',_binary 'a:2:{i:0;s:16:\"ƒ\rK #\Æ\îµ\îB¬\0\";i:1;s:16:\"ƒ\rK#\Æ\îµ\îB¬\0\";}',NULL,'','a:0:{}','');
/*!40000 ALTER TABLE `tl_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_trusted_device`
--

DROP TABLE IF EXISTS `tl_trusted_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_trusted_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `userClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `user_agent` longtext COLLATE utf8mb4_unicode_ci,
  `ua_family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os_family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_trusted_device`
--

LOCK TABLES `tl_trusted_device` WRITE;
/*!40000 ALTER TABLE `tl_trusted_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_trusted_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_undo`
--

DROP TABLE IF EXISTS `tl_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_undo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `fromTable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb4_unicode_ci,
  `affectedRows` smallint(5) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  `preview` mediumblob,
  `haste_data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_undo`
--

LOCK TABLES `tl_undo` WRITE;
/*!40000 ALTER TABLE `tl_undo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user`
--

DROP TABLE IF EXISTS `tl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backendTheme` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fullscreen` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploader` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `showHelp` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `thumbnails` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `useRTE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `useCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pwChange` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groups` blob,
  `inherit` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'group',
  `modules` blob,
  `themes` blob,
  `elements` blob,
  `fields` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `imageSizes` blob,
  `forms` blob,
  `formp` blob,
  `amg` blob,
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `session` blob,
  `dateAdded` int(10) unsigned NOT NULL DEFAULT '0',
  `secret` binary(128) DEFAULT NULL,
  `useTwoFactor` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `currentLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `loginAttempts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `locked` int(10) unsigned NOT NULL DEFAULT '0',
  `backupCodes` text COLLATE utf8mb4_unicode_ci,
  `trustedTokenVersion` int(10) unsigned NOT NULL DEFAULT '0',
  `faqs` blob,
  `faqp` blob,
  `et_enable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `et_activeModules` blob,
  `et_mode` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'contextmenu',
  `et_bemodRef` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user`
--

LOCK TABLES `tl_user` WRITE;
/*!40000 ALTER TABLE `tl_user` DISABLE KEYS */;
INSERT INTO `tl_user` VALUES (1,1691396529,'sunger','Steffen Unger','steffen.unger@lupcom.de','de','flexible','','DropZone','1','1','1','1','$2y$13$TigpkqVvWlDrkLA4q3mXKOx/7mxOlHW/guoKyIFlaj/U893P3UXG2','','1',NULL,'group',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}','','','',_binary 'a:6:{s:11:\"new_records\";a:1:{s:10:\"tl_content\";a:1:{i:0;s:1:\"1\";}}s:15:\"fieldset_states\";a:5:{s:11:\"tl_settings\";a:7:{s:14:\"backend_legend\";i:0;s:12:\"files_legend\";i:0;s:15:\"security_legend\";i:0;s:14:\"uploads_legend\";i:0;s:11:\"date_legend\";i:0;s:11:\"cron_legend\";i:0;s:12:\"chmod_legend\";i:1;}s:7:\"tl_user\";a:1:{s:15:\"password_legend\";i:1;}s:9:\"tl_layout\";a:1:{s:13:\"expert_legend\";i:1;}s:13:\"tl_user_group\";a:1:{s:12:\"alexf_legend\";i:1;}s:7:\"tl_page\";a:5:{s:14:\"website_legend\";i:0;s:13:\"global_legend\";i:0;s:16:\"protected_legend\";i:0;s:12:\"cache_legend\";i:0;s:12:\"chmod_legend\";i:0;}}s:12:\"tl_page_tree\";a:6:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;}s:15:\"checkbox_groups\";a:11:{s:18:\"cbc_modules_layout\";i:1;s:29:\"cbc_elements_include-elemente\";i:1;s:28:\"cbc_elements_inhaltselemente\";i:1;s:37:\"cbc_elements_standart-inhaltselemente\";i:1;s:17:\"cbc_alexf_tl_page\";i:0;s:17:\"cbc_alexf_tl_form\";i:1;s:23:\"cbc_alexf_tl_form_field\";i:1;s:18:\"cbc_modules_system\";i:1;s:18:\"cbc_alexf_tl_files\";i:1;s:19:\"cbc_alexf_tl_module\";i:1;s:29:\"cbc_et_activeModules_standart\";i:1;}s:23:\"tl_article_tl_page_tree\";a:6:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;}s:8:\"filetree\";a:1:{s:8:\"f36e1629\";i:1;}}',1689503355,NULL,'',1691393548,1691481617,0,0,NULL,0,_binary 'a:0:{}',_binary 'a:0:{}','1',_binary 'a:3:{i:0;s:10:\"1::modules\";i:1;s:9:\"1::layout\";i:2;s:13:\"1::imageSizes\";}','contextmenu','',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}'),(2,1689506852,'lupcom','lupcom','preset@lupcom.de','de','flexible','','DropZone','1','1','1','1','$2y$13$oIIgqIa9rg.3SJ2NMc4N.e6x9TaS.OKr/SCOX1GQj0pd1R5UUcsU.','1','1',NULL,'group',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}','','','',_binary 'a:4:{s:15:\"checkbox_groups\";a:1:{s:29:\"cbc_et_activeModules_standart\";i:1;}s:11:\"new_records\";a:1:{s:9:\"tl_layout\";a:1:{i:0;s:1:\"1\";}}s:12:\"tl_page_tree\";a:2:{i:1;i:1;i:2;i:0;}s:15:\"fieldset_states\";a:2:{s:9:\"tl_module\";a:1:{s:15:\"template_legend\";i:1;}s:7:\"tl_user\";a:2:{s:12:\"admin_legend\";i:1;s:15:\"password_legend\";i:1;}}}',1689504711,NULL,'',0,1689504770,0,0,NULL,0,_binary 'a:0:{}',_binary 'a:0:{}','1',_binary 'a:3:{i:0;s:10:\"1::modules\";i:1;s:9:\"1::layout\";i:2;s:13:\"1::imageSizes\";}','inject','',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}',_binary 'a:0:{}'),(3,1691481701,'redakteur','redakteur','redakteur@lupcom.de','de','flexible','','DropZone','1','1','1','1','$2y$13$RA2VOP3ARjjILF9q76A6ROE021hg5pl17r1J2nJbZd1kjuc6/xklm','1','',_binary 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:1:\"5\";i:3;s:1:\"7\";i:4;s:1:\"1\";}','group',NULL,NULL,NULL,NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:8:\"redirect\";i:2;s:7:\"forward\";}',NULL,_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,NULL,NULL,'','','',NULL,1689504870,NULL,'',0,0,0,0,NULL,0,NULL,NULL,'',NULL,'contextmenu','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_user_group`
--

DROP TABLE IF EXISTS `tl_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modules` blob,
  `themes` blob,
  `elements` blob,
  `fields` blob,
  `pagemounts` blob,
  `alpty` blob,
  `filemounts` blob,
  `fop` blob,
  `imageSizes` blob,
  `forms` blob,
  `formp` blob,
  `amg` blob,
  `alexf` blob,
  `disable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stop` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faqs` blob,
  `faqp` blob,
  `news` blob,
  `newp` blob,
  `newsfeeds` blob,
  `newsfeedp` blob,
  `calendars` blob,
  `calendarp` blob,
  `calendarfeeds` blob,
  `calendarfeedp` blob,
  `newsletters` blob,
  `newsletterp` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_user_group`
--

LOCK TABLES `tl_user_group` WRITE;
/*!40000 ALTER TABLE `tl_user_group` DISABLE KEYS */;
INSERT INTO `tl_user_group` VALUES (1,1691481664,'Seiten und Artikel',_binary 'a:2:{i:0;s:7:\"article\";i:1;s:4:\"page\";}',NULL,NULL,NULL,_binary 'a:1:{i:0;i:1;}',_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',NULL,_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,NULL,NULL,_binary 'a:84:{i:0;s:17:\"tl_article::title\";i:1;s:17:\"tl_article::alias\";i:2;s:18:\"tl_article::author\";i:3;s:20:\"tl_article::inColumn\";i:4;s:20:\"tl_article::keywords\";i:5;s:22:\"tl_article::showTeaser\";i:6;s:23:\"tl_article::teaserCssID\";i:7;s:18:\"tl_article::teaser\";i:8;s:21:\"tl_article::printable\";i:9;s:21:\"tl_article::customTpl\";i:10;s:21:\"tl_article::protected\";i:11;s:18:\"tl_article::groups\";i:12;s:18:\"tl_article::guests\";i:13;s:17:\"tl_article::cssID\";i:14;s:21:\"tl_article::published\";i:15;s:17:\"tl_article::start\";i:16;s:16:\"tl_article::stop\";i:17;s:14:\"tl_page::title\";i:18;s:13:\"tl_page::type\";i:19;s:14:\"tl_page::alias\";i:20;s:20:\"tl_page::requireItem\";i:21;s:18:\"tl_page::routePath\";i:22;s:22:\"tl_page::routePriority\";i:23;s:23:\"tl_page::routeConflicts\";i:24;s:18:\"tl_page::pageTitle\";i:25;s:17:\"tl_page::language\";i:26;s:15:\"tl_page::robots\";i:27;s:20:\"tl_page::description\";i:28;s:20:\"tl_page::serpPreview\";i:29;s:17:\"tl_page::redirect\";i:30;s:15:\"tl_page::jumpTo\";i:31;s:21:\"tl_page::redirectBack\";i:32;s:12:\"tl_page::url\";i:33;s:15:\"tl_page::target\";i:34;s:12:\"tl_page::dns\";i:35;s:20:\"tl_page::staticFiles\";i:36;s:22:\"tl_page::staticPlugins\";i:37;s:17:\"tl_page::fallback\";i:38;s:32:\"tl_page::disableLanguageRedirect\";i:39;s:16:\"tl_page::favicon\";i:40;s:18:\"tl_page::robotsTxt\";i:41;s:24:\"tl_page::maintenanceMode\";i:42;s:24:\"tl_page::mailerTransport\";i:43;s:24:\"tl_page::enableCanonical\";i:44;s:22:\"tl_page::canonicalLink\";i:45;s:28:\"tl_page::canonicalKeepParams\";i:46;s:19:\"tl_page::adminEmail\";i:47;s:19:\"tl_page::dateFormat\";i:48;s:19:\"tl_page::timeFormat\";i:49;s:20:\"tl_page::datimFormat\";i:50;s:29:\"tl_page::validAliasCharacters\";i:51;s:21:\"tl_page::useFolderUrl\";i:52;s:18:\"tl_page::urlPrefix\";i:53;s:18:\"tl_page::urlSuffix\";i:54;s:15:\"tl_page::useSSL\";i:55;s:20:\"tl_page::autoforward\";i:56;s:18:\"tl_page::protected\";i:57;s:15:\"tl_page::groups\";i:58;s:22:\"tl_page::includeLayout\";i:59;s:15:\"tl_page::layout\";i:60;s:22:\"tl_page::subpageLayout\";i:61;s:21:\"tl_page::includeCache\";i:62;s:14:\"tl_page::cache\";i:63;s:28:\"tl_page::alwaysLoadFromCache\";i:64;s:20:\"tl_page::clientCache\";i:65;s:21:\"tl_page::includeChmod\";i:66;s:14:\"tl_page::cuser\";i:67;s:15:\"tl_page::cgroup\";i:68;s:14:\"tl_page::chmod\";i:69;s:17:\"tl_page::noSearch\";i:70;s:17:\"tl_page::cssClass\";i:71;s:16:\"tl_page::sitemap\";i:72;s:13:\"tl_page::hide\";i:73;s:15:\"tl_page::guests\";i:74;s:17:\"tl_page::tabindex\";i:75;s:18:\"tl_page::accesskey\";i:76;s:18:\"tl_page::published\";i:77;s:14:\"tl_page::start\";i:78;s:13:\"tl_page::stop\";i:79;s:25:\"tl_page::enforceTwoFactor\";i:80;s:24:\"tl_page::twoFactorJumpTo\";i:81;s:25:\"tl_page::opengraphRootSRC\";i:82;s:20:\"tl_page::twitteruser\";i:83;s:23:\"tl_page::whatsappprefix\";}','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1691396278,'Dateiverwaltung - CONTENT',_binary 'a:1:{i:0;s:5:\"files\";}',NULL,NULL,NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',_binary 'a:1:{i:0;s:16:\"ƒ\rK #\Æ\îµ\îB¬\0\";}',_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,NULL,NULL,_binary 'a:8:{i:0;s:14:\"tl_files::name\";i:1;s:19:\"tl_files::protected\";i:2;s:21:\"tl_files::syncExclude\";i:3;s:24:\"tl_files::importantPartX\";i:4;s:24:\"tl_files::importantPartY\";i:5;s:28:\"tl_files::importantPartWidth\";i:6;s:29:\"tl_files::importantPartHeight\";i:7;s:14:\"tl_files::meta\";}','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1691396224,'Dateiverwaltung - TPL',_binary 'a:1:{i:0;s:5:\"files\";}',NULL,NULL,NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',_binary 'a:1:{i:0;s:16:\"ƒ\rK#\Æ\îµ\îB¬\0\";}',_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,NULL,NULL,_binary 'a:8:{i:0;s:14:\"tl_files::name\";i:1;s:19:\"tl_files::protected\";i:2;s:21:\"tl_files::syncExclude\";i:3;s:24:\"tl_files::importantPartX\";i:4;s:24:\"tl_files::importantPartY\";i:5;s:28:\"tl_files::importantPartWidth\";i:6;s:29:\"tl_files::importantPartHeight\";i:7;s:14:\"tl_files::meta\";}','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1691396156,'Formulare',_binary 'a:1:{i:0;s:4:\"form\";}',NULL,NULL,_binary 'a:17:{i:0;s:11:\"explanation\";i:1;s:4:\"html\";i:2;s:13:\"fieldsetStart\";i:3;s:12:\"fieldsetStop\";i:4;s:4:\"text\";i:5;s:8:\"password\";i:6;s:8:\"textarea\";i:7;s:6:\"select\";i:8;s:5:\"radio\";i:9;s:8:\"checkbox\";i:10;s:6:\"upload\";i:11;s:5:\"range\";i:12;s:6:\"hidden\";i:13;s:7:\"captcha\";i:14;s:6:\"submit\";i:15;s:18:\"rocksolid_antispam\";i:16;s:12:\"fineUploader\";}',NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',NULL,_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,_binary 'a:1:{i:0;s:1:\"1\";}',_binary 'a:1:{i:0;s:6:\"create\";}',NULL,_binary 'a:63:{i:0;s:14:\"tl_form::title\";i:1;s:14:\"tl_form::alias\";i:2;s:15:\"tl_form::jumpTo\";i:3;s:21:\"tl_form::sendViaEmail\";i:4;s:24:\"tl_form::mailerTransport\";i:5;s:18:\"tl_form::recipient\";i:6;s:16:\"tl_form::subject\";i:7;s:15:\"tl_form::format\";i:8;s:18:\"tl_form::skipEmpty\";i:9;s:20:\"tl_form::storeValues\";i:10;s:20:\"tl_form::targetTable\";i:11;s:18:\"tl_form::customTpl\";i:12;s:15:\"tl_form::method\";i:13;s:19:\"tl_form::novalidate\";i:14;s:19:\"tl_form::attributes\";i:15;s:15:\"tl_form::formID\";i:16;s:18:\"tl_form::allowTags\";i:17;s:20:\"tl_form::leadEnabled\";i:18;s:19:\"tl_form::leadMaster\";i:19;s:22:\"tl_form::leadMenuLabel\";i:20;s:18:\"tl_form::leadLabel\";i:21;s:24:\"tl_form::nc_notification\";i:22;s:19:\"tl_form_field::type\";i:23;s:20:\"tl_form_field::label\";i:24;s:19:\"tl_form_field::name\";i:25;s:19:\"tl_form_field::text\";i:26;s:19:\"tl_form_field::html\";i:27;s:22:\"tl_form_field::options\";i:28;s:24:\"tl_form_field::mandatory\";i:29;s:19:\"tl_form_field::rgxp\";i:30;s:26:\"tl_form_field::placeholder\";i:31;s:25:\"tl_form_field::customRgxp\";i:32;s:23:\"tl_form_field::errorMsg\";i:33;s:24:\"tl_form_field::minlength\";i:34;s:24:\"tl_form_field::maxlength\";i:35;s:28:\"tl_form_field::maxImageWidth\";i:36;s:29:\"tl_form_field::maxImageHeight\";i:37;s:21:\"tl_form_field::minval\";i:38;s:21:\"tl_form_field::maxval\";i:39;s:19:\"tl_form_field::step\";i:40;s:19:\"tl_form_field::size\";i:41;s:23:\"tl_form_field::multiple\";i:42;s:20:\"tl_form_field::mSize\";i:43;s:25:\"tl_form_field::extensions\";i:44;s:24:\"tl_form_field::storeFile\";i:45;s:27:\"tl_form_field::uploadFolder\";i:46;s:25:\"tl_form_field::useHomeDir\";i:47;s:29:\"tl_form_field::doNotOverwrite\";i:48;s:20:\"tl_form_field::class\";i:49;s:20:\"tl_form_field::value\";i:50;s:24:\"tl_form_field::accesskey\";i:51;s:23:\"tl_form_field::tabindex\";i:52;s:20:\"tl_form_field::fSize\";i:53;s:24:\"tl_form_field::customTpl\";i:54;s:21:\"tl_form_field::slabel\";i:55;s:26:\"tl_form_field::imageSubmit\";i:56;s:24:\"tl_form_field::singleSRC\";i:57;s:24:\"tl_form_field::invisible\";i:58;s:24:\"tl_form_field::fieldSize\";i:59;s:21:\"tl_form_field::jsType\";i:60;s:23:\"tl_form_field::chunking\";i:61;s:24:\"tl_form_field::chunkSize\";i:62;s:24:\"tl_form_field::leadStore\";}','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1691396369,'Backend und Frontend Module',_binary 'a:2:{i:0;s:4:\"news\";i:1;s:8:\"calendar\";}',_binary 'a:1:{i:0;s:7:\"modules\";}',_binary 'a:1:{i:0;s:6:\"module\";}',NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',NULL,_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,NULL,NULL,_binary 'a:86:{i:0;s:15:\"tl_module::name\";i:1;s:19:\"tl_module::headline\";i:2;s:15:\"tl_module::type\";i:3;s:22:\"tl_module::levelOffset\";i:4;s:20:\"tl_module::showLevel\";i:5;s:20:\"tl_module::hardLimit\";i:6;s:24:\"tl_module::showProtected\";i:7;s:21:\"tl_module::defineRoot\";i:8;s:19:\"tl_module::rootPage\";i:9;s:24:\"tl_module::navigationTpl\";i:10;s:20:\"tl_module::customTpl\";i:11;s:16:\"tl_module::pages\";i:12;s:21:\"tl_module::showHidden\";i:13;s:22:\"tl_module::customLabel\";i:14;s:20:\"tl_module::autologin\";i:15;s:17:\"tl_module::jumpTo\";i:16;s:23:\"tl_module::overviewPage\";i:17;s:23:\"tl_module::redirectBack\";i:18;s:19:\"tl_module::editable\";i:19;s:20:\"tl_module::memberTpl\";i:20;s:15:\"tl_module::form\";i:21;s:20:\"tl_module::queryType\";i:22;s:16:\"tl_module::fuzzy\";i:23;s:24:\"tl_module::contextLength\";i:24;s:27:\"tl_module::minKeywordLength\";i:25;s:18:\"tl_module::perPage\";i:26;s:21:\"tl_module::searchType\";i:27;s:20:\"tl_module::searchTpl\";i:28;s:19:\"tl_module::inColumn\";i:29;s:20:\"tl_module::skipFirst\";i:30;s:20:\"tl_module::loadFirst\";i:31;s:20:\"tl_module::singleSRC\";i:32;s:14:\"tl_module::url\";i:33;s:18:\"tl_module::imgSize\";i:34;s:21:\"tl_module::useCaption\";i:35;s:19:\"tl_module::fullsize\";i:36;s:19:\"tl_module::multiSRC\";i:37;s:15:\"tl_module::html\";i:38;s:20:\"tl_module::rss_cache\";i:39;s:19:\"tl_module::rss_feed\";i:40;s:23:\"tl_module::rss_template\";i:41;s:24:\"tl_module::numberOfItems\";i:42;s:25:\"tl_module::disableCaptcha\";i:43;s:21:\"tl_module::reg_groups\";i:44;s:25:\"tl_module::reg_allowLogin\";i:45;s:23:\"tl_module::reg_skipName\";i:46;s:20:\"tl_module::reg_close\";i:47;s:24:\"tl_module::reg_deleteDir\";i:48;s:24:\"tl_module::reg_assignDir\";i:49;s:22:\"tl_module::reg_homeDir\";i:50;s:23:\"tl_module::reg_activate\";i:51;s:21:\"tl_module::reg_jumpTo\";i:52;s:19:\"tl_module::reg_text\";i:53;s:23:\"tl_module::reg_password\";i:54;s:15:\"tl_module::data\";i:55;s:20:\"tl_module::protected\";i:56;s:17:\"tl_module::groups\";i:57;s:17:\"tl_module::guests\";i:58;s:16:\"tl_module::cssID\";i:59;s:35:\"tl_module::rootPageDependentModules\";i:60;s:15:\"tl_module::text\";i:61;s:24:\"tl_module::news_archives\";i:62;s:24:\"tl_module::news_featured\";i:63;s:29:\"tl_module::news_jumpToCurrent\";i:64;s:28:\"tl_module::news_readerModule\";i:65;s:26:\"tl_module::news_metaFields\";i:66;s:24:\"tl_module::news_template\";i:67;s:22:\"tl_module::news_format\";i:68;s:24:\"tl_module::news_startDay\";i:69;s:21:\"tl_module::news_order\";i:70;s:28:\"tl_module::news_showQuantity\";i:71;s:23:\"tl_module::cal_calendar\";i:72;s:21:\"tl_module::cal_noSpan\";i:73;s:26:\"tl_module::cal_hideRunning\";i:74;s:23:\"tl_module::cal_startDay\";i:75;s:21:\"tl_module::cal_format\";i:76;s:28:\"tl_module::cal_ignoreDynamic\";i:77;s:20:\"tl_module::cal_order\";i:78;s:27:\"tl_module::cal_readerModule\";i:79;s:20:\"tl_module::cal_limit\";i:80;s:23:\"tl_module::cal_template\";i:81;s:24:\"tl_module::cal_ctemplate\";i:82;s:27:\"tl_module::cal_showQuantity\";i:83;s:23:\"tl_module::cal_featured\";i:84;s:26:\"tl_module::nc_notification\";i:85;s:37:\"tl_module::nc_activation_notification\";}','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1691481649,'Elemente',NULL,NULL,_binary 'a:4:{i:0;s:4:\"html\";i:1;s:6:\"module\";i:2;s:17:\"standart_headline\";i:3;s:22:\"standart_textabschnitt\";}',NULL,NULL,_binary 'a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}',NULL,_binary 'a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}',NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tl_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_version`
--

DROP TABLE IF EXISTS `tl_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `version` smallint(5) unsigned NOT NULL DEFAULT '1',
  `fromTable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `editUrl` text COLLATE utf8mb4_unicode_ci,
  `active` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` mediumblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_fromtable_version` (`pid`,`fromTable`,`version`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_version`
--

LOCK TABLES `tl_version` WRITE;
/*!40000 ALTER TABLE `tl_version` DISABLE KEYS */;
INSERT INTO `tl_version` VALUES (1,7,1691481649,1,'tl_user_group',1,'sunger','Elemente','contao?do=group&rt=628bde859.qNaQY6Jd0kuNCk2V8vQBabD-Uqj8NpRHSW--yP1HnZo.0bTDC8c4owrkQBv4lJZiDYWHMcTIReMlEVnWksU16NX6hPhSxTnrc8xcFA&ref=ZFjdV6Gf&act=edit&id=7','1',_binary 'a:31:{s:2:\"id\";i:7;s:6:\"tstamp\";i:1691481649;s:4:\"name\";s:8:\"Elemente\";s:7:\"modules\";N;s:6:\"themes\";N;s:8:\"elements\";s:101:\"a:4:{i:0;s:4:\"html\";i:1;s:6:\"module\";i:2;s:17:\"standart_headline\";i:3;s:22:\"standart_textabschnitt\";}\";s:6:\"fields\";N;s:10:\"pagemounts\";N;s:5:\"alpty\";s:61:\"a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}\";s:10:\"filemounts\";N;s:3:\"fop\";s:45:\"a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}\";s:10:\"imageSizes\";N;s:5:\"forms\";N;s:5:\"formp\";N;s:3:\"amg\";N;s:5:\"alexf\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:4:\"faqs\";N;s:4:\"faqp\";N;s:4:\"news\";N;s:4:\"newp\";N;s:9:\"newsfeeds\";N;s:9:\"newsfeedp\";N;s:9:\"calendars\";N;s:9:\"calendarp\";N;s:13:\"calendarfeeds\";N;s:13:\"calendarfeedp\";N;s:11:\"newsletters\";N;s:11:\"newsletterp\";N;}'),(2,1,1691481652,1,'tl_user_group',0,NULL,'Seiten und Artikel','contao?do=group&act=edit&id=1&rt=8378960d04cb95447e32358f6.2DAMdkczbxLlxJEEgG4_rVQqgB1YJj8LY9x5_gb8-Ls.oVJfHiJWHlOMjsdp5gxcyWFT43FsVUhpO-oRpD6OjfSKYmRHIFdWKqSSyA&ref=SSC5aUUY','',_binary 'a:31:{s:2:\"id\";i:1;s:6:\"tstamp\";i:1691396046;s:4:\"name\";s:18:\"Seiten und Artikel\";s:7:\"modules\";s:39:\"a:2:{i:0;s:7:\"article\";i:1;s:4:\"page\";}\";s:6:\"themes\";N;s:8:\"elements\";s:135:\"a:6:{i:0;s:8:\"headline\";i:1;s:4:\"text\";i:2;s:4:\"html\";i:3;s:6:\"module\";i:4;s:17:\"standart_headline\";i:5;s:22:\"standart_textabschnitt\";}\";s:6:\"fields\";N;s:10:\"pagemounts\";s:14:\"a:1:{i:0;i:1;}\";s:5:\"alpty\";s:61:\"a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}\";s:10:\"filemounts\";N;s:3:\"fop\";s:45:\"a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}\";s:10:\"imageSizes\";N;s:5:\"forms\";N;s:5:\"formp\";N;s:3:\"amg\";N;s:5:\"alexf\";s:2679:\"a:84:{i:0;s:17:\"tl_article::title\";i:1;s:17:\"tl_article::alias\";i:2;s:18:\"tl_article::author\";i:3;s:20:\"tl_article::inColumn\";i:4;s:20:\"tl_article::keywords\";i:5;s:22:\"tl_article::showTeaser\";i:6;s:23:\"tl_article::teaserCssID\";i:7;s:18:\"tl_article::teaser\";i:8;s:21:\"tl_article::printable\";i:9;s:21:\"tl_article::customTpl\";i:10;s:21:\"tl_article::protected\";i:11;s:18:\"tl_article::groups\";i:12;s:18:\"tl_article::guests\";i:13;s:17:\"tl_article::cssID\";i:14;s:21:\"tl_article::published\";i:15;s:17:\"tl_article::start\";i:16;s:16:\"tl_article::stop\";i:17;s:14:\"tl_page::title\";i:18;s:13:\"tl_page::type\";i:19;s:14:\"tl_page::alias\";i:20;s:20:\"tl_page::requireItem\";i:21;s:18:\"tl_page::routePath\";i:22;s:22:\"tl_page::routePriority\";i:23;s:23:\"tl_page::routeConflicts\";i:24;s:18:\"tl_page::pageTitle\";i:25;s:17:\"tl_page::language\";i:26;s:15:\"tl_page::robots\";i:27;s:20:\"tl_page::description\";i:28;s:20:\"tl_page::serpPreview\";i:29;s:17:\"tl_page::redirect\";i:30;s:15:\"tl_page::jumpTo\";i:31;s:21:\"tl_page::redirectBack\";i:32;s:12:\"tl_page::url\";i:33;s:15:\"tl_page::target\";i:34;s:12:\"tl_page::dns\";i:35;s:20:\"tl_page::staticFiles\";i:36;s:22:\"tl_page::staticPlugins\";i:37;s:17:\"tl_page::fallback\";i:38;s:32:\"tl_page::disableLanguageRedirect\";i:39;s:16:\"tl_page::favicon\";i:40;s:18:\"tl_page::robotsTxt\";i:41;s:24:\"tl_page::maintenanceMode\";i:42;s:24:\"tl_page::mailerTransport\";i:43;s:24:\"tl_page::enableCanonical\";i:44;s:22:\"tl_page::canonicalLink\";i:45;s:28:\"tl_page::canonicalKeepParams\";i:46;s:19:\"tl_page::adminEmail\";i:47;s:19:\"tl_page::dateFormat\";i:48;s:19:\"tl_page::timeFormat\";i:49;s:20:\"tl_page::datimFormat\";i:50;s:29:\"tl_page::validAliasCharacters\";i:51;s:21:\"tl_page::useFolderUrl\";i:52;s:18:\"tl_page::urlPrefix\";i:53;s:18:\"tl_page::urlSuffix\";i:54;s:15:\"tl_page::useSSL\";i:55;s:20:\"tl_page::autoforward\";i:56;s:18:\"tl_page::protected\";i:57;s:15:\"tl_page::groups\";i:58;s:22:\"tl_page::includeLayout\";i:59;s:15:\"tl_page::layout\";i:60;s:22:\"tl_page::subpageLayout\";i:61;s:21:\"tl_page::includeCache\";i:62;s:14:\"tl_page::cache\";i:63;s:28:\"tl_page::alwaysLoadFromCache\";i:64;s:20:\"tl_page::clientCache\";i:65;s:21:\"tl_page::includeChmod\";i:66;s:14:\"tl_page::cuser\";i:67;s:15:\"tl_page::cgroup\";i:68;s:14:\"tl_page::chmod\";i:69;s:17:\"tl_page::noSearch\";i:70;s:17:\"tl_page::cssClass\";i:71;s:16:\"tl_page::sitemap\";i:72;s:13:\"tl_page::hide\";i:73;s:15:\"tl_page::guests\";i:74;s:17:\"tl_page::tabindex\";i:75;s:18:\"tl_page::accesskey\";i:76;s:18:\"tl_page::published\";i:77;s:14:\"tl_page::start\";i:78;s:13:\"tl_page::stop\";i:79;s:25:\"tl_page::enforceTwoFactor\";i:80;s:24:\"tl_page::twoFactorJumpTo\";i:81;s:25:\"tl_page::opengraphRootSRC\";i:82;s:20:\"tl_page::twitteruser\";i:83;s:23:\"tl_page::whatsappprefix\";}\";s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:4:\"faqs\";N;s:4:\"faqp\";N;s:4:\"news\";N;s:4:\"newp\";N;s:9:\"newsfeeds\";N;s:9:\"newsfeedp\";N;s:9:\"calendars\";N;s:9:\"calendarp\";N;s:13:\"calendarfeeds\";N;s:13:\"calendarfeedp\";N;s:11:\"newsletters\";N;s:11:\"newsletterp\";N;}'),(3,1,1691481664,2,'tl_user_group',1,'sunger','Seiten und Artikel','contao?do=group&act=edit&id=1&rt=8378960d04cb95447e32358f6.2DAMdkczbxLlxJEEgG4_rVQqgB1YJj8LY9x5_gb8-Ls.oVJfHiJWHlOMjsdp5gxcyWFT43FsVUhpO-oRpD6OjfSKYmRHIFdWKqSSyA&ref=SSC5aUUY','1',_binary 'a:31:{s:2:\"id\";i:1;s:6:\"tstamp\";i:1691481664;s:4:\"name\";s:18:\"Seiten und Artikel\";s:7:\"modules\";s:39:\"a:2:{i:0;s:7:\"article\";i:1;s:4:\"page\";}\";s:6:\"themes\";N;s:8:\"elements\";N;s:6:\"fields\";N;s:10:\"pagemounts\";s:14:\"a:1:{i:0;i:1;}\";s:5:\"alpty\";s:61:\"a:3:{i:0;s:7:\"regular\";i:1;s:7:\"forward\";i:2;s:8:\"redirect\";}\";s:10:\"filemounts\";N;s:3:\"fop\";s:45:\"a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}\";s:10:\"imageSizes\";N;s:5:\"forms\";N;s:5:\"formp\";N;s:3:\"amg\";N;s:5:\"alexf\";s:2679:\"a:84:{i:0;s:17:\"tl_article::title\";i:1;s:17:\"tl_article::alias\";i:2;s:18:\"tl_article::author\";i:3;s:20:\"tl_article::inColumn\";i:4;s:20:\"tl_article::keywords\";i:5;s:22:\"tl_article::showTeaser\";i:6;s:23:\"tl_article::teaserCssID\";i:7;s:18:\"tl_article::teaser\";i:8;s:21:\"tl_article::printable\";i:9;s:21:\"tl_article::customTpl\";i:10;s:21:\"tl_article::protected\";i:11;s:18:\"tl_article::groups\";i:12;s:18:\"tl_article::guests\";i:13;s:17:\"tl_article::cssID\";i:14;s:21:\"tl_article::published\";i:15;s:17:\"tl_article::start\";i:16;s:16:\"tl_article::stop\";i:17;s:14:\"tl_page::title\";i:18;s:13:\"tl_page::type\";i:19;s:14:\"tl_page::alias\";i:20;s:20:\"tl_page::requireItem\";i:21;s:18:\"tl_page::routePath\";i:22;s:22:\"tl_page::routePriority\";i:23;s:23:\"tl_page::routeConflicts\";i:24;s:18:\"tl_page::pageTitle\";i:25;s:17:\"tl_page::language\";i:26;s:15:\"tl_page::robots\";i:27;s:20:\"tl_page::description\";i:28;s:20:\"tl_page::serpPreview\";i:29;s:17:\"tl_page::redirect\";i:30;s:15:\"tl_page::jumpTo\";i:31;s:21:\"tl_page::redirectBack\";i:32;s:12:\"tl_page::url\";i:33;s:15:\"tl_page::target\";i:34;s:12:\"tl_page::dns\";i:35;s:20:\"tl_page::staticFiles\";i:36;s:22:\"tl_page::staticPlugins\";i:37;s:17:\"tl_page::fallback\";i:38;s:32:\"tl_page::disableLanguageRedirect\";i:39;s:16:\"tl_page::favicon\";i:40;s:18:\"tl_page::robotsTxt\";i:41;s:24:\"tl_page::maintenanceMode\";i:42;s:24:\"tl_page::mailerTransport\";i:43;s:24:\"tl_page::enableCanonical\";i:44;s:22:\"tl_page::canonicalLink\";i:45;s:28:\"tl_page::canonicalKeepParams\";i:46;s:19:\"tl_page::adminEmail\";i:47;s:19:\"tl_page::dateFormat\";i:48;s:19:\"tl_page::timeFormat\";i:49;s:20:\"tl_page::datimFormat\";i:50;s:29:\"tl_page::validAliasCharacters\";i:51;s:21:\"tl_page::useFolderUrl\";i:52;s:18:\"tl_page::urlPrefix\";i:53;s:18:\"tl_page::urlSuffix\";i:54;s:15:\"tl_page::useSSL\";i:55;s:20:\"tl_page::autoforward\";i:56;s:18:\"tl_page::protected\";i:57;s:15:\"tl_page::groups\";i:58;s:22:\"tl_page::includeLayout\";i:59;s:15:\"tl_page::layout\";i:60;s:22:\"tl_page::subpageLayout\";i:61;s:21:\"tl_page::includeCache\";i:62;s:14:\"tl_page::cache\";i:63;s:28:\"tl_page::alwaysLoadFromCache\";i:64;s:20:\"tl_page::clientCache\";i:65;s:21:\"tl_page::includeChmod\";i:66;s:14:\"tl_page::cuser\";i:67;s:15:\"tl_page::cgroup\";i:68;s:14:\"tl_page::chmod\";i:69;s:17:\"tl_page::noSearch\";i:70;s:17:\"tl_page::cssClass\";i:71;s:16:\"tl_page::sitemap\";i:72;s:13:\"tl_page::hide\";i:73;s:15:\"tl_page::guests\";i:74;s:17:\"tl_page::tabindex\";i:75;s:18:\"tl_page::accesskey\";i:76;s:18:\"tl_page::published\";i:77;s:14:\"tl_page::start\";i:78;s:13:\"tl_page::stop\";i:79;s:25:\"tl_page::enforceTwoFactor\";i:80;s:24:\"tl_page::twoFactorJumpTo\";i:81;s:25:\"tl_page::opengraphRootSRC\";i:82;s:20:\"tl_page::twitteruser\";i:83;s:23:\"tl_page::whatsappprefix\";}\";s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:4:\"faqs\";N;s:4:\"faqp\";N;s:4:\"news\";N;s:4:\"newp\";N;s:9:\"newsfeeds\";N;s:9:\"newsfeedp\";N;s:9:\"calendars\";N;s:9:\"calendarp\";N;s:13:\"calendarfeeds\";N;s:13:\"calendarfeedp\";N;s:11:\"newsletters\";N;s:11:\"newsletterp\";N;}'),(4,2,1691481672,1,'tl_user',0,NULL,'lupcom','contao?do=user&act=edit&id=2&rt=5357b.ZPKtyA2bo7aKThE4keSJe8WQH7rgvdzKtwa6o4CC0iw.HZD-oGj-0vfjBEdV94bqH_DpfNbUzquo7zDS-bjwp2M2oMX5av-ajssYSA&ref=s40aYv4w','1',_binary 'a:59:{s:2:\"id\";i:2;s:6:\"tstamp\";i:1689506852;s:8:\"username\";s:6:\"lupcom\";s:4:\"name\";s:6:\"lupcom\";s:5:\"email\";s:16:\"preset@lupcom.de\";s:8:\"language\";s:2:\"de\";s:12:\"backendTheme\";s:8:\"flexible\";s:10:\"fullscreen\";s:0:\"\";s:8:\"uploader\";s:8:\"DropZone\";s:8:\"showHelp\";s:1:\"1\";s:10:\"thumbnails\";s:1:\"1\";s:6:\"useRTE\";s:1:\"1\";s:5:\"useCE\";s:1:\"1\";s:8:\"password\";s:60:\"$2y$13$oIIgqIa9rg.3SJ2NMc4N.e6x9TaS.OKr/SCOX1GQj0pd1R5UUcsU.\";s:8:\"pwChange\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";s:6:\"groups\";N;s:7:\"inherit\";s:5:\"group\";s:7:\"modules\";s:6:\"a:0:{}\";s:6:\"themes\";s:6:\"a:0:{}\";s:8:\"elements\";s:6:\"a:0:{}\";s:6:\"fields\";s:6:\"a:0:{}\";s:10:\"pagemounts\";s:6:\"a:0:{}\";s:5:\"alpty\";s:6:\"a:0:{}\";s:10:\"filemounts\";s:6:\"a:0:{}\";s:3:\"fop\";s:6:\"a:0:{}\";s:10:\"imageSizes\";s:6:\"a:0:{}\";s:5:\"forms\";s:6:\"a:0:{}\";s:5:\"formp\";s:6:\"a:0:{}\";s:3:\"amg\";s:6:\"a:0:{}\";s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:7:\"session\";s:326:\"a:4:{s:15:\"checkbox_groups\";a:1:{s:29:\"cbc_et_activeModules_standart\";i:1;}s:11:\"new_records\";a:1:{s:9:\"tl_layout\";a:1:{i:0;s:1:\"1\";}}s:12:\"tl_page_tree\";a:2:{i:1;i:1;i:2;i:0;}s:15:\"fieldset_states\";a:2:{s:9:\"tl_module\";a:1:{s:15:\"template_legend\";i:1;}s:7:\"tl_user\";a:2:{s:12:\"admin_legend\";i:1;s:15:\"password_legend\";i:1;}}}\";s:9:\"dateAdded\";i:1689504711;s:6:\"secret\";N;s:12:\"useTwoFactor\";s:0:\"\";s:9:\"lastLogin\";i:0;s:12:\"currentLogin\";i:1689504770;s:13:\"loginAttempts\";i:0;s:6:\"locked\";i:0;s:11:\"backupCodes\";N;s:19:\"trustedTokenVersion\";i:0;s:4:\"faqs\";s:6:\"a:0:{}\";s:4:\"faqp\";s:6:\"a:0:{}\";s:9:\"et_enable\";s:1:\"1\";s:16:\"et_activeModules\";s:73:\"a:3:{i:0;s:10:\"1::modules\";i:1;s:9:\"1::layout\";i:2;s:13:\"1::imageSizes\";}\";s:7:\"et_mode\";s:6:\"inject\";s:11:\"et_bemodRef\";s:0:\"\";s:4:\"news\";s:6:\"a:0:{}\";s:4:\"newp\";s:6:\"a:0:{}\";s:9:\"newsfeeds\";s:6:\"a:0:{}\";s:9:\"newsfeedp\";s:6:\"a:0:{}\";s:9:\"calendars\";s:6:\"a:0:{}\";s:9:\"calendarp\";s:6:\"a:0:{}\";s:13:\"calendarfeeds\";s:6:\"a:0:{}\";s:13:\"calendarfeedp\";s:6:\"a:0:{}\";s:11:\"newsletters\";s:6:\"a:0:{}\";s:11:\"newsletterp\";s:6:\"a:0:{}\";}'),(5,3,1691481693,1,'tl_user',0,NULL,'redakteur','contao?do=user&act=edit&id=3&rt=99f7554059f8c7a2f7.sVcTlSxBABpVH_8_LgFda-XVurfkx17uMuL0EogVq8U.yDVA_UkkcVs8ValSSGM-D9Cs2dvQtCmMatScSLBn3orjBXukSyU5IhRJpg&ref=wFIfhrZx','',_binary 'a:59:{s:2:\"id\";i:3;s:6:\"tstamp\";i:1691396478;s:8:\"username\";s:9:\"redakteur\";s:4:\"name\";s:9:\"redakteur\";s:5:\"email\";s:19:\"redakteur@lupcom.de\";s:8:\"language\";s:2:\"de\";s:12:\"backendTheme\";s:8:\"flexible\";s:10:\"fullscreen\";s:0:\"\";s:8:\"uploader\";s:8:\"DropZone\";s:8:\"showHelp\";s:1:\"1\";s:10:\"thumbnails\";s:1:\"1\";s:6:\"useRTE\";s:1:\"1\";s:5:\"useCE\";s:1:\"1\";s:8:\"password\";s:60:\"$2y$13$RA2VOP3ARjjILF9q76A6ROE021hg5pl17r1J2nJbZd1kjuc6/xklm\";s:8:\"pwChange\";s:1:\"1\";s:5:\"admin\";s:0:\"\";s:6:\"groups\";s:54:\"a:4:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:1:\"5\";i:3;s:1:\"1\";}\";s:7:\"inherit\";s:5:\"group\";s:7:\"modules\";N;s:6:\"themes\";N;s:8:\"elements\";N;s:6:\"fields\";N;s:10:\"pagemounts\";N;s:5:\"alpty\";s:61:\"a:3:{i:0;s:7:\"regular\";i:1;s:8:\"redirect\";i:2;s:7:\"forward\";}\";s:10:\"filemounts\";N;s:3:\"fop\";s:45:\"a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}\";s:10:\"imageSizes\";N;s:5:\"forms\";N;s:5:\"formp\";N;s:3:\"amg\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:7:\"session\";N;s:9:\"dateAdded\";i:1689504870;s:6:\"secret\";N;s:12:\"useTwoFactor\";s:0:\"\";s:9:\"lastLogin\";i:0;s:12:\"currentLogin\";i:0;s:13:\"loginAttempts\";i:0;s:6:\"locked\";i:0;s:11:\"backupCodes\";N;s:19:\"trustedTokenVersion\";i:0;s:4:\"faqs\";N;s:4:\"faqp\";N;s:9:\"et_enable\";s:0:\"\";s:16:\"et_activeModules\";N;s:7:\"et_mode\";s:11:\"contextmenu\";s:11:\"et_bemodRef\";s:0:\"\";s:4:\"news\";N;s:4:\"newp\";N;s:9:\"newsfeeds\";N;s:9:\"newsfeedp\";N;s:9:\"calendars\";N;s:9:\"calendarp\";N;s:13:\"calendarfeeds\";N;s:13:\"calendarfeedp\";N;s:11:\"newsletters\";N;s:11:\"newsletterp\";N;}'),(6,3,1691481701,2,'tl_user',1,'sunger','redakteur','contao?do=user&act=edit&id=3&rt=99f7554059f8c7a2f7.sVcTlSxBABpVH_8_LgFda-XVurfkx17uMuL0EogVq8U.yDVA_UkkcVs8ValSSGM-D9Cs2dvQtCmMatScSLBn3orjBXukSyU5IhRJpg&ref=wFIfhrZx','1',_binary 'a:59:{s:2:\"id\";i:3;s:6:\"tstamp\";i:1691481701;s:8:\"username\";s:9:\"redakteur\";s:4:\"name\";s:9:\"redakteur\";s:5:\"email\";s:19:\"redakteur@lupcom.de\";s:8:\"language\";s:2:\"de\";s:12:\"backendTheme\";s:8:\"flexible\";s:10:\"fullscreen\";s:0:\"\";s:8:\"uploader\";s:8:\"DropZone\";s:8:\"showHelp\";s:1:\"1\";s:10:\"thumbnails\";s:1:\"1\";s:6:\"useRTE\";s:1:\"1\";s:5:\"useCE\";s:1:\"1\";s:8:\"password\";s:60:\"$2y$13$RA2VOP3ARjjILF9q76A6ROE021hg5pl17r1J2nJbZd1kjuc6/xklm\";s:8:\"pwChange\";s:1:\"1\";s:5:\"admin\";s:0:\"\";s:6:\"groups\";s:66:\"a:5:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:1:\"5\";i:3;s:1:\"7\";i:4;s:1:\"1\";}\";s:7:\"inherit\";s:5:\"group\";s:7:\"modules\";N;s:6:\"themes\";N;s:8:\"elements\";N;s:6:\"fields\";N;s:10:\"pagemounts\";N;s:5:\"alpty\";s:61:\"a:3:{i:0;s:7:\"regular\";i:1;s:8:\"redirect\";i:2;s:7:\"forward\";}\";s:10:\"filemounts\";N;s:3:\"fop\";s:45:\"a:3:{i:0;s:2:\"f1\";i:1;s:2:\"f2\";i:2;s:2:\"f3\";}\";s:10:\"imageSizes\";N;s:5:\"forms\";N;s:5:\"formp\";N;s:3:\"amg\";N;s:7:\"disable\";s:0:\"\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:7:\"session\";N;s:9:\"dateAdded\";i:1689504870;s:6:\"secret\";N;s:12:\"useTwoFactor\";s:0:\"\";s:9:\"lastLogin\";i:0;s:12:\"currentLogin\";i:0;s:13:\"loginAttempts\";i:0;s:6:\"locked\";i:0;s:11:\"backupCodes\";N;s:19:\"trustedTokenVersion\";i:0;s:4:\"faqs\";N;s:4:\"faqp\";N;s:9:\"et_enable\";s:0:\"\";s:16:\"et_activeModules\";N;s:7:\"et_mode\";s:11:\"contextmenu\";s:11:\"et_bemodRef\";s:0:\"\";s:4:\"news\";N;s:4:\"newp\";N;s:9:\"newsfeeds\";N;s:9:\"newsfeedp\";N;s:9:\"calendars\";N;s:9:\"calendarp\";N;s:13:\"calendarfeeds\";N;s:13:\"calendarfeedp\";N;s:11:\"newsletters\";N;s:11:\"newsletterp\";N;}'),(7,1,1691482012,1,'tl_layout',0,NULL,'standart','contao?do=themes&id=1&table=tl_layout&act=edit&rt=280d3288824e73219d6691c.tkxqblLCAnZD8N7dqSSNcZgp6y8M1m-YDpgTgDe44hc.zy45Bjenczcquoiwz0buFa1QiEM4pRj6Vq572g_Kl1jkHgJfNaY7TgKmhw&ref=WbbBNKg_','1',_binary 'a:47:{s:2:\"id\";i:1;s:3:\"pid\";i:1;s:6:\"tstamp\";i:1689505174;s:4:\"name\";s:8:\"standart\";s:4:\"rows\";s:3:\"3rw\";s:12:\"headerHeight\";s:43:\"a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}\";s:12:\"footerHeight\";s:43:\"a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}\";s:4:\"cols\";s:3:\"1cl\";s:9:\"widthLeft\";s:43:\"a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}\";s:10:\"widthRight\";s:43:\"a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}\";s:8:\"sections\";s:112:\"a:1:{i:0;a:4:{s:5:\"title\";s:0:\"\";s:2:\"id\";s:0:\"\";s:8:\"template\";s:13:\"block_section\";s:8:\"position\";s:3:\"top\";}}\";s:9:\"framework\";s:6:\"a:0:{}\";s:10:\"stylesheet\";N;s:8:\"external\";N;s:12:\"loadingOrder\";s:14:\"external_first\";s:14:\"combineScripts\";s:1:\"1\";s:7:\"modules\";s:220:\"a:3:{i:0;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:6:\"header\";s:6:\"enable\";s:1:\"1\";}i:1;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:4:\"main\";s:6:\"enable\";s:1:\"1\";}i:2;a:3:{s:3:\"mod\";s:1:\"0\";s:3:\"col\";s:6:\"footer\";s:6:\"enable\";s:1:\"1\";}}\";s:8:\"template\";s:0:\"\";s:12:\"minifyMarkup\";s:1:\"1\";s:12:\"lightboxSize\";s:39:\"a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}\";s:21:\"defaultImageDensities\";s:0:\"\";s:8:\"viewport\";s:0:\"\";s:8:\"titleTag\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:6:\"onload\";s:0:\"\";s:4:\"head\";N;s:9:\"addJQuery\";s:0:\"\";s:6:\"jquery\";N;s:11:\"addMooTools\";s:0:\"\";s:8:\"mootools\";N;s:9:\"analytics\";N;s:10:\"externalJs\";N;s:7:\"scripts\";N;s:6:\"script\";N;s:6:\"static\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"align\";s:6:\"center\";s:15:\"externalCSSHead\";N;s:15:\"orderExtCSSHead\";N;s:11:\"externalCSS\";N;s:11:\"orderExtCSS\";N;s:16:\"externalLupcomJS\";N;s:16:\"orderExtLupcomJS\";N;s:14:\"externalJsHead\";N;s:14:\"orderExtJsHead\";N;s:9:\"newsfeeds\";N;s:13:\"calendarfeeds\";N;}'),(8,1,1691482031,1,'tl_page',0,NULL,'root','contao?do=page&act=edit&id=1&rt=eef.4jAIalbhZ1KgWLTN9H78qeTck6A1Ao7DJdHerXdRIMo.m1JbAjOEFhPJEuKgkhyfzdGl8MwBcfmhfee2908jVYWwYmBbMYVeauEO7Q&ref=t3Hn63u5','',_binary 'a:68:{s:2:\"id\";i:1;s:3:\"pid\";i:0;s:7:\"sorting\";i:128;s:6:\"tstamp\";i:1689505201;s:5:\"title\";s:4:\"root\";s:4:\"type\";s:4:\"root\";s:5:\"alias\";s:11:\"preset-root\";s:11:\"requireItem\";s:0:\"\";s:13:\"routePriority\";i:0;s:9:\"pageTitle\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:6:\"robots\";s:0:\"\";s:11:\"description\";N;s:8:\"redirect\";s:9:\"permanent\";s:6:\"jumpTo\";i:0;s:12:\"redirectBack\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:3:\"dns\";s:0:\"\";s:11:\"staticFiles\";s:0:\"\";s:13:\"staticPlugins\";s:0:\"\";s:8:\"fallback\";s:1:\"1\";s:23:\"disableLanguageRedirect\";s:0:\"\";s:7:\"favicon\";N;s:9:\"robotsTxt\";N;s:15:\"maintenanceMode\";s:0:\"\";s:15:\"mailerTransport\";s:0:\"\";s:15:\"enableCanonical\";s:1:\"1\";s:13:\"canonicalLink\";s:0:\"\";s:19:\"canonicalKeepParams\";s:0:\"\";s:10:\"adminEmail\";s:0:\"\";s:10:\"dateFormat\";s:0:\"\";s:10:\"timeFormat\";s:0:\"\";s:11:\"datimFormat\";s:0:\"\";s:20:\"validAliasCharacters\";s:0:\"\";s:12:\"useFolderUrl\";s:0:\"\";s:9:\"urlPrefix\";s:0:\"\";s:9:\"urlSuffix\";s:0:\"\";s:6:\"useSSL\";s:1:\"1\";s:11:\"autoforward\";s:0:\"\";s:9:\"protected\";s:0:\"\";s:6:\"groups\";N;s:13:\"includeLayout\";s:1:\"1\";s:6:\"layout\";i:1;s:13:\"subpageLayout\";i:0;s:12:\"includeCache\";s:0:\"\";s:5:\"cache\";i:0;s:19:\"alwaysLoadFromCache\";s:0:\"\";s:11:\"clientCache\";i:0;s:12:\"includeChmod\";s:0:\"\";s:5:\"cuser\";i:0;s:6:\"cgroup\";i:1;s:5:\"chmod\";s:165:\"a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}\";s:8:\"noSearch\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:7:\"sitemap\";s:0:\"\";s:4:\"hide\";s:0:\"\";s:6:\"guests\";s:0:\"\";s:8:\"tabindex\";i:0;s:9:\"accesskey\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:16:\"enforceTwoFactor\";s:0:\"\";s:15:\"twoFactorJumpTo\";i:0;s:16:\"opengraphRootSRC\";N;s:11:\"twitteruser\";s:0:\"\";s:14:\"whatsappprefix\";s:0:\"\";}'),(9,1,1691482430,2,'tl_page',1,'sunger','root','contao?do=page&act=edit&id=1&rt=c1ae14a3.x1kdE7xLT4FVNRiyMy4V0pmyUtVzyA6Cg594NfuDcis.vjtOe9kuPsA8f07fVUx2tqzLMblHu3ng26kQb8PxB2SVC3Ui2y92uRRjQQ&ref=stefJ-by','1',_binary 'a:68:{s:2:\"id\";i:1;s:3:\"pid\";i:0;s:7:\"sorting\";i:128;s:6:\"tstamp\";i:1691482430;s:5:\"title\";s:4:\"root\";s:4:\"type\";s:4:\"root\";s:5:\"alias\";s:11:\"preset-root\";s:11:\"requireItem\";s:0:\"\";s:13:\"routePriority\";i:0;s:9:\"pageTitle\";s:0:\"\";s:8:\"language\";s:2:\"de\";s:6:\"robots\";s:0:\"\";s:11:\"description\";N;s:8:\"redirect\";s:9:\"permanent\";s:6:\"jumpTo\";i:0;s:12:\"redirectBack\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:3:\"dns\";s:0:\"\";s:11:\"staticFiles\";s:0:\"\";s:13:\"staticPlugins\";s:0:\"\";s:8:\"fallback\";s:1:\"1\";s:23:\"disableLanguageRedirect\";s:0:\"\";s:7:\"favicon\";N;s:9:\"robotsTxt\";N;s:15:\"maintenanceMode\";s:0:\"\";s:15:\"mailerTransport\";s:0:\"\";s:15:\"enableCanonical\";s:1:\"1\";s:13:\"canonicalLink\";s:0:\"\";s:19:\"canonicalKeepParams\";s:0:\"\";s:10:\"adminEmail\";s:0:\"\";s:10:\"dateFormat\";s:0:\"\";s:10:\"timeFormat\";s:0:\"\";s:11:\"datimFormat\";s:0:\"\";s:20:\"validAliasCharacters\";s:6:\"0-9a-z\";s:12:\"useFolderUrl\";s:1:\"1\";s:9:\"urlPrefix\";s:0:\"\";s:9:\"urlSuffix\";s:0:\"\";s:6:\"useSSL\";s:1:\"1\";s:11:\"autoforward\";s:0:\"\";s:9:\"protected\";s:0:\"\";s:6:\"groups\";N;s:13:\"includeLayout\";s:1:\"1\";s:6:\"layout\";i:1;s:13:\"subpageLayout\";i:0;s:12:\"includeCache\";s:0:\"\";s:5:\"cache\";i:0;s:19:\"alwaysLoadFromCache\";s:0:\"\";s:11:\"clientCache\";i:0;s:12:\"includeChmod\";s:0:\"\";s:5:\"cuser\";i:0;s:6:\"cgroup\";i:1;s:5:\"chmod\";s:165:\"a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}\";s:8:\"noSearch\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:7:\"sitemap\";s:0:\"\";s:4:\"hide\";s:0:\"\";s:6:\"guests\";s:0:\"\";s:8:\"tabindex\";i:0;s:9:\"accesskey\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:16:\"enforceTwoFactor\";s:0:\"\";s:15:\"twoFactorJumpTo\";i:0;s:16:\"opengraphRootSRC\";N;s:11:\"twitteruser\";s:0:\"\";s:14:\"whatsappprefix\";s:0:\"\";}'),(10,7,1691483429,1,'tl_page',1,'sunger','datenschutz','contao?do=page&rt=cbe552471ca0b2b73.0Hqc_G1kXzqmk0K5zfAJBO9XJ17KYp77fFAjbKTaKFk.qRjPlAgBLnvP2RTUq5JqYNouRDL-EemZJGZLNpyoXRaCKPTNCgBmAufFGw&ref=Zp-o0OnL&act=edit&id=7','1',_binary 'a:68:{s:2:\"id\";i:7;s:3:\"pid\";i:1;s:7:\"sorting\";i:48;s:6:\"tstamp\";i:1691483429;s:5:\"title\";s:11:\"datenschutz\";s:4:\"type\";s:7:\"regular\";s:5:\"alias\";s:11:\"datenschutz\";s:11:\"requireItem\";s:0:\"\";s:13:\"routePriority\";i:0;s:9:\"pageTitle\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"robots\";s:12:\"index,follow\";s:11:\"description\";N;s:8:\"redirect\";s:9:\"permanent\";s:6:\"jumpTo\";i:0;s:12:\"redirectBack\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:3:\"dns\";s:0:\"\";s:11:\"staticFiles\";s:0:\"\";s:13:\"staticPlugins\";s:0:\"\";s:8:\"fallback\";s:0:\"\";s:23:\"disableLanguageRedirect\";s:0:\"\";s:7:\"favicon\";N;s:9:\"robotsTxt\";N;s:15:\"maintenanceMode\";s:0:\"\";s:15:\"mailerTransport\";s:0:\"\";s:15:\"enableCanonical\";s:1:\"1\";s:13:\"canonicalLink\";s:0:\"\";s:19:\"canonicalKeepParams\";s:0:\"\";s:10:\"adminEmail\";s:0:\"\";s:10:\"dateFormat\";s:0:\"\";s:10:\"timeFormat\";s:0:\"\";s:11:\"datimFormat\";s:0:\"\";s:20:\"validAliasCharacters\";s:0:\"\";s:12:\"useFolderUrl\";s:0:\"\";s:9:\"urlPrefix\";s:0:\"\";s:9:\"urlSuffix\";s:0:\"\";s:6:\"useSSL\";s:1:\"1\";s:11:\"autoforward\";s:0:\"\";s:9:\"protected\";s:0:\"\";s:6:\"groups\";N;s:13:\"includeLayout\";s:0:\"\";s:6:\"layout\";i:0;s:13:\"subpageLayout\";i:0;s:12:\"includeCache\";s:0:\"\";s:5:\"cache\";i:0;s:19:\"alwaysLoadFromCache\";s:0:\"\";s:11:\"clientCache\";i:0;s:12:\"includeChmod\";s:0:\"\";s:5:\"cuser\";i:3;s:6:\"cgroup\";i:1;s:5:\"chmod\";s:165:\"a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}\";s:8:\"noSearch\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:7:\"sitemap\";s:11:\"map_default\";s:4:\"hide\";s:0:\"\";s:6:\"guests\";s:0:\"\";s:8:\"tabindex\";i:0;s:9:\"accesskey\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:16:\"enforceTwoFactor\";s:0:\"\";s:15:\"twoFactorJumpTo\";i:0;s:16:\"opengraphRootSRC\";N;s:11:\"twitteruser\";s:0:\"\";s:14:\"whatsappprefix\";s:0:\"\";}'),(11,8,1691483444,1,'tl_page',1,'sunger','impressum','contao?do=page&rt=a6138ca.5mR60zCJtxh4kxCX0dLeT1u3tbQOQl7uog90Yy48HiY.nwYpu1XsxlkR2Ub6t7C9K27O1tg6MSmM-jkcORZOa2m0NhLiV-2OIDnFSQ&ref=7rgoXfYj&act=edit&id=8','1',_binary 'a:68:{s:2:\"id\";i:8;s:3:\"pid\";i:1;s:7:\"sorting\";i:56;s:6:\"tstamp\";i:1691483444;s:5:\"title\";s:9:\"impressum\";s:4:\"type\";s:7:\"regular\";s:5:\"alias\";s:9:\"impressum\";s:11:\"requireItem\";s:0:\"\";s:13:\"routePriority\";i:0;s:9:\"pageTitle\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"robots\";s:12:\"index,follow\";s:11:\"description\";N;s:8:\"redirect\";s:9:\"permanent\";s:6:\"jumpTo\";i:0;s:12:\"redirectBack\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:0:\"\";s:3:\"dns\";s:0:\"\";s:11:\"staticFiles\";s:0:\"\";s:13:\"staticPlugins\";s:0:\"\";s:8:\"fallback\";s:0:\"\";s:23:\"disableLanguageRedirect\";s:0:\"\";s:7:\"favicon\";N;s:9:\"robotsTxt\";N;s:15:\"maintenanceMode\";s:0:\"\";s:15:\"mailerTransport\";s:0:\"\";s:15:\"enableCanonical\";s:1:\"1\";s:13:\"canonicalLink\";s:0:\"\";s:19:\"canonicalKeepParams\";s:0:\"\";s:10:\"adminEmail\";s:0:\"\";s:10:\"dateFormat\";s:0:\"\";s:10:\"timeFormat\";s:0:\"\";s:11:\"datimFormat\";s:0:\"\";s:20:\"validAliasCharacters\";s:0:\"\";s:12:\"useFolderUrl\";s:0:\"\";s:9:\"urlPrefix\";s:0:\"\";s:9:\"urlSuffix\";s:0:\"\";s:6:\"useSSL\";s:1:\"1\";s:11:\"autoforward\";s:0:\"\";s:9:\"protected\";s:0:\"\";s:6:\"groups\";N;s:13:\"includeLayout\";s:0:\"\";s:6:\"layout\";i:0;s:13:\"subpageLayout\";i:0;s:12:\"includeCache\";s:0:\"\";s:5:\"cache\";i:0;s:19:\"alwaysLoadFromCache\";s:0:\"\";s:11:\"clientCache\";i:0;s:12:\"includeChmod\";s:0:\"\";s:5:\"cuser\";i:3;s:6:\"cgroup\";i:1;s:5:\"chmod\";s:165:\"a:12:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g1\";i:7;s:2:\"g2\";i:8;s:2:\"g3\";i:9;s:2:\"g4\";i:10;s:2:\"g5\";i:11;s:2:\"g6\";}\";s:8:\"noSearch\";s:0:\"\";s:8:\"cssClass\";s:0:\"\";s:7:\"sitemap\";s:11:\"map_default\";s:4:\"hide\";s:0:\"\";s:6:\"guests\";s:0:\"\";s:8:\"tabindex\";i:0;s:9:\"accesskey\";s:0:\"\";s:9:\"published\";s:1:\"1\";s:5:\"start\";s:0:\"\";s:4:\"stop\";s:0:\"\";s:16:\"enforceTwoFactor\";s:0:\"\";s:15:\"twoFactorJumpTo\";i:0;s:16:\"opengraphRootSRC\";N;s:11:\"twitteruser\";s:0:\"\";s:14:\"whatsappprefix\";s:0:\"\";}'),(12,1,1691483691,1,'tl_files',0,NULL,'','contao?do=files&act=edit&id=files%2Fcontent&rt=76825efe9.SGoXXeB9xQXra6RH8aEjedupTxhJgo6BULZDQ1aWq0M.MQhENYUYtESCIfIql8NAHe7QLHR98fnjCIArGW7k3gwaOH9shxn8Pao9_Q&ref=X19x-jle','',_binary 'a:16:{s:2:\"id\";i:1;s:3:\"pid\";N;s:6:\"tstamp\";i:1689504600;s:4:\"uuid\";s:16:\"ƒ\rK #\Æ\îµ\îB¬\0\";s:4:\"type\";s:6:\"folder\";s:9:\"extension\";s:0:\"\";s:4:\"hash\";s:32:\"d41d8cd98f00b204e9800998ecf8427e\";s:12:\"lastModified\";N;s:5:\"found\";s:1:\"1\";s:14:\"importantPartX\";d:0;s:14:\"importantPartY\";d:0;s:18:\"importantPartWidth\";d:0;s:19:\"importantPartHeight\";d:0;s:4:\"meta\";N;s:9:\"copyright\";s:0:\"\";s:30:\"copyrightStockPhotographyGroup\";N;}'),(13,1,1691483695,2,'tl_files',1,'sunger','','contao?do=files&act=edit&id=files%2Fcontent&rt=76825efe9.SGoXXeB9xQXra6RH8aEjedupTxhJgo6BULZDQ1aWq0M.MQhENYUYtESCIfIql8NAHe7QLHR98fnjCIArGW7k3gwaOH9shxn8Pao9_Q&ref=X19x-jle','1',_binary 'a:16:{s:2:\"id\";i:1;s:3:\"pid\";N;s:6:\"tstamp\";i:1691483695;s:4:\"uuid\";s:16:\"ƒ\rK #\Æ\îµ\îB¬\0\";s:4:\"type\";s:6:\"folder\";s:9:\"extension\";s:0:\"\";s:4:\"hash\";s:32:\"d41d8cd98f00b204e9800998ecf8427e\";s:12:\"lastModified\";N;s:5:\"found\";s:1:\"1\";s:14:\"importantPartX\";d:0;s:14:\"importantPartY\";d:0;s:18:\"importantPartWidth\";d:0;s:19:\"importantPartHeight\";d:0;s:4:\"meta\";N;s:9:\"copyright\";s:0:\"\";s:30:\"copyrightStockPhotographyGroup\";N;}'),(14,2,1691483697,1,'tl_files',0,NULL,'','contao?do=files&act=edit&id=files%2Ftpl&rt=83a38eac4df9a17b.z5nEPXFj6qW9pCoDBravD7TDHwhwaRkA-sWPRBJoYLw.tvuXVRQGm-TU7nxuYNTMa4G6fGREGm5iovPnHioaFfOdy6wMFgfTnfzycw&ref=KSrvg1vH','',_binary 'a:16:{s:2:\"id\";i:2;s:3:\"pid\";N;s:6:\"tstamp\";i:1689504600;s:4:\"uuid\";s:16:\"ƒ\rK#\Æ\îµ\îB¬\0\";s:4:\"type\";s:6:\"folder\";s:9:\"extension\";s:0:\"\";s:4:\"hash\";s:32:\"22592ce8118b911a34f572c8e6712769\";s:12:\"lastModified\";N;s:5:\"found\";s:1:\"1\";s:14:\"importantPartX\";d:0;s:14:\"importantPartY\";d:0;s:18:\"importantPartWidth\";d:0;s:19:\"importantPartHeight\";d:0;s:4:\"meta\";N;s:9:\"copyright\";s:0:\"\";s:30:\"copyrightStockPhotographyGroup\";N;}'),(15,2,1691483704,2,'tl_files',1,'sunger','','contao?do=files&act=edit&id=files%2Ftpl&rt=83a38eac4df9a17b.z5nEPXFj6qW9pCoDBravD7TDHwhwaRkA-sWPRBJoYLw.tvuXVRQGm-TU7nxuYNTMa4G6fGREGm5iovPnHioaFfOdy6wMFgfTnfzycw&ref=KSrvg1vH','1',_binary 'a:16:{s:2:\"id\";i:2;s:3:\"pid\";N;s:6:\"tstamp\";i:1691483704;s:4:\"uuid\";s:16:\"ƒ\rK#\Æ\îµ\îB¬\0\";s:4:\"type\";s:6:\"folder\";s:9:\"extension\";s:0:\"\";s:4:\"hash\";s:32:\"22592ce8118b911a34f572c8e6712769\";s:12:\"lastModified\";N;s:5:\"found\";s:1:\"1\";s:14:\"importantPartX\";d:0;s:14:\"importantPartY\";d:0;s:18:\"importantPartWidth\";d:0;s:19:\"importantPartHeight\";d:0;s:4:\"meta\";N;s:9:\"copyright\";s:0:\"\";s:30:\"copyrightStockPhotographyGroup\";N;}');
/*!40000 ALTER TABLE `tl_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-09 16:44:53
