/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - dogshousebase1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dogshousebase1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dogshousebase1`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `idu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admins` */

LOCK TABLES `admins` WRITE;

insert  into `admins`(`idu`,`archivo`,`nombre`,`apellido`,`tipo`,`correo`,`password`,`activo`,`remember_token`,`created_at`,`updated_at`) values 
(1,'nophoto.png','Alex','Palma','Admin','admin@gmail.com','1234567','Si',NULL,'2020-03-30 02:54:47',NULL),
(2,'nophoto.png','Roberto','Vinicio','Admin','vinicio@gmail.com','1234567','Si',NULL,'2020-03-30 02:54:50',NULL),
(4,'nophoto.png','Alejandro','Calixtp','Admin','ale@gmail.com','Zombiecore','Si',NULL,'2020-03-30 09:26:13','2020-03-30 09:26:13'),
(5,'nophoto.png','Rebeca','Guzman','Admin','reb@gmail.com','Holamundo','Si',NULL,'2020-03-30 19:37:29','2020-03-30 19:37:29'),
(6,'nophoto.png','America','Estrada','User','ame@gmail.com','America123','Si',NULL,'2020-03-30 19:39:02','2020-03-30 19:39:02');

UNLOCK TABLES;

/*Table structure for table `comentarios` */

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `comentarios` (
  `Clave_comentario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estrella` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aprobado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Clave_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comentarios` */

LOCK TABLES `comentarios` WRITE;

insert  into `comentarios`(`Clave_comentario`,`estrella`,`aprobado`,`comentario`,`remember_token`,`created_at`,`updated_at`) values 
(1,'1','No','Es muy malo',NULL,'2020-03-30 02:54:15',NULL),
(2,'2','Si','Es muy malo',NULL,'2020-03-30 02:54:19',NULL),
(3,'3','Si','Mas o menos malo',NULL,'2020-03-30 02:54:22',NULL),
(4,'4','Si','Casi no tan malo',NULL,'2020-03-30 02:54:26',NULL),
(5,'5','Si','Excelente servicio',NULL,'2020-03-30 02:54:28',NULL),
(6,'1','Si','Me parecio un restaurante demasiado vacio',NULL,'2020-03-30 20:55:08','2020-03-30 20:55:08');

UNLOCK TABLES;

/*Table structure for table `donaciones` */

DROP TABLE IF EXISTS `donaciones`;

CREATE TABLE `donaciones` (
  `Clave_donacion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `Clave_usuario` int(10) unsigned NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Clave_donacion`),
  KEY `donaciones_clave_usuario_foreign` (`Clave_usuario`),
  CONSTRAINT `donaciones_clave_usuario_foreign` FOREIGN KEY (`Clave_usuario`) REFERENCES `usuarios` (`Clave_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `donaciones` */

LOCK TABLES `donaciones` WRITE;

insert  into `donaciones`(`Clave_donacion`,`cantidad`,`fecha`,`Clave_usuario`,`estado`,`activo`,`remember_token`,`created_at`,`updated_at`) values 
(1,234,'2020-03-16',1,'Mexico','Si',NULL,'2020-03-30 03:17:19',NULL),
(2,4200,'2020-03-03',2,'','Si',NULL,'2020-03-30 03:17:54',NULL),
(3,500,'2020-03-09',1,'Activo','Si',NULL,'2020-03-30 21:06:55','2020-03-30 21:06:55');

UNLOCK TABLES;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

LOCK TABLES `migrations` WRITE;

UNLOCK TABLES;

/*Table structure for table `restaurantes` */

DROP TABLE IF EXISTS `restaurantes`;

CREATE TABLE `restaurantes` (
  `Clave_restaurante` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ncalle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Clave_restaurante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `restaurantes` */

LOCK TABLES `restaurantes` WRITE;

insert  into `restaurantes`(`Clave_restaurante`,`nombre`,`tel`,`calle`,`Ncalle`,`colonia`,`municipo`,`cp`,`correo`,`estado`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Deluxe','7451239457','Independencia','23','Margaritas','Metepec','45389','deluxe@gmail.com','Activo',NULL,'2020-03-30 03:15:26',NULL),
(2,'Imperial','7222663454','Gobernadores','90','Izcalli','Mtepec','45829','imperial@gmail.com','Inactivo',NULL,'2020-03-30 03:16:30',NULL);

UNLOCK TABLES;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `Clave_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_usu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apm_usu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex_usu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_usu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calle_usu` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncalle_usu` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia_usu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_usu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_usu` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_usu` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Clave_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`Clave_usuario`,`nombre`,`app_usu`,`apm_usu`,`sex_usu`,`tel_usu`,`calle_usu`,`ncalle_usu`,`colonia_usu`,`municipio_usu`,`cp_usu`,`estado_usu`,`activo`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Alex','Quiroz','Palma','M','7227104190','Av gobernadores','12','Pilayork','Metepec','52340','Mexico','Si',NULL,'2020-03-30 03:13:08',NULL),
(2,'Rebeca ','Guzman','Garduño','F','7228974538','Av Colonial','13','Pilarock','Metepec','23890','Mexico','Si',NULL,'2020-03-30 03:14:15',NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
