-- MariaDB dump 10.19  Distrib 10.6.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gimo_books
-- ------------------------------------------------------
-- Server version	10.6.3-MariaDB-1:10.6.3+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NULL,
  `publication_year` int(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO books(title, author, description, publication_year, created_at, updated_at) VALUES
("The Great God Pan", "Arthur Machen", "I am glad you came, Clarke; very glad indeed.", 1894, NOW(), NOW()),
("The food of the gods and how it came to earth", "H. G. Wells", "The food of the gods and how it came to earth", 1900, NOW(), NOW()),
("De civitate Dei", "Augustine of Hippo", "De civitate Dei", 1440, NOW(), NOW()),
("River God", "Serajul ISLAM", "River God", 2020, NOW(), NOW()),
("American Gods", "Neil Gaiman,George Guidall", "Ombre purgeait trois ans de prison.,Shadow had done three years in prison.", 2001, NOW(), NOW()),
("The practice of piety", "Lewis Bayly", "The practice of piety", 1621, NOW(), NOW()),
("Journey of a Caribbean Girl Called God Pickney", "God God Pickney", "Journey of a Caribbean Girl Called God Pickney", 2021, NOW(), NOW()),
("Korean Bible Old & New Testament", "God", "Korean Bible Old & New Testament", 2001, NOW(), NOW()),
("Soul Winner's New Testament", "God", "Soul Winner's New Testament", 1977, NOW(), NOW()),
("The World English Bible", "God", "The World English Bible", 2003, NOW(), NOW()),
("The Holy Bible ESV (Pocket Size with Embossed Cross on Front)", "God", "The Holy Bible ESV (Pocket Size with Embossed Cross on Front)", 2005, NOW(), NOW()),
("American Standard Version (1901) Holy Bible Genuine Leather", "God", "American Standard Version (1901) Holy Bible Genuine Leather", 2007, NOW(), NOW()),
("The Second Advent Christian Bible", "God", "The Second Advent Christian Bible", 2006, NOW(), NOW()),
("The Living Bible", "God", "The Living Bible", 1985, NOW(), NOW()),
("New Testament: New King James Version", "God", "New Testament: New King James Version", 1982, NOW(), NOW()),
("NKJV Gift Bible-Cinnamon LeatherSoft", "God", "NKJV Gift Bible-Cinnamon LeatherSoft", 1982, NOW(), NOW()),
("Psalms and Proverbs", "God", "Psalms and Proverbs", 2011, NOW(), NOW()),
("New International Version Holy Bible in Duo-tone Trimline", "God", "New International Version Holy Bible in Duo-tone Trimline", 2011, NOW(), NOW()),
("Bible Without Paul", "God", "Bible Without Paul", 2021, NOW(), NOW()),
("Heart of the Holy Bible (Old Testament)", "God", "Heart of the Holy Bible (Old Testament)", 2011, NOW(), NOW()),
("Heart of the Holy Bible (New Testament)", "God", "Heart of the Holy Bible (New Testament)", 2011, NOW(), NOW()),
("Holy Bible", "God", "Holy Bible", 1994, NOW(), NOW()),
("Pocket New Testament and Psalms-CEV", "GOD", "Pocket New Testament and Psalms-CEV", 2006, NOW(), NOW()),
("Holy Bible Old Testament", "God", "Holy Bible Old Testament", 2018, NOW(), NOW()),
("NIV, Holy Bible, Gospels with Psalms and Proverbs, Journal Edition", "God", "NIV, Holy Bible, Gospels with Psalms and Proverbs, Journal Edition", 2015, NOW(), NOW()),
("Bíblia Sagrada Novo Testamento Portuguese-English Bible NVI Bilingue Letra Grande Seize", "god", "Bíblia Sagrada Novo Testamento Portuguese-English Bible NVI Bilingue Letra Grande Seize", 2022, NOW(), NOW()),
("New World Translation Of The Holy Scriptures", "God", "New World Translation Of The Holy Scriptures", 1984, NOW(), NOW()),
("Four Deuterocanon/Apocrypha Books Omitted from the Bible", "God", "Four Deuterocanon/Apocrypha Books Omitted from the Bible", 2017, NOW(), NOW()),
("Books of Enoch, Jasher, Jubilees : Forbidden Books", "God", "Books of Enoch, Jasher, Jubilees : Forbidden Books", 2017, NOW(), NOW()),
("Apocrypha and Book of Enoch", "God", "Apocrypha and Book of Enoch", 2017, NOW(), NOW()),
("Meaning of Quran", "GOD", "Meaning of Quran", 2017, NOW(), NOW()),
("King James Bible", "God", "King James Bible", 2019, NOW(), NOW()),
("holy bible large print edition", "god", "holy bible large print edition", 1999, NOW(), NOW()),
("NIV Duo-Tone Bible Red/Gray Gm Ltd", "God", "NIV Duo-Tone Bible Red/Gray Gm Ltd", 2003, NOW(), NOW()),
("New International Version Compact Bible", "God", "New International Version Compact Bible", 2023, NOW(), NOW()),
("Book of Jasher", "God", "Book of Jasher", 2017, NOW(), NOW()),
("Holy Bible - King James Version (KJV) - Placed by The Gideons International - Red Cover", "God", "Holy Bible - King James Version (KJV) - Placed by The Gideons International - Red Cover", 1978, NOW(), NOW()),
("Holy Bible", "GOD", "Holy Bible", 1971, NOW(), NOW()),
("Bible for Today's Family", "God", "Bible for Today's Family", 1992, NOW(), NOW()),
("Holy Bible New Testament Soul Winners' Checkbook", "God", "Holy Bible New Testament Soul Winners' Checkbook", 2006, NOW(), NOW()),
("NLT Compact Bible - Tan simulated leather", "God", "NLT Compact Bible - Tan simulated leather", 2007, NOW(), NOW()),
("The Healing Holy Bible and CD", "God", "The Healing Holy Bible and CD", 2006, NOW(), NOW()),
("HOLY BIBLE CONTAINING THE OLD AND NEW TESTAMENTS", "God", "HOLY BIBLE CONTAINING THE OLD AND NEW TESTAMENTS", 1961, NOW(), NOW()),
("The Holy Bible", "God", "The Holy Bible", 2005, NOW(), NOW()),
("God Is", "God", "God Is", 2023, NOW(), NOW()),
("Chinese-English Bible", "God", "Chinese-English Bible", 1989, NOW(), NOW()),
("SANTA BIBLIA  Letra Grande Completa en Español - Antiguo y Nuevo Testamento", "god", "SANTA BIBLIA  Letra Grande Completa en Español - Antiguo y Nuevo Testamento", 2022, NOW(), NOW()),
("Quran Transliteration with", "god", "Quran Transliteration with", 2022, NOW(), NOW()),
("Nuevo Testamento  / New Testament : Santa Biblia Catolica : Comprende la Santa Biblia Español Sencillo", "god", "Nuevo Testamento  / New Testament : Santa Biblia Catolica : Comprende la Santa Biblia Español Sencillo", 2022, NOW(), NOW()),
("Holy Bible, New Revised Standard Version", "God", "Holy Bible, New Revised Standard Version", 1989, NOW(), NOW()),
("Grace abounding to the chief of sinners", "John Bunyan", "IN THIS MY RELATION of the merciful working of God upon my soul, it will not be amiss, if, in the first place, I do in a few words give you a hint of my pedigree, and manner of bringing up; that thereby the goodness and bounty of God towards me, may be the more advanced and magnified before the sons of men.,In this my relation of the merciful working of God upon my soul, it will not be amiss, if in the first place I do in a few words give you a hint of my pedigree, and manner of bringing up; that thereby the goodness and bounty of God towards me, may be the more advanced and magnified before the sons of men.", 1666, NOW(), NOW()),
("Great God Pan", "Arthur Machen", "Great God Pan", 2017, NOW(), NOW()),
("God's Little Acre", "Erskine Caldwell", "SEVERAL yards of undermined sand and clay broke loose up near the top, and the land slid down to the floor of the crater.", 1933, NOW(), NOW()),
("Prayer Journal for Women", "Haynes Haynes Publish", "Prayer Journal for Women", 2021, NOW(), NOW()),
("When the Sleeper Awakes", "H. G. Wells", "When the Sleeper Awakes", 1899, NOW(), NOW()),
("Der Ring des Nibelungen", "Richard Wagner,Stewart Spencer,Barry Millington,Jean d' Ariège", "Der Ring des Nibelungen", 1876, NOW(), NOW()),
("The Grey Citadel SW", "Frog God God Games,Frog God Games", "The Grey Citadel SW", 2020, NOW(), NOW()),
("At the General Assembly of the governor and Company of the English colony of Rhode-Island, and Providence Plantations, in New-England, in America", "Rhode Island. General Assembly.", "At the General Assembly of the governor and Company of the English colony of Rhode-Island, and Providence Plantations, in New-England, in America", 1747, NOW(), NOW()),
("Holy Bible", "God-breathed", "Holy Bible", 2018, NOW(), NOW()),
("Holy Bible", "God-breathed", "Holy Bible", 2018, NOW(), NOW()),
("Mythology", "Edith Hamilton", "THE GREEKS did not believe that the gods created the universe.,The Greeks did not believe that the gods created the universe.", 1940, NOW(), NOW()),
("Les dieux ont soif", "Anatole France", "EVARISTE GAMELIN, painter, pupil of David, member of the Section du Pont-Neuf, formerly Section Henri IV, had betaken himself at an early hour in the morning to the old church of the Barnabites, which for three years, since 21st May 1790, had served as meeting-place for the General Assembly of the Section.", 1900, NOW(), NOW()),
("Holy Bible", "God-breathed", "Holy Bible", 2020, NOW(), NOW()),
("Holy Bible", "God-breathed", "Holy Bible", 2018, NOW(), NOW()),
("Laws, etc", "England and Wales", "Laws, etc", 1513, NOW(), NOW()),
("Age of fable", "Thomas Bulfinch", "THOSE who have investigated the origin of the romantic fables relating to Charlemagne and his peers are of opinion that the deeds of Charles Martel, and perhaps of other Charleses, have been blended in popular tradition with those properly belonging to Charlemagne.,ANCIENT mythologies have much to do with modern literature.,THE religions of ancient Greece and Rome are extinct.", 1800, NOW(), NOW()),
("The great impersonation", "Edward Phillips Oppenheim", "The trouble from which great events were to come began when Everard Dominey, who had been fighting his way through the scrub for the last three quarters of an hour towards those thin, spiral wisps of smoke, urged his pony to a last despairing effort and came crashing through the great oleander shrub to pitch forward on his head in the little clearing.", 1920, NOW(), NOW()),
("Red or Blue Pill", "Childof God", "Red or Blue Pill", 2017, NOW(), NOW()),
("HOLY SCRIPTURES : HISTORICAL BOOKS", "God-breathed", "HOLY SCRIPTURES : HISTORICAL BOOKS", 2018, NOW(), NOW()),
("HOLY SCRIPTURES : POETICAL BOOKS", "God-breathed", "HOLY SCRIPTURES : POETICAL BOOKS", 2018, NOW(), NOW()),
("Dove", "Jonathan Dove", "Dove", 1639, NOW(), NOW()),
("The God of Small Things", "Joseph Michael", "May in Ayemenem is a hot, brooding month.", 1997, NOW(), NOW()),
("The Primer (The Book of Common Prayer)", "Church of England", "The Primer (The Book of Common Prayer)", 1510, NOW(), NOW()),
("Green God", "Frederic Arnold Kummer", "Green God", 2018, NOW(), NOW()),
("NET, Young Women Love God Greatly", "Love God Love God Greatly", "NET, Young Women Love God Greatly", 2022, NOW(), NOW()),
("NET, Young Women Love God Greatly, Leathersoft, Brown, Comfort Print", "Love God Love God Greatly", "NET, Young Women Love God Greatly, Leathersoft, Brown, Comfort Print", 2022, NOW(), NOW()),
("NET, Young Women Love God Greatly, Cloth over Board, Blue, Comfort Print", "Love God Love God Greatly", "NET, Young Women Love God Greatly, Cloth over Board, Blue, Comfort Print", 2022, NOW(), NOW()),
("NET, Love God Greatly Bible, Cloth over Board, Pink, Thumb Indexed, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Cloth over Board, Pink, Thumb Indexed, Comfort Print", 1997, NOW(), NOW()),
("NET, Love God Greatly Bible, Cloth over Board, Pink, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Cloth over Board, Pink, Comfort Print", 1997, NOW(), NOW()),
("NET, Love God Greatly Bible, Leathersoft, Brown, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Leathersoft, Brown, Comfort Print", 2020, NOW(), NOW()),
("NET, Love God Greatly Bible, Hardcover, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Hardcover, Comfort Print", 2020, NOW(), NOW()),
("NET, Love God Greatly Journal, Cloth over Board, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Journal, Cloth over Board, Comfort Print", 2020, NOW(), NOW()),
("NET, Love God Greatly Bible, Genuine Leather, Black, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Genuine Leather, Black, Comfort Print", 2020, NOW(), NOW()),
("NET, Love God Greatly Bible, Leathersoft, Brown, Thumb Indexed, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Leathersoft, Brown, Thumb Indexed, Comfort Print", 2020, NOW(), NOW()),
("Ethereal Law", "The God The God 720", "Ethereal Law", 2018, NOW(), NOW()),
("NET, Love God Greatly Bible, Genuine Leather, Black, Thumb Indexed, Comfort Print", "Love God Love God Greatly", "NET, Love God Greatly Bible, Genuine Leather, Black, Thumb Indexed, Comfort Print", 2020, NOW(), NOW()),
("Survival", "God Quest", "Survival", 1998, NOW(), NOW()),
("Patented", "Almighty God", "Patented", 2007, NOW(), NOW()),
("Sub-National Island Jurisdictions", "God Baldacchino", "Sub-National Island Jurisdictions", 2008, NOW(), NOW()),
("Les grognards de Bourges", "Maurice God", "Les grognards de Bourges", 1974, NOW(), NOW()),
("God, My Father", "God series", "God, My Father", 2021, NOW(), NOW()),
("Journey of a Caribbean Girl Called God Pickney", "God Pickney", "Journey of a Caribbean Girl Called God Pickney", 2021, NOW(), NOW()),
("I Love You God", "God Series", "I Love You God", 2021, NOW(), NOW()),
("God, Guide Me", "God series", "God, Guide Me", 2021, NOW(), NOW()),
("God, You Are Here for Me", "God series", "God, You Are Here for Me", 2021, NOW(), NOW()),
("I Follow God", "God Series", "I Follow God", 2021, NOW(), NOW()),
("God, I Am Blessed by You", "God series", "God, I Am Blessed by You", 2021, NOW(), NOW()),
("God, Thank You", "God series", "God, Thank You", 2021, NOW(), NOW()),
("God, I Pray for My Health", "God series", "God, I Pray for My Health", 2021, NOW(), NOW()),
("God, Heal Me", "God Series", "God, Heal Me", 2021, NOW(), NOW());

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2023_03_04_000000_create_books_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;