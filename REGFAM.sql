-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: regfam
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `certificadomatrimonio`
--

DROP TABLE IF EXISTS `certificadomatrimonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificadomatrimonio` (
  `IDMatrimonio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `FechaNcimiento` varchar(45) NOT NULL,
  `HoraNacimiento` varchar(45) NOT NULL,
  `DUI` varchar(45) NOT NULL,
  `NIT` varchar(45) NOT NULL,
  `Profesion/oficio` varchar(45) NOT NULL,
  `CertificadoMatrimoniocol` varchar(45) NOT NULL,
  `BienesCompartidos` varchar(10) NOT NULL,
  PRIMARY KEY (`IDMatrimonio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificadomatrimonio`
--

LOCK TABLES `certificadomatrimonio` WRITE;
/*!40000 ALTER TABLE `certificadomatrimonio` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificadomatrimonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `IDEmpleado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Genero` enum('MASCULINO','FEMENINO') NOT NULL,
  PRIMARY KEY (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones`
--

DROP TABLE IF EXISTS `opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opciones` (
  `IDOpcion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opcion` varchar(45) NOT NULL,
  PRIMARY KEY (`IDOpcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registroasentamiento`
--

DROP TABLE IF EXISTS `registroasentamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registroasentamiento` (
  `IDAsentamiento` int(11) NOT NULL AUTO_INCREMENT,
  `IDResponsables` int(11) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `HoraNacimiento` datetime NOT NULL,
  `LugarNacimiento` varchar(50) NOT NULL,
  `Peso` varchar(50) NOT NULL,
  PRIMARY KEY (`IDAsentamiento`),
  KEY `fk_RegistroAsentamiento_Responsables1_idx` (`IDResponsables`),
  CONSTRAINT `fk_RegistroAsentamiento_Responsables1` FOREIGN KEY (`IDResponsables`) REFERENCES `responsables` (`IDResponsables`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroasentamiento`
--

LOCK TABLES `registroasentamiento` WRITE;
/*!40000 ALTER TABLE `registroasentamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `registroasentamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsables`
--

DROP TABLE IF EXISTS `responsables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsables` (
  `IDResponsables` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `FechaNacimiento` varchar(45) NOT NULL,
  `Genero` varchar(45) NOT NULL,
  `EstadoCivil` varchar(45) NOT NULL,
  `DUI` varchar(45) NOT NULL,
  `NIT` varchar(45) NOT NULL,
  `Nacionalidad` varchar(45) NOT NULL,
  `Profesion/oficio` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `TipoSangre` varchar(45) NOT NULL,
  PRIMARY KEY (`IDResponsables`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsables`
--

LOCK TABLES `responsables` WRITE;
/*!40000 ALTER TABLE `responsables` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `IDRol` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Rol` varchar(45) NOT NULL,
  PRIMARY KEY (`IDRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `IDUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) NOT NULL,
  `Clave` varchar(200) NOT NULL,
  `IDEmpleado` int(10) unsigned NOT NULL,
  `IDRol` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IDUsuario`),
  KEY `fk_usuario_roles_idx` (`IDRol`),
  KEY `fk_usuario_empleados1_idx` (`IDEmpleado`),
  CONSTRAINT `fk_usuario_empleados1` FOREIGN KEY (`IDEmpleado`) REFERENCES `empleados` (`IDEmpleado`),
  CONSTRAINT `fk_usuario_roles` FOREIGN KEY (`IDRol`) REFERENCES `roles` (`IDRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 18:42:59
