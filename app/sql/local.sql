-- MySQL dump 10.13  Distrib 8.0.35, for macos13 (arm64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-12-19 18:07:13','2025-12-19 18:07:13','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:10:{i:1768288033;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1768289833;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768291633;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768327633;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1768328479;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1768328483;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1768350494;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1768626707;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1768673233;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://jaschanova-wp.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://jaschanova-wp.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','jaschanova-wp','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"show-current-template/show-current-template.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','jaschanova','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','jaschanova','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','60717','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','2','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1781719633','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'wp_notes_notify','1','on');
INSERT INTO `wp_options` VALUES (102,'initial_db_version','60717','on');
INSERT INTO `wp_options` VALUES (103,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (104,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (105,'user_count','1','off');
INSERT INTO `wp_options` VALUES (106,'widget_block','a:18:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:95:\"<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Archives</h4>\n<!-- /wp:heading -->\";}i:8;a:1:{s:7:\"content\";s:21:\"<!-- wp:archives /-->\";}i:9;a:1:{s:7:\"content\";s:97:\"<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Categories</h4>\n<!-- /wp:heading -->\";}i:10;a:1:{s:7:\"content\";s:23:\"<!-- wp:categories /-->\";}i:11;a:1:{s:7:\"content\";s:440:\"<!-- wp:image {\"id\":39,\"width\":\"192px\",\"height\":\"auto\",\"aspectRatio\":\"0.7558652976538809\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://jaschanova-wp.local/wp-content/uploads/2025/12/496310330_23913501744921754_3563601688982594758_n-774x1024.jpg\" alt=\"\" class=\"wp-image-39\" style=\"aspect-ratio:0.7558652976538809;width:192px;height:auto\"/></figure>\n<!-- /wp:image -->\";}i:12;a:1:{s:7:\"content\";s:96:\"<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Service 1</h4>\n<!-- /wp:heading -->\";}i:13;a:1:{s:7:\"content\";s:205:\"<!-- wp:paragraph -->\n<p>Lorem lorem loremLorem lorem loremLorem lorem loremLorem lorem loremLorem lorem loremLorem lorem loremLorem lorem loremLorem lorem loremLorem lorem lorem</p>\n<!-- /wp:paragraph -->\";}i:14;a:1:{s:7:\"content\";s:568:\"<!-- wp:image {\"id\":42,\"width\":\"564px\",\"height\":\"auto\",\"aspectRatio\":\"1.499314080692251\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://jaschanova-wp.local/wp-content/uploads/2025/12/c536f76b-9ad8-452e-b8fb-545d4fa84bce-1024x683.jpeg\" alt=\"\" class=\"wp-image-42\" style=\"aspect-ratio:1.499314080692251;width:564px;height:auto\"/><figcaption class=\"wp-element-caption\">Programming code abstract technology background of software developer and  Computer script</figcaption></figure>\n<!-- /wp:image -->\";}i:15;a:1:{s:7:\"content\";s:54:\"<!-- wp:paragraph -->\n<p>xD</p>\n<!-- /wp:paragraph -->\";}i:16;a:1:{s:7:\"content\";s:351:\"<!-- wp:image {\"id\":44,\"width\":\"347px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://jaschanova-wp.local/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-15-at-03.59.40.jpeg\" alt=\"\" class=\"wp-image-44\" style=\"width:347px;height:auto\"/></figure>\n<!-- /wp:image -->\";}i:17;a:1:{s:7:\"content\";s:61:\"<!-- wp:paragraph -->\n<p>Whatefuki</p>\n<!-- /wp:paragraph -->\";}i:18;a:1:{s:7:\"content\";s:426:\"<!-- wp:image {\"id\":42,\"width\":\"404px\",\"height\":\"auto\",\"aspectRatio\":\"1.499314080692251\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://jaschanova-wp.local/wp-content/uploads/2025/12/c536f76b-9ad8-452e-b8fb-545d4fa84bce-1024x683.jpeg\" alt=\"\" class=\"wp-image-42\" style=\"aspect-ratio:1.499314080692251;width:404px;height:auto\"/></figure>\n<!-- /wp:image -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (107,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:17:{i:0;s:8:\"block-14\";i:1;s:7:\"block-7\";i:2;s:7:\"block-8\";i:3;s:7:\"block-9\";i:4;s:8:\"block-10\";i:5;s:8:\"block-11\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-18\";i:9;s:8:\"block-15\";i:10;s:8:\"block-16\";i:11;s:8:\"block-17\";i:12;s:7:\"block-2\";i:13;s:7:\"block-3\";i:14;s:7:\"block-4\";i:15;s:7:\"block-5\";i:16;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (122,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"6.9\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (126,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (127,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.9-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1768285889;s:15:\"version_checked\";s:3:\"6.9\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (151,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (152,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (157,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (166,'theme_mods_twentytwentyfive','a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1767317406;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:8:\"block-14\";i:1;s:7:\"block-7\";i:2;s:7:\"block-8\";i:3;s:7:\"block-9\";i:4;s:8:\"block-10\";i:5;s:8:\"block-11\";i:6;s:8:\"block-12\";i:7;s:8:\"block-13\";i:8;s:8:\"block-18\";i:9;s:8:\"block-15\";i:10;s:8:\"block-16\";i:11;s:8:\"block-17\";}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (167,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"4ad6ed4956ef7f814db220c22a123393\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:18:\"core/term-template\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (168,'current_theme','Jascha Nova Portfolio','auto');
INSERT INTO `wp_options` VALUES (169,'theme_mods_wp-devs','a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:17:\"wp_devs_main_menu\";i:2;s:19:\"wp_devs_footer_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:21:\"random-uploaded-image\";s:11:\"custom_logo\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1767317129;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"block-14\";i:1;s:7:\"block-2\";i:2;s:7:\"block-3\";i:3;s:7:\"block-4\";i:4;s:7:\"block-5\";i:5;s:7:\"block-6\";}s:12:\"sidebar-blog\";a:4:{i:0;s:7:\"block-7\";i:1;s:7:\"block-8\";i:2;s:7:\"block-9\";i:3;s:8:\"block-10\";}s:9:\"service-1\";a:3:{i:0;s:8:\"block-11\";i:1;s:8:\"block-12\";i:2;s:8:\"block-13\";}s:9:\"service-2\";a:2:{i:0;s:8:\"block-18\";i:1;s:8:\"block-15\";}s:9:\"service-3\";a:2:{i:0;s:8:\"block-16\";i:1;s:8:\"block-17\";}}}}','off');
INSERT INTO `wp_options` VALUES (170,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (187,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":1}','on');
INSERT INTO `wp_options` VALUES (197,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:2:{i:0;i:2;i:1;i:3;}}','off');
INSERT INTO `wp_options` VALUES (217,'wp_calendar_block_has_published_posts','','auto');
INSERT INTO `wp_options` VALUES (355,'theme_mods_jaschanova','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (379,'recovery_mode_email_last_sent','1767416349','auto');
INSERT INTO `wp_options` VALUES (388,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1768270862;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.7.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.5.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";s:3:\"svg\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.7.0\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.5.3\";}}','off');
INSERT INTO `wp_options` VALUES (389,'acf_first_activated_version','6.7.0','on');
INSERT INTO `wp_options` VALUES (390,'acf_site_health','{\"version\":\"6.7.0\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.9\",\"mysql_version\":\"8.0.35\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Jascha Nova Portfolio\",\"version\":\"1.0\",\"theme_uri\":\"https:\\/\\/website.com\\/jaschanova\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.7.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"show-current-template\\/show-current-template.php\":{\"name\":\"Show Current Template\",\"version\":\"0.5.3\",\"plugin_uri\":\"https:\\/\\/wp.tekapo.com\\/\"}},\"ui_field_groups\":\"3\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"page==2\",\"post_type==testimonials\"],\"number_of_fields_by_type\":{\"text\":7,\"image\":3,\"textarea\":2,\"url\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"4\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1767417107,\"event_first_created_field_group\":1767417499,\"last_updated\":1768096925}','off');
INSERT INTO `wp_options` VALUES (392,'acf_version','6.7.0','auto');
INSERT INTO `wp_options` VALUES (447,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (448,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1768270863;s:7:\"checked\";a:1:{s:10:\"jaschanova\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (650,'_site_transient_timeout_browser_684fac3d8e595845640e507a9122bd55','1768376062','off');
INSERT INTO `wp_options` VALUES (651,'_site_transient_browser_684fac3d8e595845640e507a9122bd55','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"143.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (652,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1768376063','off');
INSERT INTO `wp_options` VALUES (653,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (672,'_site_transient_timeout_browser_eedaa60e969370e91b9488b164466966','1768379779','off');
INSERT INTO `wp_options` VALUES (673,'_site_transient_browser_eedaa60e969370e91b9488b164466966','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"143.0.0.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}','off');
INSERT INTO `wp_options` VALUES (761,'_site_transient_timeout_theme_roots','1768277377','off');
INSERT INTO `wp_options` VALUES (762,'_site_transient_theme_roots','a:1:{s:10:\"jaschanova\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (777,'_site_transient_timeout_wp_theme_files_patterns-e863de8906696ffb493cd5018fbb820e','1768287571','off');
INSERT INTO `wp_options` VALUES (778,'_site_transient_wp_theme_files_patterns-e863de8906696ffb493cd5018fbb820e','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,2,'_edit_lock','1768285771:1');
INSERT INTO `wp_postmeta` VALUES (5,8,'_edit_lock','1766535830:1');
INSERT INTO `wp_postmeta` VALUES (6,10,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (7,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (8,10,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (9,10,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (10,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (11,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (12,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (13,10,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (15,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (16,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,11,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (18,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (19,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (24,12,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (25,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,12,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (27,12,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (28,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,12,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (33,13,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,13,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (36,13,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,13,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (42,14,'_edit_lock','1766509406:1');
INSERT INTO `wp_postmeta` VALUES (45,16,'_edit_lock','1767055701:1');
INSERT INTO `wp_postmeta` VALUES (48,18,'_edit_lock','1766510716:1');
INSERT INTO `wp_postmeta` VALUES (54,21,'_edit_lock','1766511079:1');
INSERT INTO `wp_postmeta` VALUES (55,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,22,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (58,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (73,1,'_edit_lock','1766511180:1');
INSERT INTO `wp_postmeta` VALUES (74,26,'_edit_lock','1766536188:1');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (77,27,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (78,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (79,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (80,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (81,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (82,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (84,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (85,28,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (86,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (87,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (88,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (89,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (90,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (91,30,'_edit_lock','1766536193:1');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (98,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (100,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (102,32,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (103,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (106,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (109,26,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (110,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (111,30,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (112,21,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (113,21,'_wp_trash_meta_time','1766536574');
INSERT INTO `wp_postmeta` VALUES (114,21,'_wp_desired_post_slug','web-development');
INSERT INTO `wp_postmeta` VALUES (115,34,'_edit_lock','1766536586:1');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (122,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (123,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (124,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (125,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (126,36,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (127,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (128,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (129,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (130,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (131,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,38,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (135,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,12,'_wp_old_date','2025-12-20');
INSERT INTO `wp_postmeta` VALUES (142,13,'_wp_old_date','2025-12-20');
INSERT INTO `wp_postmeta` VALUES (143,28,'_wp_old_date','2025-12-23');
INSERT INTO `wp_postmeta` VALUES (144,39,'_wp_attached_file','2025/12/496310330_23913501744921754_3563601688982594758_n.jpg');
INSERT INTO `wp_postmeta` VALUES (145,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1548;s:6:\"height\";i:2048;s:4:\"file\";s:61:\"2025/12/496310330_23913501744921754_3563601688982594758_n.jpg\";s:8:\"filesize\";i:300983;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:61:\"496310330_23913501744921754_3563601688982594758_n-227x300.jpg\";s:5:\"width\";i:227;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10450;}s:5:\"large\";a:5:{s:4:\"file\";s:62:\"496310330_23913501744921754_3563601688982594758_n-774x1024.jpg\";s:5:\"width\";i:774;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113577;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:61:\"496310330_23913501744921754_3563601688982594758_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4302;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:62:\"496310330_23913501744921754_3563601688982594758_n-768x1016.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1016;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113071;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:63:\"496310330_23913501744921754_3563601688982594758_n-1161x1536.jpg\";s:5:\"width\";i:1161;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:259219;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (146,40,'_wp_attached_file','2025/12/cropped-496310330_23913501744921754_3563601688982594758_n.jpg');
INSERT INTO `wp_postmeta` VALUES (147,40,'_wp_attachment_context','custom-header');
INSERT INTO `wp_postmeta` VALUES (148,40,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:69:\"2025/12/cropped-496310330_23913501744921754_3563601688982594758_n.jpg\";s:8:\"filesize\";i:54760;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:68:\"cropped-496310330_23913501744921754_3563601688982594758_n-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2347;}s:5:\"large\";a:5:{s:4:\"file\";s:70:\"cropped-496310330_23913501744921754_3563601688982594758_n-1024x120.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18109;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:69:\"cropped-496310330_23913501744921754_3563601688982594758_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3972;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:68:\"cropped-496310330_23913501744921754_3563601688982594758_n-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10835;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:70:\"cropped-496310330_23913501744921754_3563601688982594758_n-1536x180.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36902;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:39;}');
INSERT INTO `wp_postmeta` VALUES (149,40,'_wp_attachment_custom_header_last_used_wp-devs','1766539910');
INSERT INTO `wp_postmeta` VALUES (150,40,'_wp_attachment_is_custom_header','wp-devs');
INSERT INTO `wp_postmeta` VALUES (151,41,'_edit_lock','1766540043:1');
INSERT INTO `wp_postmeta` VALUES (152,42,'_wp_attached_file','2025/12/c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg');
INSERT INTO `wp_postmeta` VALUES (153,42,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2121;s:6:\"height\";i:1414;s:4:\"file\";s:49:\"2025/12/c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg\";s:8:\"filesize\";i:1229797;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"c536f76b-9ad8-452e-b8fb-545d4fa84bce-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29939;}s:5:\"large\";a:5:{s:4:\"file\";s:50:\"c536f76b-9ad8-452e-b8fb-545d4fa84bce-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:139339;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"c536f76b-9ad8-452e-b8fb-545d4fa84bce-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20481;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:49:\"c536f76b-9ad8-452e-b8fb-545d4fa84bce-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94158;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:51:\"c536f76b-9ad8-452e-b8fb-545d4fa84bce-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:236621;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:51:\"c536f76b-9ad8-452e-b8fb-545d4fa84bce-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:351729;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:90:\"Programming code abstract technology background of software developer and  Computer script\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:69:\"Programming code abstract technology background of software developer\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (154,43,'_wp_attached_file','2025/12/cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg');
INSERT INTO `wp_postmeta` VALUES (155,43,'_wp_attachment_context','custom-header');
INSERT INTO `wp_postmeta` VALUES (156,43,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:57:\"2025/12/cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg\";s:8:\"filesize\";i:78081;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:56:\"cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce-300x35.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15553;}s:5:\"large\";a:5:{s:4:\"file\";s:58:\"cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce-1024x120.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38400;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:57:\"cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15780;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:56:\"cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce-768x90.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29466;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:58:\"cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce-1536x180.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58770;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:90:\"Programming code abstract technology background of software developer and  Computer script\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:69:\"Programming code abstract technology background of software developer\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:42;}');
INSERT INTO `wp_postmeta` VALUES (157,43,'_wp_attachment_custom_header_last_used_wp-devs','1766540024');
INSERT INTO `wp_postmeta` VALUES (158,43,'_wp_attachment_is_custom_header','wp-devs');
INSERT INTO `wp_postmeta` VALUES (159,44,'_wp_attached_file','2025/12/WhatsApp-Image-2025-11-15-at-03.59.40.jpeg');
INSERT INTO `wp_postmeta` VALUES (160,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:572;s:6:\"height\";i:552;s:4:\"file\";s:50:\"2025/12/WhatsApp-Image-2025-11-15-at-03.59.40.jpeg\";s:8:\"filesize\";i:44525;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2025-11-15-at-03.59.40-300x290.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18584;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2025-11-15-at-03.59.40-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6021;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (161,45,'_wp_attached_file','2025/12/cropped-WhatsApp-Image-2025-11-15-at-03.59.40.jpeg');
INSERT INTO `wp_postmeta` VALUES (162,45,'_wp_attachment_context','custom-header');
INSERT INTO `wp_postmeta` VALUES (163,45,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:58:\"2025/12/cropped-WhatsApp-Image-2025-11-15-at-03.59.40.jpeg\";s:8:\"filesize\";i:51449;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:57:\"cropped-WhatsApp-Image-2025-11-15-at-03.59.40-300x35.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3790;}s:5:\"large\";a:5:{s:4:\"file\";s:59:\"cropped-WhatsApp-Image-2025-11-15-at-03.59.40-1024x120.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21014;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:58:\"cropped-WhatsApp-Image-2025-11-15-at-03.59.40-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4244;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:57:\"cropped-WhatsApp-Image-2025-11-15-at-03.59.40-768x90.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14476;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:59:\"cropped-WhatsApp-Image-2025-11-15-at-03.59.40-1536x180.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37384;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:44;}');
INSERT INTO `wp_postmeta` VALUES (164,45,'_wp_attachment_custom_header_last_used_wp-devs','1766540048');
INSERT INTO `wp_postmeta` VALUES (165,45,'_wp_attachment_is_custom_header','wp-devs');
INSERT INTO `wp_postmeta` VALUES (166,41,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (167,41,'_wp_trash_meta_time','1766540080');
INSERT INTO `wp_postmeta` VALUES (168,46,'_wp_attached_file','2025/12/WhatsApp-Image-2025-11-18-at-09.08.19.jpeg');
INSERT INTO `wp_postmeta` VALUES (169,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:899;s:6:\"height\";i:1599;s:4:\"file\";s:50:\"2025/12/WhatsApp-Image-2025-11-18-at-09.08.19.jpeg\";s:8:\"filesize\";i:151499;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2025-11-18-at-09.08.19-169x300.jpeg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9299;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2025-11-18-at-09.08.19-576x1024.jpeg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81086;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2025-11-18-at-09.08.19-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5025;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2025-11-18-at-09.08.19-768x1366.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:129466;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2025-11-18-at-09.08.19-864x1536.jpeg\";s:5:\"width\";i:864;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155721;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (172,16,'_thumbnail_id','46');
INSERT INTO `wp_postmeta` VALUES (173,48,'_wp_attached_file','2025/12/loogo.png');
INSERT INTO `wp_postmeta` VALUES (174,48,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:900;s:6:\"height\";i:847;s:4:\"file\";s:17:\"2025/12/loogo.png\";s:8:\"filesize\";i:10131;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"loogo-300x282.png\";s:5:\"width\";i:300;s:6:\"height\";i:282;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3454;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"loogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2111;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"loogo-768x723.png\";s:5:\"width\";i:768;s:6:\"height\";i:723;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16635;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (175,49,'_wp_attached_file','2025/12/cropped-loogo.png');
INSERT INTO `wp_postmeta` VALUES (176,49,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (177,49,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:900;s:6:\"height\";i:701;s:4:\"file\";s:25:\"2025/12/cropped-loogo.png\";s:8:\"filesize\";i:11437;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"cropped-loogo-300x234.png\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7058;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"cropped-loogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4044;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"cropped-loogo-768x598.png\";s:5:\"width\";i:768;s:6:\"height\";i:598;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17198;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (178,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (179,50,'_wp_trash_meta_time','1767048730');
INSERT INTO `wp_postmeta` VALUES (180,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (181,51,'_wp_trash_meta_time','1767048979');
INSERT INTO `wp_postmeta` VALUES (184,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (185,18,'_wp_trash_meta_time','1767316445');
INSERT INTO `wp_postmeta` VALUES (186,18,'_wp_desired_post_slug','social-media');
INSERT INTO `wp_postmeta` VALUES (187,16,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (188,16,'_wp_trash_meta_time','1767316445');
INSERT INTO `wp_postmeta` VALUES (189,16,'_wp_desired_post_slug','web-development');
INSERT INTO `wp_postmeta` VALUES (190,14,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (191,14,'_wp_trash_meta_time','1767316445');
INSERT INTO `wp_postmeta` VALUES (192,14,'_wp_desired_post_slug','web-design');
INSERT INTO `wp_postmeta` VALUES (193,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (194,1,'_wp_trash_meta_time','1767316445');
INSERT INTO `wp_postmeta` VALUES (195,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (196,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (197,26,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (198,26,'_wp_trash_meta_time','1767317490');
INSERT INTO `wp_postmeta` VALUES (199,26,'_wp_desired_post_slug','about');
INSERT INTO `wp_postmeta` VALUES (200,8,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (201,8,'_wp_trash_meta_time','1767317490');
INSERT INTO `wp_postmeta` VALUES (202,8,'_wp_desired_post_slug','blog');
INSERT INTO `wp_postmeta` VALUES (203,30,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (204,30,'_wp_trash_meta_time','1767317490');
INSERT INTO `wp_postmeta` VALUES (205,30,'_wp_desired_post_slug','contact');
INSERT INTO `wp_postmeta` VALUES (206,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (207,3,'_wp_trash_meta_time','1767317490');
INSERT INTO `wp_postmeta` VALUES (208,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (209,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (210,34,'_wp_trash_meta_time','1767317490');
INSERT INTO `wp_postmeta` VALUES (211,34,'_wp_desired_post_slug','sample-page-2');
INSERT INTO `wp_postmeta` VALUES (212,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (213,56,'_edit_lock','1767416544:1');
INSERT INTO `wp_postmeta` VALUES (214,56,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (215,56,'_wp_trash_meta_time','1767416688');
INSERT INTO `wp_postmeta` VALUES (216,56,'_wp_desired_post_slug','erick');
INSERT INTO `wp_postmeta` VALUES (217,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,59,'_edit_lock','1767485691:1');
INSERT INTO `wp_postmeta` VALUES (219,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (220,66,'_edit_lock','1767418578:1');
INSERT INTO `wp_postmeta` VALUES (221,66,'client_name','Neil Strauss');
INSERT INTO `wp_postmeta` VALUES (222,66,'_client_name','field_6958a57a579c3');
INSERT INTO `wp_postmeta` VALUES (223,66,'company','The Society');
INSERT INTO `wp_postmeta` VALUES (224,66,'_company','field_6958a5f2579c4');
INSERT INTO `wp_postmeta` VALUES (225,66,'testimonial_text','xD');
INSERT INTO `wp_postmeta` VALUES (226,66,'_testimonial_text','field_6958a630579c5');
INSERT INTO `wp_postmeta` VALUES (227,66,'testimonial_image','39');
INSERT INTO `wp_postmeta` VALUES (228,66,'_testimonial_image','field_6958a66a579c6');
INSERT INTO `wp_postmeta` VALUES (231,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (232,68,'_edit_lock','1768275428:1');
INSERT INTO `wp_postmeta` VALUES (235,2,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (237,75,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (239,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (240,2,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (241,2,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (242,2,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (243,2,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (244,2,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (245,2,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (246,2,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (247,2,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (248,2,'hero_image','92');
INSERT INTO `wp_postmeta` VALUES (249,2,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (250,75,'hero_title','Hero title');
INSERT INTO `wp_postmeta` VALUES (251,75,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (252,75,'hero_subtitle','Hero Subtitle / Description');
INSERT INTO `wp_postmeta` VALUES (253,75,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (254,75,'hero_button_text','Hero button text');
INSERT INTO `wp_postmeta` VALUES (255,75,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (256,75,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (257,75,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (258,75,'hero_image','67');
INSERT INTO `wp_postmeta` VALUES (259,75,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (262,76,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (264,76,'hero_title','Super a Shrikinha');
INSERT INTO `wp_postmeta` VALUES (265,76,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (266,76,'hero_subtitle','Hero Subtitle / Description');
INSERT INTO `wp_postmeta` VALUES (267,76,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (268,76,'hero_button_text','Hero button text');
INSERT INTO `wp_postmeta` VALUES (269,76,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (270,76,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (271,76,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (272,76,'hero_image','67');
INSERT INTO `wp_postmeta` VALUES (273,76,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (278,78,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (280,78,'hero_title','Super a Shrikinha');
INSERT INTO `wp_postmeta` VALUES (281,78,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (282,78,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (283,78,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (284,78,'hero_button_text','Hero button text');
INSERT INTO `wp_postmeta` VALUES (285,78,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (286,78,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (287,78,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (288,78,'hero_image','67');
INSERT INTO `wp_postmeta` VALUES (289,78,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (292,79,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (294,79,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (295,79,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (296,79,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (297,79,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (298,79,'hero_button_text','Hero button text');
INSERT INTO `wp_postmeta` VALUES (299,79,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (300,79,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (301,79,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (302,79,'hero_image','67');
INSERT INTO `wp_postmeta` VALUES (303,79,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (306,80,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (308,80,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (309,80,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (310,80,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (311,80,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (312,80,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (313,80,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (314,80,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (315,80,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (316,80,'hero_image','67');
INSERT INTO `wp_postmeta` VALUES (317,80,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (318,81,'_wp_attached_file','2026/01/hero-image2.png');
INSERT INTO `wp_postmeta` VALUES (319,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2026/01/hero-image2.png\";s:8:\"filesize\";i:233469;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"hero-image2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84435;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"hero-image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25752;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (322,82,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (324,82,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (325,82,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (326,82,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (327,82,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (328,82,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (329,82,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (330,82,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (331,82,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (332,82,'hero_image','81');
INSERT INTO `wp_postmeta` VALUES (333,82,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (334,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (335,84,'_edit_lock','1767771321:1');
INSERT INTO `wp_postmeta` VALUES (340,90,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (342,2,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (343,2,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (344,2,'about_subtitle','Sample Subtitle');
INSERT INTO `wp_postmeta` VALUES (345,2,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (346,2,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (347,2,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (348,2,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (349,2,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (350,90,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (351,90,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (352,90,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (353,90,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (354,90,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (355,90,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (356,90,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (357,90,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (358,90,'hero_image','81');
INSERT INTO `wp_postmeta` VALUES (359,90,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (360,90,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (361,90,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (362,90,'about_subtitle','');
INSERT INTO `wp_postmeta` VALUES (363,90,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (364,90,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (365,90,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (366,90,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (367,90,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (370,91,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (372,91,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (373,91,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (374,91,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (375,91,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (376,91,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (377,91,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (378,91,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (379,91,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (380,91,'hero_image','81');
INSERT INTO `wp_postmeta` VALUES (381,91,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (382,91,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (383,91,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (384,91,'about_subtitle','Sample Subtitle');
INSERT INTO `wp_postmeta` VALUES (385,91,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (386,91,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (387,91,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (388,91,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (389,91,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (390,92,'_wp_attached_file','2026/01/WhatsApp_Image_2026-01-04_at_07.47.00-removebg-preview.png');
INSERT INTO `wp_postmeta` VALUES (391,92,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:66:\"2026/01/WhatsApp_Image_2026-01-04_at_07.47.00-removebg-preview.png\";s:8:\"filesize\";i:252002;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:66:\"WhatsApp_Image_2026-01-04_at_07.47.00-removebg-preview-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:89534;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:66:\"WhatsApp_Image_2026-01-04_at_07.47.00-removebg-preview-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26258;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (394,93,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (396,93,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (397,93,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (398,93,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (399,93,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (400,93,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (401,93,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (402,93,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (403,93,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (404,93,'hero_image','92');
INSERT INTO `wp_postmeta` VALUES (405,93,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (406,93,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (407,93,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (408,93,'about_subtitle','Sample Subtitle');
INSERT INTO `wp_postmeta` VALUES (409,93,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (410,93,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (411,93,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (412,93,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (413,93,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (416,96,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (418,2,'experience_time_calc','7');
INSERT INTO `wp_postmeta` VALUES (419,2,'_experience_time_calc','field_6965b0631b20d');
INSERT INTO `wp_postmeta` VALUES (420,96,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (421,96,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (422,96,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (423,96,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (424,96,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (425,96,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (426,96,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (427,96,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (428,96,'hero_image','92');
INSERT INTO `wp_postmeta` VALUES (429,96,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (430,96,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (431,96,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (432,96,'about_subtitle','Sample Subtitle');
INSERT INTO `wp_postmeta` VALUES (433,96,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (434,96,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (435,96,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (436,96,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (437,96,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (438,96,'experience_time_calc','2019');
INSERT INTO `wp_postmeta` VALUES (439,96,'_experience_time_calc','field_6965b0631b20d');
INSERT INTO `wp_postmeta` VALUES (442,97,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (444,97,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (445,97,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (446,97,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (447,97,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (448,97,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (449,97,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (450,97,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (451,97,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (452,97,'hero_image','92');
INSERT INTO `wp_postmeta` VALUES (453,97,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (454,97,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (455,97,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (456,97,'about_subtitle','Sample Subtitle');
INSERT INTO `wp_postmeta` VALUES (457,97,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (458,97,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (459,97,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (460,97,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (461,97,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (462,97,'experience_time_calc','7');
INSERT INTO `wp_postmeta` VALUES (463,97,'_experience_time_calc','field_6965b0631b20d');
INSERT INTO `wp_postmeta` VALUES (466,99,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (468,2,'hero_year_exp','2019');
INSERT INTO `wp_postmeta` VALUES (469,2,'_hero_year_exp','field_6965b0631b20d');
INSERT INTO `wp_postmeta` VALUES (470,99,'hero_title','Virtual Assistant for Growing Businesses');
INSERT INTO `wp_postmeta` VALUES (471,99,'_hero_title','field_6959b27db5088');
INSERT INTO `wp_postmeta` VALUES (472,99,'hero_subtitle','Helping businesses streamline operations, automate workflows, and stay organized—so you can focus on growth.');
INSERT INTO `wp_postmeta` VALUES (473,99,'_hero_subtitle','field_6959b358b5089');
INSERT INTO `wp_postmeta` VALUES (474,99,'hero_button_text','Contact');
INSERT INTO `wp_postmeta` VALUES (475,99,'_hero_button_text','field_6959b391b508a');
INSERT INTO `wp_postmeta` VALUES (476,99,'hero_button_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (477,99,'_hero_button_url','field_6959b3c7b508b');
INSERT INTO `wp_postmeta` VALUES (478,99,'hero_image','92');
INSERT INTO `wp_postmeta` VALUES (479,99,'_hero_image','field_6959b3dfb508c');
INSERT INTO `wp_postmeta` VALUES (480,99,'about_title','About Me');
INSERT INTO `wp_postmeta` VALUES (481,99,'_about_title','field_695e0c88187db');
INSERT INTO `wp_postmeta` VALUES (482,99,'about_subtitle','Sample Subtitle');
INSERT INTO `wp_postmeta` VALUES (483,99,'_about_subtitle','field_695e0ccf187dd');
INSERT INTO `wp_postmeta` VALUES (484,99,'about_text','A young goal-driven professional who thrives to succeed in freelancing/ Virtual Assistance field of work. Acquired skills in providing quality Customer Service, performing various administrative tasks, handling projects, creating infographics (beginner level) and facilitating trainings/talks/seminars in her total work experience of 5 years.  Willing to be trained and eager to learn new skills. ');
INSERT INTO `wp_postmeta` VALUES (485,99,'_about_text','field_695e0cdc187de');
INSERT INTO `wp_postmeta` VALUES (486,99,'about_image','39');
INSERT INTO `wp_postmeta` VALUES (487,99,'_about_image','field_695e0ccd187dc');
INSERT INTO `wp_postmeta` VALUES (488,99,'experience_time_calc','7');
INSERT INTO `wp_postmeta` VALUES (489,99,'_experience_time_calc','field_6965b0631b20d');
INSERT INTO `wp_postmeta` VALUES (490,99,'hero_year_exp','2019');
INSERT INTO `wp_postmeta` VALUES (491,99,'_hero_year_exp','field_6965b0631b20d');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-12-19 18:07:13','2025-12-19 18:07:13','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2026-01-02 01:14:05','2026-01-02 01:14:05','',0,'http://jaschanova-wp.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2025-12-19 18:07:13','2025-12-19 18:07:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','publish','closed','open','','sample-page','','','2026-01-13 03:39:54','2026-01-13 03:39:54','',0,'http://jaschanova-wp.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-12-19 18:07:13','2025-12-19 18:07:13','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://jaschanova-wp.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2026-01-02 01:31:30','2026-01-02 01:31:30','',0,'http://jaschanova-wp.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2025-12-20 02:18:11','2025-12-20 02:18:11','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-12-20 02:18:11','2025-12-20 02:18:11','',0,'http://jaschanova-wp.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2025-12-20 22:12:20','2025-12-20 22:12:20','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2025-12-20 22:12:20','2025-12-20 22:12:20','',2,'http://jaschanova-wp.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2025-12-20 22:13:02','2025-12-20 22:13:02','<!-- wp:paragraph -->\n<p>Blogzin xD</p>\n<!-- /wp:paragraph -->','Blog','','trash','closed','closed','','blog__trashed','','','2026-01-02 01:31:30','2026-01-02 01:31:30','',0,'http://jaschanova-wp.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2025-12-20 22:13:02','2025-12-20 22:13:02','<!-- wp:paragraph -->\n<p>Blogzin xD</p>\n<!-- /wp:paragraph -->','Blog','','inherit','closed','closed','','8-revision-v1','','','2025-12-20 22:13:02','2025-12-20 22:13:02','',8,'http://jaschanova-wp.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2025-12-20 22:18:01','2025-12-20 22:18:01',' ','','','publish','closed','closed','','10','','','2025-12-20 22:18:01','2025-12-20 22:18:01','',0,'http://jaschanova-wp.local/?p=10',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-12-20 22:18:01','2025-12-20 22:18:01',' ','','','publish','closed','closed','','11','','','2025-12-20 22:18:01','2025-12-20 22:18:01','',0,'http://jaschanova-wp.local/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-12-24 01:14:11','2025-12-20 22:18:26',' ','','','publish','closed','closed','','12','','','2025-12-24 01:14:11','2025-12-24 01:14:11','',0,'http://jaschanova-wp.local/?p=12',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-12-24 01:14:11','2025-12-20 22:18:26',' ','','','publish','closed','closed','','13','','','2025-12-24 01:14:11','2025-12-24 01:14:11','',0,'http://jaschanova-wp.local/?p=13',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-12-23 17:03:24','2025-12-23 17:03:24','<!-- wp:paragraph -->\n<p>lorem</p>\n<!-- /wp:paragraph -->','Web Design','','trash','open','open','','web-design__trashed','','','2026-01-02 01:14:05','2026-01-02 01:14:05','',0,'http://jaschanova-wp.local/?p=14',0,'post','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2025-12-23 17:03:24','2025-12-23 17:03:24','<!-- wp:paragraph -->\n<p>lorem</p>\n<!-- /wp:paragraph -->','Web Design','','inherit','closed','closed','','14-revision-v1','','','2025-12-23 17:03:24','2025-12-23 17:03:24','',14,'http://jaschanova-wp.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-12-23 17:03:51','2025-12-23 17:03:51','<!-- wp:paragraph -->\n<p>LOREM</p>\n<!-- /wp:paragraph -->','Web Development','','trash','open','open','','web-development__trashed','','','2026-01-02 01:14:05','2026-01-02 01:14:05','',0,'http://jaschanova-wp.local/?p=16',0,'post','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2025-12-23 17:03:51','2025-12-23 17:03:51','<!-- wp:paragraph -->\n<p>Chama na bota xD</p>\n<!-- /wp:paragraph -->','Web Development','','inherit','closed','closed','','16-revision-v1','','','2025-12-23 17:03:51','2025-12-23 17:03:51','',16,'http://jaschanova-wp.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-12-23 17:04:11','2025-12-23 17:04:11','<!-- wp:paragraph -->\n<p>OFFOIFOISOIFJOIAJFOIAJFOISDJFOIAJ</p>\n<!-- /wp:paragraph -->','Social Media','','trash','open','open','','social-media__trashed','','','2026-01-02 01:14:05','2026-01-02 01:14:05','',0,'http://jaschanova-wp.local/?p=18',0,'post','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-12-23 17:04:11','2025-12-23 17:04:11','<!-- wp:paragraph -->\n<p>OFFOIFOISOIFJOIAJFOIAJFOISDJFOIAJ</p>\n<!-- /wp:paragraph -->','Social Media','','inherit','closed','closed','','18-revision-v1','','','2025-12-23 17:04:11','2025-12-23 17:04:11','',18,'http://jaschanova-wp.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-12-23 17:29:12','2025-12-23 17:29:12','','Web Development','','trash','closed','closed','','web-development__trashed','','','2025-12-24 00:36:14','2025-12-24 00:36:14','',0,'http://jaschanova-wp.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-12-23 17:29:12','2025-12-23 17:29:12',' ','','','publish','closed','closed','','22','','','2025-12-23 17:29:12','2025-12-23 17:29:12','',0,'http://jaschanova-wp.local/22/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-12-23 17:29:12','2025-12-23 17:29:12','','Web Development','','inherit','closed','closed','','21-revision-v1','','','2025-12-23 17:29:12','2025-12-23 17:29:12','',21,'http://jaschanova-wp.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-12-23 17:32:40','2025-12-23 17:32:40','<!-- wp:paragraph -->\n<p>LOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREMLOREM</p>\n<!-- /wp:paragraph -->','Web Development','','inherit','closed','closed','','16-revision-v1','','','2025-12-23 17:32:40','2025-12-23 17:32:40','',16,'http://jaschanova-wp.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-12-23 23:38:34','2025-12-23 23:38:34','<!-- wp:paragraph -->\n<p>About xD</p>\n<!-- /wp:paragraph -->','About','','trash','closed','closed','','about__trashed','','','2026-01-02 01:31:30','2026-01-02 01:31:30','',0,'http://jaschanova-wp.local/?page_id=26',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-12-23 23:38:34','2025-12-23 23:38:34',' ','','','publish','closed','closed','','27','','','2025-12-23 23:38:34','2025-12-23 23:38:34','',0,'http://jaschanova-wp.local/27/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-12-24 01:14:11','2025-12-23 23:38:34',' ','','','publish','closed','closed','','28','','','2025-12-24 01:14:11','2025-12-24 01:14:11','',0,'http://jaschanova-wp.local/28/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-12-23 23:38:34','2025-12-23 23:38:34','<!-- wp:paragraph -->\n<p>About xD</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','26-revision-v1','','','2025-12-23 23:38:34','2025-12-23 23:38:34','',26,'http://jaschanova-wp.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2025-12-24 00:29:31','2025-12-24 00:29:31','','Contact','','trash','closed','closed','','contact__trashed','','','2026-01-02 01:31:30','2026-01-02 01:31:30','',0,'http://jaschanova-wp.local/?page_id=30',0,'page','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2025-12-24 00:29:31','2025-12-24 00:29:31',' ','','','publish','closed','closed','','31','','','2025-12-24 00:29:31','2025-12-24 00:29:31','',0,'http://jaschanova-wp.local/31/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2025-12-24 01:14:11','2025-12-24 00:29:31',' ','','','publish','closed','closed','','32','','','2025-12-24 01:14:11','2025-12-24 01:14:11','',0,'http://jaschanova-wp.local/32/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-12-24 00:29:31','2025-12-24 00:29:31','','Contact','','inherit','closed','closed','','30-revision-v1','','','2025-12-24 00:29:31','2025-12-24 00:29:31','',30,'http://jaschanova-wp.local/?p=33',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-12-24 00:36:34','2025-12-24 00:36:34','','Sample Page','','trash','closed','closed','','sample-page-2__trashed','','','2026-01-02 01:31:30','2026-01-02 01:31:30','',0,'http://jaschanova-wp.local/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-12-24 00:36:34','2025-12-24 00:36:34',' ','','','publish','closed','closed','','35','','','2025-12-24 00:36:34','2025-12-24 00:36:34','',0,'http://jaschanova-wp.local/35/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-12-24 01:14:11','2025-12-24 00:36:34',' ','','','publish','closed','closed','','36','','','2025-12-24 01:14:11','2025-12-24 01:14:11','',0,'http://jaschanova-wp.local/36/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-12-24 00:36:34','2025-12-24 00:36:34','','Sample Page','','inherit','closed','closed','','34-revision-v1','','','2025-12-24 00:36:34','2025-12-24 00:36:34','',34,'http://jaschanova-wp.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-12-24 01:14:11','2025-12-24 00:37:08',' ','','','publish','closed','closed','','38','','','2025-12-24 01:14:11','2025-12-24 01:14:11','',0,'http://jaschanova-wp.local/?p=38',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2025-12-24 01:31:18','2025-12-24 01:31:18','','496310330_23913501744921754_3563601688982594758_n','','inherit','open','closed','','496310330_23913501744921754_3563601688982594758_n','','','2026-01-03 05:36:55','2026-01-03 05:36:55','',66,'http://jaschanova-wp.local/wp-content/uploads/2025/12/496310330_23913501744921754_3563601688982594758_n.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-12-24 01:31:50','2025-12-24 01:31:50','http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-496310330_23913501744921754_3563601688982594758_n.jpg','cropped-496310330_23913501744921754_3563601688982594758_n.jpg','','inherit','open','closed','','cropped-496310330_23913501744921754_3563601688982594758_n-jpg','','','2025-12-24 01:31:50','2025-12-24 01:31:50','',0,'http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-496310330_23913501744921754_3563601688982594758_n.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2025-12-24 01:34:40','2025-12-24 01:34:40','{\n    \"wp-devs::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-12-24 01:34:40\"\n    },\n    \"wp-devs::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-12-24 01:34:40\"\n    }\n}','','','trash','closed','closed','','c0465208-5dc2-494e-96fd-9801f62c4472','','','2025-12-24 01:34:40','2025-12-24 01:34:40','',0,'http://jaschanova-wp.local/?p=41',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-12-24 01:33:36','2025-12-24 01:33:36','','Programming code abstract technology background of software developer','Programming code abstract technology background of software developer and  Computer script','inherit','open','closed','','programming-code-abstract-technology-background-of-software-developer','','','2025-12-24 01:33:36','2025-12-24 01:33:36','',0,'http://jaschanova-wp.local/wp-content/uploads/2025/12/c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,1,'2025-12-24 01:33:44','2025-12-24 01:33:44','http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg','Programming code abstract technology background of software developer','Programming code abstract technology background of software developer and  Computer script','inherit','open','closed','','programming-code-abstract-technology-background-of-software-developer-2','','','2025-12-24 01:33:44','2025-12-24 01:33:44','',0,'http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-c536f76b-9ad8-452e-b8fb-545d4fa84bce.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-12-24 01:34:02','2025-12-24 01:34:02','','WhatsApp Image 2025-11-15 at 03.59.40','','inherit','open','closed','','whatsapp-image-2025-11-15-at-03-59-40','','','2025-12-24 01:34:02','2025-12-24 01:34:02','',0,'http://jaschanova-wp.local/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-15-at-03.59.40.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-12-24 01:34:08','2025-12-24 01:34:08','http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-WhatsApp-Image-2025-11-15-at-03.59.40.jpeg','cropped-WhatsApp-Image-2025-11-15-at-03.59.40.jpeg','','inherit','open','closed','','cropped-whatsapp-image-2025-11-15-at-03-59-40-jpeg','','','2025-12-24 01:34:08','2025-12-24 01:34:08','',0,'http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-WhatsApp-Image-2025-11-15-at-03.59.40.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-12-24 01:47:04','2025-12-24 01:47:04','','WhatsApp Image 2025-11-18 at 09.08.19','','inherit','open','closed','','whatsapp-image-2025-11-18-at-09-08-19','','','2025-12-24 01:47:04','2025-12-24 01:47:04','',16,'http://jaschanova-wp.local/wp-content/uploads/2025/12/WhatsApp-Image-2025-11-18-at-09.08.19.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-12-29 22:51:45','2025-12-29 22:51:45','','loogo','','inherit','open','closed','','loogo','','','2025-12-29 22:51:45','2025-12-29 22:51:45','',0,'http://jaschanova-wp.local/wp-content/uploads/2025/12/loogo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (49,1,'2025-12-29 22:52:03','2025-12-29 22:52:03','http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-loogo.png','cropped-loogo.png','','inherit','open','closed','','cropped-loogo-png','','','2025-12-29 22:52:03','2025-12-29 22:52:03','',48,'http://jaschanova-wp.local/wp-content/uploads/2025/12/cropped-loogo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (50,1,'2025-12-29 22:52:10','2025-12-29 22:52:10','{\n    \"wp-devs::custom_logo\": {\n        \"value\": 49,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-12-29 22:52:10\"\n    }\n}','','','trash','closed','closed','','75d24607-bec9-4033-87f2-45c2bd53a2a3','','','2025-12-29 22:52:10','2025-12-29 22:52:10','',0,'http://jaschanova-wp.local/75d24607-bec9-4033-87f2-45c2bd53a2a3/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-12-29 22:56:19','2025-12-29 22:56:19','{\n    \"wp-devs::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-12-29 22:56:19\"\n    }\n}','','','trash','closed','closed','','6735b5b0-b54b-45cd-956e-3a717d72756c','','','2025-12-29 22:56:19','2025-12-29 22:56:19','',0,'http://jaschanova-wp.local/6735b5b0-b54b-45cd-956e-3a717d72756c/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-12-30 00:34:16','2025-12-30 00:34:16','<!-- wp:paragraph -->\n<p>LOREM</p>\n<!-- /wp:paragraph -->','Web Development','','inherit','closed','closed','','16-revision-v1','','','2025-12-30 00:34:16','2025-12-30 00:34:16','',16,'http://jaschanova-wp.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2026-01-02 01:14:05','2026-01-02 01:14:05','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2026-01-02 01:14:05','2026-01-02 01:14:05','',1,'http://jaschanova-wp.local/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2026-01-02 01:31:30','2026-01-02 01:31:30','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://jaschanova-wp.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2026-01-02 01:31:30','2026-01-02 01:31:30','',3,'http://jaschanova-wp.local/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2026-01-03 05:04:26','2026-01-03 05:04:26','','Erick','','trash','closed','closed','','erick__trashed','','','2026-01-03 05:04:48','2026-01-03 05:04:48','',0,'http://jaschanova-wp.local/?post_type=testimonials&#038;p=56',0,'testimonials','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2026-01-03 05:18:19','2026-01-03 05:18:19','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}','Testimonials','testimonials','publish','closed','closed','','group_6958a57ab97ea','','','2026-01-03 05:20:47','2026-01-03 05:20:47','',0,'http://jaschanova-wp.local/?post_type=acf-field-group&#038;p=59',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2026-01-03 05:18:19','2026-01-03 05:18:19','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"Client Name\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Client','client_name','publish','closed','closed','','field_6958a57a579c3','','','2026-01-03 05:18:19','2026-01-03 05:18:19','',59,'http://jaschanova-wp.local/?post_type=acf-field&p=60',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2026-01-03 05:18:19','2026-01-03 05:18:19','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"Company\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Company','company','publish','closed','closed','','field_6958a5f2579c4','','','2026-01-03 05:18:19','2026-01-03 05:18:19','',59,'http://jaschanova-wp.local/?post_type=acf-field&p=61',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2026-01-03 05:18:19','2026-01-03 05:18:19','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Testimonial Text','testimonial_text','publish','closed','closed','','field_6958a630579c5','','','2026-01-03 05:18:19','2026-01-03 05:18:19','',59,'http://jaschanova-wp.local/?post_type=acf-field&p=62',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2026-01-03 05:18:19','2026-01-03 05:18:19','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','Image','testimonial_image','publish','closed','closed','','field_6958a66a579c6','','','2026-01-03 05:18:19','2026-01-03 05:18:19','',59,'http://jaschanova-wp.local/?post_type=acf-field&p=63',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2026-01-03 05:36:55','2026-01-03 05:36:55','','The Society','','publish','closed','closed','','the-society','','','2026-01-03 05:36:55','2026-01-03 05:36:55','',0,'http://jaschanova-wp.local/?post_type=testimonials&#038;p=66',0,'testimonials','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2026-01-04 00:28:35','2026-01-04 00:28:35','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}','Hero Section','hero-section','publish','closed','closed','','group_6959b27d0720f','','','2026-01-13 03:35:40','2026-01-13 03:35:40','',0,'http://jaschanova-wp.local/?post_type=acf-field-group&#038;p=68',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2026-01-04 00:28:35','2026-01-04 00:28:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:10:\"Hero title\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Hero Title','hero_title','publish','closed','closed','','field_6959b27db5088','','','2026-01-04 00:28:35','2026-01-04 00:28:35','',68,'http://jaschanova-wp.local/?post_type=acf-field&p=69',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2026-01-04 00:28:35','2026-01-04 00:28:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:27:\"Hero Subtitle / Description\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Hero Subtitle','hero_subtitle','publish','closed','closed','','field_6959b358b5089','','','2026-01-04 00:28:35','2026-01-04 00:28:35','',68,'http://jaschanova-wp.local/?post_type=acf-field&p=70',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2026-01-04 00:28:35','2026-01-04 00:28:35','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"Hero button text\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Hero Button Text','hero_button_text','publish','closed','closed','','field_6959b391b508a','','','2026-01-04 00:28:35','2026-01-04 00:28:35','',68,'http://jaschanova-wp.local/?post_type=acf-field&p=71',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2026-01-04 00:28:35','2026-01-04 00:28:35','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:15:\"Hero button url\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}','Hero Button URL','hero_button_url','publish','closed','closed','','field_6959b3c7b508b','','','2026-01-04 00:28:35','2026-01-04 00:28:35','',68,'http://jaschanova-wp.local/?post_type=acf-field&p=72',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2026-01-04 00:28:35','2026-01-04 00:28:35','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','Hero Image','hero_image','publish','closed','closed','','field_6959b3dfb508c','','','2026-01-04 00:28:35','2026-01-04 00:28:35','',68,'http://jaschanova-wp.local/?post_type=acf-field&p=73',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2026-01-04 00:41:09','2026-01-04 00:41:09','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-04 00:41:09','2026-01-04 00:41:09','',2,'http://jaschanova-wp.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2026-01-04 00:41:36','2026-01-04 00:41:36','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-04 00:41:36','2026-01-04 00:41:36','',2,'http://jaschanova-wp.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2026-01-05 00:47:00','2026-01-05 00:47:00','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-05 00:47:00','2026-01-05 00:47:00','',2,'http://jaschanova-wp.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2026-01-05 00:47:39','2026-01-05 00:47:39','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-05 00:47:39','2026-01-05 00:47:39','',2,'http://jaschanova-wp.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2026-01-05 00:47:53','2026-01-05 00:47:53','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-05 00:47:53','2026-01-05 00:47:53','',2,'http://jaschanova-wp.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2026-01-06 01:56:49','2026-01-06 01:56:49','','hero-image2','','inherit','open','closed','','hero-image2','','','2026-01-06 01:56:49','2026-01-06 01:56:49','',2,'http://jaschanova-wp.local/wp-content/uploads/2026/01/hero-image2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (82,1,'2026-01-06 01:56:54','2026-01-06 01:56:54','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-06 01:56:54','2026-01-06 01:56:54','',2,'http://jaschanova-wp.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2026-01-07 07:34:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-01-07 07:34:23','0000-00-00 00:00:00','',0,'http://jaschanova-wp.local/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2026-01-07 07:37:11','2026-01-07 07:37:11','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}','About Section','about-section','publish','closed','closed','','group_695e0c88d1590','','','2026-01-07 07:37:38','2026-01-07 07:37:38','',0,'http://jaschanova-wp.local/?post_type=acf-field-group&#038;p=84',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2026-01-07 07:37:10','2026-01-07 07:37:10','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Title','about_title','publish','closed','closed','','field_695e0c88187db','','','2026-01-07 07:37:10','2026-01-07 07:37:10','',84,'http://jaschanova-wp.local/?post_type=acf-field&p=85',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2026-01-07 07:37:10','2026-01-07 07:37:10','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Subtitle','about_subtitle','publish','closed','closed','','field_695e0ccf187dd','','','2026-01-07 07:37:10','2026-01-07 07:37:10','',84,'http://jaschanova-wp.local/?post_type=acf-field&p=86',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2026-01-07 07:37:10','2026-01-07 07:37:10','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Text','about_text','publish','closed','closed','','field_695e0cdc187de','','','2026-01-07 07:37:10','2026-01-07 07:37:10','',84,'http://jaschanova-wp.local/?post_type=acf-field&p=87',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2026-01-07 07:37:10','2026-01-07 07:37:10','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','Image','about_image','publish','closed','closed','','field_695e0ccd187dc','','','2026-01-07 07:37:10','2026-01-07 07:37:10','',84,'http://jaschanova-wp.local/?post_type=acf-field&p=88',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2026-01-07 07:39:21','2026-01-07 07:39:21','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-07 07:39:21','2026-01-07 07:39:21','',2,'http://jaschanova-wp.local/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2026-01-07 08:37:57','2026-01-07 08:37:57','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-07 08:37:57','2026-01-07 08:37:57','',2,'http://jaschanova-wp.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2026-01-08 05:31:09','2026-01-08 05:31:09','','hero-image','','inherit','open','closed','','whatsapp_image_2026-01-04_at_07-47-00-removebg-preview','','','2026-01-08 05:31:24','2026-01-08 05:31:24','',2,'http://jaschanova-wp.local/wp-content/uploads/2026/01/WhatsApp_Image_2026-01-04_at_07.47.00-removebg-preview.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (93,1,'2026-01-08 05:31:26','2026-01-08 05:31:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-08 05:31:26','2026-01-08 05:31:26','',2,'http://jaschanova-wp.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2026-01-13 02:40:15','2026-01-13 02:40:15','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Initial Date of Experience','hero_year_exp','publish','closed','closed','','field_6965b0631b20d','','','2026-01-13 03:35:40','2026-01-13 03:35:40','',68,'http://jaschanova-wp.local/?post_type=acf-field&#038;p=94',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2026-01-13 02:41:33','2026-01-13 02:41:33','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-13 02:41:33','2026-01-13 02:41:33','',2,'http://jaschanova-wp.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2026-01-13 02:44:42','2026-01-13 02:44:42','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-13 02:44:42','2026-01-13 02:44:42','',2,'http://jaschanova-wp.local/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2026-01-13 03:39:54','2026-01-13 03:39:54','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jaschanova-wp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','2-revision-v1','','','2026-01-13 03:39:54','2026-01-13 03:39:54','',2,'http://jaschanova-wp.local/?p=99',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,2,0);
INSERT INTO `wp_term_relationships` VALUES (11,2,0);
INSERT INTO `wp_term_relationships` VALUES (12,3,0);
INSERT INTO `wp_term_relationships` VALUES (13,3,0);
INSERT INTO `wp_term_relationships` VALUES (14,1,0);
INSERT INTO `wp_term_relationships` VALUES (16,1,0);
INSERT INTO `wp_term_relationships` VALUES (16,7,0);
INSERT INTO `wp_term_relationships` VALUES (18,1,0);
INSERT INTO `wp_term_relationships` VALUES (18,5,0);
INSERT INTO `wp_term_relationships` VALUES (18,6,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,3,0);
INSERT INTO `wp_term_relationships` VALUES (38,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'post_tag','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer Menu','footer-menu',0);
INSERT INTO `wp_terms` VALUES (5,'SocialMedia','socialmedia',0);
INSERT INTO `wp_terms` VALUES (6,'People','people',0);
INSERT INTO `wp_terms` VALUES (7,'Lorem','lorem',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','vinicius');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"b3f865fb660e9f52fc31c9b2ff57a6b7a166371c4a13133de4c26daa3386b854\";a:4:{s:10:\"expiration\";i:1768980861;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1767771261;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','83');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:4:{s:4:\"core\";a:4:{s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";}s:15:\"distractionFree\";b:0;s:12:\"fixedToolbar\";b:1;}s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:19:\"metaBoxesMainIsOpen\";b:1;s:23:\"metaBoxesMainOpenHeight\";i:673;}s:9:\"_modified\";s:24:\"2026-01-04T00:38:24.908Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1766540774');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'acf_user_settings','a:1:{s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'meta-box-order_page','a:4:{s:6:\"normal\";s:47:\"acf-group_695e0c88d1590,acf-group_6959b27d0720f\";s:8:\"advanced\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (31,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'metaboxhidden_dashboard','a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'vinicius','$wp$2y$10$sgN66ThzzNKXddqlXH7NUujsCNSvoP9INijM.iOKiitXeNGm.44/G','vinicius','dev-email@wpengine.local','http://jaschanova-wp.local','2025-12-19 18:07:13','',0,'vinicius');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-13 14:31:29
