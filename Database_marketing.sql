-- MariaDB dump 10.17  Distrib 10.5.5-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: marketing
-- ------------------------------------------------------
-- Server version	10.5.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ms_pelanggan`
--

DROP TABLE IF EXISTS `ms_pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_pelanggan` (
  `no_urut` char(5) NOT NULL,
  `kode_pelanggan` varchar(20) NOT NULL,
  `nama_customer` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_pelanggan`
--

LOCK TABLES `ms_pelanggan` WRITE;
/*!40000 ALTER TABLE `ms_pelanggan` DISABLE KEYS */;
INSERT INTO `ms_pelanggan` VALUES ('1','dqlabcust01','Eva Novianti, S.H.','Bandung Barat'),('2','dqlabcust02','Abbdul Sommad','Kalimantan Selatan'),('3','dqlabcust03','Bambang Nur Cahyo','Lampung Utara'),('4','dqlabcust04','Nur Jannah','Tanggerang'),('5','dqlabcust05','Ahmad Sofyan','Jakarta Pusat'),('6','dqlabcust06','Abdurrahman','Papua Barat'),('7','dqlabcust07','Karimah','Semarang'),('8','dqlabcust08','Kasman Bin Ahmad','Banten'),('9','dqlabcust09','Siti Marwati','Kendal'),('10','dqlabcust10','Aseng Sudibyo','Surabaya');
/*!40000 ALTER TABLE `ms_pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_produk_1`
--

DROP TABLE IF EXISTS `ms_produk_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_produk_1` (
  `kode_produk` varchar(10) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_produk_1`
--

LOCK TABLES `ms_produk_1` WRITE;
/*!40000 ALTER TABLE `ms_produk_1` DISABLE KEYS */;
INSERT INTO `ms_produk_1` VALUES ('proud-01','Kotak Pensil DQLab',62500),('proud-02','Flashdisk 64 GB',55000),('proud-03','Voucher 100rb',100000),('proud-04','Flashdisk 32 GB',40000),('proud-05','Voucher 250rb',250000);
/*!40000 ALTER TABLE `ms_produk_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_produk_2`
--

DROP TABLE IF EXISTS `ms_produk_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_produk_2` (
  `no_urut` char(5) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `kode_produk` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_produk_2`
--

LOCK TABLES `ms_produk_2` WRITE;
/*!40000 ALTER TABLE `ms_produk_2` DISABLE KEYS */;
INSERT INTO `ms_produk_2` VALUES ('6','Pulpen Multifunction','proud-06',92500),('7','Tas Organizer','proud-07',48000),('8','Gantungan Kunci','proud-08',15800),('9','Buku Agenda','proud-09',92000),('10','Stiky Notes','proud-10',55000);
/*!40000 ALTER TABLE `ms_produk_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_penjualan`
--

DROP TABLE IF EXISTS `tr_penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_penjualan` (
  `kode_transaksi` varchar(10) NOT NULL,
  `kode_pelanggan` varchar(20) NOT NULL,
  `no_urut` char(5) NOT NULL,
  `kode_produk` varchar(10) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_penjualan`
--

LOCK TABLES `tr_penjualan` WRITE;
/*!40000 ALTER TABLE `tr_penjualan` DISABLE KEYS */;
INSERT INTO `tr_penjualan` VALUES ('tr-01','dqlabcust07','1','prod-01','Kotak Pensil DQLab',5,312500),('tr-01','dqlabcust07','2','prod-03','Flashdisk 32 GB',1,100000),('tr-01','dqlabcust07','3','prod-09','Buku Agenda',3,276000),('tr-01','dqlabcust07','4','prod-04','Casing Hardisk',3,120000),('tr-02','dqlabcust01','1','prod-03','Voucher 100rb',2,200000),('tr-02','dqlabcust01','2','prod-10','Sticky Notes',4,220000),('tr-02','dqlabcust01','3','prod-07','Tas Organizer',1,48000),('tr-03','dqlabcust03','1','prod-02','Flashdisk 64 GB',2,110000),('tr-04','dqlabcust03','1','prod-10','Sticky Notes',5,275000),('tr-04','dqlabcust03','2','prod-04','Flashdisk 32 GB',4,160000),('tr-05','dqlabcust04','1','prod-09','Buku Agenda',3,276000),('tr-05','dqlabcust04','2','prod-01','Kotak Pensil DQLab',1,62500),('tr-05','dqlabcust04','3','prod-04','Flashdisk 32 GB',2,80000),('tr-06','dqlabcust02','1','prod-05','Voucher 250rb',4,1000000),('tr-06','dqlabcust02','2','prod-08','Gantungan Kunci',2,31600);
/*!40000 ALTER TABLE `tr_penjualan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23 15:37:26
