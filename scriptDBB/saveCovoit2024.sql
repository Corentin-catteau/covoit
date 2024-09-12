-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: covoit2024
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u1

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
-- Table structure for table `CovoitUser`
--

DROP TABLE IF EXISTS `CovoitUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CovoitUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `tel` char(10) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CovoitUser`
--

LOCK TABLES `CovoitUser` WRITE;
/*!40000 ALTER TABLE `CovoitUser` DISABLE KEYS */;
INSERT INTO `CovoitUser` VALUES (1,'Dupont','Jean','0612345678','jean.dupont@example.com','$2y$10$eGZvc/2A.Q/YoXz1z8Qckuvw5YvVzFbW8CW7Y/tY1rGZxs0pxl5Oq'),(2,'Durand','Marie','0623456789','marie.durand@example.com','$2y$10$AKqNhKshU9GBC/fgJjtI3uA1XK4vZMIJ2/RIuNIZRHzH/BlAYfZ8q'),(3,'Martin','Luc','0634567890','luc.martin@example.com','$2y$10$RxDXbflDk6OLUikMbVsP4eMVtbzUml6I29.64r1Ys7.GDpWxL1XAO'),(4,'Bernard','Clara','0645678901','clara.bernard@example.com','$2y$10$FWULfXkPBjZyyuoU1Y34xe5APzt8bgDha21HWykFz0IftqlSAl93a'),(5,'Petit','Olivier','0656789012','olivier.petit@example.com','$2y$10$OAkPOnrfY3dU21GErShzMezNBr.U7Jgg9i.BGIsJfQ2kgAU9m.D0O'),(6,'Robert','Laura','0667890123','laura.robert@example.com','$2y$10$gXMgQUiM4ASRa5anvR2PhOfAiJvX0c.fGiw6jNGxPUEfG/FOgnMGW'),(7,'Richard','Paul','0678901234','paul.richard@example.com','$2y$10$GAQRrcA5F0JVGpW0ylnKqeU9cDAEBX5lxWx99AwBzH0IGv6CqW6d2'),(8,'Simon','Sophie','0689012345','sophie.simon@example.com','$2y$10$tLTjM9.4OQvFbZ65AKYq8.VGNiRJ1X09DTNh1vXWhTLttDBw1gs.a'),(9,'Lefevre','Antoine','0690123456','antoine.lefevre@example.com','$2y$10$7FkC/2xUoYPumTDWWeVvn.O.kHJyF8k3oYHjxG.LIjVgqgp6u2.VG'),(10,'Moreau','Emilie','0611234567','emilie.moreau@example.com','$2y$10$Bd.D.lPZjvm7QXrVcIfFAO.dZGzmpV2P/.xD2gI3yH7MNj7TfifIa'),(11,'Fournier','Nicolas','0622345678','nicolas.fournier@example.com','$2y$10$fRCJ42mfgb5WOBpmr9fA8.BbEf39/Hdg82N.EPbVhMwiXjOETpBbi'),(12,'Garcia','Lucie','0633456789','lucie.garcia@example.com','$2y$10$AfUXZ.lUkOqcYujrxgSEteja7p8yCjvN7j6Hv5XNeJeMSR2kr0yiO'),(13,'Roux','Thomas','0644567890','thomas.roux@example.com','$2y$10$Z8rOxiXUSCLp3zPbRaBPKuJTRzdr5zUdbnMoQfxvTmUuRT1DxFH0W'),(14,'Blanc','Julie','0655678901','julie.blanc@example.com','$2y$10$2klDt2.EBYXFYFVZTlzBMuSv9qUTrvRMZeq6SY9XgS2TjeCd6gQAy'),(15,'Lopez','Victor','0666789012','victor.lopez@example.com','$2y$10$NRFrjfx.JxBaqvSdp/85AOc5PU3dAhknbg5Ptn2tCVG96SKIzqZSy');
/*!40000 ALTER TABLE `CovoitUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OffreCovoit`
--

DROP TABLE IF EXISTS `OffreCovoit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OffreCovoit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` enum('lundi','mardi','mercredi','jeudi','vendredi') NOT NULL,
  `heure` time NOT NULL,
  `date` date NOT NULL,
  `lieu` varchar(40) NOT NULL,
  `chauffeur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chauffeur` (`chauffeur`),
  CONSTRAINT `OffreCovoit_ibfk_1` FOREIGN KEY (`chauffeur`) REFERENCES `CovoitUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OffreCovoit`
--

LOCK TABLES `OffreCovoit` WRITE;
/*!40000 ALTER TABLE `OffreCovoit` DISABLE KEYS */;
INSERT INTO `OffreCovoit` VALUES (1,'lundi','08:00:00','2024-09-09','Paris',1),(2,'mardi','09:00:00','2024-09-10','Lyon',2),(3,'mercredi','07:30:00','2024-09-11','Marseille',3),(4,'jeudi','08:15:00','2024-09-12','Toulouse',4),(5,'vendredi','09:45:00','2024-09-13','Nice',5),(6,'lundi','08:30:00','2024-09-16','Bordeaux',6),(7,'mardi','09:15:00','2024-09-17','Lille',7),(8,'mercredi','07:45:00','2024-09-18','Nantes',8),(9,'jeudi','08:45:00','2024-09-19','Strasbourg',9),(10,'vendredi','09:30:00','2024-09-20','Rennes',10),(11,'lundi','08:00:00','2024-09-23','Montpellier',11),(12,'mardi','09:00:00','2024-09-24','Grenoble',12),(13,'mercredi','07:30:00','2024-09-25','Dijon',13),(14,'jeudi','08:15:00','2024-09-26','Le Havre',14),(15,'vendredi','09:45:00','2024-09-27','Reims',15);
/*!40000 ALTER TABLE `OffreCovoit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12  8:21:50
