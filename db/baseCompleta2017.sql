-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: dbnegocios
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `codigoCita` bigint(11) NOT NULL AUTO_INCREMENT,
  `usuarioId` bigint(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `idtipoPrograma` bigint(11) NOT NULL,
  PRIMARY KEY (`codigoCita`),
  UNIQUE KEY `fechaHora_UNIQUE` (`fechaHora`),
  KEY `fk_citas_usuarios_idx` (`usuarioId`),
  KEY `fk_citas_tipoprograma1_idx` (`idtipoPrograma`),
  CONSTRAINT `fk_citas_tipoprograma1` FOREIGN KEY (`idtipoPrograma`) REFERENCES `tipoprograma` (`idtipoPrograma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_citas_usuarios` FOREIGN KEY (`usuarioId`) REFERENCES `usuarios` (`usuarioId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `codigoRol` bigint(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`codigoRol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrador'),(2,'suscriptor');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoprograma`
--

DROP TABLE IF EXISTS `tipoprograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoprograma` (
  `idtipoPrograma` bigint(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`idtipoPrograma`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoprograma`
--

LOCK TABLES `tipoprograma` WRITE;
/*!40000 ALTER TABLE `tipoprograma` DISABLE KEYS */;
INSERT INTO `tipoprograma` VALUES (1,'Voluntariado'),(2,'Practicante'),(3,'Becas'),(4,'Padrinazgo');
/*!40000 ALTER TABLE `tipoprograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuarioId` bigint(11) NOT NULL AUTO_INCREMENT,
  `usuarioCorreo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `usuarioNombre` varchar(45) NOT NULL,
  `usuarioApellido` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `usuarioClave` varchar(45) CHARACTER SET latin1 NOT NULL,
  `usuarioEstado` char(3) CHARACTER SET latin1 NOT NULL DEFAULT 'ACT',
  `usuarioFechaIngreso` datetime NOT NULL,
  `usuarioUltimoLogin` datetime DEFAULT NULL,
  `intentos` int(11) DEFAULT '0',
  `codigoRol` bigint(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`usuarioId`),
  UNIQUE KEY `usuarioCorreo_UNIQUE` (`usuarioCorreo`),
  KEY `fk_usuarios_roles1_idx` (`codigoRol`),
  CONSTRAINT `fk_usuarios_roles1` FOREIGN KEY (`codigoRol`) REFERENCES `roles` (`codigoRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin@juana.edu','Percy','Rosales','M','Los Robles','91843001','1ed91297e92d739347e61cfaca712c49','ACT','2017-04-18 14:09:52','2017-04-19 13:26:42',0,1),(2,'ana@gmail.com','ana','lopez','F','ghs','54334567','1ed91297e92d739347e61cfaca712c49','ACT','2017-04-18 14:09:52','2017-04-19 13:12:25',0,2);
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

-- Dump completed on 2017-04-19 12:58:34
