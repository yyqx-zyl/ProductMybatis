/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.22-log : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `invitation` */

DROP TABLE IF EXISTS `invitation`;

CREATE TABLE `invitation` (
  `invitationId` int(11) NOT NULL AUTO_INCREMENT,
  `invitationMessage` varchar(50) NOT NULL,
  `invitationcover` varchar(1000) NOT NULL,
  `invitationCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`invitationId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `invitation` */

insert  into `invitation`(`invitationId`,`invitationMessage`,`invitationcover`,`invitationCreate`) values (1,'dfgsfgsdfgad','gsdfgadfggfdsghfgh','2020-03-24 15:41:49'),(2,'gffsgfdghfgh','dsfgdfdgsdfg','2020-03-23 15:41:58'),(3,'fgfsdgdafhdghdfjdhgj','gdshghsdhgghadg反倒是更好','2020-03-11 15:42:08'),(4,'非官方的规划法规','感受到方式','2020-03-13 15:42:14'),(5,'广东分公司的风格','<p>对方公司法规和当地非</p>','2020-03-24 17:01:05'),(6,'发的噶对方告诉对方广东省法规','<p>发的格式对方告诉对方</p>','2020-03-24 17:23:23');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `paddress` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`pname`,`paddress`) values (1,'fbdgsfgnn','东方华府规划法规'),(2,'挂号费读后感','发过火梵蒂冈'),(3,'法规和地方和规范',' 法官和对方后果'),(4,' 法国恢复官方规划','规范化的复合弓'),(5,' 规范化和东风化工','规范化的复合弓'),(6,'规范化的复合弓',' 规范化的复合弓地方过的痕迹规划局'),(7,'打工皇帝发个截图一日游','规划局忑月');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
