/*
SQLyog Community v11.52 (64 bit)
MySQL - 5.5.30 : Database - pia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pia` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pia`;

/*Table structure for table `addinggroups` */

DROP TABLE IF EXISTS `addinggroups`;

CREATE TABLE `addinggroups` (
  `groupname` varchar(30) DEFAULT NULL,
  `pubkey` varchar(1000) DEFAULT NULL,
  `prikey` varchar(1000) DEFAULT NULL,
  `pk` blob,
  `sk` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addinggroups` */

insert  into `addinggroups`(`groupname`,`pubkey`,`prikey`,`pk`,`sk`) values ('group1','Sun EC public key, 163 bits\n  public x coord: 4369231387920691995457192568922778426450951229802\n  public y coord: 6052150460566502777367900775430302324284876868742\n  parameters: sect163k1 [NIST K-163] (1.3.132.0.1)','sun.security.ec.ECPrivateKeyImpl@ffffa810','0@0*ÜHŒ=+Å\0,\0˝Sä◊*]ë”¯ˇ«Í2ﬂQj$–ŒZ⁄ÿ◊ .”?¥%–”gLÜ','03\00*ÜHŒ=+Å\00\Z^ïZØ´|˜É»ˆà∂ÏâÇ '),('group2','Sun EC public key, 163 bits\n  public x coord: 8745332160942557793480599446046680534512823905604\n  public y coord: 9883828944971663380522572701187305687486693010878\n  parameters: sect163k1 [NIST K-163] (1.3.132.0.1)','sun.security.ec.ECPrivateKeyImpl@6bce','0@0*ÜHŒ=+Å\0,\0˚⁄A¬!êå<∏¢¥AÒ‚\0ã˚-D√F7„EƒSíí˛∞\'8•ˆ mæ','03\00*ÜHŒ=+Å\00\ZNY·|–|Cs,è?K∂v¯‚\"’');

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `fid` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `plaintext` blob,
  `signature` blob,
  `groupname` varchar(100) DEFAULT NULL,
  `secretkeys` varchar(10000) DEFAULT NULL,
  `pubkey` varchar(1000) DEFAULT NULL,
  `pk` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`fid`,`fname`,`plaintext`,`signature`,`groupname`,`secretkeys`,`pubkey`,`pk`) values ('1','cloud.txt','CloudTechnologie Providing 2015 projects for M.Tech and B.Tech and You can Follow the Our Youtube Channels forUpdate Projects Video','0.◊˚fÉû\Z˝ ÑO\Z•±ËEÕˆ:#©,˝(	Ï<π≥!	ÏÙ&©YºÓ','group1','sun.security.ec.ECPrivateKeyImpl@ffffbe98#sun.security.ec.ECPrivateKeyImpl@ffffd972#','Sun EC public key, 163 bits  public x coord: 4369231387920691995457192568922778426450951229802  public y coord: 6052150460566502777367900775430302324284876868742  parameters: sect163k1 [NIST K-163] (1.3.132.0.1)','0@0*ÜHŒ=+Å\0,\0˝Sä◊*]ë”¯ˇ«Í2ﬂQj$–ŒZ⁄ÿ◊ .”?¥%–”gLÜ');

/*Table structure for table `tpa` */

DROP TABLE IF EXISTS `tpa`;

CREATE TABLE `tpa` (
  `fid` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tpa` */

insert  into `tpa`(`fid`,`fname`,`groupname`,`status`) values ('1','cloud.txt','group1','Real Data');

/*Table structure for table `usercloud` */

DROP TABLE IF EXISTS `usercloud`;

CREATE TABLE `usercloud` (
  `fileid` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `filedata` blob,
  `encrypdata` blob,
  `groupname` varchar(100) DEFAULT NULL,
  `ugpubkey` varchar(1000) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usercloud` */

insert  into `usercloud`(`fileid`,`filename`,`filedata`,`encrypdata`,`groupname`,`ugpubkey`,`username`) values ('1','AssignMent.txt',' Programatical==============CS201-203 CS202/CS203  Paperwork=========CS312 Assessment Test    CS386 Assessment Test                         ','Ÿ¶⁄(”ü˚Ã>–P‚•É kËvQãé‹_Aê≤≠π0Ô·¯úW]åK]¶∫uó§=ƒ¨-Ä ßBïp◊n5]ŒRLèó.•◊xﬂµ H8Ü«P—%ü ;±f>o∑JkÁmÔÒ(5gÿ®Ò*iƒœ˘L‡–pl$£p/…PEVHõ¯∫ê>ÀÓ%á6€¯’N™ª16€','group1','Sun EC public key, 192 bits\r\n  public x coord: 2710451497146568732544068014434718117901613695050971646134\r\n  public y coord: 753402108589851597914339656156424678187988779406746747395\r\n  parameters: secp192k1 (1.3.132.0.31)','ali');

/*Table structure for table `userreg` */

DROP TABLE IF EXISTS `userreg`;

CREATE TABLE `userreg` (
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `groupname` varchar(30) DEFAULT NULL,
  `pubkey` varchar(1000) DEFAULT NULL,
  `prikey` varchar(1000) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `agk` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreg` */

insert  into `userreg`(`name`,`username`,`password`,`email`,`contact`,`groupname`,`pubkey`,`prikey`,`status`,`agk`) values ('sli','ali','iamali','cloudtechnologiesprojects@gmail.com','8599112205','group1','Sun EC public key, 192 bits\n  public x coord: 2710451497146568732544068014434718117901613695050971646134\n  public y coord: 753402108589851597914339656156424678187988779406746747395\n  parameters: secp192k1 (1.3.132.0.31)','sun.security.ec.ECPrivateKeyImpl@ffffbe98','normal','sun.security.ec.ECPrivateKeyImpl@1cb8'),('sajid','sajid','sajid26','sajid24X7@gmail.com','8121953811','group1','Sun EC public key, 192 bits\n  public x coord: 4002395909897092070285433418525320576872199747721256896611\n  public y coord: 5949338782844349618388732696576615008017669210881522636423\n  parameters: secp192k1 (1.3.132.0.31)','sun.security.ec.ECPrivateKeyImpl@ffffd972','revoke','sun.security.ec.ECPrivateKeyImpl@ffffd4d2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
