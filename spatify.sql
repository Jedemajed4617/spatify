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
  `album` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `song` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table voorbeeld_db.music: ~75 rows (approximately)
INSERT INTO `music` (`id`, `artist`, `image`, `album`, `genre`, `duration`, `song`, `link`) VALUES
	(1, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'Champagne Poetry', 'https://open.spotify.com/track/2HSmyk2qMN8WQjuGhaQgCk?si=7a65a93396444345'),
	(2, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Papi\'s home', 'https://open.spotify.com/track/6jy9yJfgCsMHdu2Oz4BGKX?si=437a764db53b40d4'),
	(3, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Girls want Girls', 'https://open.spotify.com/track/37Nqx7iavZpotJSDXZWbJ3?si=0d9a42e0d59648ef'),
	(4, 'Drake, Lil Durk, Giveon', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'In the bible', 'https://open.spotify.com/track/61S79KIVA4I9FXbnsylEHT?si=2cdd96ebdf5e47d3'),
	(5, 'Drake, Jay-Z', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Love All', 'https://open.spotify.com/track/4VCbgIdr8ptegWeJpqLVHH?si=4d4a2d9a493047f3'),
	(6, 'Drake, Travis Scott', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fair Trade', 'https://open.spotify.com/track/40iJIUlhi6renaREYGeIDS?si=b6c56b611c0c41c9'),
	(7, 'Drake, Future, Young thug', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Way 2 Sexy', 'https://open.spotify.com/track/0k1WUmIRnG3xU6fvvDVfRG?si=893ba6e75e754913'),
	(8, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'TSU', 'https://open.spotify.com/track/4s7QLoImIwmPi9L6dq1nVW?si=6b73fd07f1294f24'),
	(9, 'Drake, Future', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'N 2 Deep', 'https://open.spotify.com/track/34D6FJysnQioVingDKufuf?si=82976a6f55e64089'),
	(10, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Pipe Down ', 'https://open.spotify.com/track/11pEKMLmavDu8fxOB5QjbQ?si=92cf6a4b0a6f4593'),
	(11, 'Drake, Yebba', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'short', 'Yebba\'s heartbreak', 'https://open.spotify.com/track/1PDP7mLiAMwhfmgIwzhOm2?si=84802d80e9e94a5c'),
	(12, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'No friends in the industry', 'https://open.spotify.com/track/2tUL6dZf1mywCj5WvCPZw6?si=b4cbafaa4da146cb'),
	(13, 'Drake, 21 Savage, Project Pat', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Knife talk', 'https://open.spotify.com/track/2BcMwX1MPV6ZHP4tUT9uq6?si=63c740d85e2744da'),
	(14, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', '7am on bridle path', 'https://open.spotify.com/track/42m3eP1JJhtzffal9B136J?si=74216e0399574d0a'),
	(15, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'long', 'The remorse', 'https://open.spotify.com/track/1cCXT1cErAY6tmIqHbodrt?si=1a6f1bc61c5843b1'),
	(16, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Race my mind', 'https://open.spotify.com/track/2Q3jFbyE61mCjS3SkW4toJ?si=cb886817a51b4bf9'),
	(17, 'Drake, Tems', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fountains', 'https://open.spotify.com/track/08XWh5c0BMyD1nKVxxl91z?si=441de1f728c64dc6'),
	(18, 'Drake, Ty Dolla Sign', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Get along', 'https://open.spotify.com/track/5ScbulRnixQ2XAdvrPMFjz?si=73d1eff9f4754def'),
	(19, 'Drake, Lil Wayne, Rick Ross', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'You only live twice', 'https://open.spotify.com/track/50ceCGZ3oD3U5caQV5bP6f?si=aa6ef6e37d644b67'),
	(20, 'Drake, Kid Cudi', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'IMY2', 'https://open.spotify.com/track/7F9cT6hIRhnFCYP6GKS0tf?si=ede03f3e01cd4037'),
	(21, 'Drake', 'Zj4xHCG8.webp', 'Certified Lover boy', 'Hip-Hop', 'medium', 'Fucking fans', 'https://open.spotify.com/track/3RkNXZvOSMMElmmXztDc94?si=1f62f3c2c98046ee'),
	(22, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Cijfers', 'https://open.spotify.com/track/4jsM6rg2AgFNnV4MACfkdU?si=2971505f7f8746d2'),
	(23, 'Lil` Kleine, Snelle', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Kans', 'https://open.spotify.com/track/6N0B9Akmwa5JffywAR9htj?si=0938785e1c7b441b'),
	(24, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Joanne', 'https://open.spotify.com/track/0JgzUPfK8mrR11ohCKuqYJ?si=205b058395c84e44'),
	(25, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Zware pas', 'https://open.spotify.com/track/4OSk6odtn6tJMnVyDgbltH?si=6ca137c2889e4449'),
	(26, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Koffie', 'https://open.spotify.com/track/2APT9QuugogwzaWr0OScIt?si=e9986579f0264f6d'),
	(27, 'Lil` Kleine, Ronnie Flex', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Vandaan', 'https://open.spotify.com/track/7ua5ORSWsf8JOrcX6SJ9Ub?si=e1fd741710844fe7'),
	(28, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Ondersteboven', 'https://open.spotify.com/track/251ZpSY8xImoycX2sur84A?si=b7694980d3664643'),
	(29, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Doe \'t voor Kleine', 'https://open.spotify.com/track/2HAB4T8FrO01NjffeB2mUh?si=1e1dec4c684649fa'),
	(30, 'Lil` Kleine, Wizkid', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Aan je zitten', 'https://open.spotify.com/track/4gCNTFxcnsx3RsSvsAn93f?si=f32560c257a24b79'),
	(31, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Af en toe', 'https://open.spotify.com/track/6TJg6Cl2sBbD4sOviiteVX?si=a459c74ea2e14ec9'),
	(32, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Ik strooi', 'https://open.spotify.com/track/3Kn5CCM5IWzUB2FK2ibDoD?si=289f2156053d4f2e'),
	(33, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Heel mijn leven', 'https://open.spotify.com/track/3bhmMwkuZFhgUr9Y6hmjze?si=eb055e001a6e4d05'),
	(34, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Rook', 'https://open.spotify.com/track/17L2sYqS71YBsocuCT5Bem?si=91a3d71ba87644d6'),
	(35, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Lío Zion', 'https://open.spotify.com/track/10qHpLdVCxneCtwhBNAoVP?si=1ab70612848a48db'),
	(36, 'Lil` Kleine, Maleek Berry, Frenna', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Ogen', 'https://open.spotify.com/track/38azWEI3YCdLU4HkiESps7?si=986ad39ab0b948dd'),
	(37, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Pony', 'https://open.spotify.com/track/5vMJ1Cm1UilRWUB61juU2g?si=34ace33aff9a44b2'),
	(38, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Dichterbij je', 'https://open.spotify.com/track/5TU8eIPFfQ7uUeOITnxxpb?si=f3755a9ee1a64dd0'),
	(39, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Het geluid', 'https://open.spotify.com/track/170ucLpw8gVAcmzRoW4kfH?si=bc680d4a3dbb452b'),
	(40, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Even', 'https://open.spotify.com/track/62Gd2nl9KsgAIluub9tm3X?si=8dd5c9afd95445cf'),
	(41, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'medium', 'Blijven', 'https://open.spotify.com/track/2OtSNB03S1p5N14xGZFRjw?si=543115e0c1ac4b25'),
	(42, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Financieel beeld', 'https://open.spotify.com/track/06DbXnt1xuoNZHsukvu62Y?si=06e1f645ef7643e7'),
	(43, 'Lil` Kleine', '9EqGYwsP.webp', 'Jongen van de straat', 'Nederlandstalig', 'short', 'Jongen van de straat', 'https://open.spotify.com/track/1dbI31tdknCDHwJ9j6yGYB?si=e3fd2fc7c33943e5'),
	(44, 'Queen', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Procession', 'https://open.spotify.com/track/6Wh3qXoyxfK3KeZG1Hwyik?si=9c089399519542c8'),
	(45, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'long', 'Father to son', 'https://open.spotify.com/track/4ODgFAlSa4RSeugPEXJGcQ?si=af3d526d226748d6'),
	(46, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'White queen as it began', 'https://open.spotify.com/track/3wGenfAuuEqPDvMK8NNItU?si=3463bbc221ec4619'),
	(47, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'Some day one day', 'https://open.spotify.com/track/29uME0X8n4fNwNqZ6bKZqg?si=061a581361d64564'),
	(48, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'The loser in the end', 'https://open.spotify.com/track/0aMgyTZecfVmIlosDev8AP?si=46bb194c36804c10'),
	(49, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'Ogre battle', 'https://open.spotify.com/track/6QnNTOzKfo4xzvF9J3LgVR?si=c4f8d60bbe844ae6'),
	(50, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'The fairy Feller\'s master-stroke', 'https://open.spotify.com/track/12LhScrlYazmU4vsqpRQNI?si=729a1070b03f4534'),
	(51, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Nevermore', 'https://open.spotify.com/track/6n7zeRIrGj8hTFxNWGb9k1?si=bd39466e129745f9'),
	(52, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'long', 'The march of the black queen', 'https://open.spotify.com/track/7h360CLGnW68EYvKPSoQOb?si=333a53d78cf74881'),
	(53, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Funny how love is', 'https://open.spotify.com/track/6vlEyCgWyBL84OHeI8sd2j?si=a7a69246a477407e'),
	(54, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'short', 'Seven seas of Rhye', 'https://open.spotify.com/track/1IhLUUzMxDDJ9pzfT95exy?si=ebf7f14e693f475f'),
	(55, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'medium', 'See what a fool i\'ve been', 'https://open.spotify.com/track/2vWgRaM7vLcQWJuBCmxGpI?si=b7619cb681864bec'),
	(56, 'Queen ', 'ko9Jzzvx.webp', 'Queen II', 'Rock', 'long', 'White Queen', 'https://open.spotify.com/track/5qLlVF0ST7d0ZDF66iYqjN?si=7f89625d94344d09'),
	(57, 'Taylor Swift', '8mXBT1cl.webp', 'Fearless', 'Pop', 'medium', 'Hey Stephen', 'https://open.spotify.com/track/550erGcdD9n6PnwxrvYqZT?si=3709ef8ae94940f4'),
	(58, 'Taylor Swift', '8mXBT1cl.webp', 'Fearless', 'Pop', 'long', 'Untouchable', 'https://open.spotify.com/track/0tQ9vBYpldCuikPsbgOVKA?si=5c2c7bba6fe64cf7'),
	(59, 'Khalid', 'AscKu5yk.webp', 'American teen', 'Pop', 'medium', 'Young, dumb and broke', 'https://open.spotify.com/track/5Z3GHaZ6ec9bsiI5BenrbY?si=95c69f27a25b4c46'),
	(60, 'Khalid', 'AscKu5yk.webp', 'American teen', 'Pop', 'short', 'Hopeless', 'https://open.spotify.com/track/3JTtZUOiZljuWbNiasfHB6?si=dff6c15bab48431b'),
	(61, 'Ariana Grande', 'FSaRliOC.webp', 'Thank u, next', 'Pop', 'medium', 'Break up with your girlfriend i\'m bored', 'https://open.spotify.com/track/4kV4N9D1iKVxx1KLvtTpjS?si=41db777346394976'),
	(62, 'Ariana Grande', 'FSaRliOC.webp', 'Thank u, next', 'Pop', 'short', 'Needy', 'https://open.spotify.com/track/1TEL6MlSSVLSdhOSddidlJ?si=9c693cb7b15242d7'),
	(63, 'Ariana Grande', 'FSaRliOC.webp', 'Thank u, next', 'Pop', 'long', 'Ghostin', 'https://open.spotify.com/track/2vdBo4ALPYbHRUPKgtE5iC?si=0efa669c4d2748c3'),
	(64, 'The Weeknd', 'KAwbkreQ.webp', 'After hours', 'Pop', 'short', 'Blinding lights', 'https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b?si=cadb30e372b84f0b'),
	(65, 'The Weeknd', 'KAwbkreQ.webp', 'After hours', 'Pop', 'long', 'Escape from LA', 'https://open.spotify.com/track/1sOW4PuG5X3Ie3EXUhAopJ?si=2054ac24616c4856'),
	(66, 'The Weeknd', 'KAwbkreQ.webp', 'After hours', 'Pop', 'medium', 'Save your tears', 'https://open.spotify.com/track/5QO79kh1waicV47BqGRL3g?si=c16f82a1d40c4c0f'),
	(67, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'medium', 'Getting older', 'https://open.spotify.com/track/4HOryCnbme0zBnF8LWij3f?si=2ac683e9c320484a'),
	(68, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'long', 'Happier than ever', 'https://open.spotify.com/track/4RVwu0g32PAqgUiJoXsdF8?si=117e88f6234f45bc'),
	(69, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'short', 'Therefore I am', 'https://open.spotify.com/track/20R4HfKloPKgXDqU7UKk3x?si=d27595d19ee84b09'),
	(70, 'Billie Eilish', 'fWE96JMp.webp', 'Happier than ever', 'Pop', 'short', 'Goldwing', 'https://open.spotify.com/track/0FfqyjhB6Kspvit1oOo7ax?si=d7ad01c0275f4ea9'),
	(71, 'Elvis Presley', '1cBCN5aT.webp', 'Jailhouse rock', 'Rock', 'short', 'Jailhouse rock', 'https://open.spotify.com/track/4gphxUgq0JSFv2BCLhNDiE?si=d5601f9656ff4484'),
	(72, 'Elvis Presley', '1cBCN5aT.webp', 'Jailhouse rock', 'Rock', 'short', 'Young and beautifull', 'https://open.spotify.com/track/574i7nNozhLCul1OZFK1KK?si=196d6b20c9344a47'),
	(73, 'Elvis Presley', '1cBCN5aT.webp', 'Jailhouse rock', 'Rock', 'short', 'I want to be free', 'https://open.spotify.com/track/59PDZRIul5vscYpjgrLk7X?si=a27e9874c5d24d49'),
	(74, 'Frank Sinatra', 'ebPGLoB2.webp', 'Come fly with me', 'Pop', 'medium', 'Come fly with me', 'https://open.spotify.com/track/1GcPhT7osBb4LEJnQ0tmfj?si=a2486d3bb3954c54'),
	(75, 'Frank Sinatra', 'ebPGLoB2.webp', 'Come fly with me', 'Jazz', 'short', 'Let\'s get away from it all', 'https://open.spotify.com/track/3Q0RPZLrad3sob3HmbIbaA?si=c41817d15378451b');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
