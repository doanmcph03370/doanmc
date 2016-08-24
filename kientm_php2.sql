-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 08:08 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kientm_php2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` mediumtext NOT NULL,
  `cate_desc` mediumtext NOT NULL,
  `delete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_desc`, `delete`) VALUES
(43, 'Apple', '<p>Äiá»‡n Thoáº¡i H&atilde;ng Apple</p>\r\n', 0),
(44, 'Samsung', '<p>Äiá»‡n Thoáº¡i H&atilde;ng SamSung</p>\r\n', 0),
(45, 'LG', '<p>Äiá»‡n Thoáº¡i LG</p>\r\n', 0),
(46, 'Blackberry', '<p>Äiá»‡n Thoáº¡i H&atilde;ng Blackberry</p>\r\n', 0),
(47, 'Sony', '<p>Äiá»‡n Thoáº¡i H&atilde;ng Sony</p>\r\n', 0),
(48, 'Xiaomi', '<p>Äiá»‡n Thoáº¡i H&atilde;ng Xiaomi</p>\r\n', 0),
(49, 'Oppo', '<p>Äiá»‡n Thoáº¡i H&atilde;ng Oppo</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `oddt_id` int(10) NOT NULL,
  `oddt_orderid` int(10) NOT NULL,
  `oddt_productid` int(10) NOT NULL,
  `oddt_quantity` int(10) NOT NULL,
  `oddt_productname` mediumtext NOT NULL,
  `oddt_productprice` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`oddt_id`, `oddt_orderid`, `oddt_productid`, `oddt_quantity`, `oddt_productname`, `oddt_productprice`) VALUES
(4, 2, 31, 1, 'iPhone 6 128Gb quá»‘c táº¿ ', 10990000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orde_id` int(10) NOT NULL,
  `orde_name` varchar(50) NOT NULL,
  `orde_time` varchar(50) NOT NULL,
  `orde_status` int(10) NOT NULL DEFAULT '0',
  `orde_phone` int(20) NOT NULL,
  `orde_email` varchar(100) NOT NULL,
  `orde_address` varchar(500) NOT NULL,
  `orde_price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orde_id`, `orde_name`, `orde_time`, `orde_status`, `orde_phone`, `orde_email`, `orde_address`, `orde_price`) VALUES
(2, 'Tran Minh Kien', '', 1, 987053202, 'kientm@gmail.com', 'Ha Noi', 24989000);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perm_id` int(10) NOT NULL,
  `perm_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_catename` varchar(50) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_image` varchar(200) NOT NULL,
  `prod_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_catename`, `prod_price`, `prod_image`, `prod_description`) VALUES
(30, 'Iphone 6S Quá»‘c táº¿ 64GB', 'Apple', 13999000, 'SmartShop_Images_iphone6-silver-2014-600x7001.png', '<p>&nbsp;</p>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>Cat4 150/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>1 sim (nano-sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>138.1 x 67 x 7.1 mm (5.44 x 2.64 x 0.28 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>&nbsp; -</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>LED-backlit IPS LCD, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>4.7 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>750 x 1334 pixels (~326 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>iOS 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2 nh&acirc;n 2&nbsp;GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GX6450</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>64GB, Ram&nbsp; 2GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>12 MP, 4608 x 2592 pixels, tá»± Ä‘á»™ng láº¥y n&eacute;t, LED flash (dual tone)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>1080p@60fps, 720p@240fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>5 MP, 1080p@30fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Po 1810 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>250 giá» (3G)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>14 giá» (3G)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(31, 'iPhone 6 128Gb quá»‘c táº¿ ', 'Apple', 10990000, 'SmartShop_Images_iphone6-gray-2014-600x700.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>Cat4 150/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>1 sim (nano-sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>138.1 x 67 x 7.1 mm (5.44 x 2.64 x 0.28 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>&nbsp; -</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>LED-backlit IPS LCD, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>4.7 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>750 x 1334 pixels (~326 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>iOS 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2 nh&acirc;n 2&nbsp;GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GX6450</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>64GB, Ram&nbsp; 2GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>12 MP, 4608 x 2592 pixels, tá»± Ä‘á»™ng láº¥y n&eacute;t, LED flash (dual tone)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>1080p@60fps, 720p@240fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>5 MP, 1080p@30fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Po 1810 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>250 giá» (3G)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>14 giá» (3G)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(33, 'iPhone 5 32Gb quá»‘c táº¿', 'Apple', 3599900, 'SmartShop_Images_ip5-Black.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>LTE Cat3 100/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>1 sim (nano-sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>123.8 x 58.6 x 7.6 mm (4.87 x 2.31 x 0.30 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>112 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>LED-backlit IPS LCD, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>4.0 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>640 x 1136 pixels (~326 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>iOS 6, c&oacute; thá»ƒ l&ecirc;n IOSS 8.3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>2 nh&acirc;n 1.3 GHz Swift</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR SGX 543MP3</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>32GB, Ram 1GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>8 MP, 3264 x 2448 pixels, tá»± Ä‘á»™ng láº¥y n&eacute;t, LED flash (dual tone)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>1080p@60fps, 720p@240fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>1.2 MP, 720p@30fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Po 1440 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>225 giá» (3G)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>8 giá» (3G)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(35, 'Oppo F1', 'Oppo', 5999000, 'SmartShop_Images_f1-plus.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>1 SIM (Nano-SIM)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>143.5 x 71 x 7.3 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>134g</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>Cáº£m á»©ng Ä‘iá»‡n dung IPS LCD, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>5.5&nbsp;inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0">\r\n				<tbody>\r\n					<tr>\r\n						<td>720 x 1280 pixels</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>Android OS, v5.1 (Lollipop)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm MSM8939v2 Snapdragon 616</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Octa-core 1.7 GHz Cortex-A53</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 405</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>16 GB, 3 GB RAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>microSD, l&ecirc;n Ä‘áº¿n 128 GB (sá»­ dá»¥ng khe SIM 2)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>Kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.0, A2DP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB v2.0, USB Host</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>13 MP, f/2.2, tá»± Ä‘á»™ng láº¥y n&eacute;t nháº­n diá»‡n theo giai Ä‘oáº¡n, LED flash</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>8 MP, f/2.0, cáº£m biáº¿n k&iacute;ch thÆ°á»›c 1/4&quot; , 1080p</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Po 2500 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>&nbsp;58 tiáº¿ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(36, 'Sony Xperia Z4 Au (SOV31) ', 'Sony', 6990000, 'SmartShop_Images_sony-z3-black.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>LTE Cat6 300/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>1 sim (nano-sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>146 x 72 x 6.9 mm (5.75 x 2.83 x 0.27 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>144 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>Cáº£m á»©ng Ä‘iá»‡n dung IPS LCD, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>5.2 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>FullHD 1080 x 1920 pixels (~424 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>Android OS, v5.0 (Lollipop), sáº½ Ä‘Æ°á»£c cáº­p nháº­t l&ecirc;n Android v5.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm MSM8994 Snapdragon 810</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>4 nh&acirc;n&nbsp;1.5 GHz Cortex-A53 &amp; 4 nh&acirc;n 2 GHz Cortex-A57</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 430</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>32GB, Ram 3GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>Há»— trá»£ 128GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.0, A2DP, apt-X</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB v2.0 (MHL 3 TV-out), USB Host</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>20.7 MP, 5248 Ñ… 3936 pixels, tá»± Ä‘á»™ng láº¥y n&eacute;t, LED flash</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>C&oacute;, 2160p@30fps, 1080p@60fps, 720p@120fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>C&oacute;, 5.1MP, 1080p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Ion 2930 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>580 giá» (2G) / 590 giá» (3G)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>12 giá» (2G) / 17 giá» (3G)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(37, 'Sony Xperia Z5 Compact QT', 'Sony', 6900000, 'SmartShop_Images_z5-compact-coral.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>LTE Cat6 300/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>Nano-sim (1 sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>127 x 65 x 8.9 mm (5.0 x 2.56 x 0.35 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>138 g&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>Cáº£m á»©ng Ä‘iá»‡n dung IPS LCD, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>4.6 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>HD 720&nbsp;x 1280 pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>Android OS, v5.1.1 (Lollipop)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Qualcomm MSM8994 Snapdragon 810</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Quad-core 1.5 GHz Cortex-A53 &amp; Quad-core 2 GHz Cortex-A57</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Adreno 430</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>32GB, Ram 2GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>Há»— trá»£ 200GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.1, A2DP, apt-X</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB v2.0 (MHL 3 TV-out), USB Host</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>23 MP, 5520 Ñ… 4140 pixels, tá»± Ä‘á»™ng láº¥y n&eacute;t, LED flash</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>C&oacute;, 2160p@30fps, 1080p@60fps, 720p@120fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>C&oacute;, 5.1 MP, 1080p@30fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Ion 2700 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(40, 'Samsung Galaxy S6 CÅ© 32GB', 'Samsung', 5999000, 'SmartShop_Images_galaxy-s6_gallery_front_white.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>LTE Cat6 300/50 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>1 sim (nano-sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>143.4 x 70.5 x 6.8 mm (5.65 x 2.78 x 0.27 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>138 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>Cáº£m á»©ng Ä‘iá»‡n dung Super AMOLED, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>5.1 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>QuadHD 1440 x 2560 pixels (~577 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>Android OS, v5.0 (Lollipop), sáº½ Ä‘Æ°á»£c cáº­p nháº­t l&ecirc;n Android v5.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Exynos 7420</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>4 nh&acirc;n 1.5 GHz Cortex-A53 v&agrave; 4 nh&acirc;n 2.1 GHz Cortex-A57</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Mali-T760MP8</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>32GB, Ram 3GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.1, A2DP, LE, apt-X</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB v2.0, USB Host</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>16 MP, 2988 x 5312 pixels, chá»‘ng rung quang há»c, tá»± Ä‘á»™ng láº¥y n&eacute;t, LED flash</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>C&oacute;, 2160p@30fps, 1080p@60fps, 720p@120fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>5 MP, 1440p@30fps, HDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Ion 2550 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>17 giá» (3G)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(41, 'Samsung Galaxy S6 Edge Plus 32GB', 'Apple', 9990000, 'SmartShop_Images_s6-edge.png', '<table border="1" cellpadding="0" cellspacing="0" dir="ltr">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">TH&Ocirc;NG TIN CHUNG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 3G</td>\r\n			<td>HSPA 42.2/5.76 Mbps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Máº¡ng 4G</td>\r\n			<td>LTE Cat 6/ LTE Cat 9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sim</td>\r\n			<td>2&nbsp;sim (nano-sim)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">K&Iacute;CH THÆ¯á»šC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>154.4 x 75.8 x 6.9 mm (6.08 x 2.98 x 0.27 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trá»ng lÆ°á»£ng</td>\r\n			<td>153 g (5.40 oz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">M&Agrave;N H&Igrave;NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loáº¡i</td>\r\n			<td>Super AMOLED, 16 triá»‡u m&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thÆ°á»›c</td>\r\n			<td>5.7 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Äá»™ ph&acirc;n giáº£i</td>\r\n			<td>1440 x 2560 pixels (~518&nbsp;ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Ná»€N Táº¢NG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Há»‡ Ä‘iá»u h&agrave;nh</td>\r\n			<td>Android OS, v5.1.1 (Lollipop)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Exynos 7420</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>4 nh&acirc;n 1.5 GHz Cortex-A53 &amp; 4 nh&acirc;n&nbsp;2.1 GHz Cortex-A57</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Mali-T760MP8</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Bá»˜ NHá»š</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bá»™ nhá»› trong</td>\r\n			<td>32, 4 GB RAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khe cáº¯m tháº» nhá»›</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">Cá»”NG GIAO TIáº¾P</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>c&oacute;, A-GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>v4.1, A2DP,&nbsp;GLONASS, Beidou</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>microUSB v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">CHá»¤P áº¢NH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>16 MP, 5312 x 2988 pixels, LED flash, chá»‘ng&nbsp;rung quang há»c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quay phim</td>\r\n			<td>2160p@30fps, 1080p@60fps, chá»‘ng&nbsp;rung quang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phá»¥</td>\r\n			<td>5 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">&Acirc;M THANH</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiá»ƒu chu&ocirc;ng</td>\r\n			<td>B&aacute;o rung, nháº¡c chu&ocirc;ng MP3, WAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jack audio 3.5mm</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="2" rowspan="1">PIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pin chuáº©n</td>\r\n			<td>Li-Ion 3000mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chá»</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ä&agrave;m thoáº¡i</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `permission` int(10) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `permission`) VALUES
(1, 'admin', '8c46376257f9c54687d7c92dfc02c478fb6827fd', 1),
(2, 'mod', 'mod', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`oddt_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orde_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `oddt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orde_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perm_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
