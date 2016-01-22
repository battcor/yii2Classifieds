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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table yii2basic.item: ~13 rows (approximately)
DELETE FROM `item`;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`id`, `title`, `description`) VALUES
	(1, 'test', 'test'),
	(2, 'test', 'test'),
	(3, 'test', 'test'),
	(4, 'test', 'test'),
	(5, 'test', 'test'),
	(6, 'test', 'test'),
	(7, 'test', 'test'),
	(8, 'test', 'test'),
	(9, 'test', 'test'),
	(10, 'test', 'test'),
	(11, 'test', 'test'),
	(12, 'test', 'test'),
	(13, 'test', 'test');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


-- Dumping structure for table yii2basic.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `authKey` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table yii2basic.user: ~0 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `authKey`, `accessToken`) VALUES
	(1, 'admin', '$2y$13$VSOWYIJ1LzIbTEAwxcQ7WeDLZ93tidWZrUQziQuneh5ttT50Xh2UG', '????z?\n#??!????<Or5?D?W??C#?', 'ZaWpDAAhpbUA3ZoYZroYhQ5tbsXH77I2'),
	(2, 'demo', '$2y$13$1Ns6y.siLMr9GYK257x4AeSNMQX9BX80Mr5kEBCLTX4lif9DoUO1e', '?Xv??~??m???9????O?AS?"SU?*[?p', 'XFfXfsNHbea0_dHqD5vRqZP5NBlV44kO'),
	(3, 'guest', '$2y$13$KNHClPRjliUEHGtierQLou6bBPFS1qrsrUnFPIsAE35L6ya7HVYmO', 's{y?)_F??n????A?W{??B?9?qc?', 'cyCkH-NyWsog74WyMBNQarAmynI-H-Wo');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
