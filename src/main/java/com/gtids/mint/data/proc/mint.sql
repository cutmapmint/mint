/* 
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.41-community : Database - mint
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mint` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mint`;

/*Table structure for table `txn_mstr` */

DROP TABLE IF EXISTS `txn_mstr`;

CREATE TABLE `txn_mstr` (
  `txn_mstr_id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(9) DEFAULT NULL,
  `cif` varchar(25) DEFAULT NULL,
  `acc_number` varchar(25) DEFAULT NULL,
  `aadhar_no` varchar(25) DEFAULT NULL,
  `txn_amount` float(9,2) DEFAULT NULL,
  `avl_amount` float(9,2) DEFAULT NULL,
  `txn_type` varchar(25) DEFAULT NULL,
  `txn_date` date DEFAULT NULL,
  `txn_time` time DEFAULT NULL,
  `txn_status` varchar(25) DEFAULT NULL,
  `txn_key` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`txn_mstr_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `txn_mstr_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `txn_mstr` */

insert  into `txn_mstr`(`txn_mstr_id`,`user_id`,`cif`,`acc_number`,`aadhar_no`,`txn_amount`,`avl_amount`,`txn_type`,`txn_date`,`txn_time`,`txn_status`,`txn_key`) values (1,4,'1','123456789999','12345678988',0.00,200000.00,'View','2019-08-13','12:23:04','1','asdfsdfdsfdsf123'),(2,4,'1','123456789999','12345678988',0.00,200000.00,'View','2019-08-13','12:23:54','1','asdfsdfdsfdsf123'),(3,4,'1','123456789999','12345678988',0.00,200000.00,'View','2019-08-13','14:19:26','1','asdfsdfdsfdsf123'),(4,4,'1','123456789999','12345678988',0.00,200000.00,'View','2019-08-13','15:31:15','1','asdfsdfdsfdsf123'),(5,4,'1','123456789999','12345678988',2000.00,198000.00,'DR','2019-08-13','15:31:26','1','asdfsdfdsfdsf123'),(6,4,'1','123456789999','12345678988',2000.00,200000.00,'CR','2019-08-13','15:34:27','1','asdfsdfdsfdsf123'),(7,4,'1','123456789999','12345678988',0.00,200000.00,'View','2019-08-13','16:41:10','1','asdfsdfdsfdsf123'),(8,4,'1','123456789999','12345678988',2000.00,198000.00,'DR','2019-08-13','16:41:25','1','asdfsdfdsfdsf123'),(9,4,'1','123456789999','12345678988',2000.00,200000.00,'CR','2019-08-13','16:41:36','1','asdfsdfdsfdsf123');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `mobile` varchar(15) DEFAULT NULL,
  `imei` varchar(55) DEFAULT NULL,
  `finger_print` varchar(55) DEFAULT NULL,
  `aadhar_no` varchar(25) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `branch_code` int(15) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`username`),
  KEY `users_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`password`,`enabled`,`mobile`,`imei`,`finger_print`,`aadhar_no`,`email_id`,`bank`,`branch_code`,`city`,`created_date`) values (1,'admin','123456',1,NULL,NULL,NULL,NULL,'admin@gmail.com','abc',1,'Hyderabad','2019-05-09'),(2,'manager','123456',1,NULL,NULL,NULL,NULL,'manager@gmail.com','abc',1,'Hyderabad','2019-05-09'),(3,'supervisor','123456',1,NULL,NULL,NULL,NULL,'supervisor@gmail.com','abc',1,'Hyderabad','2019-05-09'),(4,'agent','123456',1,'9557899166','imei_9557899166','FINGER_PRINT_9557899166','1234567899','agent@gmail.com','abc',1,'Hyderabad','2019-05-09'),(5,'vagent','123456',1,NULL,NULL,NULL,NULL,'vagent@gmail.com','abc',1,'Hyderabad','2019-05-24'),(6,'vagent1','123456',1,NULL,NULL,NULL,NULL,'vagent1@gmail.com','abc',1,'Hyderabad','2019-05-24'),(7,'bkmanager','123456',1,NULL,NULL,NULL,NULL,'bkmanager@gmail.com','abc',1,'Hyderabad','2019-07-24'),(8,'agent1','123456',1,'9557899199','imei_9557899199','FINGER_PRINT_9557899199',NULL,'agent1@gmail.com','abc',1,'Hyderabad','2019-08-02');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `role` enum('ROLE_ADMIN','ROLE_MANAGER','ROLE_SUPERVISOR','ROLE_AGENT','ROLE_VAGENT','ROLE_BKMANAGER') NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `uni_username_role` (`role`,`username`),
  KEY `fk_username_idx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_role_id`,`username`,`role`) values (1,'admin','ROLE_ADMIN'),(2,'manager','ROLE_MANAGER'),(3,'supervisor','ROLE_SUPERVISOR'),(4,'agent','ROLE_AGENT'),(5,'vagent','ROLE_VAGENT'),(6,'vagent1','ROLE_VAGENT'),(7,'bkmanager','ROLE_BKMANAGER');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
