CREATE DATABASE  IF NOT EXISTS `sistema` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sistema`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: sistema
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci,
  `imagen` blob,
  `medida` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_spanish2_ci DEFAULT 'Activo',
  PRIMARY KEY (`idarticulo`),
  KEY `fk_articulo_categoria_idx` (`idcategoria`),
  CONSTRAINT `fk_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,2,'101','ACEITE','ACEITE DE CRISOL','','LBS','Activo\r'),(2,2,'102','ALMENDRAS BLANCAS','ALMENDRAS BLANCAS','null','UDS','Activo\r'),(3,2,'103','ANTI-MOJO','ANTI-MOJO','null','null','Activo\r'),(4,2,'104','AZUCAR PULVERIZADA','AZUCAR PULVERIZADA','null','null','Activo\r'),(5,2,'105','BRIILLO MIRROL ','BRIILLO MIRROL ','null','null','Activo\r'),(6,2,'106','CAJA BISCOCHO DE 1/2  LIBRA','CAJA BISCOCHO DE 1/2  LIBRA','null','LBS','Activo\r'),(7,2,'107','CAJA DE BISCOCHO DE 1 LIBRA','CAJA DE BISCOCHO DE 1 LIBRA','null','LBS','Activo\r'),(8,2,'108','CANELA','CANELA','null','LBS','Activo\r'),(9,2,'109','CEREZA ROJA ','CEREZA ROJA ','null','null','Activo\r'),(10,2,'110','CERVILLETAS','CERVILLETAS','null','null','Activo\r'),(11,2,'111','CLORO','CLORO','null','PTE','Activo\r'),(12,2,'112','COLORORANTE EN POLVO','COLORORANTE EN POLVO','null','null','Activo\r'),(13,2,'113','CREMA DE BATIR DE CHOCOLATE ','CREMA DE BATIR DE CHOCOLATE ','null','null','Activo\r'),(14,2,'114','CREMA DE BATIR DE VAINILLA ','CREMA DE BATIR DE VAINILLA ','null','null','Activo\r'),(15,2,'115','CREMA PASTELERA','CREMA PASTELERA','null','null','Activo\r'),(16,2,'116','CREMA PASTELERA ','CREMA PASTELERA ','null','null','Activo\r'),(17,2,'117','CUCHARAS','CUCHARAS','null','null','Activo\r'),(18,2,'118','DULCE DE LECHE','DULCE DE LECHE','null','null','Activo\r'),(19,2,'119','FUNDAS DE PAPEL','FUNDAS DE PAPEL','null','FDA','Activo\r'),(20,2,'120','FUNDAS NEGRAS','FUNDAS NEGRAS','null','FDA','Activo\r'),(21,2,'121','FUNDASO.12','FUNDASO.12','null','FDA','Activo\r'),(22,2,'122','GRANILLO MULTICOLOR ','GRANILLO MULTICOLOR ','null','null','Activo\r'),(23,2,'123','HARINA BLANQUITA','HARINA BLANQUITA','null','LBS','Activo\r'),(24,2,'124','HARINA DE MAIZ','HARINA DE MAIZ','null','LBS','Activo\r'),(25,2,'125','HARINA DE TRIGO','HARINA DE TRIGO','null','LBS','Activo\r'),(26,2,'126','HUEVOS ','HUEVOS ','null','UDS','Activo\r'),(27,2,'127','ICING CHOCOLATE','ICING CHOCOLATE','null','null','Activo\r'),(28,2,'128','LECHE','LECHE','null','LTRO','Activo\r'),(29,2,'129','LEVADURA','LEVADURA','null','LBS','Activo\r'),(30,2,'130','MASA DE HOJALDRE','MASA DE HOJALDRE','null','null','Activo\r'),(31,2,'131','MATEQUILLA ','MATEQUILLA ','null','null','Activo\r'),(32,2,'132','MERMELADA DE CREMA','MERMELADA DE CREMA','null','null','Activo\r'),(33,2,'133','MERMELADA DE GUAYABA','MERMELADA DE GUAYABA','null','null','Activo\r'),(34,2,'134','MERMELADA DE PIÃ‘A','MERMELADA DE PIÃ‘A','null','null','Activo\r'),(35,2,'135','MISTOLIN','MISTOLIN','null','PTE','Activo\r'),(36,2,'136','PAN 6 CEREALES','PAN 6 CEREALES','null','null','Activo\r'),(37,2,'137','PAPEL ENCERADO','PAPEL ENCERADO','null','null','Activo\r'),(38,2,'138','PAPEL LUMINICO','PAPEL LUMINICO','null','null','Activo\r'),(39,2,'139','PASAS','PASAS','null','null','Activo\r'),(40,2,'140','PLATOS DE PICA POLLO','PLATOS DE PICA POLLO','null','null','Activo\r'),(41,2,'141','PLATOS PEQ. REDONDOS','PLATOS PEQ. REDONDOS','null','null','Activo\r'),(42,2,'142','PURATO','PURATO','null','null','Activo\r'),(43,2,'143','ROYAL','ROYAL','null','LBS','Activo\r'),(44,2,'144','SABOR DE MANTEQUILLA ','SABOR DE MANTEQUILLA ','null','null','Activo\r'),(45,2,'145','SAL','SAL','null','LBS','Activo\r'),(46,2,'146','VAINILLA','VAINILLA','null','null','Activo\r'),(47,2,'147','VASOS NO.7','VASOS NO.7','null','null','Activo\r'),(48,1,'201','PAN DE AGUA','PAN DE AGUA','null','UDS','Activo\r'),(49,1,'202','PAN DE CHIMI','PAN DE CHIMI','null','UDS','Activo\r'),(50,1,'203','PAN DE SOBAO ','PAN DE SOBAO ','null','UDS','Activo\r'),(51,1,'204','PAN CUBANO','PAN CUBANO','null','UDS','Activo\r'),(52,1,'205','PAN REDONDO','PAN REDONDO','null','UDS','Activo\r'),(53,1,'206','PAN DE BUFET','PAN DE BUFET','null','UDS','Activo\r'),(54,1,'207','PAN TU Y YO','PAN TU Y YO','null','UDS','Activo\r'),(55,1,'208','PAN DE MANTEQUILLA ','PAN DE MANTEQUILLA ','null','UDS','Activo\r'),(56,1,'209','PAN INTEGRAL','PAN INTEGRAL','null','UDS','Activo\r'),(57,1,'210','PAN ESPECIAL DE ANI','PAN ESPECIAL DE ANI','null','UDS','Activo\r'),(58,1,'211','PAN DULCE','PAN DULCE','null','UDS','Activo\r'),(59,1,'212','PAN HAITIANO','PAN HAITIANO','null','UDS','Activo\r'),(60,1,'213','PAN BAGUETTE','PAN BAGUETTE','null','UDS','Activo\r'),(61,1,'214','F.GALLETAS','F.GALLETAS','null','FDA','Activo\r'),(62,1,'215','PAN TELERA','PAN TELERA','null','UDS','Activo\r'),(63,1,'216','PAN KIMBO PQUEÃ‘O','PAN KIMBO PQUEÃ‘O','null','UDS','Activo\r'),(64,1,'217','PAN KIMBO GRANDE','PAN KIMBO GRANDE','null','UDS','Activo\r'),(65,1,'218','ALFAJORES','ALFAJORES','null','UDS','Activo\r'),(66,1,'219','EMPANADA DE GUAYABA','EMPANADA DE GUAYABA','null','UDS','Activo\r'),(67,1,'220','SHOTS','SHOTS','null','UDS','Activo\r'),(68,1,'221','CHEESECAKE','CHEESECAKE','null','UDS','Activo\r'),(69,1,'222','CHEESECAKE','CHEESECAKE','null','UDS','Activo\r'),(70,1,'223','DONAS GRANDES','DONAS GRANDES','null','UDS','Activo\r'),(71,1,'224','FLAN','FLAN','null','UDS','Activo\r'),(72,1,'225','DONAS PEQEÃ‘AS','DONAS PEQEÃ‘AS','null','UDS','Activo\r'),(73,1,'226','CONCONETES','CONCONETES','null','UDS','Activo\r'),(74,1,'227','GALLETAS DE ROSA','GALLETAS DE ROSA','null','UDS','Activo\r'),(75,1,'228','MANTECADOS','MANTECADOS','null','UDS','Activo\r'),(76,1,'229','BISCOCHO BRAZO GITANO','BISCOCHO BRAZO GITANO','null','UDS','Activo\r'),(77,1,'230','PALMERITAS','PALMERITAS','null','UDS','Activo\r'),(78,1,'231','MASITAS','MASITAS','null','UDS','Activo\r'),(79,1,'232','BISCOCHO DE VAINILLA','BISCOCHO DE VAINILLA','null','UDS','Activo\r'),(80,1,'233','SUSPIRO','SUSPIRO','null','UDS','Activo\r'),(81,1,'234','CUPCAKES','CUPCAKES','null','UDS','Activo\r'),(82,1,'235','PAN DE GUINEO','PAN DE GUINEO','null','UDS','Activo\r'),(83,1,'236','PAN DE MAIZ','PAN DE MAIZ','null','UDS','Activo\r'),(84,1,'237','PAN DE CIRUELA','PAN DE CIRUELA','null','UDS','Activo\r'),(85,1,'238','CHURROS','CHURROS','null','UDS','Activo\r'),(86,1,'239','SPAY','SPAY','null','UDS','Activo\r'),(87,1,'240','GALLETAS COKI','GALLETAS COKI','null','UDS','Activo\r'),(88,1,'241','CARAMELOS','CARAMELOS','null','UDS','Activo\r'),(89,1,'242','TARTAS DE FRUTAS','TARTAS DE FRUTAS','null','UDS','Activo\r'),(90,1,'243','AGUA PELICANO','AGUA PELICANO','null','UDS','Activo\r'),(91,1,'244','AGUA HEAVEN','AGUA HEAVEN','null','UDS','Activo\r'),(92,1,'245','REFRESCO COLA REAL','REFRESCO COLA REAL','null','UDS','Activo\r'),(93,1,'246','JUGO PETIT','JUGO PETIT','null','UDS','Activo\r'),(94,1,'247','PUDIN','PUDIN','null','UDS','Activo\r');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asiento` (
  `idasiento` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idoperaciones_caja` int(11) DEFAULT NULL,
  `idtranzaccion` int(11) DEFAULT NULL,
  `asi_descripcion` varchar(450) DEFAULT NULL,
  `asi_nota` varchar(450) DEFAULT NULL,
  `asi_debe` decimal(11,2) DEFAULT '0.00',
  `asi_haber` decimal(11,2) DEFAULT '0.00',
  `asi_estado` varchar(45) DEFAULT NULL,
  `fecha_automatica` datetime DEFAULT NULL,
  `asi_fecha` datetime DEFAULT NULL,
  `idcuenta` int(11) DEFAULT '0',
  PRIMARY KEY (`idasiento`),
  KEY `fk_asi_usuario_idx` (`idusuario`),
  KEY `fk_asi_opcaja_idx` (`idoperaciones_caja`),
  KEY `idoperaciones_caja` (`idoperaciones_caja`),
  CONSTRAINT `fk_asi_opcaja` FOREIGN KEY (`idoperaciones_caja`) REFERENCES `operaciones_caja` (`idoperaciones_caja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_asi_usuario` FOREIGN KEY (`idusuario`) REFERENCES `trabajador` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacion_cuenta`
--

DROP TABLE IF EXISTS `asignacion_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignacion_cuenta` (
  `idasignacion_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `idcuenta` int(11) NOT NULL,
  `Tranzaccion` varchar(40) NOT NULL,
  PRIMARY KEY (`idasignacion_cuenta`),
  KEY `fk_asignar_idx` (`idcuenta`),
  CONSTRAINT `fk_asignar` FOREIGN KEY (`idcuenta`) REFERENCES `cuenta` (`idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_cuenta`
--

LOCK TABLES `asignacion_cuenta` WRITE;
/*!40000 ALTER TABLE `asignacion_cuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacion_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_cuenta`
--

DROP TABLE IF EXISTS `balance_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance_cuenta` (
  `idbalance_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `idcuenta` int(11) DEFAULT NULL,
  `balance_inicial` decimal(11,2) DEFAULT '0.00',
  `balance_final` decimal(11,2) DEFAULT '0.00',
  `idoperaciones_mensuales` int(11) DEFAULT NULL,
  `fecha_automatica` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idbalance_cuenta`),
  KEY `fk_bal_cta_idx` (`idcuenta`),
  CONSTRAINT `fk_bal_cta` FOREIGN KEY (`idcuenta`) REFERENCES `cuenta` (`idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_cuenta`
--

LOCK TABLES `balance_cuenta` WRITE;
/*!40000 ALTER TABLE `balance_cuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `condicion` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idcategoria`),
  KEY `tipo` (`tipo`),
  CONSTRAINT `fk?tipo` FOREIGN KEY (`tipo`) REFERENCES `tipos` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,1,'Productos Terminado','Activo'),(2,2,'Materia Prima','Activo');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_cliente` varchar(10) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (3,'01','Contado');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobro`
--

DROP TABLE IF EXISTS `cobro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobro` (
  `idcobro` int(11) NOT NULL AUTO_INCREMENT,
  `idtranzaccion` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(20) DEFAULT NULL,
  `num_comprobante` varchar(12) DEFAULT NULL,
  `total_pago` decimal(9,2) DEFAULT NULL,
  `fecha_cobro` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `forma_cobro` varchar(20) DEFAULT 'Efectivo',
  PRIMARY KEY (`idcobro`),
  KEY `fk_cobros_ventas_idx` (`idtranzaccion`),
  CONSTRAINT `fk_cobros_ventas` FOREIGN KEY (`idtranzaccion`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobro`
--

LOCK TABLES `cobro` WRITE;
/*!40000 ALTER TABLE `cobro` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobro` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cobros` AFTER INSERT ON `cobro` FOR EACH ROW BEGIN
  INSERT movimiento SET idtranzaccion=NEW.idtranzaccion,fecha_hora = NEW.fecha_cobro,tipo_comprobante=NEW.tipo_comprobante,num_comprobante=NEW.num_comprobante,estado=NEW.estado,salida=NEW.total_pago;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion` (
  `idcotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(700) COLLATE utf8_spanish2_ci NOT NULL,
  `serie_comprobante` varchar(800) COLLATE utf8_spanish2_ci NOT NULL,
  `num_comprobante` varchar(700) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_sin_itbis` decimal(11,2) DEFAULT NULL,
  `total_itbis` decimal(11,2) DEFAULT NULL,
  `total_venta` decimal(11,2) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcotizacion`),
  KEY `fk_venta_clente0_idx` (`idcliente`),
  CONSTRAINT `fk_venta_clente0` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `idcuenta` int(11) NOT NULL AUTO_INCREMENT,
  `cta_codigo` int(9) DEFAULT '0',
  `idusuario` int(11) DEFAULT NULL,
  `cta_descripcion` varchar(450) DEFAULT NULL,
  `cta_tipo` varchar(450) DEFAULT NULL,
  `cuenta` varchar(30) DEFAULT 'Detalle',
  `estado` varchar(45) DEFAULT 'Activo',
  PRIMARY KEY (`idcuenta`),
  KEY `fk_cta_usuario_idx` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,1,1,'Capital','Capital','Grupo','Activa\r'),(2,10,1,'Capital social','Capital','Grupo','Activa\r'),(3,1030,1,'Capital de personas naturales','Capital','Grupo','Activa\r'),(4,103040,1,'Aporte capital socio 1','Capital','Detalle','Activa\r'),(5,103050,1,'Aporte capital socio 2','Capital','Detalle','Activa\r'),(6,1060,1,'Resultado del ejercicio','Capital','Detalle','Activa\r'),(7,106010,1,'Resultado total del ejercicio','Capital','Detalle','Activa\r'),(8,2,1,'Activos','Inmovilizado material','Grupo','Activa\r'),(9,20,1,'Propiedades planta y equipos','Inmovilizado material','Grupo','Activa\r'),(10,2004,1,'Terreno','Inmovilizado material','Grupo','Activa\r'),(11,200410,1,'Terreno 1','Inmovilizado material','Detalle','Activa\r'),(12,200499,1,'Ajuste por inflacion','Inmovilizado material','Detalle','Activa\r'),(13,201210,1,'Equipo de oficina','Inmovilizado material','Detalle','Activa\r'),(14,20121030,1,'Equipo de oficina','Inmovilizado material','Detalle','Activa\r'),(15,20121040,1,'Intangibles','Inmovilizado material','Detalle','Activa\r'),(16,3,1,'Existencia','Existencias','Grupo','Activa\r'),(17,301020,1,'Mercaderia','Existencias','Detalle','Activa\r'),(18,4,1,'Deudores y Proveedores','Deudores y Proveedores','Grupo','Activa\r'),(19,40,1,'Proveedores','Deudores y Proveedores','Grupo','Activa\r'),(20,401020,1,'Proveedores','Deudores y Proveedores','Detalle','Activa\r'),(21,41,1,'Clientes','Deudores y Proveedores','Grupo','Activa\r'),(22,411020,1,'Clientes','Deudores y Proveedores','Detalle','Activa\r'),(23,5,1,'Cuentas Financieras','Cuentas Financieras','Grupo','Activa\r'),(24,5010,1,'Caja','Cuentas Financieras','Grupo','Activa\r'),(25,501005,1,'Caja general','Cuentas Financieras','Detalle','Activa\r'),(26,501010,1,'Cajas menores','Cuentas Financieras','Detalle','Activa\r'),(27,50101005,1,'Caja venta 1','Cuentas Financieras','Detalle','Activa\r'),(28,50102020,1,'Caja chica','Cuentas Financieras','Detalle','Activa\r'),(29,6,1,'Compras/Gastos','Compras/Gastos','Grupo','Activa\r'),(30,61,1,'Operaciones de administracion','Compras/Gastos','Grupo','Activa\r'),(31,6105,1,'Gastos de personal','Compras/Gastos','Grupo','Activa\r'),(32,610503,1,'Salario integral','Compras/Gastos','Detalle','Activa\r'),(33,6210,1,'Servicios','Compras/Gastos','Grupo','Activa\r'),(34,621020,1,'Electricidad, telefono e internet','Compras/Gastos','Detalle','Activa\r'),(35,6320,1,'Compras','Compras/Gastos','Grupo','Activa\r'),(36,632040,1,'Compras de mercancias','Compras/Gastos','Detalle','Activa\r'),(37,7,1,'Ingresos/Ventas','Ingresos/Ventas','Grupo','Activa\r'),(38,712030,1,'Ventas contado','Ingresos/Ventas','Detalle','Activa\r'),(39,721005,1,'Ventas credito','Ingresos/Ventas','Detalle','Activa\r'),(40,51,1,'Bancos','Activo','Grupo','Activo'),(41,511010,1,'Cuenta No','Activo','Detalle','Activo'),(42,411010,1,'Ventas Creditos','Activo','Detalle','Activo'),(43,69,1,'Ajustes Negativos NA','Activo','Grupo','Activo'),(44,695090,1,'Ajustes Negativos','Activo','Detalle','Activo'),(45,79,1,'Ajuste Positivo PA','Activo','Grupo','Activo'),(46,793060,1,'Ajustes Positivos','Activo','Detalle','Activo'),(47,752030,1,'Mercaderia Manofacturada','Activo','Detalle','Activo'),(48,684010,1,'Requisicion de Materiales','Activo','Detalle','Activo');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_asiento`
--

DROP TABLE IF EXISTS `detalle_asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_asiento` (
  `iddetalle_asiento` int(11) NOT NULL AUTO_INCREMENT,
  `idasiento` int(11) DEFAULT NULL,
  `idcuenta` int(11) DEFAULT '1',
  `det_debe` decimal(11,2) DEFAULT '0.00',
  `det_haber` decimal(11,2) DEFAULT '0.00',
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_asiento`),
  KEY `fk_det_asiento_idx` (`idasiento`),
  KEY `fk_det_cuenta_idx` (`idcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_asiento`
--

LOCK TABLES `detalle_asiento` WRITE;
/*!40000 ALTER TABLE `detalle_asiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_asiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_cotizacion`
--

DROP TABLE IF EXISTS `detalle_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_cotizacion` (
  `iddetalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `idcotizacion` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `medida` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `itbis` decimal(11,0) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT '0.00',
  `importe` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_cotizacion`),
  KEY `fk_detalle_venta_articulo_idx` (`idarticulo`),
  KEY `fk_detalle_cotizacion_idx` (`idcotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cotizacion`
--

LOCK TABLES `detalle_cotizacion` WRITE;
/*!40000 ALTER TABLE `detalle_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ingreso`
--

DROP TABLE IF EXISTS `detalle_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `medida` varchar(20) COLLATE utf8_spanish2_ci DEFAULT 'MEDIDA',
  `estado` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `itbis` decimal(11,0) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `importe` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_ingreso`),
  KEY `fk_detalle_ingreso_idx` (`idingreso`),
  KEY `fk_detalle_ingreso_articulo_idx` (`idarticulo`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ingreso`
--

LOCK TABLES `detalle_ingreso` WRITE;
/*!40000 ALTER TABLE `detalle_ingreso` DISABLE KEYS */;
INSERT INTO `detalle_ingreso` VALUES (1,0,1,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(2,0,2,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(3,0,3,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(4,0,4,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(5,0,5,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(6,0,6,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(7,0,7,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(8,0,8,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(9,0,9,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(10,0,10,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(11,0,11,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(12,0,12,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(13,0,13,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(14,0,14,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(15,0,15,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(16,0,16,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(17,0,17,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(18,0,18,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(19,0,19,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(20,0,20,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(21,0,21,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(22,0,22,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(23,0,23,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(24,0,24,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(25,0,25,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(26,0,26,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(27,0,27,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(28,0,28,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(29,0,29,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(30,0,30,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(31,0,31,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(32,0,32,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(33,0,33,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(34,0,34,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(35,0,35,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(36,0,36,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(37,0,37,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(38,0,38,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(39,0,39,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(40,0,40,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(41,0,41,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(42,0,42,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(43,0,43,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(44,0,44,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(45,0,45,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(46,0,46,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(47,0,47,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(48,0,48,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(49,0,49,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(50,0,50,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(51,0,51,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(52,0,52,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(53,0,53,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(54,0,54,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(55,0,55,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(56,0,56,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(57,0,57,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(58,0,58,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(59,0,59,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(60,0,60,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(61,0,61,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(62,0,62,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(63,0,63,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(64,0,64,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(65,0,65,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(66,0,66,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(67,0,67,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(68,0,68,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(69,0,69,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(70,0,70,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(71,0,71,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(72,0,72,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(73,0,73,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(74,0,74,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(75,0,75,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(76,0,76,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(77,0,77,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(78,0,78,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(79,0,79,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(80,0,80,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(81,0,81,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(82,0,82,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(83,0,83,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(84,0,84,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(85,0,85,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(86,0,86,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(87,0,87,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(88,0,88,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(89,0,89,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(90,0,90,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(91,0,91,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(92,0,92,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(93,0,93,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL),(94,0,94,0.00,0.00,0.00,'MEDIDA',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detalle_ingreso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `entradas` AFTER INSERT ON `detalle_ingreso` FOR EACH ROW BEGIN
  INSERT detalle_inventario SET idtranzaccion=NEW.iddetalle_ingreso,idmovimiento = NEW.idingreso,idarticulo=NEW.idarticulo,entrada=NEW.cantidad,precio_compra=NEW.precio_compra,precio_venta=NEW.precio_venta,estado=NEW.estado;
  UPDATE inventario SET stock = stock + NEW.cantidad
  WHERE inventario.idarticulo = NEW.idarticulo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizainventario` AFTER UPDATE ON `detalle_ingreso` FOR EACH ROW BEGIN
  UPDATE detalle_inventario SET estado = NEW.estado
  WHERE detalle_inventario.iddetalle_ingreso = NEW.iddetalle_ingreso;
  
  
  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_inventario`
--

DROP TABLE IF EXISTS `detalle_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_inventario` (
  `iddetalle_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `idtranzaccion` int(11) NOT NULL,
  `idmovimiento` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `entrada` decimal(11,2) NOT NULL DEFAULT '0.00',
  `salida` decimal(11,2) NOT NULL DEFAULT '0.00',
  `precio_compra` decimal(11,2) NOT NULL DEFAULT '0.00',
  `precio_venta` decimal(11,2) NOT NULL DEFAULT '0.00',
  `descuento` decimal(11,2) NOT NULL DEFAULT '0.00',
  `estado` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iddetalle_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_inventario`
--

LOCK TABLES `detalle_inventario` WRITE;
/*!40000 ALTER TABLE `detalle_inventario` DISABLE KEYS */;
INSERT INTO `detalle_inventario` VALUES (1,1,0,1,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(2,1,0,1,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(3,2,0,2,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(4,2,0,2,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(5,3,0,3,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(6,3,0,3,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(7,4,0,4,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(8,4,0,4,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(9,5,0,5,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(10,5,0,5,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(11,6,0,6,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(12,6,0,6,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(13,7,0,7,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(14,7,0,7,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(15,8,0,8,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(16,8,0,8,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(17,9,0,9,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(18,9,0,9,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(19,10,0,10,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(20,10,0,10,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(21,11,0,11,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(22,11,0,11,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(23,12,0,12,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(24,12,0,12,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(25,13,0,13,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(26,13,0,13,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(27,14,0,14,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(28,14,0,14,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(29,15,0,15,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(30,15,0,15,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(31,16,0,16,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(32,16,0,16,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(33,17,0,17,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(34,17,0,17,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(35,18,0,18,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(36,18,0,18,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(37,19,0,19,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(38,19,0,19,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(39,20,0,20,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(40,20,0,20,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(41,21,0,21,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(42,21,0,21,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(43,22,0,22,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(44,22,0,22,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(45,23,0,23,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(46,23,0,23,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(47,24,0,24,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(48,24,0,24,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(49,25,0,25,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(50,25,0,25,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(51,26,0,26,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(52,26,0,26,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(53,27,0,27,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(54,27,0,27,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(55,28,0,28,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(56,28,0,28,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(57,29,0,29,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(58,29,0,29,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(59,30,0,30,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(60,30,0,30,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(61,31,0,31,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(62,31,0,31,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(63,32,0,32,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(64,32,0,32,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(65,33,0,33,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(66,33,0,33,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(67,34,0,34,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(68,34,0,34,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(69,35,0,35,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(70,35,0,35,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(71,36,0,36,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(72,36,0,36,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(73,37,0,37,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(74,37,0,37,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(75,38,0,38,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(76,38,0,38,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(77,39,0,39,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(78,39,0,39,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(79,40,0,40,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(80,40,0,40,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(81,41,0,41,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(82,41,0,41,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(83,42,0,42,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(84,42,0,42,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(85,43,0,43,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(86,43,0,43,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(87,44,0,44,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(88,44,0,44,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(89,45,0,45,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(90,45,0,45,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(91,46,0,46,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(92,46,0,46,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(93,47,0,47,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(94,47,0,47,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(95,48,0,48,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(96,48,0,48,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(97,49,0,49,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(98,49,0,49,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(99,50,0,50,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(100,50,0,50,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(101,51,0,51,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(102,51,0,51,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(103,52,0,52,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(104,52,0,52,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(105,53,0,53,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(106,53,0,53,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(107,54,0,54,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(108,54,0,54,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(109,55,0,55,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(110,55,0,55,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(111,56,0,56,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(112,56,0,56,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(113,57,0,57,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(114,57,0,57,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(115,58,0,58,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(116,58,0,58,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(117,59,0,59,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(118,59,0,59,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(119,60,0,60,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(120,60,0,60,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(121,61,0,61,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(122,61,0,61,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(123,62,0,62,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(124,62,0,62,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(125,63,0,63,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(126,63,0,63,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(127,64,0,64,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(128,64,0,64,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(129,65,0,65,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(130,65,0,65,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(131,66,0,66,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(132,66,0,66,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(133,67,0,67,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(134,67,0,67,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(135,68,0,68,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(136,68,0,68,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(137,69,0,69,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(138,69,0,69,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(139,70,0,70,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(140,70,0,70,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(141,71,0,71,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(142,71,0,71,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(143,72,0,72,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(144,72,0,72,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(145,73,0,73,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(146,73,0,73,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(147,74,0,74,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(148,74,0,74,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(149,75,0,75,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(150,75,0,75,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(151,76,0,76,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(152,76,0,76,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(153,77,0,77,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(154,77,0,77,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(155,78,0,78,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(156,78,0,78,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(157,79,0,79,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(158,79,0,79,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(159,80,0,80,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(160,80,0,80,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(161,81,0,81,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(162,81,0,81,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(163,82,0,82,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(164,82,0,82,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(165,83,0,83,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(166,83,0,83,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(167,84,0,84,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(168,84,0,84,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(169,85,0,85,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(170,85,0,85,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(171,86,0,86,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(172,86,0,86,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(173,87,0,87,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(174,87,0,87,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(175,88,0,88,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(176,88,0,88,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(177,89,0,89,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(178,89,0,89,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(179,90,0,90,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(180,90,0,90,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(181,91,0,91,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(182,91,0,91,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(183,92,0,92,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(184,92,0,92,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(185,93,0,93,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(186,93,0,93,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(187,94,0,94,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57'),(188,94,0,94,0.00,0.00,0.00,0.00,0.00,NULL,'2018-03-09 14:51:57');
/*!40000 ALTER TABLE `detalle_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `itbis` decimal(11,0) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `importe` decimal(11,0) DEFAULT NULL,
  `medida` varchar(20) COLLATE utf8_spanish2_ci DEFAULT 'UDS',
  PRIMARY KEY (`iddetalle_venta`),
  KEY `fk_detalle_venta_articulo_idx` (`idarticulo`),
  KEY `fk_detalle_venta_idx` (`idventa`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,0,1,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(2,0,2,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(3,0,3,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(4,0,4,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(5,0,5,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(6,0,6,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(7,0,7,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(8,0,8,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(9,0,9,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(10,0,10,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(11,0,11,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(12,0,12,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(13,0,13,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(14,0,14,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(15,0,15,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(16,0,16,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(17,0,17,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(18,0,18,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(19,0,19,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(20,0,20,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(21,0,21,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(22,0,22,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(23,0,23,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(24,0,24,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(25,0,25,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(26,0,26,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(27,0,27,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(28,0,28,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(29,0,29,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(30,0,30,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(31,0,31,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(32,0,32,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(33,0,33,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(34,0,34,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(35,0,35,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(36,0,36,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(37,0,37,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(38,0,38,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(39,0,39,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(40,0,40,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(41,0,41,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(42,0,42,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(43,0,43,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(44,0,44,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(45,0,45,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(46,0,46,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(47,0,47,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(48,0,48,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(49,0,49,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(50,0,50,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(51,0,51,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(52,0,52,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(53,0,53,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(54,0,54,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(55,0,55,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(56,0,56,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(57,0,57,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(58,0,58,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(59,0,59,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(60,0,60,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(61,0,61,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(62,0,62,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(63,0,63,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(64,0,64,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(65,0,65,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(66,0,66,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(67,0,67,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(68,0,68,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(69,0,69,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(70,0,70,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(71,0,71,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(72,0,72,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(73,0,73,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(74,0,74,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(75,0,75,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(76,0,76,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(77,0,77,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(78,0,78,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(79,0,79,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(80,0,80,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(81,0,81,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(82,0,82,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(83,0,83,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(84,0,84,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(85,0,85,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(86,0,86,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(87,0,87,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(88,0,88,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(89,0,89,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(90,0,90,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(91,0,91,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(92,0,92,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(93,0,93,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS'),(94,0,94,0.00,0.00,0.00,NULL,NULL,NULL,NULL,'UDS');
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `salidas` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
  INSERT detalle_inventario SET idtranzaccion=NEW.iddetalle_venta,idmovimiento = NEW.idventa,idarticulo=NEW.idarticulo,salida=NEW.cantidad,precio_venta=NEW.precio_venta,descuento=NEW.descuento,estado=NEW.estado;
   UPDATE inventario SET stock = stock - NEW.cantidad
  WHERE inventario.idarticulo = NEW.idarticulo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizarinventarioventa` AFTER UPDATE ON `detalle_venta` FOR EACH ROW BEGIN
  UPDATE detalle_inventario SET estado = NEW.estado
  WHERE detalle_inventario.idtranzaccion = NEW.iddetalle_venta;
  
 
  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(800) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(800) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `documento` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `entrada`
--

DROP TABLE IF EXISTS `entrada`;
/*!50001 DROP VIEW IF EXISTS `entrada`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `entrada` (
  `idarticulo` tinyint NOT NULL,
  `entrada` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `entradaysalida`
--

DROP TABLE IF EXISTS `entradaysalida`;
/*!50001 DROP VIEW IF EXISTS `entradaysalida`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `entradaysalida` (
  `idarticulo` tinyint NOT NULL,
  `entrada` tinyint NOT NULL,
  `salida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `existeniasporarticulos`
--

DROP TABLE IF EXISTS `existeniasporarticulos`;
/*!50001 DROP VIEW IF EXISTS `existeniasporarticulos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `existeniasporarticulos` (
  `idarticulo` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `stockinicial` tinyint NOT NULL,
  `entrada` tinyint NOT NULL,
  `salida` tinyint NOT NULL,
  `balance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL AUTO_INCREMENT,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idoperaciones_caja` int(11) DEFAULT '1',
  `tipo_comprobante` varchar(700) COLLATE utf8_spanish2_ci NOT NULL,
  `serie_comprobante` varchar(700) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `num_comprobante` varchar(700) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_sin_itbis` decimal(11,2) DEFAULT NULL,
  `total_itbis` decimal(11,2) DEFAULT NULL,
  `total_ingreso` decimal(11,2) DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idingreso`),
  KEY `fk_ingreso_persona_idx` (`idproveedor`),
  KEY `fk_usuario_ingreso_idx` (`idusuario`),
  KEY `fk_caja_idx` (`idoperaciones_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
INSERT INTO `ingreso` VALUES (0,2,1,1,'Inicial',NULL,NULL,'2018-03-01 00:00:00',0.00,0.00,0.00,0.00,NULL,'2018-03-01 19:04:28');
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `idarticulo` int(11) NOT NULL,
  `idtranzaccion` int(11) DEFAULT NULL,
  `stock` decimal(11,2) NOT NULL,
  `minimo` decimal(11,2) DEFAULT NULL,
  `precio_statico` decimal(11,2) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `precio_mayor` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`idarticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(2,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(3,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(4,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(5,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(6,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(7,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(8,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(9,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(10,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(11,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(12,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(13,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(14,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(15,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(16,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(17,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(18,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(19,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(20,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(21,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(22,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(23,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(24,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(25,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(26,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(27,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(28,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(29,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(30,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(31,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(32,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(33,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(34,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(35,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(36,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(37,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(38,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(39,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(40,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(41,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(42,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(43,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(44,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(45,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(46,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(47,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(48,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(49,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(50,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(51,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(52,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(53,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(54,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(55,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(56,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(57,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(58,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(59,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(60,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(61,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(62,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(63,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(64,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(65,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(66,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(67,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(68,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(69,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(70,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(71,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(72,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(73,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(74,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(75,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(76,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(77,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(78,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(79,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(80,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(81,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(82,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(83,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(84,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(85,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(86,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(87,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(88,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(89,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(90,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(91,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(92,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(93,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00),(94,0,0.00,0.00,0.00,'2018-03-09 14:51:57',0.00);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento`
--

DROP TABLE IF EXISTS `movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimiento` (
  `idmovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `idtranzaccion` int(11) DEFAULT '0',
  `tipo_comprobante` varchar(700) COLLATE utf8_spanish2_ci DEFAULT '0',
  `serie_comprobante` varchar(800) COLLATE utf8_spanish2_ci DEFAULT '0',
  `num_comprobante` varchar(700) COLLATE utf8_spanish2_ci DEFAULT '0',
  `fecha_hora` datetime DEFAULT NULL,
  `entrada` decimal(11,2) DEFAULT '0.00',
  `salida` decimal(11,2) DEFAULT '0.00',
  `estado` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmovimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento`
--

LOCK TABLES `movimiento` WRITE;
/*!40000 ALTER TABLE `movimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(800) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numero_comprobante`
--

DROP TABLE IF EXISTS `numero_comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numero_comprobante` (
  `idnumero_comprobante` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`idnumero_comprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numero_comprobante`
--

LOCK TABLES `numero_comprobante` WRITE;
/*!40000 ALTER TABLE `numero_comprobante` DISABLE KEYS */;
/*!40000 ALTER TABLE `numero_comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operaciones_anuales`
--

DROP TABLE IF EXISTS `operaciones_anuales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operaciones_anuales` (
  `idoperaciones_anuales` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_inicial` datetime DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `observacion` varchar(450) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idoperaciones_anuales`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operaciones_anuales`
--

LOCK TABLES `operaciones_anuales` WRITE;
/*!40000 ALTER TABLE `operaciones_anuales` DISABLE KEYS */;
INSERT INTO `operaciones_anuales` VALUES (1,'2018-03-01 19:00:10','2018-03-01 00:00:00',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `operaciones_anuales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operaciones_caja`
--

DROP TABLE IF EXISTS `operaciones_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operaciones_caja` (
  `idoperaciones_caja` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idoperaciones_mensuales` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_inicial` datetime DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `valor_inicial` decimal(11,2) DEFAULT NULL,
  `valor_final` decimal(11,2) DEFAULT NULL,
  `faltante` decimal(11,2) DEFAULT NULL,
  `sobrante` decimal(11,2) DEFAULT NULL,
  `observacion` varchar(450) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT 'Venta',
  PRIMARY KEY (`idoperaciones_caja`),
  KEY `fk_usuarios_idx` (`idusuario`),
  KEY `fk_op_mensual_idx` (`idoperaciones_mensuales`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operaciones_caja`
--

LOCK TABLES `operaciones_caja` WRITE;
/*!40000 ALTER TABLE `operaciones_caja` DISABLE KEYS */;
INSERT INTO `operaciones_caja` VALUES (1,1,1,'2018-03-01 19:01:42','2018-03-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Inicial');
/*!40000 ALTER TABLE `operaciones_caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operaciones_mesuales`
--

DROP TABLE IF EXISTS `operaciones_mesuales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operaciones_mesuales` (
  `idoperaciones_mensuales` int(11) NOT NULL AUTO_INCREMENT,
  `idoperaciones_anuales` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_inicial` datetime DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `observacion` varchar(450) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idoperaciones_mensuales`),
  KEY `fk_usuarios_idx` (`idusuario`),
  KEY `fk_op_anual_idx` (`idoperaciones_anuales`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operaciones_mesuales`
--

LOCK TABLES `operaciones_mesuales` WRITE;
/*!40000 ALTER TABLE `operaciones_mesuales` DISABLE KEYS */;
INSERT INTO `operaciones_mesuales` VALUES (1,1,1,'2018-03-01 19:00:54','2018-03-01 00:00:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `operaciones_mesuales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `idpago` int(11) NOT NULL AUTO_INCREMENT,
  `idtranzaccion` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(20) DEFAULT NULL,
  `num_comprobante` varchar(12) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `total_pago` decimal(9,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpago`),
  KEY `fk_pagos_compras_idx` (`idtranzaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pagos` AFTER INSERT ON `pago` FOR EACH ROW BEGIN
  INSERT movimiento SET idtranzaccion=NEW.idtranzaccion,fecha_hora = NEW.fecha_pago,tipo_comprobante=NEW.tipo_comprobante,num_comprobante=NEW.num_comprobante,estado=NEW.estado,salida=NEW.total_pago;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apaterno` varchar(20) DEFAULT NULL,
  `amaterno` varchar(20) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(8) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Administrador','Master','General',NULL,NULL,NULL,NULL,NULL),(2,'Proveedor','Generico',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Cliente','Generico',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `idpersona` int(11) NOT NULL,
  `codigo_empleado` varchar(45) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `modo_nomina` varchar(45) DEFAULT NULL,
  `sueldo` decimal(4,2) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_proveedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (2,'01');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `salida`
--

DROP TABLE IF EXISTS `salida`;
/*!50001 DROP VIEW IF EXISTS `salida`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `salida` (
  `idarticulo` tinyint NOT NULL,
  `salida` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `stockinicial`
--

DROP TABLE IF EXISTS `stockinicial`;
/*!50001 DROP VIEW IF EXISTS `stockinicial`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `stockinicial` (
  `idarticulo` tinyint NOT NULL,
  `stock` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos` (
  `idtipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'Productos Terminado'),(2,'Materia Prima');
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajador` (
  `idpersona` int(11) NOT NULL,
  `sueldo` decimal(7,2) DEFAULT NULL,
  `acceso` varchar(20) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `estado` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (1,NULL,'Administrador','admin','123','A'),(2,NULL,'Vendedor','vendedor@hotmail.com','$2y$10$IpeW4qCkARxyt','A'),(3,NULL,'Contable','contable@hotmail.com','$2y$10$sli7p12cH8U87','A');
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `acceso` varchar(255) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'edy','Administrador','admin@hotmail.com','$2y$10$ODXKuxR6Hkhkx.x23bMLVuujBTOVFygAaYEveTgyy02p/ClF2TuHi','ZJPX0wF0Trym4MVZZOus4ex5vMMKmK34vbUHn8lhZ3uFToHsRLc3rQvLvI78','2018-03-01 13:09:57','2018-03-01 13:09:57'),(2,'edy','Vendedor','vendedor@hotmail.com','$2y$10$IpeW4qCkARxytbDV0Pd5o.2h6.dpEl1waNQPvofGP0F0ldP2kdWAu','ZkK5lHcgklJdrCVip7c8p7vocEB7ebQOmgqI0tAAkVvpH1kt8Der2TWAPkZQ','2018-03-09 07:30:41','2018-03-09 07:30:41'),(3,'edy','Contable','contable@hotmail.com','$2y$10$sli7p12cH8U87cPORgZvzuJB3F4d25FCdX0kjuZoAaeKcUT7jz/H6','glrsV9mDa1FeP9BiEJAJEvhiguwR1XJYcJxUrbbrmXqANfYQpbGVD7SCjcgM','2018-03-09 07:42:03','2018-03-09 07:42:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `usertrabajador` AFTER INSERT ON `users` FOR EACH ROW BEGIN

  INSERT trabajador SET idpersona=NEW.id,acceso=NEW.acceso,login=NEW.email,password=NEW.password;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(700) COLLATE utf8_spanish2_ci NOT NULL,
  `serie_comprobante` varchar(800) COLLATE utf8_spanish2_ci NOT NULL,
  `num_comprobante` varchar(700) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_hora` date NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_sin_itbis` decimal(11,2) DEFAULT NULL,
  `total_itbis` decimal(11,2) DEFAULT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `idoperaciones_caja` int(11) DEFAULT NULL,
  PRIMARY KEY (`idventa`),
  KEY `fk_venta_clente_idx` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (0,3,1,'Inicial','00','00','2018-03-01',0.00,0.00,0.00,0.00,'A','2018-03-01 19:06:06',1);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `entrada`
--

/*!50001 DROP TABLE IF EXISTS `entrada`*/;
/*!50001 DROP VIEW IF EXISTS `entrada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entrada` AS select distinct `detalle_ingreso`.`idarticulo` AS `idarticulo`,sum(`detalle_ingreso`.`cantidad`) AS `entrada` from `detalle_ingreso` group by `detalle_ingreso`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entradaysalida`
--

/*!50001 DROP TABLE IF EXISTS `entradaysalida`*/;
/*!50001 DROP VIEW IF EXISTS `entradaysalida`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entradaysalida` AS select distinct `detalle_ingreso`.`idarticulo` AS `idarticulo`,`detalle_ingreso`.`cantidad` AS `entrada`,`detalle_venta`.`cantidad` AS `salida` from (`detalle_ingreso` join `detalle_venta` on((`detalle_ingreso`.`idarticulo` = `detalle_venta`.`idarticulo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `existeniasporarticulos`
--

/*!50001 DROP TABLE IF EXISTS `existeniasporarticulos`*/;
/*!50001 DROP VIEW IF EXISTS `existeniasporarticulos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `existeniasporarticulos` AS select distinct `articulo`.`idarticulo` AS `idarticulo`,`articulo`.`nombre` AS `nombre`,`inventario`.`stock` AS `stockinicial`,`entrada`.`entrada` AS `entrada`,`salida`.`salida` AS `salida`,((`inventario`.`stock` + `entrada`.`entrada`) - `salida`.`salida`) AS `balance` from (((`articulo` join `inventario` on((`articulo`.`idarticulo` = `inventario`.`idarticulo`))) join `entrada` on((`articulo`.`idarticulo` = `entrada`.`idarticulo`))) join `salida` on((`articulo`.`idarticulo` = `salida`.`idarticulo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salida`
--

/*!50001 DROP TABLE IF EXISTS `salida`*/;
/*!50001 DROP VIEW IF EXISTS `salida`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salida` AS select distinct `detalle_venta`.`idarticulo` AS `idarticulo`,sum(`detalle_venta`.`cantidad`) AS `salida` from `detalle_venta` group by `detalle_venta`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stockinicial`
--

/*!50001 DROP TABLE IF EXISTS `stockinicial`*/;
/*!50001 DROP VIEW IF EXISTS `stockinicial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stockinicial` AS select distinct `inventario`.`idarticulo` AS `idarticulo`,sum(`inventario`.`stock`) AS `stock` from `inventario` group by `inventario`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-01  3:55:40
