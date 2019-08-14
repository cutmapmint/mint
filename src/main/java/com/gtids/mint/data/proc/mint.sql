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

/*Table structure for table `bank_mstr` */

DROP TABLE IF EXISTS `bank_mstr`;

CREATE TABLE `bank_mstr` (
  `bank_mstr_id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(9) DEFAULT NULL,
  `bank_name` varchar(199) DEFAULT NULL,
  `bank_category` varchar(99) DEFAULT NULL,
  `officer_name` varchar(99) DEFAULT NULL,
  `officer_designation` varchar(99) DEFAULT NULL,
  `officer_address1` varchar(99) DEFAULT NULL,
  `officer_address2` varchar(99) DEFAULT NULL,
  `officer_pincode` int(9) unsigned DEFAULT NULL,
  `officer_mobile` varchar(15) DEFAULT NULL,
  `officer_telphone` varchar(15) DEFAULT NULL,
  `officer_fax` int(22) unsigned DEFAULT NULL,
  `officer_email` varchar(99) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  KEY `bank_master_id` (`bank_mstr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `bank_mstr` */

insert  into `bank_mstr`(`bank_mstr_id`,`user_id`,`bank_name`,`bank_category`,`officer_name`,`officer_designation`,`officer_address1`,`officer_address2`,`officer_pincode`,`officer_mobile`,`officer_telphone`,`officer_fax`,`officer_email`,`created_date`) values (1,1,'ABC BANK','UCB','abc','compliance Officer','sfsdf','sdfsd',500018,'918988989845','040234567',123499,'xyz@gmail.com','2019-08-14');

/*Table structure for table `branch_mstr` */

DROP TABLE IF EXISTS `branch_mstr`;

CREATE TABLE `branch_mstr` (
  `branch_mstr_id` int(9) NOT NULL AUTO_INCREMENT,
  `bank_mstr_id` int(9) DEFAULT NULL,
  `user_id` int(9) DEFAULT NULL,
  `branch_code` int(5) DEFAULT NULL,
  `name` varchar(299) DEFAULT NULL,
  `address` varchar(299) DEFAULT NULL,
  `country` varchar(99) DEFAULT NULL,
  `state` varchar(199) DEFAULT NULL,
  `district` varchar(199) DEFAULT NULL,
  `city` varchar(199) DEFAULT NULL,
  `village` varchar(199) DEFAULT NULL,
  `pincode` int(9) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `mobile_no` int(15) DEFAULT NULL,
  `email` varchar(99) DEFAULT NULL,
  `fax` int(25) DEFAULT NULL,
  `in_charge` varchar(199) DEFAULT NULL,
  `designation` varchar(199) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ifsc_code` varchar(99) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  KEY `branch_master_id` (`branch_mstr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `branch_mstr` */

insert  into `branch_mstr`(`branch_mstr_id`,`bank_mstr_id`,`user_id`,`branch_code`,`name`,`address`,`country`,`state`,`district`,`city`,`village`,`pincode`,`phone`,`mobile_no`,`email`,`fax`,`in_charge`,`designation`,`status`,`ifsc_code`,`created_date`) values (1,1,NULL,17,'Demo Branch','Demo Branch Address','india','telangana','hyderabad','hyderabad','Vanasthalipuram',500022,402569857,658974569,'vanastalipuram@bank.com',32547899,'258','xyz',1,'bank000001236','2017-12-28 13:20:47');

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
  `first_name` varchar(99) DEFAULT NULL,
  `second_name` varchar(99) DEFAULT NULL,
  `third_name` varchar(99) DEFAULT NULL,
  `father_name` varchar(99) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email_id` varchar(99) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `imei` varchar(55) DEFAULT NULL,
  `finger_print` varchar(55) DEFAULT NULL,
  `aadhar_no` varchar(25) DEFAULT NULL,
  `pan_number` varchar(15) DEFAULT NULL,
  `bank` varchar(99) DEFAULT NULL,
  `branch_code` int(15) DEFAULT NULL,
  `city` varchar(99) DEFAULT NULL,
  `district` varchar(99) DEFAULT NULL,
  `state` varchar(99) DEFAULT NULL,
  `res_address` varchar(299) DEFAULT NULL,
  `per_address` varchar(299) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`username`),
  KEY `users_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`password`,`enabled`,`first_name`,`second_name`,`third_name`,`father_name`,`dob`,`email_id`,`mobile`,`imei`,`finger_print`,`aadhar_no`,`pan_number`,`bank`,`branch_code`,`city`,`district`,`state`,`res_address`,`per_address`,`created_date`) values (1,'admin','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin@gmail.com','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-05-09'),(2,'manager','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'manager@gmail.c','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-05-09'),(3,'supervisor','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'supervisor@gmai','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-05-09'),(4,'agent','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,'9557899166','imei_9557899166','FINGER_PRINT_9557899166','1234567899','agent@gmail.com','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-05-09'),(5,'vagent','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vagent@gmail.co','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-05-24'),(6,'vagent1','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vagent1@gmail.c','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-05-24'),(7,'bkmanager','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bkmanager@gmail','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-07-24'),(8,'agent1','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,'9557899199','imei_9557899199','FINGER_PRINT_9557899199',NULL,'agent1@gmail.co','abc',1,'Hyderabad',NULL,NULL,NULL,NULL,'2019-08-02');

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
