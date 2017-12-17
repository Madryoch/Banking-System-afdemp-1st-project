-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: afdemp_java_1
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Temporary table structure for view `accinfo`
--

DROP TABLE IF EXISTS `accinfo`;
/*!50001 DROP VIEW IF EXISTS `accinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `accinfo` AS SELECT 
 1 AS `user`,
 1 AS `balance`,
 1 AS `priv`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(100) unsigned NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,16271.52),(2,2,7000),(3,3,9228.61);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `trans`
--

DROP TABLE IF EXISTS `trans`;
/*!50001 DROP VIEW IF EXISTS `trans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `trans` AS SELECT 
 1 AS `user`,
 1 AS `action`,
 1 AS `target`,
 1 AS `transaction_date`,
 1 AS `oldamount`,
 1 AS `curamount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(100) unsigned NOT NULL,
  `tr_id` int(3) unsigned NOT NULL,
  `date` datetime(3) NOT NULL,
  `oldamount` double NOT NULL,
  `curamount` double NOT NULL,
  `target` int(100) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `const1` (`u_id`),
  KEY `const2` (`tr_id`),
  KEY `to/from` (`target`),
  CONSTRAINT `const1` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `const2` FOREIGN KEY (`tr_id`) REFERENCES `transactiontype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`target`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,3,0,'2017-12-13 23:18:53.830',8650,8650,3),(2,3,3,'2017-12-13 23:19:06.894',8650,8850.11,3),(3,3,0,'2017-12-13 23:19:07.205',8850.11,8850.11,3),(4,1,0,'2017-12-14 00:00:30.672',15049.52,15049.52,1),(5,1,0,'2017-12-14 00:01:29.187',15049.52,15049.52,1),(6,1,0,'2017-12-14 00:04:47.914',15049.52,15049.52,1),(7,1,0,'2017-12-14 00:25:44.157',15049.52,15049.52,1),(8,1,4,'2017-12-14 00:26:32.161',15049.52,15150.02,2),(9,2,5,'2017-12-14 00:26:32.161',7000.43,6899.93,1),(10,1,4,'2017-12-14 00:26:32.381',15150.02,15250.52,3),(11,3,5,'2017-12-14 00:26:32.381',8850.11,8749.61,1),(12,1,0,'2017-12-14 00:26:32.584',15250.52,15250.52,1),(13,2,0,'2017-12-14 00:34:55.177',6899.93,6899.93,2),(14,2,3,'2017-12-14 00:35:05.334',6899.93,7899.93,2),(15,2,0,'2017-12-14 00:35:05.590',7899.93,7899.93,2),(16,2,3,'2017-12-14 00:35:34.025',7899.93,6899.93,1),(17,1,2,'2017-12-14 00:35:34.025',15250.52,16250.52,2),(18,2,0,'2017-12-14 00:35:34.265',6899.93,6899.93,2),(19,2,4,'2017-12-14 00:35:50.385',6899.93,6626.93,2),(20,2,0,'2017-12-14 00:35:50.648',6626.93,6626.93,2),(21,3,0,'2017-12-14 00:37:12.399',8749.61,8749.61,3),(22,3,3,'2017-12-14 00:37:18.604',8749.61,9474.61,3),(23,3,0,'2017-12-14 00:37:19.034',9474.61,9474.61,3),(24,3,3,'2017-12-14 00:38:00.067',9474.61,9351.61,1),(25,1,2,'2017-12-14 00:38:00.067',16250.52,16373.52,3),(26,3,3,'2017-12-14 00:38:00.271',9351.61,9228.61,2),(27,2,2,'2017-12-14 00:38:00.271',6626.93,6749.93,3),(28,3,0,'2017-12-14 00:38:00.628',9228.61,9228.61,3),(29,1,0,'2017-12-14 00:40:43.941',16373.52,16373.52,1),(30,1,0,'2017-12-14 01:33:44.669',16373.52,16373.52,1),(31,1,0,'2017-12-14 01:36:19.432',16373.52,16373.52,1),(32,1,4,'2017-12-14 01:36:29.138',16373.52,16271.28,1),(33,1,0,'2017-12-14 01:36:29.381',16271.28,16271.28,1),(34,2,0,'2017-12-14 01:41:47.339',6749.93,6749.93,2),(35,2,3,'2017-12-14 01:42:02.363',6749.93,7000.24,2),(36,2,0,'2017-12-14 01:42:02.646',7000.24,7000.24,2),(37,2,3,'2017-12-14 01:42:25.985',7000.24,7000,1),(38,1,2,'2017-12-14 01:42:25.985',16271.28,16271.52,2),(39,2,0,'2017-12-14 01:42:26.377',7000,7000,2);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ontransaction AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
UPDATE `accounts` SET `amount`=NEW.`curamount` WHERE `user_id`=NEW.`u_id`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transactiontype`
--

DROP TABLE IF EXISTS `transactiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactiontype` (
  `id` int(3) unsigned NOT NULL,
  `action` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiontype`
--

LOCK TABLES `transactiontype` WRITE;
/*!40000 ALTER TABLE `transactiontype` DISABLE KEYS */;
INSERT INTO `transactiontype` VALUES (0,'View'),(1,'ViewAll'),(2,'Deposit From'),(3,'Deposit To'),(4,'Withdraw From'),(5,'Withdrawn By'),(6,'Save'),(7,'ViewLastTrans');
/*!40000 ALTER TABLE `transactiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `priv` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','d033e22ae348aeb5660fc2140aec35850c4da997',1),(2,'user1','e38ad214943daad1d64c102faec29de4afe9da3d',0),(3,'user2','2aa60a8ff7fcd473d321e0146afd9e26df395147',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `accinfo`
--

/*!50001 DROP VIEW IF EXISTS `accinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `accinfo` AS select `users`.`username` AS `user`,`accounts`.`amount` AS `balance`,`users`.`priv` AS `priv` from (`users` join `accounts` on((`users`.`id` = `accounts`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trans`
--

/*!50001 DROP VIEW IF EXISTS `trans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trans` AS select `u1`.`username` AS `user`,`transactiontype`.`action` AS `action`,`uii`.`username` AS `target`,`transactions`.`date` AS `transaction_date`,`transactions`.`oldamount` AS `oldamount`,`transactions`.`curamount` AS `curamount` from (((`users` `u1` join `transactions` on((`u1`.`id` = `transactions`.`u_id`))) join `transactiontype` on((`transactions`.`tr_id` = `transactiontype`.`id`))) join `users` `uii` on((`transactions`.`target` = `uii`.`id`))) */;
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


CREATE USER 'guest'@'localhost' IDENTIFIED BY 'guestpass';
GRANT SELECT, EXECUTE ON `afdemp_java_1`.* TO 'guest'@'localhost';
GRANT INSERT ON `afdemp_java_1`.`transactions` TO 'guest'@'localhost';

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deposit`(IN usr VARCHAR(30),IN trg VARCHAR(30),IN value DOUBLE)
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @trgid=(SELECT `id` FROM `users` WHERE `username`=trg);
SET @usam=(SELECT `amount` FROM `accounts` WHERE `user_id`=@userid);
SET @trgam=(SELECT `amount` FROM `accounts` WHERE `user_id`=@trgid);
SET @time=NOW(3);
IF (@usam-value>=0) THEN
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,3,@time,TRUNCATE(@usam,2),TRUNCATE((@usam-value),2),@trgid);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@trgid,2,@time,TRUNCATE(@trgam,2),TRUNCATE((@trgam+value),2),@userid);
END IF;
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `depositself`(IN usr VARCHAR(30), IN value DOUBLE)
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @usam=(SELECT `amount` FROM `accounts` WHERE `user_id`=@userid);
SET @time=NOW(3);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,3,@time,TRUNCATE(@usam,2),TRUNCATE((@usam+value),2),@userid);
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `withdrawfromself`(IN usr VARCHAR(30),IN value DOUBLE)
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @usam=(SELECT `amount` FROM `accounts` WHERE `user_id`=@userid);
SET @time=NOW(3);
IF (@usam-value>=0) THEN
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,4,@time,TRUNCATE(@usam,2),TRUNCATE((@usam-value),2),@userid);
END IF;
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `withdrawfromtarget`(IN usr VARCHAR(30),IN trg VARCHAR(30),IN value DOUBLE)
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @trgid=(SELECT `id` FROM `users` WHERE `username`=trg);
SET @usam=(SELECT `amount` FROM `accounts` WHERE `user_id`=@userid);
SET @trgam=(SELECT `amount` FROM `accounts` WHERE `user_id`=@trgid);
SET @time=NOW(3);
IF (@trgam-value>=0) THEN
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,4,@time,TRUNCATE(@usam,2),TRUNCATE((@usam+value),2),@trgid);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@trgid,5,@time,TRUNCATE(@trgam,2),TRUNCATE((@trgam-value),2),@userid);
END IF;
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `viewaccount`(IN usr VARCHAR(30))
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @am=(SELECT `accounts`.`amount` FROM `accounts` WHERE `accounts`.`user_id`=@userid);
SET @time=NOW(3);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,0,@time,@am,@am,@userid);
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `viewall`(IN usr VARCHAR(30))
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @am=(SELECT `accounts`.`amount` FROM `accounts` WHERE `accounts`.`user_id`=@userid);
SET @time=NOW(3);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,1,@time,@am,@am,@userid);
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `savetofile`(IN usr VARCHAR(30))
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @am=(SELECT `accounts`.`amount` FROM `accounts` WHERE `accounts`.`user_id`=@userid);
SET @time=NOW(3);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,6,@time,@am,@am,@userid);
END //

CREATE DEFINER=`root`@`localhost` PROCEDURE `viewlasttransaction`(IN usr VARCHAR(30))
BEGIN
SET @userid=(SELECT `id` FROM `users` WHERE `username`=usr);
SET @am=(SELECT `accounts`.`amount` FROM `accounts` WHERE `accounts`.`user_id`=@userid);
SET @time=NOW(3);
INSERT INTO `transactions` (`u_id`,`tr_id`,`date`,`oldamount`,`curamount`,`target`) values (
@userid,7,@time,@am,@am,@userid);
END //

DELIMITER ;



-- Dump completed on 2017-12-14  1:50:04
