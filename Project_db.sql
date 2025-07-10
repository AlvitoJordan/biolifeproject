CREATE DATABASE  IF NOT EXISTS `project_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `project_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_db
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Qty` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ProductProductId` int(11) DEFAULT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `ProductProductId` (`ProductProductId`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_10` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_11` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_12` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_13` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_14` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_15` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_16` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_17` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_18` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_19` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_20` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_21` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_22` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_23` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_24` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_25` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_26` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_27` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_28` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_29` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_30` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_31` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_32` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_33` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_34` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_35` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_36` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_37` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_38` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_39` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_4` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_40` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_41` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_42` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_43` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_44` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_5` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_6` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_7` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_8` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_9` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (14,4,'2022-01-30 11:47:45','2022-01-30 11:47:45',1,3,45000),(15,1,'2022-01-30 11:47:45','2022-01-30 11:47:45',1,6,40000);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Icon` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Oranges','icon-orange'),(2,'Grapes','icon-grape2'),(3,'Blueberries','icon-blueberry'),(4,'Lemons','icon-lemon'),(5,'Vegetables','icon-broccoli'),(6,'Ocean Foods','icon-fish'),(7,'Dairy Products','icon-contain');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(10) unsigned NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ProductProductId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `totalProduct` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProductProductId` (`ProductProductId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_5` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_6` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_7` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_8` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'1643542603189','VCg0SNnTHzcVAVO','BCA',4,220000,'2022-01-30 11:36:43','2022-01-30 11:36:43',3,1,2),(2,'1643542603189','VCg0SNnTHzcVAVO','BCA',1,220000,'2022-01-30 11:36:43','2022-01-30 11:36:43',6,1,2),(3,'1643543178528','VCg0SNnTHzcVAVO','MasterCard',1,180000,'2022-01-30 11:46:18','2022-01-30 11:46:18',27,1,3),(4,'1643543178528','VCg0SNnTHzcVAVO','MasterCard',1,180000,'2022-01-30 11:46:18','2022-01-30 11:46:18',37,1,3),(5,'1643543178528','VCg0SNnTHzcVAVO','MasterCard',1,180000,'2022-01-30 11:46:18','2022-01-30 11:46:18',21,1,3);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_10` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_11` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_12` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_13` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_14` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_15` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_16` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_17` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_18` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_19` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_20` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_21` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_22` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_23` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_24` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_25` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_26` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_27` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_28` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_29` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_30` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_4` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_5` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_6` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_7` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_8` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_9` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Organic Oranges','These organic oranges are picked at peak ripeness, which gives them their sweet, robust flavor.',50000,20,'/assets/images/products/p-orange-01.jpg',1,'2022-01-17 19:07:52','2022-01-17 19:07:52'),(2,'National Oranges','Most all oranges have a yellow orange color with sizes ranging from small to large. The inside of an orange is plump and juicy.',40000,50,'/assets/images/products/p-orange-02.jpg',1,'2022-01-17 19:08:10','2022-01-17 19:08:10'),(3,'Navel Oranges','Navel oranges are one of the most popular Moroccan citrus. Fruits of large size, slightly elongated, easy to peel, pitted, with a slight floral aroma. Refreshingly sweet and juicy.',45000,30,'/assets/images/products/p-orange-03.jpg',1,'2022-01-17 19:08:35','2022-01-17 19:08:35'),(4,'Seville Oranges','Seville oranges are round to oblate in shape and small to medium in size. Their orange colored skin is rough and thick. Their flesh is a little juicy, acidic and contains a lot of seeds.',60000,25,'/assets/images/products/p-orange-04.jpg',1,'2022-01-17 19:08:35','2022-01-17 19:08:35'),(5,'Mandarin Oranges','Mandarin oranges, sometimes simply called mandarins, are some of the sweetest fruits of the orange family. They are slightly smaller relatives of the standard orange.',50000,70,'/assets/images/products/p-orange-05.jpg',1,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(6,'Oranges Fresh Fruits','Oranges are highly valued for their vitamin C content. It is a primary source of vitamin C for most Americans. This wonderful fresh fruit has more to offer nutritionally than just this one nutrient, containing sufficient amounts of folacin, calcium, potassium, thiamin, niacin and magnesium.',40000,20,'/assets/images/products/p-orange-06.jpg',1,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(7,'Begamot Oranges','Bergamot is considered a type of orange, sometimes referred to as bergamot orange or the Latin name Citrus bergamia. They are fragrant citrus fruits about the size of a regular orange. The skin is often bumpy and irregular rather than smooth.',65000,25,'/assets/images/products/p-orange-07.jpg',1,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(8,'Organic Hass Oranges','These are sweet and meaty. With a nice thick rind that makes them easier to peel. These are sweet and meaty. With a nice thick rind that makes them easier to peel',70000,40,'/assets/images/products/p-orange-08.jpg',1,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(9,'National Fresh Grapes','Grapes are the most widely produced commercial fruit crop in the world. They are often eaten fresh but are also commonly used to produce wine. Grapes can also be processed into jams, and preserves, juices, grape seed oil, grape seed extract, raisins and vinegar.',85000,120,'/assets/images/products/p-grape-01.jpg',2,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(10,'Champagne Grapes','The Champagne Grape Vine grapes have the highest sugar content of any grape grown today for the fresh market. It is seedless, so you can eat the stem and all.',90000,200,'/assets/images/products/p-grape-02.jpg',2,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(11,'Concord Grapes','The Concord grape is a cultivar derived from the grape species Vitis labrusca (also known as fox grape) that are used as table grapes, wine grapes and juice grapes. They are often used to make grape jelly, grape juice, grape pies, grape-flavored soft drinks, and candy.',110000,150,'/assets/images/products/p-grape-03.jpg',2,'2022-01-17 19:09:13','2022-01-17 19:09:13'),(12,'Crimson Seedless Grapes','Crimson is a slightly elongated light-red seedless grape with good levels of sweetness and an attractive appearance. The skin colour varies from pink to dark pink-red, often with a pale green stem-end.',140000,100,'/assets/images/products/p-grape-04.jpg',2,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(13,'Kyoho Grapes','Kyoho Grapes are known for its deep purple to black colour. These are sweet with a tinge of sourness. The skin separates from the flesh with ease. Perfect for all who prefer your fruits skinless.',140000,130,'/assets/images/products/p-grape-05.jpg',2,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(14,'Lembergers Grapes','Lemberger, also known as Blaufrankisch, is a dark blue grape that makes dry red wine known for its spicy character. Maurer describes his 2013 vintage as having deep plum flavors with hints of molasses and soft allspice. He adds that it has a ‘blue fruit, blueberry, plum, but not a black fruit taste, and really nice spice characteristics.',140000,120,'/assets/images/products/p-grape-06.jpg',2,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(15,'Pinot Grapes','The taste of Pinot Grigio is fairly relative because the grapes have complex notes. It is common to find different tasting notes while you are at it. However, green apple, peach, lime, and sometimes banana are its fruit notes. Other notes are saline, honey, almond, and spice notes of cinnamon, clove, and ginger. It is interesting to note that the dry, mouth watering Pinot Grigio leaves a tingling aftertaste.',110000,100,'/assets/images/products/p-grape-07.jpg',2,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(16,'Sultana Grapes','Sultana grapes are one of the oldest known grape varietals still available today. Also called the Thompson Seedless, this small, green-white grape is oval shaped and very sweet.',120000,130,'/assets/images/products/p-grape-08.jpg',2,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(17,'National Blueberries','Fresh blueberries are delightful and have a slightly sweet taste that is mixed with a little bit of acid from the berry. Some berries are tarter than others, while sweeter blueberries do exist.',70000,80,'/assets/images/products/p-blueberry-01.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(18,'Tifblue Blueberries','The Tifblue Blueberries bush makes a great hedge because of its astounding size. Use it for screening purposes, plant in clusters or as a single specimen in the backyard',90000,200,'/assets/images/products/p-blueberry-02.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(19,'Woodard Blueberries','Woodard Rabbiteye Blueberry is a large shrub that is typically grown for its edible qualities. It produces large clusters of silvery blue round berries which are usually ready for picking from late spring to early summer. The berries have a sweet taste and a juicy texture.',80000,150,'/assets/images/products/p-blueberry-03.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(20,'Duke Blueberries','Duke Blueberry is a medium-sized shrub that is commonly grown for its edible qualities. A favorite among retailers for its sweet flavor, large berry size, and firmness.',90000,200,'/assets/images/products/p-blueberry-04.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(21,'Chandler Blueberries','Chandler Blueberry is a medium-sized shrub that is typically grown for its edible qualities. It produces large clusters of blue round berries which are usually ready for picking from mid to late summer. The berries have a sweet taste and a juicy texture.',85000,180,'/assets/images/products/p-blueberry-05.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(22,'Farthing Blueberries','The fruit is large and tasty, it boasts high-yield potential, and it can be grown in low chilling conditions. The variety is known for producing very firm berries that possess a mild but excellent flavor—not overly tart or sweet.',110000,250,'/assets/images/products/p-blueberry-06.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(23,'Legacy Blueberries','Legacy bushes produce firm medium-large-sized blueberries with medium blue flesh and a small scar. The berries have a very sweet flavor when ripened on the bush.',120000,120,'/assets/images/products/p-blueberry-07.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(24,'SpringHigh Blueberries','The Springhigh Blueberry is a variety of southern highbush plant that is known for being a hardy plant that can survive and produce large, high-quality berries just about anywhere. These berries have a pleasant, sweet, quintessential blueberry flavor.',140000,100,'/assets/images/products/p-blueberry-08.jpg',3,'2022-01-17 19:11:03','2022-01-17 19:11:03'),(25,'National Fresh Lemons','The lemon is rounded and slightly elongated, it belongs to the family of citrus fruit and therefore it shares many of the characteristics of other species of citruses, as for instance the thick skin.',60000,30,'/assets/images/products/p-lemon-01.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(26,'Lisbon Lemons','Lisbon lemons, botanically classified as Citrus limon, are a common acidic variety belonging to the Rutaceae family. The fruits grow on thorny, evergreen trees generally reaching 3 to 4 meters in height and are a commercial variety cultivated for their sharp juice.',80000,50,'/assets/images/products/p-lemon-02.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(27,'Citrus Lemons','The Citrus limon Burm., popularly known as the lemon tree is a species from the Rutaceae family, native to Asia. Lemon fruit is a rich source of nutrients, a key to a healthy diet, and provides health benefits.',75000,40,'/assets/images/products/p-lemon-03.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(28,'Meyer Lemons','Meyer lemons are a small to medium variety, averaging 6 to 8 centimeters in diameter, and have a round to oval shape. The peel is thin, smooth, glossy, golden yellow to orange, and aromatic, lightly textured with glands that release essential oils.',65000,60,'/assets/images/products/p-lemon-04.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(29,'Sorrento Lemons','Sorrento lemons are a medium to large variety with an oval shape, each end tapering to a point. The stem end may have a more prominent neck, and the opposite end will always display the typical, protruding mammilla.',60000,90,'/assets/images/products/p-lemon-05.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(30,'Verna Lemons','The size of the lemon Verna stands out for being particularly big; it has a slightly pronounced neck in its base and a big apical mamelon. Its rind is big and wrinkled. Its colour stands out for being of very intense yellow. It has very few pips in its inside.',70000,40,'/assets/images/products/p-lemon-06.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(31,'Fino Lemons','Fruit spherical to oval; nipple comparatively small and sharp-pointed; moderately seedy. Paler in color than Berna and rind smoother and thinner. Also higher in juice and acid content.Crop comes mainly in winter.',95000,80,'/assets/images/products/p-lemon-07.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(32,'Ponderosa Lemons','Ponderosa lemons are a medium to large citrus variety, averaging ten centimeters in diameter and two pounds in eight, but the oval to oblong fruits can grow up to five pounds in weight and have a short neck with curved, rounded ends. The rind is smooth, firm, bright yellow-green, and textured, covered in bumps, ribbing, and prominent oil glands releasing fragrant essential oils.',80000,70,'/assets/images/products/p-lemon-08.jpg',4,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(33,'Fresh Brocolli','High in dietary fibre and a number of vitamins and minerals, including potassium, folic acid, and vitamins A, C, and K, broccoli is a nutritious vegetable and can be eaten fresh or cooked.',25000,40,'/assets/images/products/p-vegetable-01.jpg',5,'2022-01-17 19:11:38','2022-01-17 19:11:38'),(34,'Fresh Carrots','Fresh carrots should be firm and crisp, with smooth and unblemished skin. Bright-orange colour indicates high carotene content smaller types are the most tender.',20000,50,'/assets/images/products/p-vegetable-02.jpg',5,'2022-01-17 19:13:28','2022-01-17 19:13:28'),(35,'Sweet Potatoes','Sweet potatoes, when cooked, have a mellow, starchy flavor that is mildly sweet. They become softer and more stringy (depending on the variety) when boiled or baked.',15000,30,'/assets/images/products/p-vegetable-03.jpg',5,'2022-01-17 19:13:42','2022-01-17 19:13:42'),(36,'Pumpkins Fairytale','A pumpkin is a cultivar of winter squash that is round with smooth, slightly ribbed skin, and is most often deep yellow to orange in coloration. The thick shell contains the seeds and pulp.',30000,30,'/assets/images/products/p-vegetable-04.jpg',5,'2022-01-17 19:13:55','2022-01-17 19:13:55'),(37,'Cherry Tomato Seeds','The Red cherry tomato seeds are type of small round tomato believed to be an intermediate genetic admixture between wild currant-type tomatoes and domesticated garden tomatoes. Cherry tomatoes range in size from a thumb tip up to the size of a golf ball, and can range from spherical to slightly oblong in shape.',20000,70,'/assets/images/products/p-vegetable-05.jpg',5,'2022-01-17 19:14:34','2022-01-17 19:14:34'),(38,'Fresh Cauliflowers','Cauliflower is made up of tightly bound clusters of florets that form a dense head similar to that of broccoli. The stems and trunk are firm and tender and the florets have a dense yet soft and crumbly texture. Its flavour is mild with nutty sweet nuances a taste which is amplified when roasted. The entire cauliflower is edible.',15000,40,'/assets/images/products/p-vegetable-06.jpg',5,'2022-01-17 19:14:49','2022-01-17 19:14:49'),(39,'Hot Chili Peppers','Hot peppers are perennial plants with varying structure. Hot peppers can be eaten fresh or cooked as a vegetable, seasoning or garnish.',30000,60,'/assets/images/products/p-vegetable-07.jpg',5,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(40,'Fresh Pumpkins','Pumpkin is a variety of squash that we love so much in our Thanksgiving pies. Fresh pumpkin has a bright flavor that tastes sweet. That sweetness can be accentuated by roasting it',25000,40,'/assets/images/products/p-vegetable-08.jpg',5,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(41,'Fresh Prawns','The Northern fresh prawn—also known as the cold-water prawn—is one of the big ones: it can grow up to 16 centimeters long. Just the perfect juicy mouthful to add to salads and soups.',90000,60,'/assets/images/products/p-oceanfood-01.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(42,'Pink and White Fish','White fish with pink bands around the body and pink spots on face and fins. One of the most handsome members of the group.',70000,30,'/assets/images/products/p-oceanfood-02.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(43,'Grey Fish','The grey triggerfish is a medium-sized fish that can grow to 60 cm (24 in), but a more common length is 44 cm (17 in). The small beak-like mouth at the tip of the snout has fleshy lips. The eyes are set far back near the top of the head.',55000,50,'/assets/images/products/p-oceanfood-03.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(44,'Brown Fish','The brown fish has prominent ear tufts and rufous brown upperparts that are heavily streaked with black or dark brown. Its underparts are buffy-fulvous to whitish, with wavy dark brown streaks and finer brown barring.',60000,40,'/assets/images/products/p-oceanfood-04.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(45,'Orange Lobsters','Orange Reef Lobster, has a beautiful lavender body, with orange and dark violet spots. The taste of lobster is unlike anything else – sweet and succulent meat that melts in your mouth like butter. Lobster is not fishy tasting but has a mildly salty, ocean-like taste (brininess).',140000,20,'/assets/images/products/p-oceanfood-05.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(46,'Brown Crabs','The brown crab meat comes from the shell cavity on top of the crab. It is known as a natural pate, for its interesting texture. The brown crab meat comes from the shell cavity on top of the crab. It is known as a natural pate, for its interesting texture.  ',120000,40,'/assets/images/products/p-oceanfood-06.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(47,'Gray Crabs','Crab meat is quite popular for its unique flavour and delicious taste. Crab meat is an excellent source of important nutrients.',100000,50,'/assets/images/products/p-oceanfood-07.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(48,'Fresh Crabs','The taste of crab meat is a mixture of sweet and salty. The sweetness is very slight like an aftertaste of eating something sugary. Depending on what kind of crab meat you are eating, it can also taste a little like fish. The taste is very unique and cannot entirely be described in terms of other flavours.',90000,80,'/assets/images/products/p-oceanfood-08.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(49,'Squids','Squid has a very mild taste that is slightly sweet and does not smell or taste fishy at all. It has a firm but squidgy texture and is not rubbery at all (if cooked properly).',120000,60,'/assets/images/products/p-oceanfood-09.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(50,'Octopus','Octopus is far from being tough, slimy, or chewy when properly prepared. In fact, it has a similar texture to that of lobster. The taste of cooked octopus of the taste of squid or calamari.',110000,25,'/assets/images/products/p-oceanfood-10.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(51,'Seashells','A seashell is usually the exoskeleton of an invertebrate (an animal without a backbone), and is typically composed of calcium carbonate or chitin. Most shells that are found on beaches are the shells of marine mollusks, partly because these shells are usually made of calcium carbonate, and endure better than shells made of chitin.',80000,90,'/assets/images/products/p-oceanfood-11.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(52,'Oysters','Oysters have a rough, irregularly shaped shell and live mainly in temperate or warm coastal or estuarine waters. Oysters (often eaten raw) are considered a seafood delicacy.',95000,70,'/assets/images/products/p-oceanfood-12.jpg',6,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(53,'Healthy Oatmeal','Oatmeal is a breakfast food made from oats and liquid like water or milk. Many foods fall in and out of favor as health trends come and go.',50000,20,'/assets/images/products/p-dairyproduct-01.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(54,'Raw Oats','Raw oats are known to have antifungal properties, making them an excellent dietary supplement to combat fungal infections. The only issue is that you may have heard that eating raw oats isn’t safe because they contain phytic acid. than cooked oats.',70000,50,'/assets/images/products/p-dairyproduct-02.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(55,'Oat Flakes','Oat Flakes are low fat, low saturated fat, cholesterol free, and sodium free. They are rich in fiber, thiamin (vitamin B1) and manganese, and a good source of protein, iron, and are completely gluten-free.',60000,30,'/assets/images/products/p-dairyproduct-03.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(56,'Low Fat Milk','Low-fat milk is a processed form of milk by removing fat in milk but keeping the nutrients complete. However, for some people, low-fat milk has a taste that is not too sweet like other milk. So, now there is low-fat chocolate milk, which can help you get health benefits with good taste.',35000,20,'/assets/images/products/p-dairyproduct-04.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(57,'Australian Yoghurt','Australian yoghurt is generally considered to be highly nutritious, helped in part by its association with the heart-healthy Mediterranean diet.',90000,10,'/assets/images/products/p-dairyproduct-05.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(58,'Greek Yoghurt','Greek yogurt is a good source of calcium which is needed for healthy bones and teeth as well as muscle contractions, and it contains a good array of B vitamins.',120000,25,'/assets/images/products/p-dairyproduct-06.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(59,'Almond Milk','Almond milk is a plant milk with a creamy texture and nutty flavor manufactured from almonds, although some types or brands are flavored in imitation of cow milk. It does not contain cholesterol or lactose and is low in saturated fat.',100000,30,'/assets/images/products/p-dairyproduct-07.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15'),(60,'Original Yoghurt','Yoghurt is one of the most popular fermented dairy products in the world, made by adding live bacteria to milk.  Yoghurt contains beneficial bacteria and may function as a probiotic, providing a variety of health benefits above and beyond plain milk.',150000,15,'/assets/images/products/p-dairyproduct-08.jpg',7,'2022-01-17 19:15:15','2022-01-17 19:15:15');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulasans`
--

DROP TABLE IF EXISTS `ulasans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulasans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `ProductProductId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProductProductId` (`ProductProductId`),
  CONSTRAINT `ulasans_ibfk_1` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_10` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_11` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_12` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_13` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_14` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_15` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_16` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_17` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_18` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_19` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_2` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_20` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_21` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_22` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_3` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_4` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_5` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_6` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_7` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_8` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ulasans_ibfk_9` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulasans`
--

LOCK TABLES `ulasans` WRITE;
/*!40000 ALTER TABLE `ulasans` DISABLE KEYS */;
INSERT INTO `ulasans` VALUES (1,'Alvito Jordan','alvito@gmail.com','Best Product in the World',5),(2,'Alvito Jordan','alvito@gmail.com','This is a review',2);
/*!40000 ALTER TABLE `ulasans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `DayOfBirth` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alvito Jordan','Jl. Teratai Lama No 27','alvito@gmail.com','pMUh/UfsEHvbu4ftudEiOFYYGjjneyTW5VuqbdpguTU=','081201110586','public\\assets\\images\\Profile\\image-1643389744671.jpg','Male','2001-01-01'),(2,'Bunny',NULL,'bunny@me.com','6cQ8Xc8UP9xBc7Wp1i36vNcE1Daq2LIDTfmT9E7knis=',NULL,NULL,NULL,NULL),(3,'Lola',NULL,'lola@me.com','pbT2ufgVnOnSYmAnH72bmFnCluNhLvHVPk1S/kRsLp4=',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ProductProductId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`),
  KEY `ProductProductId` (`ProductProductId`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_10` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_11` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_12` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_13` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_14` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_15` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_16` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_17` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_18` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_19` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_20` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_21` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_22` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_23` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_24` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_25` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_26` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_27` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_28` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_29` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_30` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_31` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_32` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_33` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_34` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_35` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_36` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_37` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_38` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_39` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_4` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_40` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_41` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_42` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_43` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_44` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_5` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_6` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_7` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_8` FOREIGN KEY (`ProductProductId`) REFERENCES `products` (`productId`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_9` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (9,'2022-01-30 11:45:08','2022-01-30 11:45:08',1,37);
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-30 19:18:18
