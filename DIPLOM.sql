-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               Microsoft SQL Server 2025 (RTM) - 17.0.1000.7
-- Server OS:                    Linux (Ubuntu 22.04.5 LTS) <X64>
-- HeidiSQL Version:             12.16.0.7229
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for DIPLOM
CREATE DATABASE IF NOT EXISTS "DIPLOM";
USE "DIPLOM";

-- Dumping structure for table DIPLOM.__EFMigrationsHistory
CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
	"MigrationId" NVARCHAR(150) COLLATE SQL_Latin1_General_CP1_CI_AS,
	"ProductVersion" NVARCHAR(32) COLLATE SQL_Latin1_General_CP1_CI_AS,
	PRIMARY KEY ("MigrationId")
);

-- Dumping data for table DIPLOM.__EFMigrationsHistory: 4 rows
INSERT IGNORE INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES
	(N'20260518085646_InitialCreate', N'9.0.16'),
	(N'20260518090345_updateletters', N'9.0.16'),
	(N'20260610113131_Statistics', N'9.0.16'),
	(N'20260610113355_Statistics', N'9.0.16');

-- Dumping structure for table DIPLOM.Abetka
CREATE TABLE IF NOT EXISTS "Abetka" (
	"id" INT,
	"name" NVARCHAR(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	"description" NVARCHAR(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	PRIMARY KEY ("id")
);

-- Dumping data for table DIPLOM.Abetka: 4 rows
INSERT IGNORE INTO "Abetka" ("id", "name", "description") VALUES
	(2, N'Hiragana', N'Перша абетка'),
	(4, N'Katakana', N'Друга абетка'),
	(1003, N'HiraganaAD', N'Перша абетка+'),
	(1004, N'KatakanaAD', N'Друга абетка+');

-- Dumping structure for table DIPLOM.Letters
CREATE TABLE IF NOT EXISTS "Letters" (
	"id" INT,
	"japanese" NVARCHAR(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	"english" NVARCHAR(max) COLLATE SQL_Latin1_General_CP1_CI_AS,
	"abetkaid" INT,
	FOREIGN KEY INDEX "FK_Letters_Abetka_abetkaid" ("abetkaid"),
	PRIMARY KEY ("id"),
	CONSTRAINT "FK_Letters_Abetka_abetkaid" FOREIGN KEY ("abetkaid") REFERENCES "Abetka" ("id") ON UPDATE NO_ACTION ON DELETE CASCADE
);

-- Dumping data for table DIPLOM.Letters: 142 rows
INSERT IGNORE INTO "Letters" ("id", "japanese", "english", "abetkaid") VALUES
	(3, N'あ', N'a', 2),
	(6, N'ア', N'a', 4),
	(8, N'い', N'i', 2),
	(9, N'う', N'u', 2),
	(10, N'え', N'e', 2),
	(11, N'お', N'o', 2),
	(12, N'か', N'ka', 2),
	(13, N'き', N'ki', 2),
	(14, N'く', N'ku', 2),
	(15, N'け', N'ke', 2),
	(17, N'こ', N'ko', 2),
	(19, N'さ', N'sa', 2),
	(20, N'し', N'shi', 2),
	(21, N'す', N'su', 2),
	(22, N'せ', N'se', 2),
	(23, N'そ', N'so', 2),
	(25, N'た', N'ta', 2),
	(26, N'ち', N'chi', 2),
	(27, N'つ', N'tsu', 2),
	(30, N'て', N'te', 2),
	(31, N'と', N'to', 2),
	(32, N'な', N'na', 2),
	(33, N'に', N'ni', 2),
	(34, N'ぬ', N'nu', 2),
	(35, N'ね', N'ne', 2),
	(36, N'の', N'no', 2),
	(37, N'は', N'ha', 2),
	(38, N'ひ', N'hi', 2),
	(39, N'ふ', N'fu', 2),
	(41, N'へ', N'he', 2),
	(42, N'ほ', N'ho', 2),
	(44, N'ま', N'ma', 2),
	(46, N'み', N'mi', 2),
	(47, N'む', N'mu', 2),
	(48, N'め', N'me', 2),
	(49, N'も', N'mo', 2),
	(50, N'や', N'ya', 2),
	(51, N'ゆ', N'yu', 2),
	(52, N'よ', N'yo', 2),
	(53, N'ら', N'ra', 2),
	(55, N'り', N'ri', 2),
	(56, N'る', N'ru', 2),
	(57, N'れ', N're', 2),
	(58, N'ろ', N'ro', 2),
	(59, N'わ', N'wa', 2),
	(60, N'を', N'wo', 2),
	(61, N'ん', N'n', 2),
	(62, N'イ', N'i', 4),
	(63, N'ウ', N'u', 4),
	(64, N'エ', N'e', 4),
	(65, N'オ', N'o', 4),
	(66, N'カ', N'ka', 4),
	(67, N'キ', N'ki', 4),
	(68, N'ク', N'ku', 4),
	(69, N'ケ', N'ke', 4),
	(70, N'コ', N'ko', 4),
	(71, N'サ', N'sa', 4),
	(72, N'シ', N'shi', 4),
	(73, N'ス', N'su', 4),
	(74, N'セ', N'se', 4),
	(75, N'ソ', N'so', 4),
	(76, N'タ', N'ta', 4),
	(77, N'チ', N'chi', 4),
	(78, N'ツ', N'tsu', 4),
	(79, N'テ', N'te', 4),
	(80, N'ト', N'to', 4),
	(81, N'ナ', N'na', 4),
	(82, N'ニ', N'ni', 4),
	(83, N'ヌ', N'nu', 4),
	(84, N'ネ', N'ne', 4),
	(85, N'ノ', N'no', 4),
	(86, N'ハ', N'ha', 4),
	(87, N'ヒ', N'hi', 4),
	(89, N'フ', N'fu', 4),
	(90, N'ヘ', N'he', 4),
	(91, N'ホ', N'ho', 4),
	(92, N'マ', N'ma', 4),
	(93, N'ミ', N'mi', 4),
	(94, N'ム', N'mu', 4),
	(95, N'メ', N'me', 4),
	(96, N'モ', N'mo', 4),
	(97, N'ヤ', N'ya', 4),
	(98, N'ユ', N'yu', 4),
	(99, N'ヨ', N'yo', 4),
	(100, N'ラ', N'ra', 4),
	(101, N'リ', N'ri', 4),
	(102, N'ル', N'ru', 4),
	(103, N'レ', N're', 4),
	(104, N'ロ', N'ro', 4),
	(106, N'ワ', N'wa', 4),
	(107, N'ヲ', N'wo', 4),
	(108, N'ン', N'n', 4),
	(1005, N'が', N'ga', 1003),
	(1007, N'ぎ', N'gi', 1003),
	(1009, N'ぐ', N'gu', 1003),
	(1010, N'げ', N'ge', 1003),
	(1011, N'ご', N'go', 1003),
	(1012, N'ざ', N'za', 1003),
	(1013, N'じ', N'ji', 1003),
	(1015, N'ず', N'zu', 1003),
	(1018, N'ぜ', N'ze', 1003),
	(1019, N'ぞ', N'zo', 1003),
	(1021, N'だ', N'da', 1003),
	(1024, N'ぢ', N'ji', 1003),
	(1026, N'づ', N'zu', 1003),
	(1028, N'で', N'de', 1003),
	(1029, N'ど', N'do', 1003),
	(1030, N'ば', N'ba', 1003),
	(1032, N'び', N'bi', 1003),
	(1033, N'ぶ', N'bu', 1003),
	(1035, N'べ', N'be', 1003),
	(1037, N'ぼ', N'bo', 1003),
	(1039, N'ぱ', N'pa', 1003),
	(1040, N'ぴ', N'pi', 1003),
	(1042, N'ぷ', N'pu', 1003),
	(1043, N'ぺ', N'pe', 1003),
	(1046, N' ぽ', N'po', 1003),
	(2004, N'ガ', N'ga', 1004),
	(2006, N'ギ', N'gi', 1004),
	(2008, N'グ', N'gu', 1004),
	(2010, N'ゲ', N'ge', 1004),
	(2012, N'ゴ', N'go', 1004),
	(2013, N'ザ', N'za', 1004),
	(2016, N'ジ', N'ji', 1004),
	(2017, N'ズ', N'zu', 1004),
	(2020, N'ゼ', N'ze', 1004),
	(2022, N'ゾ', N'zo', 1004),
	(2023, N'ダ', N'da', 1004),
	(2024, N'ヂ', N'ji', 1004),
	(2027, N'ヅ', N'zu', 1004),
	(2028, N'デ', N'de', 1004),
	(2029, N'ド', N'do', 1004),
	(2030, N'バ', N'ba', 1004),
	(2032, N'ビ', N'bi', 1004),
	(2033, N'ブ', N'bu', 1004),
	(2034, N'ベ', N'be', 1004),
	(2036, N'ボ', N'bo', 1004),
	(2037, N'パ', N'pa', 1004),
	(2038, N'ピ', N'pi', 1004),
	(2039, N'プ', N'pu', 1004),
	(2040, N'ペ', N'pe', 1004),
	(2041, N'ポ', N'po', 1004);

-- Dumping structure for table DIPLOM.Statistics
CREATE TABLE IF NOT EXISTS "Statistics" (
	"id" INT,
	"events" INT,
	"time" INT,
	"abetkaid" INT DEFAULT NULL,
	"lettersid" INT DEFAULT NULL,
	"taking" INT,
	FOREIGN KEY INDEX "FK_Statistics_Abetka_abetkaid" ("abetkaid"),
	FOREIGN KEY INDEX "FK_Statistics_Letters_lettersid" ("lettersid"),
	PRIMARY KEY ("id"),
	CONSTRAINT "FK_Statistics_Abetka_abetkaid" FOREIGN KEY ("abetkaid") REFERENCES "Abetka" ("id") ON UPDATE CASCADE ON DELETE NO_ACTION,
	CONSTRAINT "FK_Statistics_Letters_lettersid" FOREIGN KEY ("lettersid") REFERENCES "Letters" ("id") ON UPDATE CASCADE ON DELETE NO_ACTION
);

-- Dumping data for table DIPLOM.Statistics: 7 rows
INSERT IGNORE INTO "Statistics" ("id", "events", "time", "abetkaid", "lettersid", "taking") VALUES
	(2, 1, 1781093385, 2, NULL, 0),
	(1002, 1, 1781117760, 4, NULL, 0),
	(1003, 1, 1781117835, 1003, NULL, 0),
	(1004, 1, 1781117889, 1004, NULL, 0),
	(1005, 1, 1781117909, 2, NULL, 0),
	(1006, 1, 1781117971, 2, NULL, 0),
	(1007, 1, 1781120669, 2, NULL, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
