-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.6-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema projectnew
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ projectnew;
USE projectnew;

--
-- Table structure for table `projectnew`.`list_status`
--

DROP TABLE IF EXISTS `list_status`;
CREATE TABLE `list_status` (
  `id_status` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `statusname` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`list_status`
--

/*!40000 ALTER TABLE `list_status` DISABLE KEYS */;
INSERT INTO `list_status` (`id_status`,`statusname`) VALUES 
 (0,'INACTIVE'),
 (1,'ACTIVE');
/*!40000 ALTER TABLE `list_status` ENABLE KEYS */;


--
-- Table structure for table `projectnew`.`master_department`
--

DROP TABLE IF EXISTS `master_department`;
CREATE TABLE `master_department` (
  `dept_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) NOT NULL,
  `createuser` varchar(45) NOT NULL,
  `createtime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`master_department`
--

/*!40000 ALTER TABLE `master_department` DISABLE KEYS */;
INSERT INTO `master_department` (`dept_id`,`dept_name`,`createuser`,`createtime`,`status`) VALUES 
 (1,'SYSADMIN','5144','2019-09-08 02:39:34',1),
 (2,'ADMIN','5144','2019-09-08 22:21:56',0),
 (3,'AKUNTING','SYSTEM','2019-09-02 00:00:00',1),
 (7,'MANAGER','5144','2019-09-08 00:11:20',1),
 (8,'DIREKSI','5144','2019-09-08 00:29:52',1),
 (9,'FINANCE','5144','2019-09-09 05:19:25',1),
 (10,'DEVELOP','5144','2019-09-15 20:36:11',1);
/*!40000 ALTER TABLE `master_department` ENABLE KEYS */;


--
-- Table structure for table `projectnew`.`master_formheader`
--

DROP TABLE IF EXISTS `master_formheader`;
CREATE TABLE `master_formheader` (
  `id_form` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `headername` varchar(45) NOT NULL DEFAULT '',
  `glyph` varchar(45) DEFAULT NULL,
  `ordinal` int(10) unsigned NOT NULL DEFAULT 0,
  `createuser` varchar(45) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `formstatus` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`master_formheader`
--

/*!40000 ALTER TABLE `master_formheader` DISABLE KEYS */;
INSERT INTO `master_formheader` (`id_form`,`headername`,`glyph`,`ordinal`,`createuser`,`createtime`,`formstatus`) VALUES 
 (1,'Master','ti-crown',1,'SYSTEM','2019-09-03 00:00:00',1),
 (2,'Transaksi','ti-credit-card',2,'SYSTEM','2019-09-03 00:00:00',1),
 (3,'Laporan','ti-files',3,'5144','2019-09-08 01:25:32',1),
 (4,'Support','ti-headphone-alt',4,'SYSTEM','2019-09-03 00:00:00',1),
 (9,'Company Profile','ti-crown',1,'5144','2019-09-15 22:21:59',0),
 (10,'Struktur Organisasi','ti-headphone-alt',2,'5144','2019-09-15 22:22:08',0),
 (11,'Employee','ti-crown',3,'5144','2019-09-15 20:40:02',1),
 (12,'Report','ti-files',4,'5144','2019-09-15 20:40:14',1);
/*!40000 ALTER TABLE `master_formheader` ENABLE KEYS */;


--
-- Table structure for table `projectnew`.`master_jabatan`
--

DROP TABLE IF EXISTS `master_jabatan`;
CREATE TABLE `master_jabatan` (
  `jabatan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jabatan_name` varchar(45) NOT NULL,
  `createuser` varchar(45) NOT NULL,
  `createtime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`jabatan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`master_jabatan`
--

/*!40000 ALTER TABLE `master_jabatan` DISABLE KEYS */;
INSERT INTO `master_jabatan` (`jabatan_id`,`jabatan_name`,`createuser`,`createtime`,`status`) VALUES 
 (1,'HEAD','SYSTEM','2019-09-02 00:00:00',1),
 (2,'STAFF','SYSTEM','2019-09-02 00:00:00',1),
 (4,'ASSISTANT','5144','2019-09-08 00:23:38',1),
 (5,'SYSADMIN','5144','2019-09-08 00:24:04',1);
/*!40000 ALTER TABLE `master_jabatan` ENABLE KEYS */;


--
-- Table structure for table `projectnew`.`secure_form_akses`
--

DROP TABLE IF EXISTS `secure_form_akses`;
CREATE TABLE `secure_form_akses` (
  `id_form` int(10) unsigned NOT NULL,
  `formdepartment` int(10) unsigned NOT NULL,
  `formjabatan` int(10) unsigned NOT NULL,
  `formstatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_form`,`formdepartment`,`formjabatan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`secure_form_akses`
--

/*!40000 ALTER TABLE `secure_form_akses` DISABLE KEYS */;
INSERT INTO `secure_form_akses` (`id_form`,`formdepartment`,`formjabatan`,`formstatus`) VALUES 
 (1,1,1,1),
 (1,3,1,1),
 (2,1,1,1),
 (3,1,1,1),
 (4,1,1,1),
 (5,1,1,1),
 (6,1,1,1),
 (7,1,1,1),
 (8,1,1,1),
 (10,1,1,1),
 (12,1,1,1),
 (12,1,2,1),
 (13,1,1,1),
 (13,2,1,1),
 (13,9,1,1),
 (14,10,1,1),
 (15,10,1,1),
 (16,10,1,1),
 (17,10,1,1),
 (18,10,1,1),
 (19,10,1,1),
 (20,10,1,1);
/*!40000 ALTER TABLE `secure_form_akses` ENABLE KEYS */;


--
-- Table structure for table `projectnew`.`secure_form_register`
--

DROP TABLE IF EXISTS `secure_form_register`;
CREATE TABLE `secure_form_register` (
  `id_form` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formname` varchar(45) NOT NULL,
  `formtitle` varchar(45) NOT NULL,
  `formheader` varchar(5) NOT NULL DEFAULT '',
  `formstatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`secure_form_register`
--

/*!40000 ALTER TABLE `secure_form_register` DISABLE KEYS */;
INSERT INTO `secure_form_register` (`id_form`,`formname`,`formtitle`,`formheader`,`formstatus`) VALUES 
 (1,'Master_User','Master User','1',1),
 (2,'Master_Department','Master Department','1',1),
 (3,'Master_Jabatan','Master Jabatan','1',1),
 (4,'Master_Kendaraan','Master Kendaraan','1',0),
 (5,'Master_Header_Form','Master Form Header','1',1),
 (6,'Support_Form_Akses','Form Register Akses','4',1),
 (7,'Transaksi_Penjualan','Penjualan','2',1),
 (8,'Master_Form','Form Register ','4',1),
 (12,'Laporan_Penjualan','Laporan Penjualan','3',0),
 (14,'Tambah_struktur','Upload Struktur','10',1),
 (15,'Lihat_struktur','Lihat Struktur','10',1),
 (16,'Lihat_CompanyProfile','Company Profile','9',1),
 (17,'Isi_CompanyProfile','Edit Company Profile','9',1),
 (18,'Maintenance','Lihat Data Karyawan','11',1),
 (19,'Hris_DataKaryawan','Data Karyawan','11',1),
 (20,'Maintenance','Laporan Data Karyawan','12',1);
/*!40000 ALTER TABLE `secure_form_register` ENABLE KEYS */;


--
-- Table structure for table `projectnew`.`secure_user_register`
--

DROP TABLE IF EXISTS `secure_user_register`;
CREATE TABLE `secure_user_register` (
  `nik` varchar(5) NOT NULL DEFAULT '',
  `nama` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(5) NOT NULL DEFAULT '',
  `jabatan` varchar(5) NOT NULL DEFAULT '',
  `createuser` varchar(5) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectnew`.`secure_user_register`
--

/*!40000 ALTER TABLE `secure_user_register` DISABLE KEYS */;
INSERT INTO `secure_user_register` (`nik`,`nama`,`password`,`department`,`jabatan`,`createuser`,`createtime`,`status`) VALUES 
 ('5143','TEST FINANCE','$2y$10$ZRNGGrdziLNLvqMZ.ZLmaeG7cXwQFB43B2Q6syonhd5n39gn3tvpa','9','1','5144','2019-09-15 17:26:01','1'),
 ('5144','RONALDO PANGASIAN','$2y$10$Vhii5gWO3jjGLHHVOFmOCOw.Lz3SKvptaNuGFidoGx.lPHzcVK6Y2','1','1','5144','2019-09-10 20:27:50','1'),
 ('5145','MATTHEW IMMANUEL PANGASIAN SITINJAK','$2y$10$R0E9ipRsQ6jAsqnm3BjDGuU66ELGf5rBn2gF3YV/qWFouoyVixJ9q','1','1','5144','2019-09-10 16:14:44','1'),
 ('5146','BRYANT PANGASIAN SITINJAK','$2y$10$JoeWEeyW2D9jmh0vcpxC3uE/kKtCCawlzJdtACEwycG0t3PWfofXm','1','1','5144','2019-09-10 17:00:16','1'),
 ('5155','UNTUK TESTING','$2y$10$g9NTwaljX9IkE7B6tJAYZefGbtWcm9W2/KCv4WDQpSWRN/z6UjfNW','2','1','5144','2019-09-07 00:37:29','1'),
 ('5156','AGNES JULIANTI','$2y$10$H4V/nFqSF8g2SWweVJc80.slAfbijAW8BZx1JlwVmdp5//NRDl1Vm','3','2','5144','2019-09-15 17:26:41','1'),
 ('9999','USER DEVELOP','$2y$10$fUj.hmqim1SLXsbxBguuqu.8/NduAgFoTGYSrWQ2OYA5NSWbda5w2','10','1','5144','2019-09-15 20:51:37','1');
/*!40000 ALTER TABLE `secure_user_register` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
