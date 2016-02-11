-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for yii2basic
CREATE DATABASE IF NOT EXISTS `yii2basic` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `yii2basic`;


-- Dumping structure for table yii2basic.item
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(72) NOT NULL,
  `description` text NOT NULL,
  `createdBy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table yii2basic.item: ~14 rows (approximately)
DELETE FROM `item`;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`id`, `title`, `description`, `createdBy`) VALUES
	(1, 'test', 'test', 1),
	(2, 'test', 'test', 1),
	(3, 'test', 'test', 1),
	(4, 'test', 'test', 1),
	(5, 'test', 'test', 1),
	(6, 'test', 'test', 1),
	(7, 'test', 'test', 1),
	(8, 'test', 'test', 1),
	(9, 'test', 'test', 1),
	(10, 'test', 'test', 1),
	(11, 'test', 'test', 1),
	(12, 'test', 'test', 1),
	(13, 'test', 'test', 1),
	(14, 'created by demo', 'created by demo', 2);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


-- Dumping structure for table yii2basic.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table yii2basic.user: ~4 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `email`, `password`, `auth_key`, `access_token`) VALUES
	(1, 'admin', 'admin@test.com', '$2y$13$Pffhnu0kmLtPFh1FvsTW.uytZUcKqvzaAsyfZ2ndFIn4RDdkziBDi', 'sD5xEL4wrtp-F3p_whb6MSNuiqJZeSEw', ''),
	(2, 'demo', 'demo@c.com', '$2y$13$5CHCppxn0zM2vk9iBFbMYecncYKDQ3kk.CZgXlw38JJWpenLa5X/C', 'OVoFXInC32MZe7WFLH_noXztCqtEl09S', ''),
	(3, 'author', 'author@c.com', '$2y$13$IidVTWRN.mSYEpN/dv1WP.BtrSpefmiEvE9ZpAB1slqUjoD.EN.LK', 'uHIclEdJX6MWREdmGp3B_GSny9jjHpSV', ''),
	(4, 'author2', 'author2@c.com', '$2y$13$5mknPL3RT3IHPqE01RcBD.SEKrdKqKIIVWCfEZcSi.GjRAvwF8/L2', 'nDbnqis3LKe9HwFbH7UXfi5TLndFfBce', '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
