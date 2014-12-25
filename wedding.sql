-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: wedding
-- ------------------------------------------------------
-- Server version   5.1.73

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES
(1,'http://wedding.wada811.com/images/uploads/03ab5474ed1f1b04f191553dd271413d0d7895f1.jpg','チャペル☆','2014-11-22 10:58:43','2014-11-22 10:58:43'),
(2,'http://wedding.wada811.com/images/uploads/762d05e2fe2ed00b72acfb9da973f7dda39b0fba.jpg','','2014-11-22 13:50:26','2014-11-22 13:50:26'),
(3,'http://wedding.wada811.com/images/uploads/5f636aac17e84a73e57294bc42721e555e44d2fb.jpg','','2014-11-22 13:50:41','2014-11-22 13:50:41'),
(4,'http://wedding.wada811.com/images/uploads/37e90785a7c9fb9606f1aa7cdc2d472be681cbf3.jpg','彼の会社のアプリ、漫画カメラでとりました！','2014-11-22 13:51:09','2014-11-22 13:51:09'),
(5,'http://wedding.wada811.com/images/uploads/68351d41fef3a16aa2ed6377d2bc3eb8b7f5d1b4.jpg','','2014-11-22 13:51:22','2014-11-22 13:51:22'),
(6,'http://wedding.wada811.com/images/uploads/cad4ad3460130134a7427600af57a40a01cd749f.jpg','晴れ男','2014-11-22 13:51:32','2014-11-22 13:51:32'),
(7,'http://wedding.wada811.com/images/uploads/c6fff53f57ad63bb4082076ba2c30804c461d84d.jpg','凛々しい！','2014-11-22 13:51:50','2014-11-22 13:51:50'),
(8,'http://wedding.wada811.com/images/uploads/b9963497f3522672300bc7d23e221815611175f3.jpg','','2014-11-22 13:53:16','2014-11-22 13:53:16'),
(9,'http://wedding.wada811.com/images/uploads/93daa99e0438b7be7106969d925d7651c4494211.jpg','','2014-11-22 13:57:08','2014-11-22 13:57:08'),
(10,'http://wedding.wada811.com/images/uploads/04f31d54d040edeb522deb2449fdd3211c487128.jpg','じゃんけん','2014-11-22 14:15:06','2014-11-22 14:15:06'),
(11,'http://wedding.wada811.com/images/uploads/be37f85cf40be720344b4f4f31881fc289f5b6f8.jpg','兄弟！','2014-11-22 14:19:00','2014-11-22 14:19:00'),
(12,'http://wedding.wada811.com/images/uploads/2a057e1ae2aed1baf9f19dda48d0502e14e43d09.jpg','精一杯のありがとう！','2014-11-22 14:24:00','2014-11-22 14:24:00'),
(13,'http://wedding.wada811.com/images/uploads/d2838807941b7bff1b3e8108ca4ec7a6260707b6.jpg','','2014-11-22 14:29:06','2014-11-22 14:29:06'),
(14,'http://wedding.wada811.com/images/uploads/c871b46408db3a882c122563cd0ad7d89c3f0463.jpg','ディズニーなう','2014-11-22 14:39:58','2014-11-22 14:39:58'),
(15,'http://wedding.wada811.com/images/uploads/eb68d876b9f740cd14463b6d9df6416cabd4abd2.jpg','おめでとー','2014-11-22 14:42:23','2014-11-22 14:42:23'),
(16,'http://wedding.wada811.com/images/uploads/03692823830005a75d8a1418d3959d233d6d03cf.jpg','あーん','2014-11-22 14:43:16','2014-11-22 14:43:16'),
(17,'http://wedding.wada811.com/images/uploads/b853c2571308cf1971938fa8a703c2eb89b84dee.jpg','漫画カメラ','2014-11-22 14:43:43','2014-11-22 14:43:43'),
(18,'http://wedding.wada811.com/images/uploads/a86d5887c27eda3814aa7d9395dc8f78e1d9784f.jpg','バズーカなう','2014-11-22 14:45:06','2014-11-22 14:45:06'),
(19,'http://wedding.wada811.com/images/uploads/44a9c5c5e892369d32d14399ce723d466c28225b.jpg','ミッキー','2014-11-22 14:56:29','2014-11-22 14:56:29'),
(20,'http://wedding.wada811.com/images/uploads/84dda0f6f9acc46aeed869e6696b9ca3b62e5838.jpg','ミッキーのケーキ','2014-11-22 14:57:28','2014-11-22 14:57:28'),
(21,'http://wedding.wada811.com/images/uploads/c55bde4e2522e355606c82a0b39821c201c0194b.jpg','挨拶1','2014-11-22 14:59:19','2014-11-22 14:59:19'),
(22,'http://wedding.wada811.com/images/uploads/e1bbe78d4ef467795666e691dca6c72b53f3cfad.jpg','挨拶した人','2014-11-22 15:00:14','2014-11-22 15:00:14'),
(23,'http://wedding.wada811.com/images/uploads/3c843f2d89b1ac7a4c3396874066ea4655172674.jpg','挨拶した人その2','2014-11-22 15:00:49','2014-11-22 15:00:49'),
(24,'http://wedding.wada811.com/images/uploads/d64ab5d1c267ac74d8d331a3159975b4ecf0d16d.jpg','挨拶した人その3','2014-11-22 15:01:13','2014-11-22 15:01:13'),
(25,'http://wedding.wada811.com/images/uploads/8114a14c857ab2f4ae32d16b694a5b5cb2ade6ec.jpg','挨拶した人その4','2014-11-22 15:01:40','2014-11-22 15:01:40'),
(26,'http://wedding.wada811.com/images/uploads/6ba72b07c83628d383f025ca9e936f187107dbdd.jpg','','2014-11-22 15:01:43','2014-11-22 15:01:43'),
(27,'http://wedding.wada811.com/images/uploads/3ce11734a00a4b6ad8bea851102fee4ce64dc7e7.jpg','この人どーするか協議中w','2014-11-22 15:03:46','2014-11-22 15:03:46'),
(28,'http://wedding.wada811.com/images/uploads/0f8f1812db228486ed6cc330817e153814dacace.jpg','','2014-11-22 15:04:27','2014-11-22 15:04:27'),
(29,'http://wedding.wada811.com/images/uploads/e33e327b2886cadb959671d0bf80ba630d2eeafa.jpg','おめでとー','2014-11-22 15:19:56','2014-11-22 15:19:56'),
(30,'http://wedding.wada811.com/images/uploads/3c6f0c8102a2bd89b87ba6f71ad5ae03c15916d1.jpg','まとめて送っていくよー！','2014-11-22 17:10:50','2014-11-22 17:10:50'),
(31,'http://wedding.wada811.com/images/uploads/a4c3752efd25fee36473534f328c1aa449262ccb.jpg','','2014-11-22 17:11:03','2014-11-22 17:11:03'),
(32,'http://wedding.wada811.com/images/uploads/d0c2b4e615812de02c7e9095efd4fc62aedfa0ff.jpg','','2014-11-22 17:11:17','2014-11-22 17:11:17'),
(33,'http://wedding.wada811.com/images/uploads/6182c115c0ee4c4d5db2e7f9e23cb7eeb84646fa.jpg','','2014-11-22 17:11:28','2014-11-22 17:11:28'),
(34,'http://wedding.wada811.com/images/uploads/3d5317fb17ae1be6b0aa0b11e3d4d47fafb24098.jpg','良い食べっぷりでした！','2014-11-22 17:12:05','2014-11-22 17:12:05'),
(35,'http://wedding.wada811.com/images/uploads/5726f1a42d081eb8bc9d1a73a28141f5a19d1e3eimage:9770','','2014-11-22 23:53:29','2014-11-22 23:53:29'),
(36,'http://wedding.wada811.com/images/uploads/667eca54f95cb2d954d36d63176cb800c5370a7cimage:9712','','2014-11-22 23:54:00','2014-11-22 23:54:00'),
(37,'http://wedding.wada811.com/images/uploads/2d3112398a7c2e2f2252ccfac09e96606f122a87.jpg','','2014-11-24 11:21:14','2014-11-24 11:21:14'),
(38,'http://wedding.wada811.com/images/uploads/ab09a545d255c00ce939a0609edad20ffe0c1d04.jpg','この笑顔の絶えない家庭を築いてくださいな♡','2014-11-25 22:07:29','2014-11-25 22:07:29'),
(39,'http://wedding.wada811.com/images/uploads/042a583e30795e2365b1f8e5925be934c437790f.JPG','','2014-11-27 01:09:39','2014-11-27 01:09:39'),
(40,'http://wedding.wada811.com/images/uploads/68351d41fef3a16aa2ed6377d2bc3eb8b7f5d1b4.jpg','いい笑顔♥','2014-11-27 23:13:24','2014-11-27 23:13:24'),
(41,'http://wedding.wada811.com/images/uploads/00be60fafccbf89db3e01fae4a0f2e55e13bbfd7.JPG','','2014-11-29 22:39:46','2014-11-29 22:39:46'),
(42,'http://wedding.wada811.com/images/uploads/5179e6467d42e04a3a7266ab50e1ab65dc12fe2e.JPG','','2014-11-29 22:40:53','2014-11-29 22:40:53'),
(43,'http://wedding.wada811.com/images/uploads/ff657fde76a9a24c339a97ac44607ceaf2f4e287.JPG','','2014-11-29 22:58:11','2014-11-29 22:58:11'),
(44,'http://wedding.wada811.com/images/uploads/463d45b0f6afcc99847b63876c95faa82f3fa2c8.JPG','','2014-11-30 00:03:55','2014-11-30 00:03:55'),
(45,'http://wedding.wada811.com/images/uploads/ca00fc70e15ee866cfa2568e8348ec9704dbd562.JPG','','2014-11-30 00:06:38','2014-11-30 00:06:38');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-15  9:16:46