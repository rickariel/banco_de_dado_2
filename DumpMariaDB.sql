CREATE DATABASE  IF NOT EXISTS `faculdade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `faculdade`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: faculdade
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL CHECK (`sexo` in ('m','f')),
  `data_nasc` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'fulano da silva',95092090060,'m','1980-06-20'),(2,'beltrano farias',62048089100,'m','1975-02-15'),(3,'Sicrano ferreira',11086017039,'m','1980-10-02'),(4,'Zé pequeno',16079080032,'m','1982-01-23'),(5,'Kurt Cobain',26040067062,'m','1967-02-20'),(6,'Tarja Turunen',54084048052,'f','1977-08-17'),(7,'Amy Lee',84048030023,'f','1981-12-13'),(8,'Floor Jansen',16006032060,'f','1981-02-21'),(9,'Cássia Eller',94027066058,'f','1962-12-10'),(10,'Janis Joplin',37081061009,'f','1943-01-19'),(11,'Humberto Gessinger',21006082002,'m','1963-12-24'),(12,'André matos',22051093004,'m','1971-09-14'),(13,'Edu Falaschi',97001055036,'m','1972-05-18'),(14,'Dolores O’Riordan',30026062051,'f','1971-09-06'),(15,'Hayley Williams',19048005073,'f','1988-12-27'),(16,'Amy Winehouse',17072001087,'f','1983-09-14'),(17,'Tony Kakko',91047002059,'m','1975-05-16'),(18,'Bruce Dickinson',20025042050,'m','1958-08-07'),(19,'Fher Olvera',58037051073,'m','1959-12-08'),(20,'Cyndi Lauper',46066054054,'f','1953-06-22'),(21,'Serjão berranteiro',92047051015,'m','1983-04-13'),(22,'Manoel Gomes',50099046004,'m','1969-12-02'),(23,'Patrick Mahomes',96096100078,'m','1995-09-17'),(24,'Travis Kelce',72020099043,'m','1989-10-05'),(25,'Nazaré Tedesco',52005053003,'f','1970-01-06');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_matricula`
--

DROP TABLE IF EXISTS `aluno_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_matricula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_m` int(5) unsigned zerofill DEFAULT NULL,
  `id_t` int(11) DEFAULT NULL,
  `id_d` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_m` (`id_m`),
  KEY `id_t` (`id_t`),
  KEY `id_d` (`id_d`),
  CONSTRAINT `aluno_matricula_ibfk_1` FOREIGN KEY (`id_m`) REFERENCES `matricula` (`id`),
  CONSTRAINT `aluno_matricula_ibfk_2` FOREIGN KEY (`id_t`) REFERENCES `turma` (`id`),
  CONSTRAINT `aluno_matricula_ibfk_4` FOREIGN KEY (`id_d`) REFERENCES `disciplina` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_matricula`
--

LOCK TABLES `aluno_matricula` WRITE;
/*!40000 ALTER TABLE `aluno_matricula` DISABLE KEYS */;
INSERT INTO `aluno_matricula` VALUES (1,00001,2,1),(2,00001,2,2),(3,00002,2,1),(4,00002,2,2),(5,00003,2,1),(6,00003,2,2),(7,00004,2,1),(8,00004,2,2),(9,00005,2,1),(10,00005,2,2),(11,00006,1,3),(12,00006,1,4),(13,00006,1,5),(14,00007,1,3),(15,00007,1,4),(16,00007,1,5),(17,00008,1,3),(18,00008,1,4),(19,00008,1,5),(20,00009,1,3),(21,00009,1,4),(22,00009,1,5),(23,00010,1,3),(24,00010,1,4),(25,00010,1,5),(26,00011,4,9),(27,00011,4,10),(28,00011,4,11),(29,00012,4,9),(30,00012,4,10),(31,00012,4,11),(32,00013,4,9),(33,00013,4,10),(34,00013,4,11),(35,00014,3,6),(36,00014,3,7),(37,00014,3,8),(38,00015,3,6),(39,00015,3,7),(40,00015,3,8),(41,00016,3,6),(42,00016,3,7),(43,00016,3,8),(44,00017,5,12),(45,00017,5,13),(46,00017,5,14),(47,00018,5,12),(48,00018,5,13),(49,00018,5,14),(50,00019,6,15),(51,00019,6,16),(52,00019,6,17),(53,00020,6,15),(54,00020,6,16),(55,00020,6,17),(56,00021,6,15),(57,00021,6,16),(58,00021,6,17),(59,00022,6,15),(60,00022,6,16),(61,00022,6,17),(62,00023,6,15),(63,00023,6,16),(64,00023,6,17),(65,00024,6,15),(66,00024,6,16),(67,00024,6,17);
/*!40000 ALTER TABLE `aluno_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) DEFAULT NULL,
  `cod` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `duracao` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Agronomia','AGRO01','bacharelado',10),(2,'Análise e desenvolvimento de sistemas','ADS01','tecnólogo',4),(3,'Ciências contábeis','CCT01','bacharelado',8),(4,'Educação física','EDF01','licenciatura',7),(5,'Psicologia','PSI01','bacharelado',10),(6,'Direito','DIR01','bacharelado',10);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(20) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `carga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'ADSP01','Lógica de programação algorítimica',100),(2,'ADSP02','Engenharia de softwares',80),(3,'ADSE05','Redes de computadores',60),(4,'ADSE06','Projeto de banco de dados',80),(5,'ADSE07','Back-end frameworks',80),(6,'AGROE01','Desenho Técnico',80),(7,'AGROE02','Gênese do Solo',40),(8,'AGROE03','Hidráulica e Hidrologia',60),(9,'CCTE01','Fundamentos Contábeis',60),(10,'CCTE02','Contabilidade Aplicada',60),(11,'CCTE03','Gestão de Custos, Riscos e Perdas',80),(12,'EDFE01','Teoria e prática da natação',40),(13,'EDFE02','Teoria e prática do atletismo',40),(14,'EDFE03','Esporte educacional',60),(15,'PSIE01','Psicologia Social',80),(16,'PSIE02','Psicologia Experimental',80),(17,'PSIE03','Avaliação Psicológica',60);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_a` int(11) DEFAULT NULL,
  `id_c` int(11) DEFAULT NULL,
  `id_mens` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_a` (`id_a`),
  KEY `id_c` (`id_c`),
  KEY `id_mens` (`id_mens`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_a`) REFERENCES `aluno` (`id`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_c`) REFERENCES `curso` (`id`),
  CONSTRAINT `matricula_ibfk_3` FOREIGN KEY (`id_mens`) REFERENCES `mensalidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (00001,5,2,3),(00002,6,2,3),(00003,7,2,3),(00004,8,2,3),(00005,11,2,3),(00006,12,2,4),(00007,13,2,4),(00008,17,2,4),(00009,18,2,4),(00010,19,2,4),(00011,1,3,5),(00012,2,3,5),(00013,3,3,6),(00014,4,1,1),(00015,21,1,2),(00016,22,1,2),(00017,23,4,7),(00018,24,4,7),(00019,9,5,10),(00020,10,5,9),(00021,14,5,10),(00022,15,5,10),(00023,16,5,9),(00024,20,5,10);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensalidade`
--

DROP TABLE IF EXISTS `mensalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensalidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(10) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `valor` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensalidade`
--

LOCK TABLES `mensalidade` WRITE;
/*!40000 ALTER TABLE `mensalidade` DISABLE KEYS */;
INSERT INTO `mensalidade` VALUES (1,'integral','Agronomia',1000.00),(2,'parcial','Agronomia',500.00),(3,'integral','Análise e desenvolvimento de sistemas',400.00),(4,'parcial','Análise e desenvolvimento de sistemas',200.00),(5,'integral','Ciências contábeis',600.00),(6,'parcial','Ciências contábeis',300.00),(7,'integral','Educação física',700.00),(8,'parcial','Educação física',350.00),(9,'integral','Psicologia',800.00),(10,'parcial','Psicologia',400.00);
/*!40000 ALTER TABLE `mensalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) DEFAULT NULL,
  `valor_hora` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'especialista',25.00),(2,'mestre',28.00),(3,'doutor',30.00);
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `sexo` enum('m','f') DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nivel` (`nivel`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`nivel`) REFERENCES `nivel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Girafales',1111222233334440,'m','1980-06-20',2),(2,'Pardal',2222333344445550,'m','1975-02-15',1),(3,'Marocas',3333444455556660,'f','1980-10-02',1),(4,'Charles Xavier',4444555566667770,'m','1982-01-23',1),(5,'Helena',5555666677778880,'f','1977-07-12',1),(6,'Tibúrcio',6666777788889990,'m','1984-08-25',1),(7,'Splinter',7777888899991010,'m','1988-12-10',2),(8,'Miyagi',8888999910101110,'m','1980-01-01',2),(9,'Dumbledore',9999101011111210,'m','1975-05-20',3),(10,'Indiana Jones',1010111112121310,'m','1979-11-29',3);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_p` int(11) DEFAULT NULL,
  `id_c` int(11) DEFAULT NULL,
  `id_t` int(11) DEFAULT NULL,
  `id_d` int(11) DEFAULT NULL,
  `ano_semestre` decimal(5,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_p` (`id_p`),
  KEY `id_c` (`id_c`),
  KEY `id_t` (`id_t`),
  KEY `id_d` (`id_d`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `professor` (`id`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`id_c`) REFERENCES `curso` (`id`),
  CONSTRAINT `professor_disciplina_ibfk_3` FOREIGN KEY (`id_t`) REFERENCES `turma` (`id`),
  CONSTRAINT `professor_disciplina_ibfk_4` FOREIGN KEY (`id_d`) REFERENCES `disciplina` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (1,1,2,2,1,2024.1),(2,1,2,2,2,2024.1),(3,2,2,1,3,2023.1),(4,2,2,1,4,2023.1),(5,10,2,1,5,2023.1),(6,3,1,3,7,2022.1),(7,3,1,3,8,2022.1),(8,6,1,3,6,2022.1),(9,6,3,4,11,2021.1),(10,9,3,4,9,2021.1),(11,9,3,4,10,2021.1),(12,5,5,6,17,2023.1),(13,4,5,6,15,2023.1),(14,4,5,6,16,2023.1),(15,5,4,5,12,2021.1),(16,7,4,5,7,2021.1),(17,8,4,5,8,2021.1);
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(20) DEFAULT NULL,
  `semestre` varchar(20) DEFAULT NULL,
  `ano_semestre` decimal(5,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'ADSNA01','3° semestre',2023.1),(2,'ADSNA02','1° semestre',2024.1),(3,'AGRONA01','5° semestre',2022.1),(4,'CCTNA01','7° semestre',2021.1),(5,'EDFNA01','7° semestre',2021.1),(6,'PSINA01','3° semestre',2023.1);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-26 21:37:30
