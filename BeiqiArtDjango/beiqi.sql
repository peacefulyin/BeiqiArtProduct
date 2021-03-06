-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: beiqi
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_author_id_01185df5_fk_user_id` (`author_id`),
  CONSTRAINT `article_author_id_01185df5_fk_user_id` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'鏂囩珷1','<p><strong>浣犱滑濂藉晩</strong></p>\r\n\r\n<p><strong>鍝堝搱鍝堝搱鍝?/strong></p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2018/01/18/test_8E5BRpd.png\" style=\"height:296px; width:800px\" /></p>','2018-01-18 09:35:41.166499','2018-01-18 09:28:13.767481',1),(2,'鏂囩珷2','<p>鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2鏂囩珷2</p>','2018-01-18 09:36:08.767271','2018-01-18 09:36:08.767271',1),(3,'鏂囩珷3','<p>鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3鏂囩珷3</p>','2018-01-18 09:36:19.007008','2018-01-18 09:36:19.007008',1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tags`
--

DROP TABLE IF EXISTS `article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_tags_article_id_tag_id_9ea24d7b_uniq` (`article_id`,`tag_id`),
  KEY `article_tags_tag_id_55b93824_fk_article_tag_id` (`tag_id`),
  CONSTRAINT `article_tags_article_id_ebbe35ec_fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `article_tags_tag_id_55b93824_fk_article_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tags`
--

LOCK TABLES `article_tags` WRITE;
/*!40000 ALTER TABLE `article_tags` DISABLE KEYS */;
INSERT INTO `article_tags` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 鐢ㄦ埛',7,'add_user'),(20,'Can change 鐢ㄦ埛',7,'change_user'),(21,'Can delete 鐢ㄦ埛',7,'delete_user'),(22,'Can add 鑰佸笀',8,'add_teacher'),(23,'Can change 鑰佸笀',8,'change_teacher'),(24,'Can delete 鑰佸笀',8,'delete_teacher'),(25,'Can add 瀹堕暱',9,'add_parent'),(26,'Can change 瀹堕暱',9,'change_parent'),(27,'Can delete 瀹堕暱',9,'delete_parent'),(28,'Can add 瀛︾敓',10,'add_student'),(29,'Can change 瀛︾敓',10,'change_student'),(30,'Can delete 瀛︾敓',10,'delete_student'),(31,'Can add 鏂囩珷',11,'add_article'),(32,'Can change 鏂囩珷',11,'change_article'),(33,'Can delete 鏂囩珷',11,'delete_article'),(34,'Can add 璇剧▼',12,'add_course'),(35,'Can change 璇剧▼',12,'change_course'),(36,'Can delete 璇剧▼',12,'delete_course'),(37,'Can add 璇剧▼琛?,13,'add_courseschedule'),(38,'Can change 璇剧▼琛?,13,'change_courseschedule'),(39,'Can delete 璇剧▼琛?,13,'delete_courseschedule'),(40,'Can add video',14,'add_video'),(41,'Can change video',14,'change_video'),(42,'Can delete video',14,'delete_video'),(43,'Can add video list',15,'add_videolist'),(44,'Can change video list',15,'change_videolist'),(45,'Can delete video list',15,'delete_videolist'),(46,'Can add enroll',16,'add_enroll'),(47,'Can change enroll',16,'change_enroll'),(48,'Can delete enroll',16,'delete_enroll'),(49,'Can add tag',17,'add_tag'),(50,'Can change tag',17,'change_tag'),(51,'Can delete tag',17,'delete_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$utQAZvLhVkCC$d+BmhrDCNeEzJDQo3WLWnuf/m/sharvpXTJKhB/S2rM=','2018-01-17 06:14:57.954166',1,'monkyin','','','monkyin@qq.com',1,1,'2018-01-17 06:14:40.953123'),(2,'pbkdf2_sha256$100000$N0VVyrT9UsyG$3FK3oHtYTn1/ThDtRheagQ0jf06iJZjgPfaU5ZRt+MA=',NULL,0,'Beibei','','','',0,1,'2018-01-18 09:25:03.389633');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `describe` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'course1','2018-01-17 06:00:36.695415','2018-01-17 06:00:36.696442','course describe1');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_schedule`
--

DROP TABLE IF EXISTS `course_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_schedule_course_id_f2350d3a_fk_course_id` (`course_id`),
  CONSTRAINT `course_schedule_course_id_f2350d3a_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_schedule`
--

LOCK TABLES `course_schedule` WRITE;
/*!40000 ALTER TABLE `course_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-01-17 06:16:04.340096','1','瀛︾敓1',1,'[{\"added\": {}}]',16,1),(2,'2018-01-18 09:25:03.472323','2','Beibei',1,'[{\"added\": {}}]',4,1),(3,'2018-01-18 09:27:27.753129','1','Beibei',1,'[{\"added\": {}}]',7,1),(4,'2018-01-18 09:28:13.768984','1','鏂囩珷1',1,'[{\"added\": {}}]',11,1),(5,'2018-01-18 09:35:25.096243','1','鑸炶箞',1,'[{\"added\": {}}]',17,1),(6,'2018-01-18 09:35:41.171512','1','鏂囩珷1',2,'[{\"changed\": {\"fields\": [\"tags\"]}}]',11,1),(7,'2018-01-18 09:36:08.777301','2','鏂囩珷2',1,'[{\"added\": {}}]',11,1),(8,'2018-01-18 09:36:19.017536','3','鏂囩珷3',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(11,'article','article'),(17,'article','tag'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'course','course'),(13,'course','courseschedule'),(16,'course','enroll'),(14,'medium','video'),(15,'medium','videolist'),(6,'sessions','session'),(9,'user','parent'),(10,'user','student'),(8,'user','teacher'),(7,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-16 01:16:13.086985'),(2,'auth','0001_initial','2018-01-16 01:16:14.101197'),(3,'admin','0001_initial','2018-01-16 01:16:14.340021'),(4,'admin','0002_logentry_remove_auto_add','2018-01-16 01:16:14.351037'),(5,'contenttypes','0002_remove_content_type_name','2018-01-16 01:16:14.576717'),(6,'auth','0002_alter_permission_name_max_length','2018-01-16 01:16:14.666805'),(7,'auth','0003_alter_user_email_max_length','2018-01-16 01:16:14.766616'),(8,'auth','0004_alter_user_username_opts','2018-01-16 01:16:14.776639'),(9,'auth','0005_alter_user_last_login_null','2018-01-16 01:16:14.859622'),(10,'auth','0006_require_contenttypes_0002','2018-01-16 01:16:14.864636'),(11,'auth','0007_alter_validators_add_error_messages','2018-01-16 01:16:14.874616'),(12,'auth','0008_alter_user_username_max_length','2018-01-16 01:16:15.054623'),(13,'auth','0009_alter_user_last_name_max_length','2018-01-16 01:16:15.134717'),(14,'sessions','0001_initial','2018-01-16 01:16:15.209403'),(15,'course','0001_initial','2018-01-16 01:17:23.330081'),(16,'user','0001_initial','2018-01-16 01:17:24.394258'),(17,'article','0001_initial','2018-01-16 01:17:24.567771'),(18,'user','0002_auto_20180116_0919','2018-01-16 01:19:31.457822'),(19,'user','0003_auto_20180116_0920','2018-01-16 01:20:21.865069'),(20,'medium','0001_initial','2018-01-16 02:04:01.968568'),(21,'course','0002_enroll','2018-01-17 05:47:05.871013'),(22,'course','0003_auto_20180117_1348','2018-01-17 05:48:09.470105'),(23,'course','0004_auto_20180117_1357','2018-01-17 05:57:57.215949'),(24,'course','0005_auto_20180117_1408','2018-01-17 06:08:34.015406'),(25,'article','0002_auto_20180118_1733','2018-01-18 09:33:44.571009'),(26,'article','0003_auto_20180118_1735','2018-01-18 09:35:13.121581');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2uoouzu2ll4s59930heaozsq6ofo63l2','MzdkYWI5NWI1YjJiMjFjZWYzOTlhYTQ5ZWUyNmZjZTRhNjMzYmNjMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzlhNTVjOThmYmJhZjY2NzA5ZjhjOGExYTJiOTM0Y2RmYzhkNTc3In0=','2018-01-31 06:14:57.970345');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll_sheet`
--

DROP TABLE IF EXISTS `enroll_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll_sheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `parentName` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `remark` longtext NOT NULL,
  `course_id` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_enroll_course_id_0d632c56_fk_course_id` (`course_id`),
  CONSTRAINT `course_enroll_course_id_0d632c56_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll_sheet`
--

LOCK TABLES `enroll_sheet` WRITE;
/*!40000 ALTER TABLE `enroll_sheet` DISABLE KEYS */;
INSERT INTO `enroll_sheet` VALUES (11,'瀛︾敓2',2,3,'2018-01-17 14:02:18.000000','瀹堕暱2',1823213213,1,'remark2',1,'2018-01-17 09:03:10.678815','2018-01-17 09:03:10.678815'),(12,'1',1,6,'2018-01-22 16:00:00.000000','1',1111,1,'111',1,'2018-01-17 09:14:11.074108','2018-01-17 09:14:11.074108');
/*!40000 ALTER TABLE `enroll_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medium_video`
--

DROP TABLE IF EXISTS `medium_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medium_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `link` varchar(200) NOT NULL,
  `describe` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medium_video`
--

LOCK TABLES `medium_video` WRITE;
/*!40000 ALTER TABLE `medium_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `medium_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medium_videolist`
--

DROP TABLE IF EXISTS `medium_videolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medium_videolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `describe` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medium_videolist`
--

LOCK TABLES `medium_videolist` WRITE;
/*!40000 ALTER TABLE `medium_videolist` DISABLE KEYS */;
/*!40000 ALTER TABLE `medium_videolist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medium_videolist_videos`
--

DROP TABLE IF EXISTS `medium_videolist_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medium_videolist_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videolist_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medium_videolist_videos_videolist_id_video_id_ae1c1924_uniq` (`videolist_id`,`video_id`),
  KEY `medium_videolist_videos_video_id_4ce795b3_fk_medium_video_id` (`video_id`),
  CONSTRAINT `medium_videolist_vid_videolist_id_653aa07e_fk_medium_vi` FOREIGN KEY (`videolist_id`) REFERENCES `medium_videolist` (`id`),
  CONSTRAINT `medium_videolist_videos_video_id_4ce795b3_fk_medium_video_id` FOREIGN KEY (`video_id`) REFERENCES `medium_video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medium_videolist_videos`
--

LOCK TABLES `medium_videolist_videos` WRITE;
/*!40000 ALTER TABLE `medium_videolist_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medium_videolist_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `describe` longtext,
  `phone` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `describe` longtext,
  `join_date` datetime(6) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_parent_id_48e938fd_fk_parent_id` (`parent_id`),
  CONSTRAINT `student_parent_id_48e938fd_fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'student1',5,1,'student1 Describe',NULL,NULL,'','student1 Address',NULL),(2,'student1',5,1,'student1 Describe',NULL,NULL,'','student1 Address',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_courses`
--

DROP TABLE IF EXISTS `student_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_courses_student_id_course_id_c791c3fd_uniq` (`student_id`,`course_id`),
  KEY `student_courses_course_id_ce17ed61_fk_course_id` (`course_id`),
  CONSTRAINT `student_courses_course_id_ce17ed61_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `student_courses_student_id_cf7a0670_fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_courses`
--

LOCK TABLES `student_courses` WRITE;
/*!40000 ALTER TABLE `student_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_teacher`
--

DROP TABLE IF EXISTS `student_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_teacher_student_id_teacher_id_8f6989cd_uniq` (`student_id`,`teacher_id`),
  KEY `student_teacher_teacher_id_2c83afdf_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `student_teacher_student_id_2facb22f_fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `student_teacher_teacher_id_2c83afdf_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_teacher`
--

LOCK TABLES `student_teacher` WRITE;
/*!40000 ALTER TABLE `student_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'鑸炶箞','2018-01-18 09:35:25.092232','2018-01-18 09:35:25.092232');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `describe` longtext,
  `join_time` datetime(6) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_courses`
--

DROP TABLE IF EXISTS `teacher_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_courses_teacher_id_course_id_7201fdae_uniq` (`teacher_id`,`course_id`),
  KEY `teacher_courses_course_id_5fdc4682_fk_course_id` (`course_id`),
  CONSTRAINT `teacher_courses_course_id_5fdc4682_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `teacher_courses_teacher_id_f3e2224b_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_courses`
--

LOCK TABLES `teacher_courses` WRITE;
/*!40000 ALTER TABLE `teacher_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Beibei','bb123321','beibei@qq.com',NULL,'2018-01-18 09:27:27.752155','2018-01-18 09:27:27.752155');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-19 13:03:18
