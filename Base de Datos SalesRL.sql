CREATE DATABASE  IF NOT EXISTS `salesr-dbv2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salesr-dbv2`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: salesr-dbv2
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `DPI` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'1123123123','Juan Lopez','12345678','San Marcos'),(2,'21312312','Juan Lopez','12345678','San Marcos'),(3,'34234234','Tonny','12345678','San Pedro'),(4,'1736453427','Juan Carlos Vladimir Putin','12345678','San Pedro Sacatepequez San Marcos');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle` (
  `idDetalle` int NOT NULL AUTO_INCREMENT,
  `id_Pro` varchar(45) NOT NULL,
  `Cantidad` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `id_Venta` varchar(45) NOT NULL,
  PRIMARY KEY (`idDetalle`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (1,'123','4','3.0','0'),(2,'123','6','3.0','0'),(3,'123','7','3.0','0'),(4,'123','5','3.0','0'),(5,'34534','4','6.0','0'),(6,'123','7','3.0','0'),(7,'123','7','3.0','0'),(8,'123','5','3.0','0'),(9,'123','6','3.0','0'),(10,'123','7','3.0','0'),(11,'123','7','3.0','0'),(12,'123','8','3.0','0'),(13,'123','7','3.0','19'),(14,'123','9','3.0','20'),(15,'123','4','3.0','21'),(16,'34534','5','6.0','21'),(17,'123','6','3.0','22'),(18,'123','77','3.0','23'),(19,'123','66','3.0','24'),(20,'123','66','3.0','25'),(21,'123','77','3.0','26'),(22,'123','77','3.0','27'),(23,'12345','77','4.0','27'),(24,'123','7','3.0','28');
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProductos` int NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Proveedor` varchar(45) DEFAULT NULL,
  `Stock` varchar(45) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  PRIMARY KEY (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'123','Maiz','Maizales','123','3'),(2,'34534','erwerwer','Distribuyendo S.a','5','6.0'),(3,'353453','Frijol','Maizales S.A','999','3.5'),(4,'12345','Arroz','Maizales S.A','88','4.0');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `RUC` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'34234','Proveedores S.A','37465968','San Marcos San marcos'),(2,'45345','Proveyendo S.A','37465768','San Lucas'),(3,'535345','Sabritas S.A','12098764','San Pedro'),(4,'23423','Sistems S.A','17365635','San Lucas');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Pass` varchar(45) NOT NULL,
  `Rol` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Tonny','bboygeferson@gmail.com','1g2g3g4g','Administrador'),(2,'Tonny','tonny@gmail.com','1g2g3g4g','Administrador');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVentas` int NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(45) NOT NULL,
  `Vendedor` varchar(45) NOT NULL,
  `Total` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`idVentas`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'0','Tonny RL','3.0','Wed Oct 19 19:34:01 CST 2022'),(2,'0','Tonny RL','3.0','Wed Oct 19 19:37:01 CST 2022'),(3,'0','Tonny RL','3.0','Wed Oct 19 19:39:33 CST 2022'),(4,'Tonny','Tonny RL','3.0','Wed Oct 19 19:43:26 CST 2022'),(5,'Tonny','Tonny RL','3.0','Wed Oct 19 19:47:53 CST 2022'),(6,'Tonny','Tonny RL','3.0','Wed Oct 19 23:40:09 CST 2022'),(7,'Tonny','Tonny RL','3.0','Wed Oct 19 23:40:09 CST 2022'),(8,'Tonny','Tonny RL','3.0','Wed Oct 19 23:57:38 CST 2022'),(9,'Tonny','Tonny RL','9.0','Thu Oct 20 00:02:11 CST 2022'),(10,'Tonny','Tonny RL','3.0','Thu Oct 20 00:11:03 CST 2022'),(11,'Tonny','Tonny RL','3.0','Thu Oct 20 00:11:03 CST 2022'),(12,'Tonny','Tonny RL','3.0','Thu Oct 20 00:13:08 CST 2022'),(13,'Tonny','Tonny RL','3.0','Thu Oct 20 00:14:24 CST 2022'),(14,'Tonny','Tonny RL','3.0','Thu Oct 20 00:17:36 CST 2022'),(15,'Tonny','Tonny RL','3.0','Thu Oct 20 00:21:14 CST 2022'),(16,'Tonny','Tonny RL','21.0','Thu Oct 20 00:27:58 CST 2022'),(17,'Tonny','Tonny RL','21.0','Thu Oct 20 00:27:58 CST 2022'),(18,'Tonny','Tonny RL','24.0','Thu Oct 20 00:32:55 CST 2022'),(19,'Tonny','Tonny RL','21.0','Thu Oct 20 00:34:39 CST 2022'),(20,'Tonny','Tonny RL','27.0','Thu Oct 20 00:36:53 CST 2022'),(21,'Tonny','Tonny RL','42.0','Thu Oct 20 00:40:03 CST 2022'),(22,'Tonny','Tonny RL','18.0','Thu Oct 20 00:41:59 CST 2022'),(23,'Tonny','Tonny RL','231.0','Thu Oct 20 00:55:08 CST 2022'),(24,'Tonny','Tonny RL','198.0','Thu Oct 20 01:50:21 CST 2022'),(25,'Tonny','Tonny RL','198.0','Thu Oct 20 01:50:21 CST 2022'),(26,'Tonny','Tonny RL','231.0','Thu Oct 20 01:53:03 CST 2022'),(27,'Tonny','Tonny RL','539.0','Thu Oct 20 01:53:03 CST 2022'),(28,'Tonny','Tonny RL','21.0','Thu Oct 20 03:08:17 CST 2022');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20 16:35:55
