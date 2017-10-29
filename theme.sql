CREATE DATABASE  IF NOT EXISTS `theme` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `theme`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: theme
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-01 17:42:57
CREATE TABLE `ts_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mumuid` varchar(36) NOT NULL,
  `themename` varchar(255) NOT NULL,
  `marking` float(2,1) DEFAULT '0.0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
CREATE TABLE `ts_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(36) NOT NULL,
  `user_loginname` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mailbox` varchar(255) DEFAULT NULL,
  `user_tellphone` varchar(11) DEFAULT NULL,
  `user_city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `ts_list` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_uid` varchar(36) NOT NULL,
  `theme_authorname` varchar(255) DEFAULT NULL,
  `theme_authoruid` varchar(255) NOT NULL,
  `theme_version` varchar(50) NOT NULL,
  `theme_filesrc` varchar(255) NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `theme_imgsrc` varchar(255) NOT NULL,
  `theme_tags` varchar(1000) DEFAULT '',
  `theme_description` varchar(1000) DEFAULT '',
  `theme_downloadtimes` smallint(10) NOT NULL,
  `theme_marking` float(2,1) DEFAULT '0.0',
  `theme_markingnum` int(11) DEFAULT '0',
  `theme_lastupdated` date NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
