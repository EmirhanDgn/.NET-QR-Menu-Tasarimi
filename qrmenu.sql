-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.24-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- qrmenu için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `qrmenu` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `qrmenu`;

-- tablo yapısı dökülüyor qrmenu.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KategoriAdi` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- qrmenu.kategori: ~11 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `kategori` (`ID`, `KategoriAdi`) VALUES
	(1, 'Kahvalti'),
	(2, 'Yumurta'),
	(3, 'Baslangic'),
	(4, 'Pizza'),
	(5, 'Burger'),
	(6, 'Makarna'),
	(7, 'Soğuk Icecekler'),
	(8, 'Ithal Icecek'),
	(9, 'Kokteyl'),
	(10, 'Noodle'),
	(11, 'Sıcak İçecekler');

-- tablo yapısı dökülüyor qrmenu.urunler
CREATE TABLE IF NOT EXISTS `urunler` (
  `UrunID` int(11) NOT NULL AUTO_INCREMENT,
  `UrunBaslik` varchar(800) DEFAULT NULL,
  `UrunAciklama` varchar(800) DEFAULT NULL,
  `UrunFiyat` varchar(50) DEFAULT NULL,
  `UrunResim` varchar(100) DEFAULT NULL,
  `InStock` int(11) NOT NULL DEFAULT 1,
  `YemekKategori` int(11) NOT NULL,
  PRIMARY KEY (`UrunID`,`YemekKategori`) USING BTREE,
  KEY `FK_urunler_kategori` (`YemekKategori`),
  CONSTRAINT `FK_urunler_kategori` FOREIGN KEY (`YemekKategori`) REFERENCES `kategori` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;

-- qrmenu.urunler: ~61 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `urunler` (`UrunID`, `UrunBaslik`, `UrunAciklama`, `UrunFiyat`, `UrunResim`, `InStock`, `YemekKategori`) VALUES
	(1, 'Mini Kahvaltı Tabağı', 'Ezine Peyniri,Taze Kaşar,Bal,Kaymak,Salam,Nutella,Siyah Zeytin,Yeşil zeytin,domates,salatalık,reçel,haşlanmış yumurta.', '72', '/Content/img/kahvalti/kahvaltitabagi.jpg', 1, 1),
	(2, 'Yöresel Serpme Kahvaltı', 'ezine beyaz peynir,erzurum çeçil peyniri,kaşar peyniri,jambon,salam,kasap sucuk,çiçek sosis,tereyağlı sahanda göz yumurta,tereyağı,cherry domates,çengelköy salatalık,sivri biber,acuka,gemlik sele siyah zeytin,yeşil zeytin,nutella süzme çiçek balı,kaymak,mevsim meyvesi,2 çeşit reçel,haşlanmış yumurta,kuru kayısı,sigara böreği,paçanga böreği.patetes kızartma.simit ve limitsiz cay ile servis edilir.(2 kişilk) türk kahvesi ikramımızdır.', '210', '/Content/img/kahvalti/serpmekahvalti.jpg', 1, 1),
	(4, 'Sıcak Kahvaltı Tabağı', 'sucuk,sigara böreği,paçanga böreği,sosis,nutella,domates,salatalık,beyaz peynir,göz yumurta,patates kızartması,siyah zeytin,yeşil zeytin.', '93', '/Content/img/kahvalti/sicakkahvalti.jpg', 1, 1),
	(7, 'Benim Kahvaltım', 'ezine peyniri,cecil peyniri,burgu peyniri,taze kaşar,dana salam,sosis,tereyağı,çiçek balı,siyah zeytin,yeşil zeytin,recel,nutella,domates,salatalık,sivri biber,haşlanmış yumurta,kayısı.', '93', '/Content/img/kahvalti/kahvaltitabagi.jpg', 1, 1),
	(8, 'Sade Omlet', NULL, '20', '/Content/img/kahvalti/yumurta.jpg', 1, 2),
	(9, 'Kaşarlı Sucuklu Sebzeli Mantarlı', NULL, '35', '/Content/img/kahvalti/yumurta.jpg', 1, 2),
	(10, 'Sade Menemen', NULL, '25', '/Content/img/kahvalti/menemen.jpg', 1, 2),
	(11, 'Kaşarlı Menemen', NULL, '33', '/Content/img/kahvalti/menemen.jpg', 1, 2),
	(12, 'Kavurmalı Menemen', NULL, '35', '/Content/img/kahvalti/kavurmalimenemen.jpg', 1, 2),
	(13, 'Sahanda Yumurta', NULL, '20', '/Content/img/kahvalti/yumurta.jpg', 1, 2),
	(14, 'Sahanda Sucuklu Yumurta', NULL, '33', '/Content/img/kahvalti/sucukluyumurta.jpeg', 1, 2),
	(15, 'Sahanda Kavurmalı Yumurta', NULL, '35', '/Content/img/kahvalti/kavurmaliyumurta.jpg', 1, 2),
	(18, 'Patates Kroket', '10 Adet olarak servis edilir.', '34,50', '/Content/img/baslangic/patateskroket.jpg', 1, 3),
	(20, 'Parmak Patates', 'Cajun Baharatı ve Special Sos ile servis edilir.', '34', '/Content/img/baslangic/patates.jpg', 1, 3),
	(22, 'Elma Dilim ( Wesges)', 'Cajun Baharatı ve Special Sos ile servis edilir.', '36', '/Content/img/baslangic/elmapatates.jpg', 1, 3),
	(23, 'Cajun Chicken Basket', 'Parçalanmış tavuk parçaları,parmak patates,cajun baharatı,honey mustard sos,ve sweet chilli sos ile servis edilir.', '48', '/Content/img/baslangic/cajun.jpeg', 1, 3),
	(26, 'Combo Tabağı', 'sigara böreği,parmak patates,nugget,sosis,papers,patates kroket,soğan halkası,cajun tavuk parçaları,honey mustard sos,BBQ sos sweet chilli sos ile servis edilir.', '50,50', '/Content/img/baslangic/combo.jpg', 1, 3),
	(27, 'Paçanga Böreği', NULL, '38', '/Content/img/baslangic/pacanga.jpg', 1, 3),
	(28, 'Margarita', 'özel el yapımı pizza hamuru,fesleğenli domates sos ve mozarelle ve roka ile servis edilir.', '50,50', '/Content/img/pizza/margarita.jpg', 1, 4),
	(29, 'Vegetarian Pizza', 'özel el yapımı pizza hamuru,mantar,kırmızı biber,yeşil biber,zeytin,mısır,soğan ve rokaa ile servis edilir.', '54', '/Content/img/pizza/vegetarian.jpg', 1, 4),
	(30, 'BBQ Pizza', 'özel el yapımı pizza hamuru,fesleğenli domates sos,dana sucuk,soğan,kırmızı biber,jalapone,mozzarelle,roka ve barbekü sos ile servis edilir.', '58,50', '/Content/img/pizza/bbq.jpg', 1, 4),
	(31, 'Mega Mix Pizza', 'özel el yapımı pizza hamuru,jambon,salam,sucuk,mantar,zeytin,renkli biberler,dana fleto v roka ile servis edilir.', '63', '/Content/img/pizza/mix.jpeg', 1, 4),
	(32, 'Akdeniz Pizza', 'özel el yapımı pizza hamuru,Beyaz Peynir,zeytin,renkli biberler,domates ve roka ile servis edilir.', '56,50', '/Content/img/pizza/akdeniz.jpg', 1, 4),
	(33, 'Klasik Burger', '130 gr. köfte,patates kızartması,soğan halksı,domates,kıvırcık ve special sos ile servis edilir.', '54,50', '/Content/img/burger/burger.jpg', 1, 5),
	(34, 'Cheese Burger', '130 gr. köfte,cheddar peyniri,patates kızartması,soğan halksı,domates,kıvırcık ve special sos ile servis edilir.', '56,50', '/Content/img/burger/chessburger.jpg', 1, 5),
	(35, 'Chicken Burger', '130 gr,cıtır tavuk,BBQ sos,patates kızartması,kaşar,domates,kıvırcık ve special sos ile servis edilir.', '51,50', '/Content/img/burger/Chickenburger.jpg', 1, 5),
	(36, 'BBQ Burger', '130 gr. köfte,BBQ sosu ,patates kızartması,soğan halksı,domates,kıvırcık ve special sos ile servis edilir.', '55', '/Content/img/burger/bbq.jpeg', 1, 5),
	(37, 'Double Burger', '260 gr köfte,kıvırcık,turşu,patates kızartması,domates,kıvırcık ve special sos ile servis edilir.', '72,50', '/Content/img/burger/doubleburger.jpg', 1, 5),
	(38, 'Spagetti Bolonez', 'özel kıymalı bolognese sos ile servis edilir.', '49,50', '/Content/img/makarna/spagettibolonez.jpeg', 1, 6),
	(39, 'Spagetti Napolitan', 'napolitan sos ve parmesan peyniri ile servis edilir.', '48,50', '/Content/img/makarna/spagettinapoliten.jpg', 1, 6),
	(40, 'Penne Arabiata', 'acılı domates sos,siyah zeytin ve parmesan peyniri ile servis edilir.', '48,50', '/Content/img/makarna/arrabiata.jpg', 1, 6),
	(41, 'Klasik Mantı', 'yoğurt,domates sos ve pesto sos ile servis edilir.', '47,50', '/Content/img/makarna/manti.jpg', 1, 6),
	(42, 'Çıtır Mantı', 'yoğurt,domates sos ve pesto sos ile servis edilir.', '49,50', '/Content/img/makarna/citirmanti.jpg', 1, 6),
	(43, 'Tavuklu Noodle', 'mevsim sebzeleri,soya sos,susam yağı ile servis edilir.', '49,50', '/Content/img/makarna/tavuknoodle.jpg', 1, 10),
	(44, 'Sebzeli Noodle', 'çin eriştesi,mevsim sebzeleri,soya sos,tatlı ekşi sos ve susam yağı ile servis edilir.', '48,50', '/Content/img/makarna/sebzelinoodle.jpg', 1, 10),
	(45, 'Dana Etli Noodle', 'çin eriştesi,mevsim sebzeleri,soya sos,tatlı ekşi sos ve susam yağı ile servis edilir.', '62,50', '/Content/img/makarna/etlinoodle.jpg', 1, 10),
	(46, 'Coca Cola', 'Normal / Zero ', '19,50', NULL, 1, 7),
	(47, 'Fanta', NULL, '19,50', NULL, 1, 7),
	(48, 'Sprite', NULL, '19,50', NULL, 1, 7),
	(49, 'İce Tea', 'Şeftali / Limon / Mango', '19,50', NULL, 1, 7),
	(50, 'Cappy', 'Vişne / Şeftali / Karışık', '19,50', NULL, 1, 7),
	(51, 'Su', NULL, '8', NULL, 1, 7),
	(52, 'Soda', NULL, '14,50', NULL, 1, 7),
	(54, 'Meyveli Soda', 'Elma / Limon', '17,50', NULL, 1, 7),
	(55, 'Churchill', NULL, '19,50', NULL, 1, 7),
	(56, 'Ev Yapımı Ayran', NULL, '18', NULL, 1, 7),
	(57, 'Redbull', NULL, '34', NULL, 1, 7),
	(58, 'Bardak Çay', NULL, '8', NULL, 1, 11),
	(59, 'Fincan Çay', NULL, '12', NULL, 1, 11),
	(61, 'Ihlamur', NULL, '30', NULL, 1, 11),
	(62, 'Ada Çayı', NULL, '29,50', NULL, 1, 11),
	(63, 'Papatya Çayı', NULL, '29,50', NULL, 1, 11),
	(64, 'Nane - Limon', NULL, '29,50', NULL, 1, 11),
	(65, 'Sıcak Çikolata', NULL, '29,50', NULL, 1, 11),
	(66, 'Çilekli Sıcak Çikolata', NULL, '29,50', NULL, 1, 11),
	(67, 'Türk Kahvesi', NULL, '18,50', NULL, 1, 11),
	(68, 'Dibek Kahvesi', NULL, '20', NULL, 1, 11),
	(69, 'Sahlep', NULL, '29,50', NULL, 1, 11),
	(70, 'Red Line', 'limon,elma,nar,elmalı soda', '37', NULL, 1, 9),
	(71, 'Blue Siesta', 'limon,sprite,mavi portakal', '37', NULL, 1, 9),
	(72, 'Sex On The Beach', 'nar,agave,portakal,limon', '39', NULL, 1, 9);

-- tablo yapısı dökülüyor qrmenu.user
CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Yetki` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- qrmenu.user: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `user` (`UserID`, `Username`, `Pass`, `Yetki`) VALUES
	(1, 'admin', '123', 'admin');

-- tablo yapısı dökülüyor qrmenu.yumurta
CREATE TABLE IF NOT EXISTS `yumurta` (
  `UrunID` int(11) NOT NULL AUTO_INCREMENT,
  `UrunBaslik` varchar(1000) DEFAULT NULL,
  `UrunAciklama` varchar(1000) DEFAULT NULL,
  `UrunFiyat` varchar(50) DEFAULT NULL,
  `UrunResim` varchar(50) DEFAULT NULL,
  `InStock` varchar(50) NOT NULL,
  PRIMARY KEY (`UrunID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- qrmenu.yumurta: ~12 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `yumurta` (`UrunID`, `UrunBaslik`, `UrunAciklama`, `UrunFiyat`, `UrunResim`, `InStock`) VALUES
	(1, 'Sade Omlet', '', '20', '', '1'),
	(2, 'Kaşarlı Sucuklu Sebzeli Mantarlı', '', '35', '', '1'),
	(3, 'Sade Menemen', NULL, '25', '', '0'),
	(4, 'Kaşarlı Menemen', '', '33', '', '1'),
	(5, 'Kavurmalı Menemen', '', '35', '', '1'),
	(6, 'Karışık Menemen', '', '35', '', '1'),
	(7, 'Sahanda Tereyağlı Yumurta', '', '20', '', '1'),
	(8, 'Sahanda Sucuklu Yumurta', '', '33', '', '1'),
	(9, 'Sahanda Peynirli Yumurta', '', '22', '', '1'),
	(10, 'Sahanda Kavurmalı Yumurta', '', '35', '', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
