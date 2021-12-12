-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: db_lojacelulares
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `atendentes`
--

DROP TABLE IF EXISTS `atendentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendentes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_atend` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf_atend` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salario_atend` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendentes`
--

LOCK TABLES `atendentes` WRITE;
/*!40000 ALTER TABLE `atendentes` DISABLE KEYS */;
INSERT INTO `atendentes` VALUES (1,'Luis Carlos Socodolski','456.342.879-23',2501,'2021-12-12 03:25:00','2021-12-12 03:25:58'),(2,'Juciane Baumann Sauer','564.231;657-32',3200,'2021-12-12 03:26:18','2021-12-12 03:26:18'),(3,'Andreia Klemann','321.453.756-23',2300,'2021-12-12 03:26:37','2021-12-12 03:26:37');
/*!40000 ALTER TABLE `atendentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_cli` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf_cnpj` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fone_cli` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João Elias Cândido Reis','123.456.789-82','(47)99123-4568','2021-12-12 03:08:57','2021-12-12 03:08:57'),(2,'Emerson Schafhauser','456.789.012-34','(47)98321-2133','2021-12-12 03:09:32','2021-12-12 03:09:32'),(3,'Vanessa Schneider','231.645.978-32','(47)99345-7854','2021-12-12 03:10:14','2021-12-12 03:10:14'),(4,'Roberto Malvadão','543.765.234-32','(47)98943-3424','2021-12-12 17:46:43','2021-12-12 17:46:43'),(5,'Robson Hugo','465.875.342-65','(47)99435-1234','2021-12-12 17:47:23','2021-12-12 17:47:23');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(32,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(33,11,'nome_marca','text','Nome da marca',0,1,1,1,1,1,'{}',2),(34,11,'created_at','timestamp','Criado em',0,1,1,1,0,1,'{}',4),(35,11,'updated_at','timestamp','Atualizado em',0,0,0,0,0,0,'{}',5),(36,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(37,12,'nome_cli','text','Nome do cliente',0,1,1,1,1,1,'{}',2),(38,12,'cpf_cnpj','text','CPF',0,1,1,1,1,1,'{}',3),(39,12,'fone_cli','text','Telefone',0,1,1,1,1,1,'{}',4),(40,12,'created_at','timestamp','Criado em',0,1,1,1,0,1,'{}',5),(41,12,'updated_at','timestamp','Atualizado em',0,0,0,0,0,0,'{}',6),(48,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(49,16,'nome_atend','text','Nome',0,1,1,1,1,1,'{}',2),(50,16,'cpf_atend','text','CPF',0,1,1,1,1,1,'{}',3),(51,16,'salario_atend','text','Salário',0,1,1,1,1,1,'{}',4),(52,16,'created_at','timestamp','Criado em',0,1,1,1,0,1,'{}',5),(53,16,'updated_at','timestamp','Atualizado em',0,0,0,0,0,0,'{}',6),(54,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(55,17,'nome_disp','text','Nome do dispositivo',0,1,1,1,1,1,'{}',2),(56,17,'preco_disp','text','Preço do dispositivo',0,1,1,1,1,1,'{}',5),(57,17,'fabricacao_disp','date','Data de fabricação',0,1,1,1,1,1,'{}',6),(58,17,'marcas_id','number','ID Marca',1,0,1,1,1,1,'{}',3),(59,17,'created_at','timestamp','Criado em',0,1,1,1,0,1,'{}',8),(60,17,'updated_at','timestamp','Atualizado em',0,0,0,0,0,0,'{}',9),(61,17,'dispositivo_hasone_marca_relationship','relationship','Marca',0,1,1,0,0,1,'{\"model\":\"App\\\\Marca\",\"table\":\"marcas\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"marcas_id\",\"label\":\"nome_marca\",\"pivot_table\":\"atendentes\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(62,18,'id','text','Id',1,0,0,0,0,0,'{}',1),(63,18,'qtd_produto','text','Quantidade',1,1,1,1,1,1,'{}',6),(64,18,'dispositivos_id','text','ID Dispositivo',1,0,1,1,1,1,'{}',5),(65,18,'clientes_id','text','ID Cliente',1,0,1,1,1,1,'{}',7),(66,18,'atendentes_id','text','ID Atendente',1,0,1,1,1,1,'{}',8),(67,18,'created_at','timestamp','Criado em',0,1,1,1,0,1,'{}',9),(68,18,'updated_at','timestamp','Atualizado em',0,0,0,0,0,0,'{}',10),(69,18,'venda_hasone_atendente_relationship','relationship','Atendente',0,1,1,0,0,1,'{\"model\":\"App\\\\Atendente\",\"table\":\"atendentes\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"atendentes_id\",\"label\":\"nome_atend\",\"pivot_table\":\"atendentes\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(70,18,'venda_hasone_cliente_relationship','relationship','Cliente',0,1,1,0,0,1,'{\"model\":\"App\\\\Cliente\",\"table\":\"clientes\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"clientes_id\",\"label\":\"nome_cli\",\"pivot_table\":\"atendentes\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(71,18,'venda_hasone_dispositivo_relationship','relationship','Dispositivo',0,1,1,0,0,1,'{\"model\":\"App\\\\Dispositivo\",\"table\":\"dispositivos\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"dispositivos_id\",\"label\":\"nome_disp\",\"pivot_table\":\"atendentes\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(72,17,'img_disp','image','Imagem de anúncio',0,1,1,1,1,1,'{}',7),(73,11,'logo_marca','image','Logo',0,1,1,1,1,1,'{}',3);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(11,'marcas','marcas','Marca','Marcas','voyager-medal-rank-star','App\\Marca',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-12-12 03:03:20','2021-12-12 04:06:11'),(12,'clientes','clientes','Cliente','Clientes','voyager-people','App\\Cliente',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-12-12 03:08:13','2021-12-12 03:56:02'),(16,'atendentes','atendentes','Atendente','Atendentes','voyager-bag','App\\Atendente',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-12-12 03:25:06','2021-12-12 03:55:50'),(17,'dispositivos','dispositivos','Dispositivo','Dispositivos','voyager-laptop','App\\Dispositivo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-12-12 03:29:47','2021-12-12 04:01:57'),(18,'vendas','vendas','Venda','Vendas','voyager-basket','App\\Venda',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-12-12 03:45:08','2021-12-12 03:56:42');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispositivos`
--

DROP TABLE IF EXISTS `dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispositivos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_disp` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco_disp` decimal(10,0) DEFAULT NULL,
  `fabricacao_disp` date DEFAULT NULL,
  `marcas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img_disp` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivos`
--

LOCK TABLES `dispositivos` WRITE;
/*!40000 ALTER TABLE `dispositivos` DISABLE KEYS */;
INSERT INTO `dispositivos` VALUES (1,'Galaxy S10',2100,'2021-01-10',1,'2021-12-12 03:33:00','2021-12-12 04:02:59',_binary 'dispositivos\\December2021\\hV8cR2EiY4MtmkZE3s7B.jpg'),(2,'Mi 8',1650,'2020-11-12',2,'2021-12-12 03:37:00','2021-12-12 04:02:52',_binary 'dispositivos\\December2021\\RJc8gu7TdjzE7YY6b7yH.jpg'),(3,'Moto G7 Plus',1423,'2020-10-07',3,'2021-12-12 03:38:00','2021-12-12 04:02:42',_binary 'dispositivos\\December2021\\fgo4EWCGicVASj2q0HL7.jpg'),(4,'IPhone 13 Pro Max',9300,'2021-06-15',4,'2021-12-12 03:39:00','2021-12-12 04:02:31',_binary 'dispositivos\\December2021\\eQWfEf6dqMmY38jnd6Gx.png');
/*!40000 ALTER TABLE `dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_marca` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo_marca` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Samsung','2021-12-12 03:04:00','2021-12-12 04:08:45',_binary 'marcas\\December2021\\vgSB9satXkWqaV1GWrnZ.png'),(2,'Xiaomi','2021-12-12 03:04:00','2021-12-12 04:08:52',_binary 'marcas\\December2021\\zdQzsYZS15VR8Wb5l4yi.png'),(3,'Motorola','2021-12-12 03:04:00','2021-12-12 04:09:01',_binary 'marcas\\December2021\\vzF7wARISU8OPfR1ssyP.png'),(4,'Apple','2021-12-12 03:04:00','2021-12-12 04:08:27',_binary 'marcas\\December2021\\MF13eNEGnjorKSrSnuzg.png');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-12-09 02:36:01','2021-12-09 02:36:01','voyager.dashboard',NULL),(2,1,'Mídia','','_self','voyager-images','#000000',NULL,9,'2021-12-09 02:36:01','2021-12-12 17:52:40','voyager.media.index','null'),(3,1,'Usuários','','_self','voyager-person','#000000',NULL,8,'2021-12-09 02:36:01','2021-12-12 17:52:27','voyager.users.index','null'),(4,1,'Cargos','','_self','voyager-lock','#000000',NULL,7,'2021-12-09 02:36:01','2021-12-12 17:52:18','voyager.roles.index','null'),(5,1,'Ferramentas','','_self','voyager-tools','#000000',NULL,10,'2021-12-09 02:36:01','2021-12-12 17:52:48',NULL,''),(6,1,'Construtor de Menus','','_self','voyager-list','#000000',5,1,'2021-12-09 02:36:01','2021-12-12 17:52:56','voyager.menus.index','null'),(7,1,'Banco de Dados','','_self','voyager-data','#000000',5,2,'2021-12-09 02:36:01','2021-12-12 17:53:05','voyager.database.index','null'),(8,1,'Bússola','','_self','voyager-compass','#000000',5,3,'2021-12-09 02:36:01','2021-12-12 17:53:12','voyager.compass.index','null'),(9,1,'BREAD (CRUD)','','_self','voyager-bread','#000000',5,4,'2021-12-09 02:36:01','2021-12-12 17:53:20','voyager.bread.index','null'),(10,1,'Configurações','','_self','voyager-settings','#000000',NULL,11,'2021-12-09 02:36:01','2021-12-12 17:53:28','voyager.settings.index','null'),(16,1,'Marcas','','_self','voyager-medal-rank-star',NULL,NULL,6,'2021-12-12 03:03:20','2021-12-12 17:45:05','voyager.marcas.index',NULL),(17,1,'Clientes','','_self','voyager-people',NULL,NULL,5,'2021-12-12 03:08:13','2021-12-12 17:45:01','voyager.clientes.index',NULL),(21,1,'Atendentes','','_self','voyager-bag',NULL,NULL,4,'2021-12-12 03:25:06','2021-12-12 17:44:55','voyager.atendentes.index',NULL),(22,1,'Dispositivos','','_self','voyager-laptop',NULL,NULL,3,'2021-12-12 03:29:48','2021-12-12 17:44:51','voyager.dispositivos.index',NULL),(23,1,'Vendas','','_self','voyager-basket',NULL,NULL,2,'2021-12-12 03:45:08','2021-12-12 17:44:46','voyager.vendas.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-12-09 02:36:01','2021-12-09 02:36:01');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_01_01_000000_add_voyager_user_fields',1),(3,'2016_01_01_000000_create_data_types_table',1),(4,'2016_05_19_173453_create_menu_table',1),(5,'2016_10_21_190000_create_roles_table',1),(6,'2016_10_21_190000_create_settings_table',1),(7,'2016_11_30_135954_create_permission_table',1),(8,'2016_11_30_141208_create_permission_role_table',1),(9,'2016_12_26_201236_data_types__add__server_side',1),(10,'2017_01_13_000000_add_route_to_menu_items_table',1),(11,'2017_01_14_005015_create_translations_table',1),(12,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(13,'2017_03_06_000000_add_controller_to_data_types_table',1),(14,'2017_04_21_000000_add_order_to_data_rows_table',1),(15,'2017_07_05_210000_add_policyname_to_data_types_table',1),(16,'2017_08_05_000000_add_group_to_settings_table',1),(17,'2017_11_26_013050_add_user_role_relationship',1),(18,'2017_11_26_015000_create_user_roles_table',1),(19,'2018_03_11_000000_add_user_settings',1),(20,'2018_03_14_000000_add_details_to_data_types_table',1),(21,'2018_03_16_000000_make_settings_value_nullable',1),(22,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(2,'browse_bread',NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(3,'browse_database',NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(4,'browse_media',NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(5,'browse_compass',NULL,'2021-12-09 02:36:01','2021-12-09 02:36:01'),(6,'browse_menus','menus','2021-12-09 02:36:01','2021-12-09 02:36:01'),(7,'read_menus','menus','2021-12-09 02:36:01','2021-12-09 02:36:01'),(8,'edit_menus','menus','2021-12-09 02:36:01','2021-12-09 02:36:01'),(9,'add_menus','menus','2021-12-09 02:36:01','2021-12-09 02:36:01'),(10,'delete_menus','menus','2021-12-09 02:36:01','2021-12-09 02:36:01'),(11,'browse_roles','roles','2021-12-09 02:36:01','2021-12-09 02:36:01'),(12,'read_roles','roles','2021-12-09 02:36:01','2021-12-09 02:36:01'),(13,'edit_roles','roles','2021-12-09 02:36:01','2021-12-09 02:36:01'),(14,'add_roles','roles','2021-12-09 02:36:01','2021-12-09 02:36:01'),(15,'delete_roles','roles','2021-12-09 02:36:01','2021-12-09 02:36:01'),(16,'browse_users','users','2021-12-09 02:36:01','2021-12-09 02:36:01'),(17,'read_users','users','2021-12-09 02:36:01','2021-12-09 02:36:01'),(18,'edit_users','users','2021-12-09 02:36:01','2021-12-09 02:36:01'),(19,'add_users','users','2021-12-09 02:36:01','2021-12-09 02:36:01'),(20,'delete_users','users','2021-12-09 02:36:01','2021-12-09 02:36:01'),(21,'browse_settings','settings','2021-12-09 02:36:01','2021-12-09 02:36:01'),(22,'read_settings','settings','2021-12-09 02:36:01','2021-12-09 02:36:01'),(23,'edit_settings','settings','2021-12-09 02:36:01','2021-12-09 02:36:01'),(24,'add_settings','settings','2021-12-09 02:36:01','2021-12-09 02:36:01'),(25,'delete_settings','settings','2021-12-09 02:36:01','2021-12-09 02:36:01'),(51,'browse_marcas','marcas','2021-12-12 03:03:20','2021-12-12 03:03:20'),(52,'read_marcas','marcas','2021-12-12 03:03:20','2021-12-12 03:03:20'),(53,'edit_marcas','marcas','2021-12-12 03:03:20','2021-12-12 03:03:20'),(54,'add_marcas','marcas','2021-12-12 03:03:20','2021-12-12 03:03:20'),(55,'delete_marcas','marcas','2021-12-12 03:03:20','2021-12-12 03:03:20'),(56,'browse_clientes','clientes','2021-12-12 03:08:13','2021-12-12 03:08:13'),(57,'read_clientes','clientes','2021-12-12 03:08:13','2021-12-12 03:08:13'),(58,'edit_clientes','clientes','2021-12-12 03:08:13','2021-12-12 03:08:13'),(59,'add_clientes','clientes','2021-12-12 03:08:13','2021-12-12 03:08:13'),(60,'delete_clientes','clientes','2021-12-12 03:08:13','2021-12-12 03:08:13'),(76,'browse_atendentes','atendentes','2021-12-12 03:25:06','2021-12-12 03:25:06'),(77,'read_atendentes','atendentes','2021-12-12 03:25:06','2021-12-12 03:25:06'),(78,'edit_atendentes','atendentes','2021-12-12 03:25:06','2021-12-12 03:25:06'),(79,'add_atendentes','atendentes','2021-12-12 03:25:06','2021-12-12 03:25:06'),(80,'delete_atendentes','atendentes','2021-12-12 03:25:06','2021-12-12 03:25:06'),(81,'browse_dispositivos','dispositivos','2021-12-12 03:29:48','2021-12-12 03:29:48'),(82,'read_dispositivos','dispositivos','2021-12-12 03:29:48','2021-12-12 03:29:48'),(83,'edit_dispositivos','dispositivos','2021-12-12 03:29:48','2021-12-12 03:29:48'),(84,'add_dispositivos','dispositivos','2021-12-12 03:29:48','2021-12-12 03:29:48'),(85,'delete_dispositivos','dispositivos','2021-12-12 03:29:48','2021-12-12 03:29:48'),(86,'browse_vendas','vendas','2021-12-12 03:45:08','2021-12-12 03:45:08'),(87,'read_vendas','vendas','2021-12-12 03:45:08','2021-12-12 03:45:08'),(88,'edit_vendas','vendas','2021-12-12 03:45:08','2021-12-12 03:45:08'),(89,'add_vendas','vendas','2021-12-12 03:45:08','2021-12-12 03:45:08'),(90,'delete_vendas','vendas','2021-12-12 03:45:08','2021-12-12 03:45:08');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-12-09 02:36:01','2021-12-09 02:36:01'),(2,'user','Normal User','2021-12-09 02:36:01','2021-12-09 02:36:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','CRUD Dispositivos (Voyager)','','text',1,'Admin'),(7,'admin.description','Admin Description','Bem-vindo ao CRUD de Dispositivos Móveis!','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'João','joao.reis@aluno.unc.br','users/default.png',NULL,'$2y$10$kFajaPxQSFuMJPxlRty2suhTQ76.PLcEz7ny6UNkE73tEWZFfmVfW',NULL,'{\"locale\":\"pt_br\"}','2021-12-09 02:36:41','2021-12-12 17:45:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qtd_produto` int(11) NOT NULL,
  `dispositivos_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `atendentes_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,2,1,3,2,'2021-12-12 03:49:38','2021-12-12 03:49:38'),(2,1,2,2,3,'2021-12-12 03:52:25','2021-12-12 03:52:25'),(3,3,3,1,1,'2021-12-12 04:10:33','2021-12-12 04:10:33'),(4,1,4,3,3,'2021-12-12 04:10:49','2021-12-12 04:10:49');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-12 11:57:33
