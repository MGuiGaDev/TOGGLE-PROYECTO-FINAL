CREATE DATABASE  IF NOT EXISTS `toggle` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `toggle`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: togglev1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `basic_user`
--

DROP TABLE IF EXISTS `basic_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_user` (
  `user_type` varchar(31) NOT NULL,
  `id` bigint NOT NULL,
  `email` varchar(62) DEFAULT NULL,
  `last_access` datetime(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9qatc5qlfql6ata0y60cpsfn5` (`email`),
  UNIQUE KEY `UK_daob80mlg46099lid72ab1xap` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_user`
--

LOCK TABLES `basic_user` WRITE;
/*!40000 ALTER TABLE `basic_user` DISABLE KEYS */;
INSERT INTO `basic_user` VALUES ('M',1,'eugenia@gmail.com','2022-06-15 06:47:32.850000','Eugenia Brahamonte Casas','$2a$10$lkbAaMJWrqufsbcaUwFVKOzDheSwnaVGS11j37Ot6Qs21oYD4gxb6','eugenia@gmail.com'),('N',2,'p1Coria@gmail.com','2022-06-15 07:17:31.087000','Profesor 1 Coria','$2a$10$.kl0VrrvhEJQz5AKzosRqO/WyzRcIJ00/5YxvubBYCAqd4lAx6P0C','p1Coria'),('M',3,'epreciado@gmail.com','2022-06-15 07:11:21.517000','Ernesto Preciado Sánchez','$2a$10$ntPBL81AvPvXgQWG9uEalOuNRmusD3VpJq3/RctbIFoio3Iu8jBhG','epreciado'),('N',4,'jreveriego@gmail.com','2022-06-15 07:16:16.632000','Joaquín Reveriego Zurbarán','$2a$10$VOif22u8TGXHtP5zMn.bqeAssqTEE3nXC1wJc.xRxrMq.FoDC897i','jreveriego');
/*!40000 ALTER TABLE `basic_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collaboration_request`
--

DROP TABLE IF EXISTS `collaboration_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collaboration_request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `collaboration_response` varchar(7) DEFAULT NULL,
  `message` varchar(280) DEFAULT NULL,
  `sended` datetime(6) DEFAULT NULL,
  `school_project_id` bigint NOT NULL,
  `school_teacher_request_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb4r5v34hu002guerm4ns8r3wr` (`school_project_id`),
  KEY `FKbstm423g465y5wn9cxap3mrye` (`school_teacher_request_id`),
  CONSTRAINT `FKb4r5v34hu002guerm4ns8r3wr` FOREIGN KEY (`school_project_id`) REFERENCES `school_project` (`id`),
  CONSTRAINT `FKbstm423g465y5wn9cxap3mrye` FOREIGN KEY (`school_teacher_request_id`) REFERENCES `school_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collaboration_request`
--

LOCK TABLES `collaboration_request` WRITE;
/*!40000 ALTER TABLE `collaboration_request` DISABLE KEYS */;
INSERT INTO `collaboration_request` VALUES (1,'PENDINT','Mi curso de 1º estaría interesado en participar en tu proyecto.','2022-06-15 07:17:08.313000',1,2);
/*!40000 ALTER TABLE `collaboration_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('default',4);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'ROLE_MANAGER_CENTER'),(2,'ROLE_ADMIN'),(3,'ROLE_TEACHER_CENTER');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_profile`
--

DROP TABLE IF EXISTS `school_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  `school_code` int DEFAULT NULL,
  `description` varchar(280) DEFAULT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `user_manager_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2insy2fokrsjtirwi7m8v1sy1` (`user_manager_id`),
  UNIQUE KEY `UK_l3h0riwdi2v4y986vml2c546a` (`school_code`),
  UNIQUE KEY `UK_hvefggtjvarvqojxi1sjapo3c` (`school_name`),
  CONSTRAINT `FKrkqtxy9bd6csmtfno7305ib2k` FOREIGN KEY (`user_manager_id`) REFERENCES `user_manager` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_profile`
--

LOCK TABLES `school_profile` WRITE;
/*!40000 ALTER TABLE `school_profile` DISABLE KEYS */;
INSERT INTO `school_profile` VALUES (1,'Coria',11111111,'Es el único centro de la región que cuenta con este ciclo. Esto es interesante para diseñar filtros de búsqueda.','I.E.S. Alagón',1),(2,'Badajoz',11111112,'Este centro cuenta con bastantes ofertas de FP. Interesante para futuras implementaciones de filtros.','I.E.S. Castelar',3);
/*!40000 ALTER TABLE `school_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_project`
--

DROP TABLE IF EXISTS `school_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `current_create` datetime(6) DEFAULT NULL,
  `description` varchar(280) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `school_teacher_creator_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKofybygaoq6ovxyt552at2nyb8` (`school_teacher_creator_id`),
  CONSTRAINT `FKofybygaoq6ovxyt552at2nyb8` FOREIGN KEY (`school_teacher_creator_id`) REFERENCES `school_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_project`
--

LOCK TABLES `school_project` WRITE;
/*!40000 ALTER TABLE `school_project` DISABLE KEYS */;
INSERT INTO `school_project` VALUES (1,'2022-06-15 06:54:42.632000','Se requiere de análisis de alimentos para elaborar planes para pacientes.','Análisis de alimentos',1);
/*!40000 ALTER TABLE `school_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_project_collaborators`
--

DROP TABLE IF EXISTS `school_project_collaborators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_project_collaborators` (
  `school_project_id` bigint NOT NULL,
  `school_teacher_id` bigint NOT NULL,
  PRIMARY KEY (`school_project_id`,`school_teacher_id`),
  KEY `FKakry76l5pvl45s57cdwdst79g` (`school_teacher_id`),
  CONSTRAINT `FKakry76l5pvl45s57cdwdst79g` FOREIGN KEY (`school_teacher_id`) REFERENCES `school_teacher` (`id`),
  CONSTRAINT `FKrg0djmkwhvra3m274s2ypqhrf` FOREIGN KEY (`school_project_id`) REFERENCES `school_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_project_collaborators`
--

LOCK TABLES `school_project_collaborators` WRITE;
/*!40000 ALTER TABLE `school_project_collaborators` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_project_collaborators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_teacher`
--

DROP TABLE IF EXISTS `school_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_teacher` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `school_profile_id` bigint NOT NULL,
  `user_nested_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ed0scobiixx1bkvhiiugjfpia` (`user_nested_id`),
  KEY `FKq3a9gva5rx4optq5gs9datnnw` (`school_profile_id`),
  CONSTRAINT `FKag29yo97jw2mun69bsmownaw4` FOREIGN KEY (`user_nested_id`) REFERENCES `user_nested` (`id`),
  CONSTRAINT `FKq3a9gva5rx4optq5gs9datnnw` FOREIGN KEY (`school_profile_id`) REFERENCES `school_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_teacher`
--

LOCK TABLES `school_teacher` WRITE;
/*!40000 ALTER TABLE `school_teacher` DISABLE KEYS */;
INSERT INTO `school_teacher` VALUES (1,1,2),(2,2,4);
/*!40000 ALTER TABLE `school_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies_cycle`
--

DROP TABLE IF EXISTS `studies_cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies_cycle` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `studies_level` int NOT NULL,
  `studies_family_code` varchar(255) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `UK_kuih5pm4690mrlkpdi8nramns` (`name`),
  KEY `FKbt9pbst666au9gg1qgenaedin` (`studies_level`),
  KEY `FK2n84blc515naxkudwrko0snt9` (`studies_family_code`),
  CONSTRAINT `FK2n84blc515naxkudwrko0snt9` FOREIGN KEY (`studies_family_code`) REFERENCES `studies_family` (`code`),
  CONSTRAINT `FKbt9pbst666au9gg1qgenaedin` FOREIGN KEY (`studies_level`) REFERENCES `studies_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies_cycle`
--

LOCK TABLES `studies_cycle` WRITE;
/*!40000 ALTER TABLE `studies_cycle` DISABLE KEYS */;
INSERT INTO `studies_cycle` VALUES ('ADG1-10','Servicios administrativos',1,'ADG'),('ADG2-1','Gestión administrativa',2,'ADG'),('ADG3-1','Administración y finanzas',3,'ADG'),('ADG3-2','Asistencia a la dirección',3,'ADG'),('AFD2-1','Guía en el Medio Natural y de Tiempo Libre',2,'AFD'),('AFD2-2','Actividades ecuestres',2,'AFD'),('AFD21','Conducción de actividades físico-deportivas en el medio natural',2,'AFD'),('AFD3-1','Enseñanza y animación sociodeportiva',3,'AFD'),('AFD3-2','Acondicionamiento físico',3,'AFD'),('AGA1-10','Agrojardinería y composiciones florales',1,'AGA'),('AGA1-11','Actividades agropecuarias',1,'AGA'),('AGA1-12','Aprovechamientos forestales',1,'AGA'),('AGA2-1','Producción agropecuaria',2,'AGA'),('AGA2-4','Jardinería y floristería',2,'AGA'),('AGA2-5','Aprovechamiento y conservación del medio natura',2,'AGA'),('AGA2-6','Producción agroecológica',2,'AGA'),('AGA3-2','Gestión forestal y del medio natura',3,'AGA'),('AGA3-3','Paisajismo y medio rural',3,'AGA'),('AGA3-4','Ganadería y Asistencia en Sanidad Animal',3,'AGA'),('ARG1-10','Artes gráficas',1,'ARG'),('ARG2-3','Preimpresión digital',2,'ARG'),('ARG3-1','Diseño y edición de publicaciones impresas y multimedia',3,'ARG'),('COM1-10','Servicios comerciales',1,'COM'),('COM2-1','Actividades comerciales',2,'COM'),('COM2-2','Comercialización de Productos Alimentarios',2,'COM'),('COM3-1','Comercio internacional',3,'COM'),('COM3-2','Gestión de ventas y espacios comerciales',3,'COM'),('COM3-3','Transporte y logística',3,'COM'),('COM3-5','Márketing y publicidad',3,'COM'),('ELE1-10','Electricidad y electrónica',1,'ELE'),('ELE1-11','Instalaciones Electrotécnicas y Mecánica',1,'ELE'),('ELE2-2','Instalaciones eléctricas y automáticas	',2,'ELE'),('ELE2-3','Instalaciones de Telecomunicaciones',2,'ELE'),('ELE3-1','Mantenimiento electrónico',3,'ELE'),('ELE3-2','Sistemas electrotécnicos y automatizados',3,'ELE'),('ELE3-3','Automatización y robótica industrial',3,'ELE'),('ELE3-4','Sistemas de telecomunicación e informáticos',3,'ELE'),('ENA3-1','Eficiencia energética y energía solar térmica',3,'ENA'),('ENA3-3','Energías renovables',3,'ENA'),('EOC1-10','Reforma y mantenimiento de edificios',1,'EOC'),('EOC2-1','Obras de Interior, Decoración y Rehabilitación',2,'EOC'),('EOC2-2','Construcción',2,'EOC'),('EOC3-1','Proyectos de edificación',3,'EOC'),('EOC3-2','Proyectos de obra civil',3,'EOC'),('EOC3-3','Organización y Control de Obras de Construcción',3,'EOC'),('FME2-2','Mecanizado',2,'FME'),('FME2-3','Soldadura y calderería',2,'FME'),('FME3-1','Construcciones metálicas',3,'FME'),('FME3-4','Programación de la producción en fabricación mecánica',3,'FME'),('HOT1-10','Cocina y restauración',1,'HOT'),('HOT1-11','Alojamiento y Lavandería',1,'HOT'),('HOT1-12','Actividades de Panadería y Pastelería',1,'HOT'),('HOT2-1','Cocina y gastronomía',2,'HOT'),('HOT2-3','Servicios en restauración',2,'HOT'),('HOT3-1','Agencias de viajes y gestión de eventos',3,'HOT'),('HOT3-2','Gestión de alojamientos turísticos',3,'HOT'),('HOT3-3','Guía, Información y Asistencia Turísticas',3,'HOT'),('HOT3-6','Dirección de cocina',3,'HOT'),('HOT3-7','Dirección de Servicios de Restauración',3,'HOT'),('IFC1-10','Informática y comunicaciones',1,'IFC'),('IFC1-11','Informática de oficina',1,'IFC'),('IFC2-1','Sistemas microinformáticos y redes',2,'IFC'),('IFC3-1','Administración de Sistemas Informáticos en Red',3,'IFC'),('IFC3-2','Desarrollo de aplicaciones multiplataforma',3,'IFC'),('IFC3-3','Desarrollo de aplicaciones web',3,'IFC'),('IMA1-10','Fabricación y montaje',1,'IMA'),('IMA2-1','Mantenimiento electromecánico',2,'IMA'),('IMA2-4','Instalaciones de producción de calor',2,'IMA'),('IMA2-5','Instalaciones frigoríficas y de climatización',2,'IMA'),('IMA3-2','Mecatrónica industrial',3,'IMA'),('IMA3-3','Mantenimiento de instalaciones térmicas y de fluidos',3,'IMA'),('IMP1-10','Peluquería y estética',1,'IMP'),('IMP2-2','Estética y belleza',2,'IMP'),('IMP2-3','Peluquería y cosmética capilar',2,'IMP'),('IMP3-1','Asesoría de imagen personal y corporativa',3,'IMP'),('IMP3-2','Estética integral y bienestar',3,'IMP'),('IMP3-3','Estilismo y dirección de peluquería',3,'IMP'),('IMS2-2','Vídeo Disc-Jockey y Sonido',2,'IMS'),('IMS3-1','Iluminación, captación y tratamiento de la imagen',3,'IMS'),('IMS3-2','Producción de Audiovisuales y espectáculos',3,'IMS'),('IMS3-3','Realización de proyectos  de Audiovisuales y espectáculos',3,'IMS'),('IMS3-4','Sonido para Audiovisuales y espectáculos',3,'IMS'),('IMS3-5','Animaciones 3D, juegos y entornos interactivos',3,'IMS'),('INA1-10','Industrias Alimentarias',1,'INA'),('INA2-1','Elaboración de productos alimenticios',2,'INA'),('INA2-4','Aceites de oliva y vinos',2,'INA'),('INA2-7','Panadería, repostería y confitería',2,'INA'),('INA3-1','Procesos y calidad en la industria alimentaria',3,'INA'),('INA3-2','Vitivinicultura',3,'INA'),('MMC1-10','Carpintería y mueble I',1,'MMC'),('MMC2-1','Instalación y amueblamiento',2,'MMC'),('MMC2-2','Carpintería y mueble II',2,'MMC'),('MMC3-1','Diseño y Amueblamiento',3,'MMC'),('MSP34','Prevención de Riesgos Profesionales',3,'IMA'),('QUI2-1','Operaciones de Laboratorio',2,'QUI'),('QUI3-1','Laboratorio de Análisis y de Control de Calidad',3,'QUI'),('SAN2-2','Farmacia y Parafarmacia',2,'SAN'),('SAN2-3','Emergencias sanitarias',2,'SAN'),('SAN21','Cuidados Auxiliares de Enfermería',2,'SAN'),('SAN3-1','Anatomía patológica y citodiagnóstico',3,'SAN'),('SAN3-4','Higiene Bucodental',3,'SAN'),('SAN3-5','Imagen para el diagnóstico y medicina nuclear',3,'SAN'),('SAN3-6','Laboratorio clínico y biomédico',3,'SAN'),('SAN3-8','Prótesis Dentales',3,'SAN'),('SAN3-9','Radioterapia y Dosimetría',3,'SAN'),('SAN32','Dietética',3,'SAN'),('SEA2-1','Emergencias y Protección Civil',2,'SEA'),('SSC1-10','Actividades Domésticas y Limpieza de Edificios',1,'SSC'),('SSC2-1','Atención a personas en situación de dependencia',2,'SSC'),('SSC3-1','Animación Sociocultural y Turística',3,'SSC'),('SSC3-2','Educación infantil',3,'SSC'),('SSC3-3','Integración Social',3,'SSC'),('SSC3-4','Mediación Comunicativa',3,'SSC'),('SSC3-5','Promoción de Igualdad de Género',3,'SSC'),('TCP1-10','Arreglo y reparación de artículos textiles y de piel',1,'TCP'),('TCP2-2','Confección y moda',2,'TCP'),('TCP3-2','Patronaje y moda',3,'TCP'),('TMV1-10','Mantenimiento de vehículos',1,'TMV'),('TMV2-1','Carrocería',2,'TMV'),('TMV2-2','Electromecánica de Vehículos Automóviles',2,'TMV'),('TMV2-3','Electromecánica de Maquinaria',2,'TMV'),('TMV3-1','Automoción',3,'TMV');
/*!40000 ALTER TABLE `studies_cycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies_cycle_school_profile`
--

DROP TABLE IF EXISTS `studies_cycle_school_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies_cycle_school_profile` (
  `school_profile_id` bigint NOT NULL,
  `studies_cycle_id` varchar(255) NOT NULL,
  PRIMARY KEY (`school_profile_id`,`studies_cycle_id`),
  KEY `FK47ysun3q947hpn3yhtl8wtfvj` (`studies_cycle_id`),
  CONSTRAINT `FK47ysun3q947hpn3yhtl8wtfvj` FOREIGN KEY (`studies_cycle_id`) REFERENCES `studies_cycle` (`code`),
  CONSTRAINT `FKoqae8uonkjb8v37fvjlb6ht7b` FOREIGN KEY (`school_profile_id`) REFERENCES `school_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies_cycle_school_profile`
--

LOCK TABLES `studies_cycle_school_profile` WRITE;
/*!40000 ALTER TABLE `studies_cycle_school_profile` DISABLE KEYS */;
INSERT INTO `studies_cycle_school_profile` VALUES (2,'IFC1-10'),(2,'IFC1-11'),(2,'IFC2-1'),(2,'IFC3-1'),(2,'IFC3-2'),(2,'IFC3-3'),(2,'SAN21'),(2,'SAN3-1'),(2,'SAN3-6'),(1,'SAN32');
/*!40000 ALTER TABLE `studies_cycle_school_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies_cycle_school_project`
--

DROP TABLE IF EXISTS `studies_cycle_school_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies_cycle_school_project` (
  `school_project_id` bigint NOT NULL,
  `studies_cycle_id` varchar(255) NOT NULL,
  PRIMARY KEY (`school_project_id`,`studies_cycle_id`),
  KEY `FKltj1o6muaredh5shmwx695w0w` (`studies_cycle_id`),
  CONSTRAINT `FK86p7muonlx1rfwacm4liify7e` FOREIGN KEY (`school_project_id`) REFERENCES `school_project` (`id`),
  CONSTRAINT `FKltj1o6muaredh5shmwx695w0w` FOREIGN KEY (`studies_cycle_id`) REFERENCES `studies_cycle` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies_cycle_school_project`
--

LOCK TABLES `studies_cycle_school_project` WRITE;
/*!40000 ALTER TABLE `studies_cycle_school_project` DISABLE KEYS */;
INSERT INTO `studies_cycle_school_project` VALUES (1,'SAN3-6');
/*!40000 ALTER TABLE `studies_cycle_school_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies_cycle_teacher_profile`
--

DROP TABLE IF EXISTS `studies_cycle_teacher_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies_cycle_teacher_profile` (
  `teacher_id` bigint NOT NULL,
  `teacher_cycle_id` varchar(255) NOT NULL,
  PRIMARY KEY (`teacher_id`,`teacher_cycle_id`),
  KEY `FKs67qfdl8ybl0xt8kbaumw2k7i` (`teacher_cycle_id`),
  CONSTRAINT `FKbj61jyq5w5afmhjc2o36e1xld` FOREIGN KEY (`teacher_id`) REFERENCES `school_teacher` (`id`),
  CONSTRAINT `FKs67qfdl8ybl0xt8kbaumw2k7i` FOREIGN KEY (`teacher_cycle_id`) REFERENCES `studies_cycle` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies_cycle_teacher_profile`
--

LOCK TABLES `studies_cycle_teacher_profile` WRITE;
/*!40000 ALTER TABLE `studies_cycle_teacher_profile` DISABLE KEYS */;
INSERT INTO `studies_cycle_teacher_profile` VALUES (2,'SAN3-6'),(1,'SAN32');
/*!40000 ALTER TABLE `studies_cycle_teacher_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies_family`
--

DROP TABLE IF EXISTS `studies_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies_family` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `UK_d69qdgiuk3vi17g4579aigicb` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies_family`
--

LOCK TABLES `studies_family` WRITE;
/*!40000 ALTER TABLE `studies_family` DISABLE KEYS */;
INSERT INTO `studies_family` VALUES ('AFD','Actividades Físicas y  Deportivas'),('ADG','Administración y Gestión'),('AGA','Agraria'),('ARG','Artes Gráficas'),('COM','Comercio y Marketing'),('EOC','Edificación y Obra Civil'),('ELE','Electricidad y Electrónica'),('ENA','Energía y Agua'),('FME','Fabricación Mecánica'),('HOT','Hostelería y Turismo'),('IMP','Imagen Personal'),('IMS','Imagen y Sonido'),('INA','Industrias Alimentarias'),('IFC','Informática y Comunicaciones'),('IMA','Instalación y Mantenimiento'),('MMC','Madera, Mueble y Corcho'),('QUI','Química'),('SAN','Sanidad'),('SEA','Seguridad y Medio Ambiente'),('SSC','Servicios Socioculturales y a la Comunidad'),('TCP','Textil, Confección y Piel'),('TMV','Transporte y Mantenimiento de ');
/*!40000 ALTER TABLE `studies_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studies_level`
--

DROP TABLE IF EXISTS `studies_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studies_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_aqe8t1qv8oc2l4d0q4u389rin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studies_level`
--

LOCK TABLES `studies_level` WRITE;
/*!40000 ALTER TABLE `studies_level` DISABLE KEYS */;
INSERT INTO `studies_level` VALUES (4,'Curso de Especialización'),(1,'Formación Profesional Básica'),(2,'Grado Medio'),(3,'Grado Superior');
/*!40000 ALTER TABLE `studies_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_manager`
--

DROP TABLE IF EXISTS `user_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_manager` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKj5owj2k3lg3wbdwi3u0mxqovk` FOREIGN KEY (`id`) REFERENCES `basic_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_manager`
--

LOCK TABLES `user_manager` WRITE;
/*!40000 ALTER TABLE `user_manager` DISABLE KEYS */;
INSERT INTO `user_manager` VALUES (1),(3);
/*!40000 ALTER TABLE `user_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_nested`
--

DROP TABLE IF EXISTS `user_nested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_nested` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKlktm58mmk7fk4m7ngunnvaps0` FOREIGN KEY (`id`) REFERENCES `basic_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_nested`
--

LOCK TABLES `user_nested` WRITE;
/*!40000 ALTER TABLE `user_nested` DISABLE KEYS */;
INSERT INTO `user_nested` VALUES (2),(4);
/*!40000 ALTER TABLE `user_nested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rol`
--

DROP TABLE IF EXISTS `user_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rol` (
  `user_id` bigint NOT NULL,
  `rol_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`rol_id`),
  KEY `FKpfraq7jod5w5xd3sxm3m6y1o` (`rol_id`),
  CONSTRAINT `FKedbyncub0d8o7d2pt775t02s3` FOREIGN KEY (`user_id`) REFERENCES `basic_user` (`id`),
  CONSTRAINT `FKpfraq7jod5w5xd3sxm3m6y1o` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rol`
--

LOCK TABLES `user_rol` WRITE;
/*!40000 ALTER TABLE `user_rol` DISABLE KEYS */;
INSERT INTO `user_rol` VALUES (1,1),(3,1),(2,3),(4,3);
/*!40000 ALTER TABLE `user_rol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- 
-- AÑADO CREACIÓN DE USUARIO ADMINISTRADOR = USADO PARA CONEXIÓN EN TOGGLE.WAR
--

CREATE USER admintoggle IDENTIFIED BY 'mmQnZ5sTir9HXiG';
GRANT ALL ON toggle.* TO admintoggle;

-- Dump completed on 2022-06-15  9:35:58
