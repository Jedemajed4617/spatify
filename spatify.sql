-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.1.2-MariaDB-1:11.1.2+maria~ubu2204 - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for voorbeeld_db
CREATE DATABASE IF NOT EXISTS `voorbeeld_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `voorbeeld_db`;

-- Dumping structure for table voorbeeld_db.music
CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL DEFAULT '',
  `genre` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `song` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table voorbeeld_db.music: ~6 rows (approximately)
INSERT INTO `music` (`id`, `artist`, `image`, `album`, `genre`, `duration`, `song`) VALUES
	(1, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'Champagne Poetry'),
	(2, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Papi\'s home'),
	(3, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Girls want Girls'),
	(4, 'Drake, Lil Durk, Giveon', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'In the bible'),
	(5, 'Drake, Jay-Z', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Love All'),
	(6, 'Drake, Travis Scott', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fair Trade'),
	(7, 'Drake, Future, Young thug', 'X5KrSpDI.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Way 2 Sexy'),
	(8, 'Drake', '2nDjGtAA.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'TSU');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
