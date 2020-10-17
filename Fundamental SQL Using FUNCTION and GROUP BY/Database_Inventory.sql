-- MariaDB dump 10.17  Distrib 10.5.5-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: inventory
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
-- Table structure for table `ms_produk`
--

DROP TABLE IF EXISTS `ms_produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_produk` (
  `no_urut` char(5) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_produk`
--

LOCK TABLES `ms_produk` WRITE;
/*!40000 ALTER TABLE `ms_produk` DISABLE KEYS */;
INSERT INTO `ms_produk` VALUES ('1','produk-01','Kotak Pensil DQLab',62500),('2','produk-02','Flashdisk 64 Gb',55000),('3','produk-03','Voucher Belanja 100rb',100000),('4','produk-04','Casing Hardisk',40000),('5','produk-05','Keyboard Gaming',250000),('6','produk-06','Pulpen Multifunction',92500),('7','produk-07','Tas Travel Organizer',48000),('8','produk-08','Gantungan Kunci DQLab',15800),('9','produk-09','Buku Agenda',92000),('10','produk-10','Stiky Notes 1 Pack',55000),('11','produk-11','Pulpen Multifunction',92500);
/*!40000 ALTER TABLE `ms_produk` ENABLE KEYS */;
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
  `nama_produk` varchar(50) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_penjualan`
--

LOCK TABLES `tr_penjualan` WRITE;
/*!40000 ALTER TABLE `tr_penjualan` DISABLE KEYS */;
INSERT INTO `tr_penjualan` VALUES ('tr-001','dqlabcust07','1','prod-01','Kotak Pensil DQLab',5,63500,317500),('tr-001','dqlabcust07','2','prod-03','Flashdisk 32 Gb',1,100000,100000),('tr-001','dqlabcust07','3','prod-09','Buku Agenda',3,92000,276000),('tr-001','dqlabcust07','4','prod-04','Flashdisk 32 Gb',3,40000,120000),('tr-002','dqlabcust01','1','prod-03','Voucher DQLab 100rb',2,100000,200000),('tr-002','dqlabcust01','2','prod-10','Stiky Notes 1 Pack',4,55000,220000),('tr-002','dqlabcust01','3','prod-07','Tas Travel Organizer',1,48000,48000),('tr-003','dqlabcust03','1','prod-02','Casing Hardisk',2,55000,110000),('tr-004','dqlabcust03','1','prod-10','Stiky Notes 1 Pack',5,55000,275000),('tr-004','dqlabcust03','2','prod-04','Flashdisk 32 Gb',4,40000,160000),('tr-005','dqlabcust05','1','prod-09','Buku Agenda',3,92000,276000),('tr-005','dqlabcust05','2','prod-01','Kotak Pensil DQLab',1,63500,63500),('tr-005','dqlabcust05','3','prod-04','Flashdisk 32 Gb',2,40000,80000),('tr-006','dqlabcust06','1','prod-05','Keyboard Gaming',4,250000,1000000),('tr-006','dqlabcust06','2','prod-08','Gantungan Kunci DQLab',2,15800,31600);
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

-- Dump completed on 2020-10-17 16:49:37
