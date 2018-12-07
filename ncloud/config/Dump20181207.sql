CREATE DATABASE  IF NOT EXISTS `file_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `file_system`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: file_system
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `file_detail`
--

DROP TABLE IF EXISTS `file_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_detail` (
  `fileID` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(256) DEFAULT NULL,
  `fileOwner` varchar(50) DEFAULT NULL,
  `fileSize` bigint(20) DEFAULT NULL,
  `fileCreateTime` datetime DEFAULT NULL,
  `fileType` tinyint(4) DEFAULT NULL COMMENT '0：文件夹，1：音频，2：视频，3：图片，4：文档',
  `fileofTeam` int(11) DEFAULT NULL,
  `filePath` varchar(200) DEFAULT NULL COMMENT '绝对路径',
  `fileStatus` tinyint(1) DEFAULT '0' COMMENT '文件状态：0：正常，1：回收站标记, 2:文件被永久删除',
  `file_desription` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fileID`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_detail`
--

LOCK TABLES `file_detail` WRITE;
/*!40000 ALTER TABLE `file_detail` DISABLE KEYS */;
INSERT INTO `file_detail` VALUES (1,'需求分析.docx','zhb',120,'2018-10-29 10:30:04',1,1,'/',0,NULL),(2,'设计报告.doc','zhb',130,'2018-10-29 10:30:17',1,1,'/',0,NULL),(3,'Team01的文件夹','zhb',0,'2018-10-29 10:30:02',0,1,'/',0,NULL),(43,'CPU疼.jpg','zhb',3118,'2018-11-30 15:06:09',1,1,'E:\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ncloud\\WEB-INF\\1\\CPU疼.jpg',0,NULL),(4,'Team02的文件夹','zhb',0,'2018-11-26 19:30:09',0,2,'/',0,NULL),(5,'Team01第一级测试文件','zhb',123,'2018-10-29 10:31:24',1,1,'/',0,NULL),(6,'Team01的文件夹2','zhb',0,'2018-11-28 17:45:37',0,1,'/',0,NULL),(7,'01子文件夹','zhb',0,'2018-11-28 18:12:00',0,1,'/',0,NULL),(8,'test1.txt','zhb',122,'2018-11-28 20:16:27',1,1,'/',0,NULL),(46,'huyanla19.zip','zhb',1223387,'2018-12-04 11:17:34',1,1,'E:\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ncloud\\WEB-INF\\1\\huyanla19.zip',0,NULL),(45,'76472389ly1fxtnc84ymfj20h50h5q3v.jpg','zhb',44831,'2018-12-04 11:10:57',1,1,'E:\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ncloud\\WEB-INF\\1\\76472389ly1fxtnc84ymfj20h50h5q3v.jpg',0,NULL),(44,'Angular 2 Core.pdf','zhb',2503483,'2018-12-02 14:54:37',1,1,'E:\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ncloud\\WEB-INF\\1\\Angular 2 Core.pdf',0,NULL);
/*!40000 ALTER TABLE `file_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_relationship`
--

DROP TABLE IF EXISTS `file_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_relationship` (
  `autoID` int(11) NOT NULL AUTO_INCREMENT,
  `fileID` int(11) NOT NULL,
  `fileName` varchar(256) DEFAULT NULL,
  `fileParentID` int(11) NOT NULL COMMENT '父文件ID，如果文件或文件夹已经是顶级，那么父文件ID=0',
  PRIMARY KEY (`autoID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_relationship`
--

LOCK TABLES `file_relationship` WRITE;
/*!40000 ALTER TABLE `file_relationship` DISABLE KEYS */;
INSERT INTO `file_relationship` VALUES (1,1,'需求分析.docx',3),(2,2,'设计报告.doc',3),(3,3,'Team01的文件夹',0),(4,4,'Team02的文件夹',0),(5,5,'Team01第一级测试文件',0),(6,6,'Team01的文件夹2',0),(7,7,'01子文件夹',3),(8,8,'test1.txt',7),(32,43,'CPU疼.jpg',0),(33,44,'Angular 2 Core.pdf',7),(34,45,'76472389ly1fxtnc84ymfj20h50h5q3v.jpg',0),(35,46,'huyanla19.zip',0);
/*!40000 ALTER TABLE `file_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `team_ID` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  `team_creatorName` varchar(50) DEFAULT NULL,
  `team_creatorTime` datetime DEFAULT NULL,
  `team_category` varchar(50) DEFAULT NULL,
  `team_description` varchar(200) DEFAULT NULL,
  `team_company` varchar(50) DEFAULT NULL COMMENT '所属单位',
  `team_logoURL` varchar(200) DEFAULT NULL,
  `team_deleteflag` int(11) DEFAULT '0' COMMENT '0：团队有效\n1：团队被删除',
  PRIMARY KEY (`team_ID`),
  UNIQUE KEY `team_name_UNIQUE` (`team_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Team01','1036798979@qq.com','2018-11-25 18:56:05',NULL,'测试团队01',NULL,NULL,0),(2,'Team02','1036798979@qq.com','2018-11-25 19:00:45',NULL,'测试团队02',NULL,NULL,0);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_join_msg`
--

DROP TABLE IF EXISTS `team_join_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_join_msg` (
  `fromusername` varchar(50) NOT NULL,
  `touseremail` varchar(50) NOT NULL,
  `ishandle` int(11) DEFAULT '0' COMMENT '是否处理了，未处理0，处理1',
  `msgcontent` varchar(50) DEFAULT NULL,
  `teamname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fromusername`,`touseremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='加入团队消息通知表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_join_msg`
--

LOCK TABLES `team_join_msg` WRITE;
/*!40000 ALTER TABLE `team_join_msg` DISABLE KEYS */;
INSERT INTO `team_join_msg` VALUES ('zhb','1036798979@qq.com',0,'申请加入',NULL);
/*!40000 ALTER TABLE `team_join_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_team_relationship`
--

DROP TABLE IF EXISTS `user_team_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_team_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `useremail` varchar(50) NOT NULL,
  `teamname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户和团队关系表，用来表述用户加入的团队或团队中包含的成员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_team_relationship`
--

LOCK TABLES `user_team_relationship` WRITE;
/*!40000 ALTER TABLE `user_team_relationship` DISABLE KEYS */;
INSERT INTO `user_team_relationship` VALUES (1,'zhb','1036798979@qq.com','Team01'),(2,'zhb','1036798979@qq.com','Team02'),(3,'mny','miaonaiyang@qq.com','Team02'),(4,'mny','miaonaiyang@qq.com','Team01');
/*!40000 ALTER TABLE `user_team_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '用户邮箱',
  `role` int(11) DEFAULT '1' COMMENT '1:代表普通用户；2:代表管理员 ',
  `deleteflag` int(11) DEFAULT '0' COMMENT '0：用户有效；1:用户无效',
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('mny','123456','miaonaiyang@qq.com',1,0),('zhb','123456','1036798979@qq.com',1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 21:06:57
