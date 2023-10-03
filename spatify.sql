-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.1.2-MariaDB-1:11.1.2+maria~ubu2204 - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.5.0.6677
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table voorbeeld_db.music: ~75 rows (approximately)
INSERT INTO `music` (`id`, `artist`, `image`, `album`, `genre`, `duration`, `song`) VALUES
	(1, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'Champagne Poetry'),
	(2, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Papi''s home'),
	(3, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Girls want Girls'),
	(4, 'Drake, Lil Durk, Giveon', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'In the bible'),
	(5, 'Drake, Jay-Z', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Love All'),
	(6, 'Drake, Travis Scott', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fair Trade'),
	(7, 'Drake, Future, Young thug', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Way 2 Sexy'),
	(8, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'TSU'),
	(9, 'Drake, Future', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'N 2 Deep'),
	(10, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Pipe Down'),
	(11, 'Drake, Yebba', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'short', 'Yebba''s heartbreak'),
	(12, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'No friends in the industry'),
	(13, 'Drake, 21 Savage, Project Pat', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Knife talk'),
	(14, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', '7am on bridle path'),
	(15, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'The remorse'),
	(16, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Race my mind'),
	(17, 'Drake, Tems', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fountains'),
	(18, 'Drake, Ty Dolla Sign', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Get along'),
	(19, 'Drake, Lil Wayne, Rick Ross', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'You only live twice'),
	(20, 'Drake, Kid Cudi', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'IMY2'),
	(21, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fucking fans'),
	(22, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Cijfers'),
	(23, 'Lil'' Kleine, Snelle', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Kans'),
	(24, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Joanne'),
	(25, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Zware pas'),
	(26, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Koffie'),
	(27, 'Lil'' Kleine, Ronnie Flex', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Vandaan'),
	(28, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Ondersteboven'),
	(29, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Doe ''t voor Kleine'),
	(30, 'Lil'' Kleine, Wizkid', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Aan je zitten'),
	(31, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Af en toe'),
	(32, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Ik strooi'),
	(33, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Heel mijn leven'),
	(34, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Rook'),
	(35, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Lío Zion'),
	(36, 'Lil'' Kleine, Maleek Berry, Frenna', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Ogen'),
	(37, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Pony'),
	(38, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Dichterbij je'),
	(39, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Het geluid'),
	(40, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Even'),
	(41, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Blijven'),
	(42, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Financieel beeld'),
	(43, 'Lil'' Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Jongen van de straat'),
	(44, 'Queen', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Procession'),
	(45, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'long', 'Father to son'),
	(46, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'White queen as it began'),
	(47, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'Some day one day'),
	(48, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'The loser in the end'),
	(49, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'Ogre battle'),
	(50, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'The fairy Feller''s master-stroke'),
	(51, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Nevermore'),
	(52, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'long', 'The march of the black queen'),
	(53, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Funny how love is'),
	(54, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Seven seas of Rhye'),
	(55, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'See what a fool i''ve been'),
	(56, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'long', 'White Queen [Live]'),
	(57, 'Taylor Swift', '8mXBT1cl.webp', 'Fearless', 'Pop', 'medium', 'Hey Stephen'),
	(58, 'Taylor Swift', '8mXBT1cl.webp', 'Fearless', 'Pop', 'long', 'Untouchable'),
	(59, 'Khalid', 'AscKu5yk.webp', 'American teen', 'Pop', 'medium', 'Young, dumb and broke'),
	(60, 'Khalid', 'AscKu5yk.webp', 'American teen', 'Pop', 'short', 'Hopeless'),
	(61, 'Ariana Grande', 'FSaRliOC.webp', 'Thank u, next', 'Pop', 'medium', 'Break up with your girlfriend i''m bored'),
	(62, 'Ariana Grande', 'FSaRliOC.webp', 'Thank u, next', 'Pop', 'short', 'Needy'),
	(63, 'Ariana Grande', 'FSaRliOC.webp', 'Thank u, next', 'Pop', 'long', 'Ghostin'''),
	(64, 'The Weeknd', 'KAwbkreQ.webp', 'After hours', 'Pop', 'short', 'Blinding lights'),
	(65, 'The Weeknd', 'KAwbkreQ.webp', 'After hours', 'Pop', 'long', 'Escape from LA'),
	(66, 'The Weeknd', 'KAwbkreQ.webp', 'After hours', 'Pop', 'medium', 'Save your tears'),
	(67, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'medium', 'Getting older'),
	(68, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'long', 'Happier than ever'),
	(69, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'short', 'Therefore I am'),
	(70, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'short', 'Goldwing'),
	(71, 'Elvis Presley', '1cBCN5aT.webp', 'Jailhouse rock', 'Rock', 'short', 'Jailhouse rock'),
	(72, 'Elvis Presley', '1cBCN5aT.webp', 'Jailhouse rock', 'Rock', 'short', 'Young and beautifull'),
	(73, 'Elvis Presley', '1cBCN5aT.webp', 'Jailhouse rock', 'Rock', 'short', 'I want to be free'),
	(74, 'Frank Sinatra', 'ebPGLoB2.webp', 'Come fly with me', 'Pop', 'medium', 'Come fly with me'),
	(75, 'Frank Sinatra', 'ebPGLoB2.webp', 'Come fly with me', 'Jazz', 'short', 'Let''s get away from it all');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
