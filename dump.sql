-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `passeword` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'maxime','dupont','maximedupont@orange.fr','azerty2106323524ù'),(2,'julie','dubois','juliedubois@sfr.fr','qwertuzgdvvzddh34%'),(3,'martine','maillard','martinemaillard@gestion.com','xgsqfgqdfytfml34'),(4,'michel','martinez','michelmartinez@free.fr','hfbjdgkjgh54');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema_sessions`
--

DROP TABLE IF EXISTS `cinema_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema_sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(70) NOT NULL,
  `nameFilm` varchar(120) NOT NULL,
  `roomSession` varchar(150) NOT NULL,
  `day` varchar(100) NOT NULL,
  `hour` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `cinema_sessions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `films` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema_sessions`
--

LOCK TABLES `cinema_sessions` WRITE;
/*!40000 ALTER TABLE `cinema_sessions` DISABLE KEYS */;
INSERT INTO `cinema_sessions` VALUES (1,'2022-02-28','Winter','Session de début','Lundi','18:00'),(2,'2022-03-03','Sky','ActionSession','Jeudi','20:00'),(3,'2022-03-08','Blackthat','FicSession','Mardi','21:00'),(4,'2022-03-20','Apex','ActionSession','Dimanche','22:00'),(5,'2022-03-28','Le loup','HorrorSession','Lundi','18:30'),(6,' 2022-03-05','Jackpot','Session4','Samedi','19:00'),(7,' 2022-03-07','Twilight','Session7','Lundi','19:30'),(8,' 2022-03-10','The king','Session Cinema','Mercredi','20:00'),(9,' 2022-03-06','Darkness','Session dark','Dimanche','21:00'),(10,' 2022-03-21','Le printemps','Session printemps','Vendredi','20:30'),(11,' 2022-03-15','Sun','Session tele','Jeudi','18:15');
/*!40000 ALTER TABLE `cinema_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `movieGenre` varchar(120) NOT NULL,
  `languageMovie` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `films_ibfk_1` FOREIGN KEY (`id`) REFERENCES `moovie_theaters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Winter','Romancier','French'),(2,'SKY','Action','English'),(3,'Blackthat','Fiction','English'),(4,'Apex','Action','Deutsh'),(5,'Le loup','Horreur','French'),(8,'The Spy','Fiction','English'),(22,'Darkness','Horreur','English'),(23,'Twilight','Action','French'),(24,'The king','Fiction','Deutsh'),(25,'Jackpot','Action','French');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moovie_theaters`
--

DROP TABLE IF EXISTS `moovie_theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moovie_theaters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `partner` varchar(1000) NOT NULL,
  `id_cinemaSession` varchar(1000) NOT NULL,
  `possesses` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `possesses` (`possesses`),
  CONSTRAINT `moovie_theaters_ibfk_1` FOREIGN KEY (`possesses`) REFERENCES `room_theaters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moovie_theaters`
--

LOCK TABLES `moovie_theaters` WRITE;
/*!40000 ALTER TABLE `moovie_theaters` DISABLE KEYS */;
INSERT INTO `moovie_theaters` VALUES (1,'Pathé','28 Avenue de la république, 75020, paris','Théatre Gérard phillipe','5',NULL),(2,'Cine','25 Boulevard de magenta, 75008, paris','Le conservatoire national','3',NULL),(3,'George','15 Rue anatole france, 75001, paris','Musée de louvre','4',NULL),(4,'Les 5 Caumartin','101 Rue saint lazare, 75009, paris','Bibliothéque françois mitterand','2',NULL),(5,'Univerciné 8','2 Rue de la liberté, 93200, Saint-Denis','M6','1',NULL),(8,'Ucinéma','12 Avenue victor hugo, 75020, paris','Canal+','6',NULL),(9,'Pathé Wepler','140 boulevard de Clichy, 75018, paris','TF1','7',NULL);
/*!40000 ALTER TABLE `moovie_theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cost` varchar(60) NOT NULL,
  `typePrice` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,'9?20','Plein tarif'),(2,'7?60','Etudiant'),(3,'5?90','Moins de 14 ans');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cinemaSession` varchar(120) NOT NULL,
  `id_televiewer` varchar(150) NOT NULL,
  `id_price` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`id`) REFERENCES `televiewer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,'1','1','1'),(2,'1','2','3'),(3,'2','1','2'),(4,'3','1','2'),(5,'2','3','1'),(8,'1','2','3'),(9,'3','3','3'),(10,'2','2','2'),(11,'1','3','3'),(12,'2','1','3'),(13,'3','1','3'),(14,'3','2','2'),(15,'3','2','1');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_theaters`
--

DROP TABLE IF EXISTS `room_theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_theaters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_room` varchar(70) NOT NULL,
  `upstairs_room` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_theaters`
--

LOCK TABLES `room_theaters` WRITE;
/*!40000 ALTER TABLE `room_theaters` DISABLE KEYS */;
INSERT INTO `room_theaters` VALUES (1,'Victor Hugo','0'),(2,'François Mitterand','0'),(3,'jean jaurés','1'),(5,'Gérard phillipe','1'),(6,'Henri grégoire','2'),(8,'Geaorges pompidou','2');
/*!40000 ALTER TABLE `room_theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `televiewer`
--

DROP TABLE IF EXISTS `televiewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `televiewer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `family_Name` varchar(70) NOT NULL,
  `First_Name` varchar(70) NOT NULL,
  `email` varchar(150) NOT NULL,
  `age` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `televiewer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `cinema_sessions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `televiewer`
--

LOCK TABLES `televiewer` WRITE;
/*!40000 ALTER TABLE `televiewer` DISABLE KEYS */;
INSERT INTO `televiewer` VALUES (1,'Richard','Sophie','richardsophie@gmail.com','28 ans'),(2,'Dubois','Bertrand','duboisbertrand@orange.fr','30 ans'),(3,'Durand','Michel','durandmichel@yahoo.fr','40 ans'),(4,'Robert','Martine','robertmartine@gmail.com','38 ans'),(5,'Lambert','Guillaume','lambertguillaume@sfr.fr','42 ans'),(8,'Dubrey','Anne','dubranne@yahoo.fr','17 ans'),(9,'Perez','Victor','perezvictor@gmail.com','20 ans'),(10,'Poignet','Eric','poigneteric@orange.fr','22 ans'),(11,'Legrand','Marion','legrandmarion@gmail.com','24 ans'),(12,'Michaud','Armelle','michaudarmelle@sfr.fr','30 ans'),(13,'Soutil','Will','soutilwill@gmail.com','15 ans'),(14,'Delacroix','Bernard','delacroixbernard@hotmail.com','26 ans'),(15,'Dubrey','Jean-luc','jean-lucdubrey@hotmail.fr','18 ans'),(16,'Legrand','Marc','legrandmarc@gmail.com','27 ans'),(17,'Perez','Lilly','perezlilly@hotmail.com','19 ans'),(18,'Michelin','Cedric','michelincedric@gmail.com','50 ans'),(19,'Michelin','Anabelle','michelinanabelle@gmail.com','45 ans'),(20,'Michelin','Jack','michelinjack@hotmail.com','60 ans');
/*!40000 ALTER TABLE `televiewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(70) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `room_theaters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dupuis','Mélanie','hfdgsyfsyfygys67'),(2,'Rodrigues','Natalia','ghjgyfguyh45'),(3,'Paillard','Christophe','ghdvzghdf69'),(5,'Levert','Chris','ghyuokgdygdy2');
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

-- Dump completed on 2022-03-05 17:04:58
