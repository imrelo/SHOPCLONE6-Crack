-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: us-cdbr-east-06.cleardb.net
-- Generation Time: Sep 06, 2023 at 08:24 AM
-- Server version: 5.6.50-log
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heroku_acf8653244ee895`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` text COLLATE utf8_unicode_ci,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'LIVE',
  `time_live` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `createdate` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `purchase_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `description`, `image`, `createdate`, `price`, `purchase_key`) VALUES
(1, 'Template 3', 'Giao diện bán sản phẩm #3', 'https://i.imgur.com/929iYyH.png', '2022-04-07 10:02:41', 200000, '2d6258e6ed2be514409e817afc5150a2'),
(2, 'Tạo giao dịch ảo', 'Tự động tạo giao dịch nạp tiền, mua sản phẩm ảo để tăng uy tín cho shop', 'https://i.imgur.com/6kNRjfN.png', '2022-04-07 20:52:41', 500000, '186dfa6ca91a70c53fa24de2c29f9aa0'),
(3, 'Template 4', 'Giao diện bán sản phẩm #4', 'https://i.imgur.com/bXmRtMM.png', '2022-04-09 15:42:41', 200000, '5010c67487f2796f16671711b62c5325'),
(4, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng xếp hàng nạp tiền cho thành viên', 'https://i.imgur.com/ZRIRAaB.png', '2022-04-12 02:42:41', 200000, '6388cfde954147e4f8374da5051d8ac0'),
(24, 'Nạp Tiền Server 2', 'Nạp tiền bằng nội dung + id', 'https://i.imgur.com/CydpsWl.png', '2022-04-19 01:40:11', 500000, 'f5a3c8dab0cf8934bf6ab0b022bb0cb8'),
(211, 'Số Lượng Đã Bán Ảo', 'Điều chỉnh số lượng đã bán ảo (số lượng ảo + số lượng thật)', 'https://i.imgur.com/3tOOFDC.png', '2022-04-26 01:40:11', 50000, ''),
(11412, 'API 1', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, ''),
(11413, 'API 4', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '7119c2a27c2c12e9a5acbd8cf333a461'),
(11422, 'API 5', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-09-14 00:00:00', 1000000, 'fe6e0b2baf0603ba23ed3bed022d488f'),
(11427, 'API 6', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '4c3d37485a670820e85648c99856ddd8'),
(11469, 'Email Campaigns', 'Gửi Email đến toàn bộ khách hàng của bạn', 'https://i.imgur.com/iQWAKTY.jpg', '2022-11-02 00:00:00', 300000, '24f3b0bd694d3b7378ed437240b4b8f4'),
(11487, 'API 7', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-03 00:00:00', 1000000, '9b5611d14c08b0ebc88727fbc02c457a'),
(11521, 'Bán Like, Follow MXH', 'Tích hợp bán like, follow mạng xã hội vào mã nguồn SHOPCLONE6', 'https://i.imgur.com/gS5RRnm.png', '2022-11-11 00:00:00', 1000000, '2ddb766333c46942c780647d8633d918'),
(11535, 'API 8', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-11 00:00:00', 1000000, '8215dea66c3db9aea81ed98024349dee'),
(11542, 'API 9', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-23 00:00:00', 1000000, '22ebffae2bafd65002b5d3549d3f7493'),
(11621, 'Tích hợp thuê OTP qua API 1', 'Chức năng thuê SIM tích hợp qua API 1', 'https://i.imgur.com/wQlNAcH.png', '2022-12-13 00:00:00', 1000000, ''),
(11634, 'Tích hợp thuê OTP qua API 2', 'Chức năng thuê SIM tích hợp qua API 2', 'https://i.imgur.com/wQlNAcH.png', '2022-12-28 00:00:00', 2000000, ''),
(11635, 'API 10', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-12-19 00:00:00', 1000000, '33ebd5b442bc29bf4299bd40074fadd8'),
(11645, 'API 11', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-01-02 00:00:00', 1000000, 'd6da75c4d0296e66de3b362df7f8bfc2'),
(11656, 'Tích hợp thuê OTP qua API 3', 'Chức năng thuê SIM tích hợp qua API 3', 'https://i.imgur.com/wQlNAcH.png', '2023-01-10 00:00:00', 1000000, ''),
(11657, 'API 12', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-06 00:00:00', 1000000, ''),
(11678, 'Tích hợp thuê OTP qua API 4', 'Chức năng thuê SIM tích hợp qua API 4', 'https://i.imgur.com/wQlNAcH.png', '2023-02-06 00:00:00', 1000000, ''),
(11698, 'Tích hợp thuê OTP qua API 5', 'Chức năng thuê SIM tích hợp qua API 5', 'https://i.imgur.com/wQlNAcH.png', '2023-05-09 00:00:00', 1000000, ''),
(11724, 'API 13', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-08 00:00:00', 1000000, ''),
(11735, 'API 14', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-05-10 00:00:00', 1000000, '4aec5cd0f780a91e0e0b6b10d0f314b2'),
(14232, 'Bán Fanpage/Group', 'Addon bán Fanpage/Group thủ công', 'https://i.imgur.com/jmIjBfI.png', '2022-05-07 01:59:00', 1000000, '5836af7e71714dd22dee1954ab6faeef'),
(112246, 'BOT Telegram', 'Addon thông báo về Telegram', 'https://i.imgur.com/9Ci2geb.png', '2022-06-26 16:00:00', 300000, '720a997b5eb20f69ad65cae08b83c19d');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `accountName` text COLLATE utf8_unicode_ci,
  `accountNumber` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `short_name`, `image`, `accountName`, `accountNumber`) VALUES
(2, 'ACB', 'assets/storage/images/bank/LT3.png', 'NGUYEN TAN THANH', '1017898590'),
(3, 'MBBank', 'assets/storage/images/bank/7AY.png', 'NGUYEN TAN THANH', '1017898590'),
(4, 'VPBank', 'assets/storage/images/bank/7JD.png', 'NGUYEN TAN THANH', '1017898590'),
(5, 'Techcombank', 'assets/storage/images/bank/YKL.png', 'NGUYEN TAN THANH', '1017898590'),
(6, 'TPBank', 'assets/storage/images/bank/V92.png', 'NGUYEN TAN THANH', '1017898590'),
(7, 'THESIEURE', 'assets/storage/images/bank/850.png', 'NGUYEN TAN THANH', '0947838128'),
(10, 'Vietcombank', 'assets/storage/images/bank/0R6.png', 'NGUYEN TAN THANH', '1017898590'),
(11, 'Zalo Pay', 'assets/storage/images/bank/ADK.png', 'NGUYEN TAN THANH', '0947838128'),
(12, 'KBank', 'assets/storage/images/bank/D5W.png', 'Kun Tha Ni A', '2323232323');

-- --------------------------------------------------------

--
-- Table structure for table `banned_ips`
--

CREATE TABLE `banned_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `display` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `content`, `display`, `image`, `view`, `create_date`) VALUES
(1, 'Kiếm tiền tiếp thị liên kết', 'kiem-tien-tiep-thi-lien-ket', 'PHA+S2nhur9tIHRp4buBbiB0aeG6v3AgdGjhu4sgbGkmZWNpcmM7biBr4bq/dDwvcD4NCg==', 1, 'assets/storage/images/blogSR5LMH.png', 3, '2022-10-17 16:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `serial` text COLLATE utf8_unicode_ci,
  `pin` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `stt` int(1) NOT NULL DEFAULT '0',
  `id_api` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `stt`, `id_api`, `id_connect_api`, `name`, `image`, `status`) VALUES
(10, 0, '0', 0, 'CLONE FACEBOOK', 'assets/storage/images/categoryNDX7.png', 1),
(11, 2, '0', 0, 'CLONE TIKTOK', 'assets/storage/images/categoryY2GP.png', 1),
(12, 3, '0', 0, 'Tài khoản Blox Fruit', 'assets/storage/images/category6N1.png', 1),
(13, 0, '0', 0, 'VIA FACEBOOK', 'assets/storage/images/categoryGWS.png', 1),
(14, 0, '0', 0, 'Tài khoản Mail', 'assets/storage/images/categoryW1VC.png', 1),
(15, 3, '0', 0, 'XEM THÊM', 'assets/storage/images/categoryPAV.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_service`
--

CREATE TABLE `category_service` (
  `id` int(11) NOT NULL,
  `name` blob,
  `display` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `connect_api`
--

CREATE TABLE `connect_api` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'CMSNT',
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4,
  `password` text CHARACTER SET utf8mb4,
  `token` text COLLATE utf8_unicode_ci,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `auto_rename_api` int(11) NOT NULL DEFAULT '1',
  `ck_connect_api` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `used` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `min` int(11) NOT NULL DEFAULT '1000',
  `max` int(11) NOT NULL DEFAULT '10000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_used`
--

CREATE TABLE `coupon_used` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_invoice`
--

CREATE TABLE `crypto_invoice` (
  `id` int(11) NOT NULL,
  `trans_id` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `request_id` text COLLATE utf8_unicode_ci,
  `amount` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci,
  `url_payment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `symbol_left` text COLLATE utf8_unicode_ci,
  `symbol_right` text COLLATE utf8_unicode_ci,
  `seperator` text COLLATE utf8_unicode_ci,
  `display` int(11) NOT NULL DEFAULT '1',
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `decimal_currency` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `rate`, `symbol_left`, `symbol_right`, `seperator`, `display`, `default_currency`, `decimal_currency`) VALUES
(3, 'Đồng', 'VND', 1, '', 'đ', 'dot', 1, 1, 0),
(4, 'Dollar', 'USD', 23558, '$', '', 'dot', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `stt`, `user_id`, `category_id`, `name`, `slug`, `image`, `content`, `price`, `status`, `create_date`, `update_date`) VALUES
(1, 0, 11, 1, 'Chống bị back Via (Mua với giá 0đ)', NULL, 'assets/storage/images/documentG03Z.png', '<ul>\r\n	<li>Bước 1: Sau khi nhận Via về login v&agrave; check via, Via nước n&agrave;o d&ugrave;ng Ip nước đ&oacute; để tr&aacute;nh Cp (Via việt n&ecirc;n d&ugrave;ng Dcom), c&oacute; vấn đề nhắn bộ phận hỗ trợ (Trực tuyến g&oacute;c dưới c&ugrave;ng b&ecirc;n tr&aacute;i) để được hỗ trợ bảo h&agrave;nh</li>\r\n	<li>Bước 2: Ng&acirc;m 2-3 giờ, V&agrave;o Fb.com/hacked đổi pass, x&oacute;a mail cũ v&agrave; add mail mới</li>\r\n	<li>Bước 3: Bước quan trọng nhất để k bị back lại via m&agrave; đa số ae bỏ qua:&nbsp;<br />\r\n	- Login mail cũ &rarr; đổi pass<br />\r\n	- X&oacute;a số điện thoại&nbsp;<br />\r\n	- X&oacute;a hết tất cả c&aacute;c phi&ecirc;n đăng nhập trước đ&oacute; (Link ph&iacute;a dưới)<br />\r\n	(<a href=\"https://www.facebook.com/settings?tab=security\">https://www.facebook.com/settings?tab=security</a>)</li>\r\n	<li>Done (Ch&uacute;c a/e th&agrave;nh c&ocirc;ng)</li>\r\n</ul>\r\n', 1000, 1, '2022-03-22 20:29:36', '2022-03-25 09:31:24'),
(2, 2, 11, 3, 'Tăng Lượng Đơn Trên TiKi', NULL, 'assets/storage/images/documentG03Z.png', '<ul>\r\n	<li>Anh em n&agrave;o c&oacute; sẵn shop ngon tr&ecirc;n TiKi m&agrave; cần đẩy số lượng đơn h&agrave;ng tăng l&ecirc;n th&igrave; call trực tiếp v&agrave;o số : XXX cho m&igrave;nh</li>\r\n	<li>Sản phẩm tối từ 0 - 300k . B&ecirc;n m&igrave;nh c&oacute; thể đẩy được từ 200 - 1000 đơn 1 ng&agrave;y</li>\r\n	<li>Ho&agrave;n to&agrave;n free. Anh em kh&ocirc;ng mất ph&iacute; g&igrave; cả chỉ mất c&ocirc;ng đ&oacute;ng h&agrave;ng th&ocirc;i :D</li>\r\n</ul>\r\n', 10000, 1, '2022-03-22 20:29:36', '2022-03-26 19:37:53'),
(3, 1, 11, 1, 'Unlock ổ khóa 956', 'unlock-o-khoa-956', NULL, '<h3><strong>C&aacute;ch 1:</strong></h3>\r\n\r\n<p>B1: Tải 2 tiện &iacute;ch ( D&ugrave;ng google chorme )</p>\r\n\r\n<p>- User -Agent switcher for chorme:&nbsp;<a href=\"https://chrome.google.com/webstore/detail/user-agent-switcher-and-m/bhchdcejhohfmigjafbampogmaanbfkg\">https://chrome.google.com/.../bhchdcejhohfmigjafbampogmaa...</a></p>\r\n\r\n<p>- Hola Free:&nbsp;<a href=\"https://chrome.google.com/webstore/detail/hola-free-vpn-proxy-unblo/gkojfkhlekighikafcpjkiklfbnlmeio\">https://chrome.google.com/.../bhchdcejhohfmigjafbampogmaa...</a></p>\r\n\r\n<p>B2: -Mở facebook ( Sử dụng thiết bị hay đăng nhập t&agrave;i khoản của bạn)</p>\r\n\r\n<p>-Đổi tr&igrave;nh duyệt bằng User-Agent switcher for chorme</p>\r\n\r\n<p>-Fake Ip sang c&aacute;c nước kh&aacute;c: india, Thailand...</p>\r\n\r\n<p>B3: Nhấn F12 Đổi sang điện thoại</p>\r\n\r\n<p>B4: Nhấn F5 Tải lại trang. Đ&acirc;y l&agrave; bước quyết định c&oacute; mở được hay kh&ocirc;ng. Bạn n&agrave;o chưa mở được n&ecirc;n l&agrave;m lại v&agrave; fake sang c&aacute;c tr&igrave;nh duyệt kh&aacute;c.</p>\r\n\r\n<p>B5 Hiện n&uacute;t: BẮT ĐẦU ( ĐẾN BƯỚC N&Agrave;Y M&Agrave; HIỆN BẮT ĐẦU L&Agrave; Đ&Atilde; TH&Agrave;NH C&Ocirc;NG) C&Aacute;C BẠN CHỈ CẦN ĐỒI MẬT KHẨU ĐĂNG NHẬP V&Agrave;O L&Agrave; XONG.</p>\r\n\r\n<p>Nếu ko đc th&igrave; sử dụng tut:</p>\r\n\r\n<p>Thần ch&uacute;</p>\r\n\r\n<p>Hi Facebook, my account has been locked although it did not violate any community guidelines, Facebook review and open it for me.</p>\r\n\r\n<p>Thanks Facebook.</p>\r\n\r\n<p>V&agrave;o link</p>\r\n\r\n<p>Link1</p>\r\n\r\n<p>https://m.facebook.com/help/contact/357439354283890</p>\r\n\r\n<p>Link 2</p>\r\n\r\n<p>https://m.facebook.com/help/contact/179049432194862</p>\r\n\r\n<p>Link 3:</p>\r\n\r\n<p>https://www.facebook.com/help/contact/487444654660670</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>C&aacute;ch 2:</strong></h3>\r\n\r\n<p>Đăng nhập bằng điện thoại mạng 3G sẽ nhảy ra n&uacute;t&nbsp;<strong>Bắt đầu</strong></p>\r\n', 1000, 1, '2022-03-24 19:47:04', '2022-03-24 19:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document_categories`
--

INSERT INTO `document_categories` (`id`, `stt`, `name`, `image`, `status`) VALUES
(1, 0, 'TUT Facebook', 'assets/storage/images/categoryDocumentTYX.png', 1),
(3, 1, 'TUT Tiki', 'assets/storage/images/categoryDocument2HZ.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `domain` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `admin_note` text COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sotientruoc` int(11) NOT NULL DEFAULT '0',
  `sotienthaydoi` int(11) NOT NULL DEFAULT '0',
  `sotiensau` int(11) NOT NULL DEFAULT '0',
  `thoigian` datetime NOT NULL,
  `noidung` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_campaigns`
--

CREATE TABLE `email_campaigns` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `subject` text COLLATE utf8_unicode_ci,
  `cc` text COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  `content` longblob,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_sending`
--

CREATE TABLE `email_sending` (
  `id` int(11) NOT NULL,
  `camp_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

CREATE TABLE `giftbox` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `tid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fake` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_white`
--

CREATE TABLE `ip_white` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8_unicode_ci,
  `lang_default` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `icon`, `lang_default`, `status`) VALUES
(8, 'Vietnamese', 'assets/storage/flags/flag_Vietnamese.png', 1, 1),
(16, 'English', 'assets/storage/flags/flag_English.png', 0, 1),
(18, 'Thailand', 'assets/storage/flags/flag_Thailand.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `action` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(1, 661, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-31 12:58:32', 'Tài khoản bị khoá lý do (Đăng nhập thất bại nhiều lần)'),
(2, 661, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-31 12:59:21', 'Đăng nhập thành công vào hệ thống'),
(3, 661, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-31 21:02:46', '[Warning] Đăng nhập thành công vào hệ thống Admin'),
(4, 661, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-05-31 21:03:43', 'Kích hoạt thành công Addon (Bán Like, Follow MXH)');

-- --------------------------------------------------------

--
-- Table structure for table `log_ref`
--

CREATE TABLE `log_ref` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `reason` text COLLATE utf8_unicode_ci,
  `sotientruoc` float NOT NULL DEFAULT '0',
  `sotienthaydoi` float NOT NULL DEFAULT '0',
  `sotienhientai` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `createdate` datetime NOT NULL,
  `timeago` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender`, `user_id`, `title`, `content`, `createdate`, `timeago`, `status`) VALUES
(1, 'Staff', 11, 'Gửi thông báo đến thành viên Admin', '<p><span style=\"font-size:18px\">BQT xin tặng bạn 1 m&atilde; gi&aacute;m gi&aacute; <strong>10%</strong> khi mua sản phẩm tr&ecirc;n hệ thống.</span></p>\r\n\r\n<p><span style=\"font-size:24px\">M&atilde; giảm gi&aacute; của bạn l&agrave;: <strong>SALE1812</strong></span></p>\r\n\r\n<p><em><span style=\"font-size:24px\">Cảm ơn bạn đ&atilde; tin d&ugrave;ng hệ thống của ch&uacute;ng t&ocirc;i !&nbsp;<img alt=\"heart\" src=\"http://localhost/CMSNT.CO/SHOPCLONE6/public/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></span></em></p>\r\n', '2021-12-18 20:53:13', '1639835593', 1),
(2, 'Staff', 11, 'Testtt', '<p>aadad</p>\r\n', '2022-01-09 14:06:59', '1641733619', 0),
(3, 'Staff', 11, 'aaa', '<p>adad</p>\r\n', '2022-01-09 14:07:53', '1641733673', 1),
(4, 'Staff', 11, 'adad', '<p>adad</p>\r\n', '2022-01-09 14:27:02', '1641734822', 0),
(5, 'Staff', 11, 'adad', '<p>adad</p>\r\n', '2022-01-09 14:28:05', '1641734885', 0),
(6, 'Staff', 11, 'adad', '<p>adad</p>\r\n', '2022-01-09 14:28:10', '1641734890', 0),
(7, 'Staff', 11, 'ad', '<p>ad</p>\r\n', '2022-01-09 14:28:31', '1641734911', 0),
(8, 'Staff', 11, 'adad', '<p>ad</p>\r\n', '2022-01-09 14:32:33', '1641735153', 0),
(9, 'Staff', 11, 'adad', '<p>adad</p>\r\n', '2022-01-09 14:32:42', '1641735162', 0),
(10, 'Staff', 11, 'adad', '<p>adad</p>\r\n', '2022-01-09 14:32:49', '1641735169', 0),
(11, 'Staff', 11, 'ad', '<p>ad</p>\r\n', '2022-01-09 14:33:37', '1641735217', 0),
(12, 'Staff', 11, 'ada', '<p>dad</p>\r\n', '2022-01-09 14:33:40', '1641735220', 1),
(13, 'Staff', 11, 'adad', '<p>adad</p>\r\n', '2022-01-09 14:34:42', '1641735282', 0),
(14, 'Staff', 11, 'aad', '<p>adad</p>\r\n', '2022-01-09 14:35:20', '1641735320', 0),
(15, 'Staff', 11, 'sfs', '<p>fsf</p>\r\n', '2022-01-09 14:35:33', '1641735333', 1),
(16, 'Staff', 11, 'ad', '<p>adad</p>\r\n', '2022-01-09 14:35:46', '1641735346', 0),
(17, 'Staff', 11, 'ad', '<p>add</p>\r\n', '2022-01-09 14:35:57', '1641735357', 0),
(18, 'Staff', 11, 'adda', '<p>da</p>\r\n', '2022-01-09 14:36:16', '1641735376', 1),
(19, 'Staff', 11, 'adad', '<p>aad</p>\r\n', '2022-01-09 14:36:20', '1641735380', 0),
(20, 'Staff', 11, 'adad', '', '2022-01-09 14:36:42', '1641735402', 0),
(21, 'Staff', 11, 'd', '<p>ada</p>\r\n', '2022-01-09 14:36:53', '1641735413', 0),
(22, 'Staff', 11, 'ada', '<p>dad</p>\r\n', '2022-01-09 14:37:14', '1641735434', 1),
(23, 'Staff', 11, 'asfasf', '<p>afaffs</p>\r\n', '2022-01-09 14:38:24', '1641735504', 0),
(24, 'Staff', 11, 'asfasf', '<p>afasf</p>\r\n', '2022-01-09 14:38:41', '1641735521', 0),
(25, 'Staff', 11, 'ad', '<p>adad</p>\r\n', '2022-01-09 14:39:54', '1641735594', 0),
(26, 'Staff', 11, 'ad', '<p>adad</p>\r\n', '2022-01-09 14:43:10', '1641735790', 0),
(27, 'Staff', 11, 'adad', '<p>ad</p>\r\n', '2022-01-09 14:44:07', '1641735847', 0),
(28, 'Staff', 11, 'dafdaf', '<p>fafaf</p>\r\n', '2022-01-09 14:45:00', '1641735900', 0),
(29, 'Staff', 11, 'adad', '<p>ad</p>\r\n', '2022-01-09 14:49:53', '1641736193', 0),
(30, 'Staff', 11, 'ad', '<p>ada</p>\r\n', '2022-01-09 14:50:31', '1641736231', 1),
(31, 'Staff', 11, 'ada', '<p>adad</p>\r\n', '2022-01-09 14:51:04', '1641736264', 0),
(32, 'Staff', 11, 'ada', '<p>dad</p>\r\n', '2022-01-09 14:52:09', '1641736329', 1),
(33, 'Staff', 11, 'Testtt', '<p>Testtt</p>\r\n', '2022-01-15 08:19:28', '1642231168', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nowpayments`
--

CREATE TABLE `nowpayments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_amount` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `price_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_amount` float NOT NULL DEFAULT '0',
  `actually_paid` float NOT NULL DEFAULT '0',
  `pay_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `outcome_amount` float NOT NULL DEFAULT '0',
  `outcome_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nowpayments`
--

INSERT INTO `nowpayments` (`id`, `user_id`, `payment_id`, `invoice_id`, `payment_status`, `pay_address`, `price_amount`, `price`, `price_currency`, `pay_amount`, `actually_paid`, `pay_currency`, `order_id`, `order_description`, `purchase_id`, `created_at`, `updated_at`, `outcome_amount`, `outcome_currency`) VALUES
(3, 11, '5416835770', '5416835770', 'finished', 'TUnJWmoqqunjEACFHWTAZQiRi9UmQHUi6X', 10, 0, 'usd', 9.99004, 0, 'usdttrc20', 'KNVS1658563445', 'Hoá đơn nạp tiền #KNVS1658563445', '4635402957', '2022-07-23 10:04:05', '2022-07-23 10:49:06', 9.09004, 'usdttrc20'),
(4, 11, '5117995360', '5416835770', 'finished', 'TUnJWmoqqunjEACFHWTAZQiRi9UmQHUi6X', 10, 0, 'usd', 9.99004, 0, 'usdttrc20', 'WKZD1658565573', 'Hoá đơn nạp tiền #WKZD1658565573', '4635402957', '2022-07-23 10:39:33', '2022-07-23 10:48:04', 9.09004, 'usdttrc20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` blob,
  `api_trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `document_id` int(11) NOT NULL DEFAULT '0',
  `store_fanpage_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '1',
  `fake` int(11) NOT NULL DEFAULT '0',
  `refund` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_autofb`
--

CREATE TABLE `order_autofb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_rate_autofb` int(11) NOT NULL DEFAULT '0',
  `insertId` int(11) DEFAULT '0',
  `payment` int(11) NOT NULL DEFAULT '0',
  `payment_api` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `subscribers` int(11) NOT NULL DEFAULT '0',
  `count_success` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_service`
--

CREATE TABLE `order_service` (
  `id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `id_api` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` text COLLATE utf8_unicode_ci,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `remains` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `task_note` text COLLATE utf8_unicode_ci,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Pending',
  `refund` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_history`
--

CREATE TABLE `otp_history` (
  `id` int(11) NOT NULL,
  `transid` text COLLATE utf8_unicode_ci,
  `id_service_otp` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `number` text COLLATE utf8_unicode_ci,
  `id_order_api` text COLLATE utf8_unicode_ci,
  `app` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `sms` text COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_flutterwave`
--

CREATE TABLE `payment_flutterwave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tx_ref` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `currency` text COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_paypal`
--

CREATE TABLE `payment_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_pm`
--

CREATE TABLE `payment_pm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_date` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `flag` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `checklive` int(11) NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `preview` text COLLATE utf8_unicode_ci,
  `time_delete_account` int(11) NOT NULL DEFAULT '0',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `maximum` int(11) NOT NULL DEFAULT '10000',
  `id_api` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `api_stock` float NOT NULL DEFAULT '0',
  `name_api` blob,
  `update_api` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `filter_time_checklive` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `stt`, `user_id`, `category_id`, `name`, `flag`, `price`, `cost`, `checklive`, `content`, `status`, `preview`, `time_delete_account`, `minimum`, `maximum`, `id_api`, `id_connect_api`, `api_stock`, `name_api`, `update_api`, `sold`, `filter_time_checklive`) VALUES
(120, 0, '661', 10, 'Clone Việt - Die Ads + CP về Email ✔️', 'vn', 1000, 0, 1, 'Live Ads(Ram Dom Nước)\r\nFull Định Dạng\r\nBao Tích XMDT\r\nBạn Bè : 50-5000\r\nNgày Lập : 2008-2022', 1, 'assets/storage/images/previewW9ME.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 27, 1),
(121, 0, '661', 12, 'BloxFruit Max Level + Godhuman +CDK + +90% Soul Guitar + awking df + item Tỉ lệ cao có DF cam + Tỉ Lệ MOCHI V2', 'vn', 18000, 0, 0, '70% gương + 70% mũ admin', 1, 'assets/storage/images/preview6N3W.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 0),
(122, 0, '661', 12, 'BloxFruit Max Level + Godhuman + awking df + item + 90% soul guitar+ Tỉ lệ có df cam + Tỉ Lệ MOCHI V2', 'vn', 10000, 0, 0, ' \r\n<ul>\r\n<li>70% gương ✔️</li>\r\n<li>70% mũ admin ✔️</li>\r\n</ul>', 1, 'assets/storage/images/preview1B84.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 0),
(123, 0, '661', 13, 'SC1 - VIA VIỆT SIÊU CỔ GIỚI TÍNH NỮ 2000-5000 BẠN BÈ (2008-2014)', 'vn', 100000, 0, 1, 'Full 2fa+ fullmail +birthday. CP 956 MỞ BẰNG MAIL', 1, 'assets/storage/images/previewUM61.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(124, 0, '661', 13, 'SC2 - VIA VIỆT SIÊU CỔ GIỚI TÍNH NAM 2000-5000 BẠN BÈ (2008-2014)', 'vn', 100000, 0, 1, 'Full 2fa+ fullmail +birthday. CP 956 MỞ BẰNG MAIL', 1, 'assets/storage/images/previewIOVS.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(125, 0, '661', 13, 'SC3 - VIA VIỆT SIÊU CỔ GIỚI TÍNH NỮ 1000-3000 BẠN BÈ (2008-2014)', 'vn', 90000, 0, 1, 'Full 2fa+ fullmail +birthday. CP 956 MỞ BẰNG MAIL', 1, 'assets/storage/images/preview24LT.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(126, 0, '661', 13, 'SC4 - VIA VIỆT SIÊU CỔ GIỚI TÍNH NAM 1000-3000 BẠN BÈ (2008-2014)', 'vn', 80000, 0, 1, 'Full 2fa+ fullmail +birthday. CP 956 MỞ BẰNG MAIL', 1, 'assets/storage/images/previewS2QN.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(127, 0, '661', 10, 'Clone việt 2FA kháng 282 mail ảo zin ads', 'vn', 4000, 0, 1, 'Live Ads(Ram Dom Nước)\r\nFull Định Dạng\r\nBao Tích XMDT\r\nBạn Bè : 50-5000\r\nNgày Lập : 2008-2022', 1, 'assets/storage/images/previewBODE.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(128, 0, '661', 10, 'C1 - CLONE VIỆT 0-100 BẠN BÈ HÀNG REG NĂM 2020-2021', 'vn', 10000, 0, 1, 'Live Ads(Ram Dom Nước)\r\nFull Định Dạng\r\nBao Tích XMDT\r\nBạn Bè : 50-5000\r\nNgày Lập : 2008-2022', 1, 'assets/storage/images/previewRDYK.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(129, 0, '661', 11, 'CLONE TIKTOK - Hàng Ngâm Tháng 5/2022 Không Hỗ Trợ Đặt Đơn', 'vn', 6000, 0, 0, '✔️ Định Dạng : ID|Pass (Không Bảo Hành) mua vừa đủ dùng - test trước khi mua sll hàng không bảo hành mã', 1, 'assets/storage/images/preview306A.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(130, 0, '661', 14, 'Hotmail sống 6-12 tháng', '', 355, 0, 0, 'Nên dùng Imap, không login bằng trình duyệt', 1, '', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(131, 0, '661', 13, 'Via Việt - Hẹn hò', 'vn', 150000, 0, 1, '', 1, 'assets/storage/images/previewCWA0.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(132, 0, '661', 15, 'Tài khoản ChatGPT - OpenAI - Giá rẻ', '', 5000, 0, 0, '<ul>\r\n    <li>Tài khoản ChatGPT đã xác minh 5$</li>\r\n    <li>Đổi được mật khẩu, email</li>\r\n    <li>Acc tạo bằng email vip</li>\r\n    <li>Shop Không bán tài khoản dùng chung</li>\r\n    <li>Không cần fake IP ,VPN</li>\r\n</ul>', 1, 'assets/storage/images/preview8XNM.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 1),
(133, 0, '661', 15, 'Discord Very SDT +Mail Live +Token Live +Avatar', '', 3500, 0, 0, 'Định dạng tài khoản : Mail|pass|2fa|username|mail|passmail|token\r\n', 1, 'assets/storage/images/previewXYKS.png', 0, 1, 10000, '0', 0, 0, NULL, 0, 0, 0),
(134, 0, '661', 0, 'Acc clone Việt', '', 4500, 4500, 0, 'Là tài khoản clone đã qua 282', 1, NULL, 0, 1, 10000, '24', 16, 6203, 0x41636320636c6f6e65205669e1bb8774, 1683739209, 0, 1),
(135, 0, '661', 0, 'Acc FB clone USA (282)', '', 5000, 5000, 0, 'Là tài khoản clone đã qua 282', 1, NULL, 0, 1, 10000, '25', 16, 0, 0x41636320464220636c6f6e6520555341202832383229, 1683739209, 0, 1),
(136, 0, '661', 0, 'Acc FB Việt New 2020-2022 (CP mail)', '', 22000, 22000, 0, 'Là tài khoản việt nam đã đủ ngày checkpoint mail', 1, NULL, 0, 1, 10000, '29', 16, 394, 0x416363204642205669e1bb8774204e657720323032302d3230323220284350206d61696c29, 1683739209, 0, 1),
(137, 0, '661', 0, 'Acc Host Indonesia (Cp Mail)', '', 25000, 25000, 0, 'Tài khoản đã change full info + 2fa', 1, NULL, 0, 1, 10000, '34', 16, 1684, 0x41636320486f737420496e646f6e6573696120284370204d61696c29, 1683739209, 0, 1),
(138, 0, '661', 0, 'Acc FB qua ads (good spam)', '', 13000, 13000, 0, 'via change full info + 2fa đã qua ads', 1, NULL, 0, 1, 10000, '35', 16, 15859, 0x41636320464220717561206164732028676f6f64207370616d29, 1683739209, 0, 1),
(139, 0, '661', 10, 'Acc India', '', 16000, 16000, 0, 'Via change full info + 2fa', 1, NULL, 0, 1, 10000, '39', 16, 684, 0x41636320496e646961, 1683739209, 0, 1),
(140, 0, '661', 0, 'Acc Host Random Country', '', 17000, 17000, 0, 'Là acc random nước random bạn bè', 1, NULL, 0, 1, 10000, '40', 16, 3359, 0x41636320486f73742052616e646f6d20436f756e747279, 1683739209, 0, 1),
(141, 0, '661', 0, 'Acc FB Hongkong,Đài loan,HÀN  (HK,Taiwan )', '', 200000, 200000, 0, 'LÀ ACC RANDOM HK,ĐÀI LOAN,HÀN QUỐC', 1, NULL, 0, 1, 10000, '48', 16, 151, 0x41636320464220486f6e676b6f6e672cc490c3a069206c6f616e2c48c3804e202028484b2c54616977616e2029, 1683739209, 0, 1),
(142, 0, '661', 0, 'Acc Philipines Cổ 50+fr', '', 18000, 18000, 0, 'Là via philippin cổ đã lọc bạn bè trên 50+', 1, NULL, 0, 1, 10000, '49', 16, 1523, 0x416363205068696c6970696e65732043e1bb952035302b6672, 1683739209, 0, 1),
(143, 0, '661', 0, 'VIA 902 RANDOM NƯỚC', '', 170000, 170000, 0, 'LÀ VIA TÍCH 902 RANDOM NƯỚC', 1, NULL, 0, 1, 10000, '122', 16, 170, 0x564941203930322052414e444f4d204ec6afe1bb9a43, 1683739209, 0, 1),
(145, 0, '661', 0, 'VIA SCAN NEW 2023 RANDOM COUNTRY', '', 8500, 8500, 0, 'LÀ VIA SCAN NEW NĂM 2023 HÀNG RANDOM BẠN BÈ,RANDOM NƯỚC( MỚI CHANGE CHƯA CP MAIL)', 1, NULL, 0, 1, 10000, '128', 16, 10737, 0x564941205343414e204e455720323032332052414e444f4d20434f554e545259, 1683739209, 0, 1),
(146, 0, '661', 0, 'VIA CỘNG HOÀ SÉC(CZ)', '', 30000, 30000, 0, 'Via random info', 1, NULL, 0, 1, 10000, '129', 16, 54, 0x5649412043e1bb984e4720484fc3802053c3894328435a29, 1683739209, 0, 1),
(147, 0, '661', 0, 'VIA US Siêu Cổ 30+FR', '', 70000, 70000, 0, 'LÀ VIA MAIL MAIL US HÀNG SIÊU CỔ (K BAO LIVE ADS) CHƯA QUA DAME ĐỤNG', 1, NULL, 0, 1, 10000, '134', 16, 0, 0x564941205553205369c3aa752043e1bb952033302b4652, 1683739209, 0, 1),
(148, 0, '661', 0, 'Via Eu Italy (Ít bạn)', '', 20000, 20000, 0, 'Via Eu Italy (Ít bạn)', 1, NULL, 0, 1, 10000, '163', 16, 291, 0x566961204575204974616c792028c38d742062e1baa16e29, 1683739209, 0, 1),
(149, 0, '661', 0, 'VIA PHINLIPPIN LIMIT 250$', '', 115000, 115000, 0, 'LÀ VIA PHILIPPIN KÍCH 250 $ (TUT) HÀNG CHƯA XMDT', 1, NULL, 0, 1, 10000, '174', 16, 406, 0x564941205048494e4c495050494e204c494d49542032353024, 1683739209, 0, 1),
(150, 0, '661', 0, 'VIA SIÊU CỔ ÍT BẠN BÈ', '', 9900, 9900, 0, 'là via random nước random,năm,random bạn bè', 1, NULL, 0, 1, 10000, '175', 16, 1981, 0x564941205349c38a552043e1bb9420c38d542042e1baa04e2042c388, 1683739209, 0, 1),
(151, 0, '661', 0, 'Acc Host Philipin Cực Khỏe', '', 25000, 25000, 0, 'random fr và năm cp mail', 1, NULL, 0, 1, 10000, '184', 16, 1810, 0x41636320486f7374205068696c6970696e2043e1bbb163204b68e1bb8f65, 1683739209, 0, 1),
(153, 0, '661', 0, 'VIA XMDT PHILIPIN Cổ (úp Phôi)', '', 50000, 50000, 0, 'Hàng Cp mail đã xmdt năm 2010-2021 úp phôi bao nhận tkqc cho anh em', 1, NULL, 0, 1, 10000, '202', 16, 0, 0x56494120584d4454205048494c4950494e2043e1bb952028c3ba70205068c3b46929, 1683739209, 0, 1),
(154, 0, '661', 0, 'Clone Random Nước (282 bao đổi tiền tệ)', '', 3888, 3888, 0, 'Clone qua 282 random nước', 1, NULL, 0, 1, 10000, '203', 16, 1435, 0x436c6f6e652052616e646f6d204ec6b0e1bb9b6320283238322062616f20c491e1bb9569207469e1bb816e2074e1bb8729, 1683739209, 0, 1),
(155, 0, '661', 0, 'VIA EU Đức ít bạn', '', 14500, 14500, 0, 'Hàng đã ngâm trên tháng ít fr 0-30', 1, NULL, 0, 1, 10000, '204', 16, 17188, 0x56494120455520c490e1bba96320c3ad742062e1baa16e, 1683739209, 0, 1),
(156, 0, '661', 0, 'Via Limit 250 (Tiền+QG Thái)', '', 95000, 95000, 0, 'Hàng Cp mail limit 250$', 1, NULL, 0, 1, 10000, '205', 16, 2394, 0x566961204c696d69742032353020285469e1bb816e2b5147205468c3a16929, 1683739209, 0, 1),
(157, 0, '661', 0, 'Via Host Thailand 30+ Friend', '', 27000, 27000, 0, 'Hàng 30+Friend Cp Mail', 1, NULL, 0, 1, 10000, '217', 16, 180, 0x56696120486f737420546861696c616e642033302b20467269656e64, 1683739209, 0, 1),
(158, 0, '661', 0, 'BM 1 Kháng', '', 100000, 100000, 0, 'Là bm 1 kháng', 1, NULL, 0, 1, 10000, '224', 16, 20, 0x424d2031204b68c3a16e67, 1683739209, 0, 1),
(160, 0, '661', 0, 'Acc USA (0-30fr) siêu cổ', '', 40000, 40000, 0, 'hàng chưa dính ip việt năm siêu cổ ngâm trên 30 ngày', 1, NULL, 0, 1, 10000, '233', 16, 12226, 0x416363205553412028302d3330667229207369c3aa752063e1bb95, 1683739209, 0, 1),
(161, 0, '661', 0, 'Acc Philipin Host (0-30fr)', '', 15000, 15000, 0, 'Hàng ngâm trên 30 ngày 0-30 bạn bè', 1, NULL, 0, 1, 10000, '235', 16, 1595, 0x416363205068696c6970696e20486f73742028302d3330667229, 1683739209, 0, 1),
(162, 0, '661', 0, 'Acc Thailand (0-30fr) Cổ', '', 15000, 15000, 0, 'Bao chuẩn tiền tệ thái ngâm trên 30 ngày (ko bảo hành phải chuẩn friend)', 1, NULL, 0, 1, 10000, '236', 16, 2505, 0x41636320546861696c616e642028302d33306672292043e1bb95, 1683739209, 0, 1),
(163, 0, '661', 0, 'Acc Indonesia (0-30fr) Cổ', '', 15000, 15000, 0, 'hàng ít fr 0-30 ngâm trên 30 ngày', 1, NULL, 0, 1, 10000, '238', 16, 1968, 0x41636320496e646f6e657369612028302d33306672292043e1bb95, 1683739209, 0, 1),
(164, 0, '661', 0, 'XMDT Random Nước', '', 33000, 33000, 0, 'Hàng Cp mail đã xmdt năm random năm', 1, NULL, 0, 1, 10000, '241', 16, 533, 0x584d44542052616e646f6d204ec6b0e1bb9b63, 1683739209, 0, 1),
(166, 0, '661', 0, 'Acc XMDT (Tiền+Quốc gia Thái)', '', 50000, 50000, 0, 'acc ngoại random xmdt đổi sẵn tiền và quốc gia thái', 1, NULL, 0, 1, 10000, '249', 16, 338, 0x41636320584d445420285469e1bb816e2b5175e1bb916320676961205468c3a16929, 1683739209, 0, 1),
(167, 0, '661', 0, 'VIA XMDT PHILIPIN', '', 42000, 42000, 0, 'phi cp mail xmdt random năm friend', 1, NULL, 0, 1, 10000, '250', 16, 475, 0x56494120584d4454205048494c4950494e, 1683739209, 0, 1),
(168, 0, '661', 0, 'Via EU Poland (its friend)', '', 17000, 17000, 0, 'Hàng ngâm trên 30 ngày 0-30 bạn bè', 1, NULL, 0, 1, 10000, '251', 16, 10054, 0x56696120455520506f6c616e64202869747320667269656e6429, 1683739209, 0, 1),
(169, 0, '661', 0, 'Via Eu France (0-30fr)', '', 16000, 16000, 0, 'Hàng ngâm trên 30 ngày 0-30 bạn bè', 1, NULL, 0, 1, 10000, '252', 16, 7839, 0x566961204575204672616e63652028302d3330667229, 1683739209, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `amount`, `discount`, `status`, `create_date`, `update_date`) VALUES
(1, 200000000, 10, 1, '2022-03-30 10:55:02', '2022-04-02 11:18:17'),
(2, 100000000, 5, 1, '2022-04-02 11:32:41', '2022-04-02 11:32:41'),
(3, 300000000, 15, 1, '2022-04-02 11:33:18', '2022-04-02 11:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `status`) VALUES
(3, 'Nạp tiền nhưng tiền chưa cộng vào tài khoản?', '<p>Bạn vui l&ograve;ng li&ecirc;n hệ Zalo Admin <strong>0947838128</strong> để được xử l&yacute;</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rate_autofb`
--

CREATE TABLE `rate_autofb` (
  `id` int(11) NOT NULL,
  `type_api` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_api` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loaiseeding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `name_loaiseeding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate_autofb`
--

INSERT INTO `rate_autofb` (`id`, `type_api`, `name_api`, `loaiseeding`, `price`, `name_loaiseeding`, `note`) VALUES
(1, 'buffsub_sale', 'Facebook buff sub sale (sv1)', '1', 20, 'Tăng Sub sale - SV1 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(2, 'buffsub_sale', 'Facebook buff sub sale (sv2)', '2', 30, 'Tăng Sub sale - SV2 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(3, 'buffsub_sale', 'Facebook buff sub sale (sv3)', '3', 10, 'Tăng Sub sale - SV3 (done trong ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(4, 'buffsub_sale', 'Facebook buff sub sale (sv4)', '4', 35, 'Tăng Sub sale - SV4 (tốc độ nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(7, 'buffsub_speed', 'Facebook buff sub speed (sv1)', '1', 50, 'Tăng Sub - SV1 (MAX 50K, bấm tay)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(8, 'buffsub_speed', 'Facebook buff sub speed (sv2)', '2', 50, 'Tăng Sub - SV2 (Lên khá nhanh, Max 1000k, Bảo hành 1 tháng) tốt nhất nên dùng', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(9, 'buffsub_speed', 'Facebook buff sub speed (sv3)', '3', 30, 'Tăng Sub - SV3 (Chạy được cho page pro5, 1k sub / ngày, max 250k sub clone, Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(10, 'buffsub_speed', 'Facebook buff sub speed (sv4)', '4', 30, 'Tăng Sub - SV4 (Lên ổn định, Max 80k, Bảo hành 1 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(11, 'buffsub_speed', 'Facebook buff sub speed (sv5)', '5', 40, 'Tăng Sub - SV5 (Lên nhanh, Max 50k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(12, 'buffsub_speed', 'Facebook buff sub speed (sv6)', '6', 30, 'Tăng Sub - SV6 (Max 15k Hoàn thành trong 1-24H)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(13, 'buffsub_speed', 'Facebook buff sub speed (sv7)', '7', 30, 'Tăng Sub - SV7 (Max 20k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(14, 'buffsub_speed', 'Facebook buff sub speed (sv8)', '8', 60, 'Tăng Sub - SV8 (Lên rất nhanh, Max 600k, Bảo hành 6 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(15, 'buffsub_speed', 'Facebook buff sub speed (sv9)', '9', 20, 'Tăng Sub - SV9 (Max 1000k , bảo hành 15 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(16, 'buffsub_slow', 'Facebook buff sub chậm (basic)', '1', 40, 'Tăng Sub đề xuất - Basic (BH 3 tháng, max 400k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(17, 'buffsub_slow', 'Facebook buff sub chậm (v1)', '3', 30, 'Tăng Sub đề xuất - V1 (BH 1 tháng, max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(18, 'buffsub_slow', 'Facebook buff sub v2 (sv2)', '2', 60, 'Tăng Sub đề xuất - V3 (xịn nhất, nick đang hoạt động 96,69%, max 60k) (sub kết bạn, ẩn kết bạn hoặc qua thẳng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(19, 'buffsub_slow', 'Facebook buff sub chậm (v2)', '4', 30, 'Tăng Sub đề xuất - V2 (Chất lượng cao, ổn định, nên dùng max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(20, 'bufflikefanpagesale', '', '1', 20, 'Tăng Like Fanpage - SV1 (Lên chậm khoảng 1-2k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(21, 'bufflikefanpagesale', NULL, '2', 28, 'Tăng Like Fanpage - SV2 (Lên ổn định khoảng 5-10k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(22, 'bufflikefanpagesale', NULL, '3', 31, 'Tăng Like Fanpage - SV3 (tốc độ rất nhanh (1 ngày mua max 20k, chạy done mai mua tiếp)) (BH 7 ngày )', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(23, 'bufflikefanpage', NULL, '1', 57, 'Tăng Like Fanpage - BASIC (like bấm tay, ít tụt, có 1 vài page ko thể tăng like) (Nên dùng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(24, 'bufflikefanpage', NULL, '2', 28, 'Tăng Like Fanpage - PRO (Like Via, max 200k tốc độ chậm Không bảo hành', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(25, 'bufflikefanpage', NULL, '3', 47, 'Tăng Like Fanpage - SV3 (MAX 40k BH 3 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(26, 'bufflikefanpage', NULL, '4', 46, 'Tăng Like Fanpage - SV4 (MAX 20k BH 1 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(27, 'bufflikefanpage', NULL, '5', 60, 'Tăng Like Fanpage - SV5 (MAX 50K BH 1 tháng) (Like chất lượng tốt) (Like lên nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(28, 'bufflikefanpage', NULL, '6', 67, 'Tăng Like Fanpage - SV6 (Like page Global (Like Tây Lên Nhanh ít tụt, nên sử dụng Bảo hành 45 ngày))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(29, 'bufflikefanpage', NULL, '7', 25, 'Tăng Like Fanpage - SV7 (Like Việt Lên nhanh (max 100k))(BH 60 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(30, 'bufflikefanpage', NULL, '8', 22, 'Tăng Like Fanpage - SV8 (Like việt, rẻ, nhanh (max 100k)) (BH 30 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(32, 'buffsubfanpage', NULL, '2', 42, 'Tăng Sub Fanpage - SV2 (page pro5 chạy sau 12-24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(33, 'buffsubfanpage', NULL, '1', 27, 'Tăng Sub Fanpage - SV1 (page thường, hoàn thành các đơn < 30k trong 24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(34, 'bufflikecommentsharelike', NULL, 'like', 58, 'Tăng Like Bài Viết (Like người việt thật) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(35, 'bufflikecommentsharelike', NULL, 'like_v2', 10, 'Tăng Like Bài Viết V2 (Like việt clone, tốc độ chậm, có tụt like) (max 250k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(36, 'bufflikecommentsharelike', NULL, 'like_v3', 20, 'Tăng Like Bài Viết V3 (Like việt, rẻ, nhanh !) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(37, 'bufflikecommentsharelike', NULL, 'like_v4', 24, 'Tăng Like Bài Viết V4 (Like Việt Lên nhanh (max 80k) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(38, 'bufflikecommentsharelike', NULL, 'like_v5', 27, 'Tăng Like Bài Viết V5 (Like Việt Lên nhanh(1 ngày chạy 15-25k like) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(39, 'bufflikecommentsharelike', NULL, 'like_v6', 16, 'Tăng Like Bài Viết V6 (Like clone nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(40, 'bufflikecommentsharelike', NULL, 'like_v7', 34, 'Tăng Like Bài Viết V7 (Like Việt Lên Max Nhanh,luôn oder được)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(41, 'bufflikecommentshareshare', NULL, 'share', 1000, 'Tăng Share Bài Viết SV1 (share người thật,share việt)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(42, 'bufflikecommentshareshare', NULL, 'share_sv2', 250, 'Tăng Share Bài Viết SV2 (share giá rẻ (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(43, 'bufflikecommentshareshare', NULL, 'share_sv3', 30, 'Tăng Share Bài Viết SV3 (share ảo (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(44, 'bufflikecommentshareshare', NULL, 'share_sv4', 410, 'Tăng Share Bài Viết SV4', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(45, 'bufflikecommentshareshare', NULL, 'share_sv5', 24, 'Tăng Share Bài Viết SV5 (share ảo rẻ)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(46, 'buffviewstory', NULL, '1', 18, 'Tăng View Story SV1', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `send_email`
--

CREATE TABLE `send_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server2_autobank`
--

CREATE TABLE `server2_autobank` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` float NOT NULL DEFAULT '0',
  `received` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` blob,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `id_api` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `dripfeed` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refill` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` blob,
  `source_api` varchar(255) COLLATE utf8_unicode_ci DEFAULT '5gsmm.com',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_order`
--

CREATE TABLE `service_order` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci,
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 xử lý, 1 hoàn tất, 2 huỷ',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_otp`
--

CREATE TABLE `service_otp` (
  `id` int(11) NOT NULL,
  `server` text COLLATE utf8_unicode_ci,
  `id_api` text COLLATE utf8_unicode_ci,
  `name_api` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `price_api` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'logo', 'assets/img/cmsnt_light.png'),
(2, 'title', 'CMSNT.CO'),
(3, 'thongbao', '<p>Thay đổi th&ocirc;ng b&aacute;o hệ thống&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Th&ocirc;ng b&aacute;o to&agrave;n hệ thống</strong></p>\r\n'),
(4, 'logo_light', 'assets/storage/images/logo_light_Q87.png'),
(5, 'logo_dark', 'assets/storage/images/logo_dark.png'),
(6, 'image', 'assets/storage/images/image.png'),
(7, 'favicon', 'assets/storage/images/favicon.png'),
(8, 'description', 'Trang web demo sản phẩm SHOPCLONE6 của CMSNT.CO'),
(9, 'keywords', 'shopclone6,shopclone, cmsnt, code ban clone fb, code ban via fb'),
(10, 'author', 'NTThanh'),
(11, 'status', '1'),
(12, 'status_bank', '1'),
(13, 'type_bank', 'Techcombank'),
(14, 'stk_bank', ''),
(15, 'name_bank', 'NGUYEN TAN THANH'),
(16, 'mk_bank', ''),
(17, 'status_momo', '1'),
(18, 'token_momo', ''),
(19, 'sdt_momo', ''),
(20, 'name_momo', ''),
(21, 'timeUpdate', ''),
(27, 'token_bank', ''),
(28, 'javascript', ''),
(31, 'email_smtp', ''),
(32, 'pass_email_smtp', ''),
(34, 'bg_login', 'assets/storage/images/bg_login60K.png'),
(35, 'bg_register', 'assets/storage/images/bg_registerUBV.png'),
(36, 'time_cron_24h', '0'),
(37, 'status_demo', '0'),
(39, 'license_key', 'dad43120d0c5292fdb59f2ccb36e4c52'),
(40, 'email', 'admin@cmsnt.co'),
(41, 'hotline', ''),
(42, 'qr_momo', ''),
(43, 'recharge_notice', '<p>Thay đổi ghi ch&uacute; nạp tiền&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp tiền</strong></p>\r\n'),
(44, 'contact_page', ''),
(45, 'gif_loading', 'assets/storage/images/gif_loadingZOA.png'),
(46, 'check_time_cron', '1657128041'),
(47, 'check_time_cron_bank', '1657128041'),
(48, 'min_rating', '500000'),
(49, 'orders_notice', '<p>Thay đổi th&ocirc;ng b&aacute;o lịch sử đơn h&agrave;ng trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; lịch sử đơn h&agrave;ng</strong></p>\r\n'),
(50, 'type_showProduct', 'BOX4'),
(51, 'clientId_paypal', ''),
(52, 'status_paypal', '1'),
(53, 'status_thesieure', '1'),
(54, 'token_thesieure', ''),
(55, 'check_time_cron_thesieure', '1645792692'),
(56, 'api_napthe', ''),
(57, 'status_napthe', '1'),
(58, 'notice_napthe', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp thẻ</strong></p>\r\n'),
(59, 'ck_napthe', '20'),
(60, 'chinh_sach_bao_mat', '<p>Thay đổi ch&iacute;nh s&aacute;ch bảo mật&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ch&iacute;nh s&aacute;ch bảo mật</strong></p>\r\n'),
(61, 'dieu_khoan_su_dung', '<p>Thay đổi điều khoản sử dụng&nbsp;trong <strong>C&agrave;i Đặt -&gt; Điều khoản sử dụng</strong></p>\r\n'),
(62, 'status_update', '1'),
(63, 'status_captcha', '0'),
(64, 'session_login', '2592000'),
(65, 'gif_giftbox', 'assets/storage/images/gif_giftboxWUL.png'),
(66, 'display_sold', '1'),
(67, 'status_zalopay', '1'),
(68, 'token_zalopay', ''),
(69, 'check_time_cron_zalopay', '0'),
(70, 'type_password', 'bcrypt'),
(71, 'theme_color', '#12214E'),
(72, 'min_recharge', '10000'),
(73, 'time_check_live', '1800'),
(74, 'currency', 'VND'),
(75, 'usd_rate', '23000'),
(76, 'clientSecret_paypal', ''),
(77, 'rate_paypal', '23000'),
(78, 'paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>\r\n'),
(79, 'gif_loader', 'assets/storage/images/gif_loader8DN.png'),
(80, 'invoice_expiration', '86400'),
(81, 'mouse_click_effect', '0'),
(82, 'notice_spin', '<p>Thay đổi th&ocirc;ng b&aacute;o hệ thống&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Th&ocirc;ng b&aacute;o v&ograve;ng quay</strong></p>\r\n'),
(83, 'status_spin', '1'),
(84, 'condition_spin', '1000000'),
(85, 'status_perfectmoney', '1'),
(86, 'perfectmoney_notice', '<p>Thay đổi ghi ch&uacute; nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>\r\n'),
(87, 'PAYEE_ACCOUNT_PM', ''),
(88, 'perfectmoney_pass_pm', ''),
(89, 'rate_pm', '23000'),
(90, 'PAYMENT_UNITS_PM', 'USD'),
(91, 'status_crypto', '1'),
(92, 'notice_crypto', '<ul>\r\n	<li>Vui l&ograve;ng nhập đ&uacute;ng số coin cần chuyển.</li>\r\n	<li>Hệ thống sẽ tự động cộng tiền v&agrave;o t&agrave;i khoản của bạn trong v&agrave;i ph&uacute;t.</li>\r\n	<li>Li&ecirc;n hệ Admin nếu trong qu&aacute; tr&igrave;nh nạp s&atilde;y ra lỗi.</li>\r\n</ul>\r\n'),
(93, 'status_giao_dich_gan_day', '1'),
(94, 'notice_binchecker', '<p>Ph&iacute; check 300k 1 thẻ</p>\r\n'),
(95, 'rate_binchecker', '500'),
(96, 'check_time_cron_card', '1646033795'),
(97, 'check_time_cron_checklivefb', '1657360009'),
(98, 'partner_id_card', ''),
(99, 'partner_key_card', ''),
(100, 'javascript_header', ''),
(101, 'sign_view_product', '0'),
(102, 'display_box_shop', '0'),
(103, 'type_notice_order', 'Email'),
(104, 'font_family', 'font-family: \'Roboto\', sans-serif;'),
(105, 'time_delete_orders', '2584920'),
(106, 'check_time_cron_cron', '1683192548'),
(107, 'display_show_product', '1'),
(108, 'display_rating', '0'),
(109, 'stt_giaodichao', '1'),
(110, 'theme_color2', '#013B7B'),
(111, 'stt_topnap', '0'),
(112, 'sv1_autobank', '1'),
(113, 'sv2_autobank', '1'),
(114, 'prefix_autobank', 'localhost'),
(115, 'status_buff_like_sub', '0'),
(116, 'token_autofb', '.'),
(117, 'virtual_sold_quantity', '0'),
(118, 'domain_autofb', 'https://cmslike.com/'),
(119, 'status_store_fanpage', '0'),
(120, 'notice_store_fanpage', ''),
(121, 'status_security', '0'),
(122, 'status_active_member', '0'),
(123, 'type_notification', 'telegram'),
(124, 'token_telegram', ''),
(125, 'chat_id_telegram', ''),
(126, 'buy_notification', '[{domain}] {username} vừa mua {amount} {product_name} với giá {price} vào lúc {time} thông qua {method}.'),
(127, 'naptien_notification', '[{domain}] {username} vừa nạp {amount} vào {method} thực nhận {price} vào lúc {time}.'),
(128, 'register_notification', '[{domain}] {username} vừa thực hiện đăng ký tài khoản vào lúc {time} bằng thiết bị {device}.'),
(129, 'max_time_buy', '10'),
(130, 'time_delete_clone_die', '0'),
(131, 'check_time_cron1', '1657128041'),
(132, 'bg_card', 'resources/images/bg-buy.png'),
(133, 'display_blog', '1'),
(134, 'display_question', '1'),
(135, 'display_contact', '1'),
(136, 'display_api', '1'),
(137, 'display_tool', '1'),
(138, 'status_connect_api', '1'),
(139, 'check_time_cron2', '1668439873'),
(140, 'ck_connect_api', '10'),
(141, 'status_ref', '0'),
(142, 'ck_ref', '5'),
(143, 'notice_ref', '<p>Những t&agrave;i khoản được hệ thống x&aacute;c định l&agrave; t&agrave;i khoản sao ch&eacute;p của c&aacute;c t&agrave;i khoản kh&aacute;c sẽ kh&ocirc;ng được d&ugrave;ng để t&iacute;nh hoa hồng.</p>\r\n\r\n<p>Hoa hồng chỉ được t&iacute;nh khi người d&ugrave;ng mua t&agrave;i nguy&ecirc;n tr&ecirc;n web.</p>\r\n\r\n<p>Việc x&aacute;c định xem ai l&agrave; người giới thiệu của một người d&ugrave;ng phụ thuộc ho&agrave;n to&agrave;n v&agrave;o link giới thiệu. Nếu một người d&ugrave;ng nhấp v&agrave;o nhiều link ref kh&aacute;c nhau th&igrave; chỉ c&oacute; link ref cuối c&ugrave;ng họ nhấp v&agrave;o trước khi tạo t&agrave;i khoản l&agrave; c&oacute; hiệu lực.</p>\r\n'),
(144, 'listbank_ref', 'Vietcombank\r\nTechcomebank\r\nVí MOMO\r\nVí Zalo Pay\r\nVietinbank\r\nSacombank'),
(145, 'minrut_ref', '100000'),
(146, 'display_preview', '1'),
(147, 'display_country', '0'),
(148, 'apikey_nowpayments', ''),
(149, 'status_nowpayments', '0'),
(150, 'status_is_change_password', '0'),
(151, 'auto_rename_api', '1'),
(152, 'ipn_nowpayments', ''),
(153, 'min_crypto', '10'),
(154, 'rate_crypto', '23000'),
(155, 'check_time_cron_crypto', '1658566581'),
(157, 'check_time_cron3', '1658772103'),
(158, 'menu_title', 'LOCALHOST'),
(159, 'default_api_product_status', '1'),
(160, 'min_gd_ao', '1'),
(161, 'max_gd_ao', '30'),
(162, 'speed_buy_gd_ao', '10'),
(165, 'amount_nap_ao', '10000\n20000\n40000\n50000\n60000\n70000\n100000\n200000\n300000\n500000\n400000\n40000\n15000\n25000\n35000\n45000\n55000\n65000\n45000\n1000000\n1500000\n2000000'),
(166, 'speed_nap_gd_ao', '10'),
(167, 'position_gd_gan_day', '2'),
(168, 'is_account_buy_fake', '0'),
(169, 'hide_product_empty', '0'),
(170, 'email_nowpayments', ''),
(171, 'password_nowpayments', ''),
(172, 'filter_time_checklive', '1'),
(173, 'check_time_cron4', '1661453581'),
(174, 'home_page', 'home'),
(175, 'notice_popup', '<p>aaa</p>\r\n'),
(176, 'check_time_cron_dongvanfb', '1663259633'),
(177, 'timezone', 'Asia/Ho_Chi_Minh'),
(178, 'status_addfun_seller', '0'),
(179, 'status_store_document', '0'),
(180, 'noti_import_telegram', ''),
(181, 'group_id_import_telegram', ''),
(182, 'max_register_ip', '5'),
(183, 'check_time_cron6', '1666539232'),
(184, 'pin_cron', ''),
(185, 'status_toyyibpay', '0'),
(186, 'notice_toyyibpay', ''),
(187, 'userSecretKey_toyyibpay', ''),
(188, 'min_toyyibpay', '2000'),
(189, 'categoryCode_toyyibpay', ''),
(190, 'check_time_cron_toyyibpay', '0'),
(191, 'rate_toyyibpay', '5258'),
(192, 'billChargeToCustomer', ''),
(193, 'check_time_cron_sending_email', '1668009567'),
(194, 'check_time_cron7', '1667580843'),
(195, 'host_smtp', 'smtp.gmail.com'),
(196, 'encryption_smtp', 'tls'),
(197, 'port_smtp', '587'),
(198, 'token_5gsmm', 'token'),
(199, 'ck_rate_service', '10'),
(200, 'status_updatec_rate_service', '1'),
(201, 'rate_vnd_5gsmm', '24867'),
(202, 'check_time_cron_UpdateRate5gsmm', '1668588258'),
(203, 'check_time_cron_UpdateHistory5gsmm', '0'),
(204, 'check_time_cron8', '1668168040'),
(205, 'taohoadonnaptien_notification', ''),
(206, 'copyright_footer', 'Powered By <a target=\"_blank\" href=\"https://www.cmsnt.co/?ref=http://localhost/CMSNT.CO/SHOPCLONE6/\">CMSNT.CO</a>'),
(207, 'check_time_cron9', '1670065783'),
(208, 'status_api_buyproduct', '1'),
(209, 'marquee_notication_shopacc', ''),
(210, 'status_thuesim', '0'),
(211, 'server_thuesim', 'API_2'),
(212, 'token_thuesim', 'apikey'),
(213, 'ck_rate_thuesim', '0'),
(214, 'check_time_cron_service_otp_cron', '1672165493'),
(215, 'notice_thuesim', ''),
(216, 'check_time_cron_service_otp_history', '1675456095'),
(217, 'check_time_cron10', '1671558417'),
(218, 'text_create_website', '<ul>\r\n    <li>Bước 1: Trỏ IP <b style=\"color: red;\">103.14.48.40</b> vào bản ghi Host @ và www trong tên miền của bạn, có thể liên hệ nhà cung cấp tên miền để nhờ trỏ giúp.</li>\r\n    <li>Bước 2: Nhập tên miền muốn đăng ký đại lý và nhấn Thêm Ngay.</li>\r\n    <li>Bước 3: Chờ đợi QTV setup website (thanh trạng thái thay đổi thành <b\r\n            style=\"color: green;\">Hoạt Động</b>).</li>\r\n    <li>Bước 4: Truy cập Website bạn vừa tạo và nhập thông tin token và đăng ký\r\n        1 tài khoản quản trị của\r\n        bạn (tài khoản đầu tiên sẽ là tài khoản admin, lưu ý không để lộ tên\r\n        miền ra khi chưa setup xong website).</li>\r\n</ul>'),
(219, 'status_create_website', '1'),
(220, 'stt_create_website', '0'),
(221, 'create_website_notification', ''),
(222, 'domain_thuesim', 'linkweb.com'),
(223, 'title_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(224, 'description_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(225, 'keyword_thuesim', 'thue sim, thue otp, thue sms'),
(226, 'check_time_cron11', '1672681478'),
(227, 'check_time_cron12', '0'),
(228, 'crypto_address', ''),
(229, 'crypto_token', ''),
(230, 'crypto_min', '10'),
(231, 'crypto_max', '1000000'),
(232, 'check_time_cron13', '0'),
(233, 'flutterwave_api_key', ''),
(234, 'flutterwave_api_secret', ''),
(235, 'prefix_invoice', 'NT'),
(236, 'logo_login', 'assets/storage/images/logo_light_Q87.png'),
(237, 'domain_smmpanel', ''),
(238, 'show_category', 'head'),
(239, 'flutterwave_status', '1'),
(240, 'flutterwave_publicKey', ''),
(241, 'flutterwave_secretKey', ''),
(242, 'flutterwave_rate', '24000'),
(243, 'flutterwave_notice', '<p>adad</p>\r\n'),
(244, 'reCAPTCHA_status', '0'),
(245, 'reCAPTCHA_secret_key', ''),
(246, 'reCAPTCHA_site_key', ''),
(247, 'check_time_cron14', '1683739207'),
(248, 'html_top_product', '');

-- --------------------------------------------------------

--
-- Table structure for table `spin_history`
--

CREATE TABLE `spin_history` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spin_option`
--

CREATE TABLE `spin_option` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spin_option`
--

INSERT INTO `spin_option` (`id`, `name`, `price`, `rate`, `display`) VALUES
(2, '+ 10.000đ', 10000, 20, 1),
(3, '+ 50.000đ', 50000, 5, 1),
(4, '+ 2.000đ', 2000, 30, 1),
(5, '+ 100đ', 100, 30, 1),
(6, '+ 100.000đ', 100000, 2, 1),
(7, '+ 500.000đ', 500000, 0.5, 1),
(8, '+ 30.000đ', 30000, 10, 1),
(9, '+ 99.999đ', 99999, 5, 1),
(10, '+ 11.111đ', 11111, 20, 1),
(11, '+ 1.000.000đ', 1000000, 0.1, 1),
(12, '+ 22.000', 22000, 20, 1),
(13, '+ 222.222', 222222, 2, 1),
(14, '+ 6.666đ', 6666, 30, 1),
(15, '+ 77.777đ', 77777, 10, 1),
(16, '+ 20.000đ', 20000, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_fanpage`
--

CREATE TABLE `store_fanpage` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `new_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sl_like` int(11) NOT NULL DEFAULT '0',
  `nam_tao_fanpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_admin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_email`
--

CREATE TABLE `task_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyyibpay_transactions`
--

CREATE TABLE `toyyibpay_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billName` text COLLATE utf8_unicode_ci,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `BillCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toyyibpay_transactions`
--

INSERT INTO `toyyibpay_transactions` (`id`, `user_id`, `trans_id`, `billName`, `amount`, `status`, `BillCode`, `create_date`, `update_date`, `reason`) VALUES
(1, 11, 'DSO1667032107', 'Invoice #DSO1667032107', 20, 0, '6q61n3dw', '2022-10-29 15:28:28', '2022-10-29 15:28:28', NULL),
(2, 11, 'TAZ1667032162', 'Invoice #TAZ1667032162', 20, 0, 'defs6qwx', '2022-10-29 15:29:23', '2022-10-29 15:29:23', NULL),
(3, 11, 'RAL1667032196', 'Invoice #RAL1667032196', 50, 0, '3faynj5p', '2022-10-29 15:29:57', '2022-10-29 15:29:57', NULL),
(4, 11, 'BNQ1667040117', 'Invoice #BNQ1667040117', 20, 0, 'llf1fshb', '2022-10-29 17:41:58', '2022-10-29 17:41:58', NULL),
(5, 11, 'GFN1667040168', 'Invoice - RM 20', 20, 0, '0sq7hbpx', '2022-10-29 17:42:49', '2022-10-29 17:42:49', NULL),
(6, 11, 'MAY1667063706', 'Invoice - RM 20', 20, 0, 'f9f2ptb2', '2022-10-30 00:15:06', '2022-10-30 00:15:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `name` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translate`
--

INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(20, 8, 'Đăng Nhập', 'Đăng Nhập'),
(24, 8, 'Đăng Ký', 'Đăng Ký'),
(28, 8, 'Tên đăng nhập', 'Tên đăng nhập'),
(32, 8, 'Mật khẩu', 'Mật khẩu'),
(39, 8, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(43, 8, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(47, 8, 'Đăng ký', 'Đăng ký'),
(51, 8, 'Quên mật khẩu', 'Quên mật khẩu'),
(55, 8, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(59, 8, 'Đăng Nhập', 'Đăng Nhập'),
(63, 8, 'hoặc', 'hoặc'),
(67, 8, 'Đăng Nhập', 'Đăng Nhập'),
(71, 8, 'Đang xử lý...', 'Đang xử lý...'),
(75, 8, 'Đăng Ký', 'Đăng Ký'),
(79, 8, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(83, 8, 'Địa chỉ Email', 'Địa chỉ Email'),
(87, 8, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(91, 8, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(95, 8, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(99, 8, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(104, 8, 'Username không được để trống', 'Username không được để trống'),
(108, 8, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(112, 8, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(116, 8, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(120, 8, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(124, 8, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(128, 8, 'Email không được để trống', 'Email không được để trống'),
(132, 8, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(136, 8, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(140, 8, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(144, 8, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(148, 8, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(152, 8, 'Đăng ký thành công', 'Đăng ký thành công'),
(156, 8, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(160, 8, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(452, 8, 'Trang cá nhân', 'Trang cá nhân'),
(453, 8, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(454, 8, 'Đăng xuất', 'Đăng xuất'),
(455, 8, 'Trang quản trị', 'Trang quản trị'),
(456, 8, 'Bảo mật', 'Bảo mật'),
(457, 8, 'Cộng tác viên', 'Cộng tác viên'),
(458, 16, 'Đăng Nhập', 'Login'),
(459, 16, 'Đăng Ký', 'Register'),
(460, 16, 'Tên đăng nhập', 'Username'),
(461, 16, 'Mật khẩu', 'Password'),
(462, 16, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(463, 16, 'Bạn không có tài khoản?', 'You don\\\'t have an account?'),
(464, 16, 'Đăng ký', 'Register'),
(465, 16, 'Quên mật khẩu', 'Forgot password'),
(466, 16, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Log in to your account to continue'),
(467, 16, 'Đăng Nhập', 'Log in'),
(468, 16, 'hoặc', 'or'),
(469, 16, 'Đăng Nhập', 'Log in'),
(470, 16, 'Đang xử lý...', 'Processing...'),
(471, 16, 'Đăng Ký', 'Đăng Ký'),
(472, 16, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(473, 16, 'Địa chỉ Email', 'Email address'),
(474, 16, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(475, 16, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(476, 16, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(477, 16, 'Thông tin đăng nhập không chính xác', 'Login information is incorrect'),
(478, 16, 'Username không được để trống', 'Username không được để trống'),
(479, 16, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(480, 16, 'Hệ thống đang bảo trì', 'The system is maintenance'),
(481, 16, 'Tài khoản của bạn đã bị khoá truy cập', 'Your account has been locked'),
(482, 16, 'Đăng nhập thành công vào hệ thống', 'Successfully logged into the system'),
(483, 16, 'Đăng nhập thành công', 'Logged in successfully'),
(484, 16, 'Email không được để trống', 'Email cannot be blank'),
(485, 16, 'Nhập lại mật khẩu không đúng', 'Password incorrect, please try again'),
(486, 16, 'Định dạng Email không đúng', 'Email format is not correct'),
(487, 16, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Username already exists in the system'),
(488, 16, 'Địa chỉ email đã tồn tại trong hệ thống', 'Email address already exists in the system'),
(489, 16, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'Your IP has reached the allowable account creation limit'),
(490, 16, 'Đăng ký thành công', 'Sign Up Success'),
(491, 16, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Account creation failed, please try again'),
(492, 16, 'Thực hiện tạo tài khoản', 'Make an account'),
(493, 16, 'Trang cá nhân', 'Profile'),
(494, 16, 'Thay đổi mật khẩu', 'Change password'),
(495, 16, 'Đăng xuất', 'Logout'),
(496, 16, 'Trang quản trị', 'Admin'),
(497, 16, 'Bảo mật', 'Security'),
(498, 16, 'Cộng tác viên', 'CTV'),
(499, 8, 'Bảng Điều Khiển', 'Bảng Điều Khiển'),
(500, 16, 'Bảng Điều Khiển', 'Dashboard'),
(501, 8, 'Nạp Tiền', 'Nạp Tiền'),
(502, 16, 'Nạp Tiền', 'RECHARGE'),
(505, 8, 'Ngân Hàng', 'Ngân Hàng'),
(506, 16, 'Ngân hàng', 'Bank'),
(507, 8, 'Ví Điện Tử', 'Ví Điện Tử'),
(508, 16, 'Ví Điện Tử', 'Electronic Wallet'),
(509, 8, 'Cửa Hàng', 'Cửa Hàng'),
(510, 16, 'Cửa Hàng', 'Store'),
(511, 8, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng'),
(512, 16, 'Lịch Sử Mua Hàng', 'Purchase History'),
(513, 8, 'Liên Hệ', 'Liên Hệ'),
(514, 16, 'Liên Hệ', 'Contact'),
(515, 8, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(516, 16, 'Thông tin liên hệ', 'Contact Info'),
(517, 8, 'Mã giao dịch', 'Mã giao dịch'),
(518, 16, 'Mã giao dịch', 'TransId'),
(519, 8, 'Sản phẩm', 'Sản phẩm'),
(520, 16, 'Sản phẩm', 'Product'),
(521, 8, 'Số lượng', 'Số lượng'),
(522, 16, 'Số lượng', 'Amount'),
(523, 8, 'Thanh toán', 'Thanh toán'),
(524, 16, 'Thanh toán', 'Pay'),
(525, 8, 'Thời gian', 'Thời gian'),
(526, 16, 'Thời gian', 'Time'),
(527, 8, 'Thao tác', 'Thao tác'),
(528, 16, 'Thao tác', 'Action'),
(529, 8, 'Xem Thêm', 'Xem Thêm'),
(530, 16, 'Xem Thêm', 'See More'),
(531, 8, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(532, 16, 'Thông Tin Cá Nhân', 'Profile'),
(533, 8, 'Họ và Tên', 'Họ và Tên'),
(534, 16, 'Họ và Tên', 'First and Last Name'),
(535, 8, 'Nhập họ và tên', 'Nhập họ và tên'),
(536, 16, 'Nhập họ và tên', 'Enter your first and last name'),
(537, 8, 'Số điện thoại', 'Số điện thoại'),
(538, 16, 'Số điện thoại', 'Phone number'),
(539, 8, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(540, 16, 'Nhập số điện thoại', 'Enter your phone number'),
(541, 8, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(542, 16, 'Nhập địa chỉ Email', 'Enter your email address'),
(543, 8, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(544, 16, 'Thời gian đăng ký', 'Registration time'),
(545, 8, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(546, 16, 'Đăng nhập gần đây', 'Login time'),
(547, 8, 'Huỷ', 'Huỷ'),
(548, 16, 'Huỷ', 'Cancel'),
(549, 8, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(550, 16, 'Lưu Thay Đổi', 'Save Changes'),
(551, 8, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp'),
(552, 16, 'Tổng Tiền Nạp', 'Total Deposit'),
(553, 8, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(555, 8, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(556, 16, 'Số Dư Hiện Tại', 'Current Balance'),
(557, 8, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(558, 16, 'Số Dư Sử Dụng', 'Usage Balance'),
(559, 8, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(560, 16, 'Vui lòng đăng nhập', 'Please login'),
(561, 8, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(562, 16, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(563, 8, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(564, 16, 'Định dạng Email không hợp lệ', 'Invalid Email Format'),
(565, 8, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(566, 16, 'Thay đổi thông tin hồ sơ', 'Change profile information'),
(567, 8, 'Lưu thành công', 'Lưu thành công'),
(568, 16, 'Lưu thành công', 'Successfully saved'),
(569, 8, 'Lưu thất bại', 'Lưu thất bại'),
(570, 16, 'Lưu thất bại', 'Save failed'),
(571, 8, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(572, 16, 'Vui lòng nhập mật khẩu hiện tại', 'Please enter your current password'),
(573, 8, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(574, 16, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(575, 8, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(576, 16, 'Mật khẩu hiện tại không chính xác', 'Current password is incorrect'),
(577, 8, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(578, 16, 'Đổi mật khẩu thành công', 'Change password successfully'),
(579, 8, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(580, 16, 'Đổi mật khẩu thất bại', 'Change password failed'),
(581, 8, 'Đóng', 'Đóng'),
(582, 16, 'Đóng', 'Close'),
(583, 8, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(584, 16, 'Mật khẩu hiện tại', 'Current password'),
(585, 8, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(586, 16, 'Nhập lại mật khẩu mới', 'Enter a new password'),
(587, 8, 'Mật khẩu mới', 'Mật khẩu mới'),
(588, 16, 'Mật khẩu mới', 'New password'),
(589, 8, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(590, 16, 'Vui lòng nhập lại mật khẩu mới', 'Please re-enter new password'),
(591, 8, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(592, 16, 'Nhật ký hoạt động', 'Activity Log'),
(593, 8, 'Biến động số dư', 'Biến động số dư'),
(594, 16, 'Biến động số dư', 'Balance log'),
(595, 8, 'Hành động', 'Hành động'),
(596, 16, 'Hành động', 'Action'),
(597, 8, 'Địa chỉ IP', 'Địa chỉ IP'),
(598, 16, 'Địa chỉ IP', 'IP address'),
(599, 8, 'Thiết bị', 'Thiết bị'),
(600, 16, 'Thiết bị', 'Device'),
(601, 8, 'Số tiền trước', 'Số tiền trước'),
(602, 16, 'Số tiền trước', 'Amount in advance'),
(603, 8, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(604, 16, 'Số tiền thay đổi', 'Amount of change'),
(605, 8, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(606, 16, 'Số tiền hiện tại', 'Current amount'),
(607, 8, 'Nội dung', 'Nội dung'),
(608, 16, 'Nội dung', 'Content'),
(609, 8, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(610, 16, 'Chọn phương thức thanh toán', 'Select a payment method'),
(611, 8, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp'),
(612, 16, 'Nhập số tiền cần nạp', 'Enter the amount to deposit'),
(613, 8, 'Tạo hoá đơn', 'Tạo hoá đơn'),
(614, 16, 'Tạo hoá đơn', 'Create invoice'),
(615, 8, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống'),
(616, 16, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Enter the amount you need to deposit into the system'),
(617, 8, 'Hoá Đơn', 'Hoá Đơn'),
(618, 16, 'Hoá Đơn', 'Invoices'),
(619, 8, 'Trạng thái', 'Trạng thái'),
(620, 16, 'Trạng thái', 'Status'),
(621, 8, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(622, 16, 'Phương thức thanh toán', 'Payment Method'),
(623, 8, 'Huỷ bỏ', 'Huỷ bỏ'),
(624, 16, 'Huỷ bỏ', 'Cancelled'),
(625, 8, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(626, 16, 'Đang chờ thanh toán', 'Pending'),
(627, 8, 'Đã thanh toán', 'Đã thanh toán'),
(628, 16, 'Đã thanh toán', 'Paid'),
(629, 8, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(630, 16, 'Vui lòng chọn phương thức thanh toán', 'Please choose a payment method'),
(631, 8, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp'),
(632, 16, 'Vui lòng nhập số tiền cần nạp', 'Please enter the amount to deposit'),
(633, 8, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(634, 16, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Payment method does not exist in the system'),
(635, 8, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(636, 16, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'You are working too fast, please wait'),
(637, 8, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là'),
(638, 16, 'Số tiền nạp tối thiểu là', 'Minimum deposit amount is'),
(639, 8, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày'),
(640, 16, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'You have too many pending invoices for the day'),
(641, 8, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền'),
(642, 16, 'Tạo hoá đơn nạp tiền', 'Create a recharge invoice'),
(643, 8, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công'),
(644, 16, 'Tạo hoá đơn thành công', 'Successful invoice generation'),
(645, 8, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại'),
(646, 16, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Invoice generation failed, please try again'),
(647, 8, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn'),
(648, 16, 'Chi tiết hoá đơn', 'Invoice details'),
(649, 8, 'Tải Về', 'Tải Về'),
(650, 16, 'Tải Về', 'Download'),
(651, 8, 'Xoá', 'Xoá'),
(652, 16, 'Xoá', 'Delete'),
(653, 8, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(654, 16, 'Xác nhận xoá đơn hàng', 'Order deletion confirmation'),
(655, 8, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(656, 16, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Are you sure you want to delete this order?'),
(657, 8, 'Đồng Ý', 'Đồng Ý'),
(658, 16, 'Đồng Ý', 'Agree'),
(659, 8, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(660, 16, 'Đơn hàng không tồn tại trong hệ thống', 'The order does not exist in the system'),
(661, 8, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(662, 16, 'Xóa đơn hàng thành công', 'Deleted order successfully'),
(663, 8, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(664, 16, 'Dữ liệu không hợp lệ', 'Invalid data'),
(665, 8, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(666, 16, 'Xoá đơn hàng', 'Delete order'),
(667, 8, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(668, 16, 'Xóa sản phẩm thất bại', 'Delete failed products'),
(669, 8, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(670, 16, 'Chi tiết đơn hàng', 'Order details'),
(671, 8, 'Sao Chép', 'Sao Chép'),
(672, 16, 'Sao Chép', 'Copy'),
(673, 8, 'Quay Lại', 'Quay Lại'),
(674, 16, 'Quay Lại', 'Back'),
(675, 8, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(676, 16, 'Đánh giá sản phẩm', 'Product Reviews'),
(677, 8, 'Đánh giá ngay', 'Đánh giá ngay'),
(678, 16, 'Đánh giá ngay', 'Rate now'),
(679, 8, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(680, 16, 'Bạn có thể đánh giá đơn hàng này', 'You can rate this order'),
(681, 8, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(682, 16, 'Đơn hàng lớn hơn', 'Larger orders'),
(683, 8, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(684, 16, 'mới có thể đánh giá', 'can only evaluate'),
(685, 8, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(686, 16, 'Gửi Đánh Giá', 'Submit Review'),
(687, 8, 'Xác Nhận', 'Xác Nhận'),
(688, 16, 'Xác Nhận', 'Confirm'),
(689, 8, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(690, 16, 'Nhập nội dung cần đánh giá', 'Enter the content to evaluate'),
(691, 8, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(692, 16, 'Vui lòng nhập review', 'Please enter a review'),
(693, 8, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(694, 16, 'Đã sao chép vào bộ nhớ tạm', 'Copied to clipboard'),
(695, 8, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(696, 16, 'Bạn đã đánh giá đơn hàng này rồi', 'You have already rated this order'),
(697, 8, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(698, 16, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'You are not eligible to rate this order'),
(699, 8, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(700, 16, 'Gửi đánh giá thành công', 'Submit a successful review'),
(701, 8, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(702, 16, 'Gửi đánh giá thất bại', 'Submit a failed review'),
(703, 8, 'Sản phẩm mới', 'Sản phẩm mới'),
(704, 16, 'Sản phẩm mới', 'New products'),
(705, 8, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(706, 16, 'Nạp tiền qua PayPal', 'Recharge via PayPal'),
(707, 8, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(709, 8, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(710, 16, 'Nhập số tiền cần nạp bằng USD', 'Enter the amount to deposit in USD'),
(711, 8, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal'),
(712, 16, 'Tạo hoá đơn nạp tiền qua PayPal', 'Create a bill top up via PayPal'),
(713, 8, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(714, 16, 'Số tiền cần nạp', 'Amount to deposit'),
(715, 8, 'Giá', 'Giá'),
(716, 16, 'Giá', 'Price'),
(717, 8, 'MUA NGAY', 'MUA NGAY'),
(718, 16, 'MUA NGAY', 'BUY NOW'),
(719, 8, 'Đã bán', 'Đã bán'),
(720, 16, 'Đã bán', 'Sold'),
(721, 8, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(722, 16, 'Sản phẩm không tồn tại', 'Product does not exist'),
(723, 8, 'Quốc gia', 'Quốc gia'),
(724, 16, 'Quốc gia', 'Country'),
(725, 8, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(727, 8, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(728, 16, 'Tất Cả Sản Phẩm', 'All Product'),
(729, 8, 'Tên sản phẩm', 'Tên sản phẩm'),
(730, 16, 'Tên sản phẩm', 'Product name'),
(731, 8, 'Hiện có', 'Hiện có'),
(732, 16, 'Hiện có', 'Available'),
(733, 8, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(734, 16, 'Thanh toán đơn hàng', 'Payment Orders'),
(735, 8, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(736, 16, 'Nhập số lượng cần mua', 'Enter the quantity you want to buy'),
(737, 8, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(738, 16, 'Tổng tiền cần thanh toán', 'Total amount to pay'),
(739, 8, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(741, 8, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(743, 8, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(744, 16, 'Nhập mã giảm giá', 'Enter coupon'),
(745, 16, 'Nhập mã giảm giá của bạn', 'Enter your coupon'),
(746, 8, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(747, 16, 'Huỷ mã giảm giá', 'Cancel coupon'),
(748, 8, 'Số lượng cần mua', 'Số lượng cần mua'),
(749, 16, 'Số lượng cần mua', 'Quantity to buy'),
(750, 8, 'Mã giảm giá', 'Mã giảm giá'),
(751, 16, 'Mã giảm giá', 'Coupon'),
(752, 8, 'Đánh giá', 'Đánh giá'),
(753, 16, 'Đánh giá', 'Evaluate'),
(754, 8, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(755, 16, 'Tải Về File Backup VIA', 'Download File Backup VIA'),
(756, 8, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(757, 16, 'Nhập UID VIA cần tải về file backup', 'Enter the VIA UID to download the backup file'),
(758, 8, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(759, 16, 'Vui lòng nhập UID cần tải', 'Please enter the UID to download'),
(760, 8, 'FAQ', 'FAQ'),
(761, 16, 'FAQ', 'FAQ'),
(762, 8, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(763, 16, 'Xác nhận tải về đơn hàng', 'Order download confirmation'),
(764, 8, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(765, 16, 'Bạn có chắc chắn muốn tải về hàng này không', 'Are you sure you want to download this item?'),
(766, 8, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(767, 16, 'Tải về đơn hàng', 'Download order'),
(768, 8, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(769, 16, 'Tải về đơn hàng thành công', 'Download order successfully'),
(770, 8, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(771, 16, 'Tải về đơn hàng thất bại', 'Order download failed'),
(772, 8, 'Tài Liệu API', 'Tài Liệu API'),
(773, 16, 'Tài Liệu API', 'API Documentation'),
(774, 8, 'Số Dư', 'Số Dư'),
(775, 16, 'Số Dư', 'Balance'),
(776, 8, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(777, 16, 'Sản phẩm không tồn tại trong hệ thống', 'The product does not exist in the system'),
(778, 8, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(779, 16, 'Vui lòng nhập số lượng cần mua', 'Please enter the quantity you want to buy'),
(780, 8, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(781, 16, 'Số lượng trong hệ thống không đủ', 'The number in the system is not enough'),
(782, 8, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(783, 16, 'Số dư không đủ, vui lòng nạp thêm', 'The balance is not enough, please top up'),
(784, 8, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(785, 16, 'Bạn đã bị khoá tài khoản vì gian lận', 'Your account has been blocked for cheating'),
(786, 8, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(787, 16, 'Thanh toán đơn hàng thành công', 'Order payment successful'),
(788, 8, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(789, 16, 'Không thể thanh toán, vui lòng thử lại', 'Unable to pay, please try again'),
(790, 8, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(791, 16, 'Đang tải xuống đơn hàng...', 'Order downloading...'),
(792, 8, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(793, 16, 'Xóa sản phẩm thành công', 'Delete product successfully'),
(794, 8, 'Tài khoản', 'Tài khoản'),
(796, 8, 'Tài khoản:', 'Tài khoản:'),
(797, 16, 'Tài khoản:', 'Account:'),
(798, 8, 'Số lượng mua:', 'Số lượng mua:'),
(800, 8, 'Thông báo', 'Thông báo'),
(801, 16, 'Thông báo', 'Notifications'),
(802, 8, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(803, 16, 'Chi tiết thông báo', 'Notice details'),
(804, 8, 'Nạp Thẻ', 'Nạp Thẻ'),
(805, 16, 'Nạp Thẻ', 'Nạp Thẻ'),
(806, 8, 'Lưu Ý', 'Lưu Ý'),
(807, 16, 'Lưu ý', 'Note'),
(808, 8, 'Lý do', 'Lý do'),
(809, 16, 'Lý do', 'Reason'),
(810, 8, 'Thực nhận', 'Thực nhận'),
(811, 16, 'Thực nhận', 'Received'),
(812, 8, 'Nhà mạng', 'Nhà mạng'),
(813, 16, 'Nhà mạng', 'Telco'),
(1011, 8, 'Chính sách bảo mật', 'Chính sách bảo mật'),
(1012, 16, 'Chính sách bảo mật', 'Privacy Policy'),
(1013, 8, 'Điều khoản sử dụng', 'Điều khoản sử dụng'),
(1014, 16, 'Điều khoản sử dụng', 'Terms of Use'),
(1015, 8, 'Captcha không chính xác', 'Captcha không chính xác'),
(1016, 16, 'Captcha không chính xác', 'Captcha is incorrect'),
(1017, 8, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1018, 16, 'Nhập nội dung bên trái', 'Enter the content on the left'),
(1019, 8, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1020, 16, 'Vui lòng nhập mã captcha để xác minh', 'Please enter captcha code to verify'),
(1021, 8, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1022, 16, 'Bật/Tắt Google 2FA', 'Enable/Disable Google 2FA'),
(1023, 8, 'Bật', 'Bật'),
(1024, 16, 'Bật', 'Enable'),
(1025, 8, 'Tắt', 'Tắt'),
(1026, 16, 'Tắt', 'Disable'),
(1027, 8, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1028, 16, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Please save the information below before Enable this function'),
(1029, 8, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1030, 16, 'Vui lòng chọn trạng thái 2FA', 'Please select 2FA status'),
(1031, 8, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1032, 16, 'Nhập mã xác minh để lưu thay đổi', 'Enter the verification code to save changes'),
(1033, 8, 'Mã Xác Minh', 'Mã Xác Minh'),
(1034, 16, 'Mã Xác Minh', 'Verification Code'),
(1035, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1037, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1039, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'OTP Verification: Perform verification using Google Authenticator App'),
(1040, 8, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1042, 8, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1043, 16, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1044, 8, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1045, 16, 'Vui lòng nhập mã xác minh 2FA', 'Please enter 2FA verification code'),
(1046, 8, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1047, 16, 'Mã xác minh không chính xác', 'Verification code is incorrect'),
(1048, 8, 'Xác minh 2FA', 'Xác minh 2FA'),
(1049, 16, 'Xác minh 2FA', '2FA Verification'),
(1050, 8, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1052, 8, 'Xác Minh OTP', 'Xác Minh OTP'),
(1053, 16, 'Xác Minh OTP', 'OTP Verification'),
(1054, 8, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1055, 16, 'Nhập mã xác minh', 'Enter verification code'),
(1056, 8, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1057, 16, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Please verify 2FA to complete the login process'),
(1058, 8, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1059, 16, 'Vui lòng nhập mã xác minh', 'Please enter the verification code'),
(1060, 8, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1061, 16, 'Đang bật bảo mật', 'Security is on'),
(1062, 8, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1063, 16, 'Đang tắt bảo mật', 'Turning off security'),
(1064, 8, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1065, 16, 'Số sao đánh giá không hợp lệ', 'Invalid rating stars'),
(1066, 8, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1067, 16, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Please enable Google 2FA 2-step verification to protect your account.'),
(1068, 8, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1069, 16, 'Số tiền thực nhận', 'The amount actually received'),
(1070, 8, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1071, 16, 'Bảo Mật Tài Khoản', 'Account Security'),
(1072, 8, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1073, 16, 'Thông tin tài nguyên', 'Resource Information'),
(1074, 8, 'Mở hộp quà', 'Mở hộp quà'),
(1075, 16, 'Mở hộp quà', 'Open the gift box'),
(1076, 8, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1077, 16, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'This gift box has already been received, good luck next time'),
(1078, 8, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1079, 16, 'Nhận Quà Thất Bại', 'Receive Failure Gift'),
(1080, 8, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1081, 16, 'Bạn đã mở hộp quà này rồi', 'You have already opened this gift box'),
(1084, 8, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1085, 16, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Congratulations on receiving a valuable gift box'),
(1086, 8, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1087, 16, 'Quay về Trang Chủ', 'Back to Home'),
(1089, 8, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1090, 16, 'Nhận Quà Thành Công', 'Receive Success Gifts'),
(1091, 8, 'Phiên bản', 'Phiên bản'),
(1092, 16, 'Phiên bản', 'Version'),
(1093, 8, 'Số tiền nạp', 'Số tiền nạp'),
(1094, 16, 'Số tiền nạp', 'Deposit amount'),
(1095, 8, 'Lịch sử nạp PayPal', 'Lịch sử nạp PayPal'),
(1096, 16, 'Lịch sử nạp PayPal', 'PayPal recharge history'),
(1097, 8, 'Thành công', 'Thành công'),
(1098, 16, 'Thành công', 'Success'),
(1099, 8, 'Cảm ơn bạn đã mua hàng', 'Cảm ơn bạn đã mua hàng'),
(1100, 16, 'Cảm ơn bạn đã mua hàng', 'Thank you for your purchase'),
(1101, 8, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây'),
(1102, 16, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Your order has been processed, you can view your account information through the link below'),
(1103, 8, 'Tổng thanh toán', 'Tổng thanh toán'),
(1104, 16, 'Tổng thanh toán', 'Total payment'),
(1105, 8, 'Xem chi tiết đơn hàng', 'Xem chi tiết đơn hàng'),
(1106, 16, 'Xem chi tiết đơn hàng', 'View order details'),
(1107, 8, 'Xem Ngay', 'Xem Ngay'),
(1108, 16, 'Xem Ngay', 'Watch Now'),
(1109, 8, 'Tạo hoá đơn nạp tiền thành công', 'Tạo hoá đơn nạp tiền thành công'),
(1110, 16, 'Tạo hoá đơn nạp tiền thành công', 'Create a successful recharge invoice'),
(1111, 8, 'Vòng quay may mắn', 'Vòng quay may mắn'),
(1112, 16, 'Vòng quay may mắn', 'Rotation luck'),
(1113, 8, 'Đang chờ kết quả...', 'Đang chờ kết quả...'),
(1114, 16, 'Đang chờ kết quả...', 'Waiting for results...'),
(1115, 8, 'Lịch Sử Quay Thưởng', 'Lịch Sử Quay Thưởng'),
(1116, 16, 'Lịch Sử Quay Thưởng', 'Spin History'),
(1117, 8, 'Số lượt quay hiện tại của bạn đã hết', 'Số lượt quay hiện tại của bạn đã hết'),
(1118, 16, 'Số lượt quay hiện tại của bạn đã hết', 'Your current spin has expired'),
(1119, 8, 'Chúc mừng bạn đã quay được phần thường', 'Chúc mừng bạn đã quay được phần thường'),
(1120, 16, 'Chúc mừng bạn đã quay được phần thường', 'Congratulations on filming the regular part'),
(1121, 8, 'Chức năng này đang được bảo trì', 'Chức năng này đang được bảo trì'),
(1122, 16, 'Chức năng này đang được bảo trì', 'This function is under maintenance'),
(1123, 8, 'Cách kiếm thêm lượt quay', 'Cách kiếm thêm lượt quay'),
(1124, 16, 'Cách kiếm thêm lượt quay', 'How to earn more spins'),
(1125, 8, 'Thực Hiện', 'Thực Hiện'),
(1126, 16, 'Thực Hiện', 'Submit'),
(1127, 8, 'Thanh Toán Bằng Perfect Money', 'Thanh Toán Bằng Perfect Money'),
(1128, 16, 'Thanh Toán Bằng Perfect Money', 'Paying With Perfect Money'),
(1129, 8, 'Khuôn Mặt Ngẫu Nhiên', 'Khuôn Mặt Ngẫu Nhiên'),
(1130, 16, 'Khuôn Mặt Ngẫu Nhiên', 'Random Faces'),
(1131, 8, 'Bạn chưa đăng nhập', 'Bạn chưa đăng nhập'),
(1132, 16, 'Bạn chưa đăng nhập', 'You are not logged in'),
(1133, 8, 'Mua', 'Mua'),
(1134, 16, 'Mua', 'Buy'),
(1135, 16, 'tài khoản', 'accounts'),
(1136, 8, 'với giá', 'với giá'),
(1137, 16, 'với giá', 'with price'),
(1138, 8, 'Giao Dịch Dần Đây Của Hệ Thống', 'Giao Dịch Dần Đây Của Hệ Thống'),
(1139, 16, 'Giao Dịch Dần Đây Của Hệ Thống', 'Recent Transactions'),
(1140, 8, 'giây trước', 'giây trước'),
(1141, 16, 'giây trước', 'seconds ago'),
(1142, 8, 'năm trước', 'năm trước'),
(1143, 16, 'năm trước', 'last year'),
(1144, 8, 'tháng trước', 'tháng trước'),
(1145, 16, 'tháng trước', 'last month'),
(1146, 8, 'tuần trước', 'tuần trước'),
(1147, 16, 'tuần trước', 'last week'),
(1148, 8, 'ngày trước', 'ngày trước'),
(1149, 16, 'ngày trước', 'yesterday'),
(1150, 8, 'Hôm qua', 'Hôm qua'),
(1151, 16, 'Hôm qua', 'Yesterday'),
(1152, 8, 'tiếng trước', 'tiếng trước'),
(1153, 16, 'tiếng trước', 'hour ago'),
(1154, 8, 'phút trước', 'phút trước'),
(1155, 16, 'phút trước', 'minute ago'),
(1156, 8, 'Sao Chép Tất Cả', 'Sao Chép Tất Cả'),
(1157, 16, 'Sao Chép Tất Cả', 'Copy All'),
(1158, 8, 'Bài viết nổi bật', 'Bài viết nổi bật'),
(1159, 16, 'Bài viết nổi bật', 'Featured Posts'),
(1160, 8, 'Danh sách bài viết', 'Danh sách bài viết'),
(1161, 16, 'Danh sách bài viết', 'List of articles'),
(1162, 8, 'HẾT HÀNG', 'HẾT HÀNG'),
(1163, 16, 'HẾT HÀNG', 'OUT OF STOCK'),
(1164, 8, 'MUA TÀI KHOẢN', 'Mua Tài Khoản'),
(1165, 16, 'MUA TÀI KHOẢN', 'BUY ACCOUNT'),
(1166, 8, 'MUA TÀI LIỆU', 'Mua Tài Liệu'),
(1167, 16, 'MUA TÀI LIỆU', 'BUY DOCUMENTS'),
(1168, 8, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v'),
(1169, 16, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Provide resources to run ADS, Clone, Via, BM, Mail etc'),
(1170, 8, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v'),
(1171, 16, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Provide documents, TUT in the field of marketing, mmo etc'),
(1172, 8, 'XEM CỬA HÀNG', 'XEM CỬA HÀNG'),
(1173, 16, 'XEM CỬA HÀNG', 'VIEW SHOP'),
(1174, 8, 'Danh sách TUT/Trick', 'Danh sách TUT/Trick'),
(1175, 16, 'Danh sách TUT/Trick', 'List of TUT/Trick'),
(1176, 8, 'Chuyên mục', 'Chuyên mục'),
(1177, 16, 'Chuyên mục', 'Categories'),
(1178, 8, 'Ngày đăng', 'Ngày đăng'),
(1179, 16, 'Ngày đăng', 'Create date'),
(1180, 8, 'Cập nhật', 'Cập nhật'),
(1181, 16, 'Cập nhật', 'Update date'),
(1182, 8, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'Bạn không được dùng chức năng này vì đây là trang web demo'),
(1183, 16, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'You cannot use this function because this is a demo site'),
(1184, 8, 'Tổng nạp lớn hơn hoặc bằng', 'Tổng nạp lớn hơn hoặc bằng'),
(1185, 16, 'Tổng nạp lớn hơn hoặc bằng', 'Total charge is greater than or equal to'),
(1186, 8, 'Khuyến mãi thêm', 'Khuyến mãi thêm'),
(1187, 16, 'Khuyến mãi thêm', 'Extra promotion'),
(1188, 8, 'Số tiền nhận được', 'Số tiền nhận được'),
(1189, 16, 'Số tiền nhận được', 'Amount received'),
(1190, 8, 'Ví', 'Ví'),
(1191, 16, 'Ví', 'Wallet'),
(1192, 8, 'Giảm', 'Giảm'),
(1193, 16, 'Giảm', 'Discount'),
(1194, 8, 'ĐƠN HÀNG GẦN ĐÂY', 'ĐƠN HÀNG GẦN ĐÂY'),
(1195, 16, 'ĐƠN HÀNG GẦN ĐÂY', 'LAST ORDER'),
(1196, 8, 'NẠP TIỀN GẦN ĐÂY', 'NẠP TIỀN GẦN ĐÂY'),
(1197, 16, 'NẠP TIỀN GẦN ĐÂY', 'LAST DEPOSIT'),
(1198, 8, 'Gợi ý sản phẩm cho bạn', 'Gợi ý sản phẩm cho bạn'),
(1199, 16, 'Gợi ý sản phẩm cho bạn', 'Recommend products for you'),
(1200, 8, 'Bảng Xếp Hạng', 'Bảng Xếp Hạng'),
(1201, 16, 'Bảng Xếp Hạng', 'Top Money'),
(1202, 8, 'Bài Viết', 'Bài Viết'),
(1203, 16, 'Bài Viết', 'Posts'),
(1204, 8, 'Công Cụ', 'Công Cụ'),
(1205, 16, 'Công Cụ', 'Tools'),
(1206, 8, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng Xếp Hạng Nạp Tiền'),
(1207, 16, 'Bảng Xếp Hạng Nạp Tiền', 'Top Money'),
(1208, 8, 'Xếp Hạng', 'Xếp Hạng'),
(1209, 16, 'Xếp Hạng', 'Top'),
(1210, 8, 'Tổng Nạp', 'Tổng Nạp'),
(1211, 16, 'Tổng Nạp', 'Total Deposit'),
(1212, 8, 'Vị Trí', 'Vị Trí'),
(1213, 16, 'Vị Trí', 'Positions'),
(1214, 8, 'Thành Viên', 'Thành Viên'),
(1215, 16, 'Thành Viên', 'Member'),
(1216, 8, 'KHÁC', 'KHÁC'),
(1217, 16, 'KHÁC', 'OTHER'),
(1218, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1219, 18, 'Đăng Ký', 'Đăng Ký'),
(1220, 18, 'Tên đăng nhập', 'Tên đăng nhập'),
(1221, 18, 'Mật khẩu', 'Mật khẩu'),
(1222, 18, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(1223, 18, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(1224, 18, 'Đăng ký', 'Đăng ký'),
(1225, 18, 'Quên mật khẩu', 'Quên mật khẩu'),
(1226, 18, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(1227, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1228, 18, 'hoặc', 'hoặc'),
(1229, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1230, 18, 'Đang xử lý...', 'Đang xử lý...'),
(1231, 18, 'Đăng Ký', 'Đăng Ký'),
(1232, 18, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(1233, 18, 'Địa chỉ Email', 'Địa chỉ Email'),
(1234, 18, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(1235, 18, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(1236, 18, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(1237, 18, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(1238, 18, 'Username không được để trống', 'Username không được để trống'),
(1239, 18, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(1240, 18, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(1241, 18, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(1242, 18, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(1243, 18, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(1244, 18, 'Email không được để trống', 'Email không được để trống'),
(1245, 18, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(1246, 18, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(1247, 18, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(1248, 18, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(1249, 18, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(1250, 18, 'Đăng ký thành công', 'Đăng ký thành công'),
(1251, 18, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(1252, 18, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(1253, 18, 'Trang cá nhân', 'Trang cá nhân'),
(1254, 18, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(1255, 18, 'Đăng xuất', 'Đăng xuất'),
(1256, 18, 'Trang quản trị', 'Trang quản trị'),
(1257, 18, 'Bảo mật', 'Bảo mật'),
(1258, 18, 'Cộng tác viên', 'Cộng tác viên'),
(1259, 18, 'Bảng Điều Khiển', 'แผงควบคุม'),
(1260, 18, 'Nạp Tiền', 'เติมเงิน'),
(1261, 18, 'Ngân Hàng', 'ธนาคาร'),
(1262, 18, 'Ví Điện Tử', 'Ví Điện Tử'),
(1263, 18, 'Cửa Hàng', 'Cửa Hàng'),
(1264, 18, 'Lịch Sử Mua Hàng', 'ประวัติการซื้อ'),
(1265, 18, 'Liên Hệ', 'Liên Hệ'),
(1266, 18, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(1267, 18, 'Mã giao dịch', 'Mã giao dịch'),
(1268, 18, 'Sản phẩm', 'Sản phẩm'),
(1269, 18, 'Số lượng', 'Số lượng'),
(1270, 18, 'Thanh toán', 'Thanh toán'),
(1271, 18, 'Thời gian', 'Thời gian'),
(1272, 18, 'Thao tác', 'Thao tác'),
(1273, 18, 'Xem Thêm', 'Xem Thêm'),
(1274, 18, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(1275, 18, 'Họ và Tên', 'Họ và Tên'),
(1276, 18, 'Nhập họ và tên', 'Nhập họ và tên'),
(1277, 18, 'Số điện thoại', 'Số điện thoại'),
(1278, 18, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(1279, 18, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(1280, 18, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(1281, 18, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(1282, 18, 'Huỷ', 'Huỷ'),
(1283, 18, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(1284, 18, 'Tổng Tiền Nạp', 'ยอดเงินฝาก'),
(1285, 18, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(1286, 18, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(1287, 18, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(1288, 18, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(1289, 18, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(1290, 18, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(1291, 18, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(1292, 18, 'Lưu thành công', 'Lưu thành công'),
(1293, 18, 'Lưu thất bại', 'Lưu thất bại'),
(1294, 18, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(1295, 18, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(1296, 18, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(1297, 18, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(1298, 18, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(1299, 18, 'Đóng', 'Đóng'),
(1300, 18, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(1301, 18, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(1302, 18, 'Mật khẩu mới', 'Mật khẩu mới'),
(1303, 18, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(1304, 18, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(1305, 18, 'Biến động số dư', 'Biến động số dư'),
(1306, 18, 'Hành động', 'Hành động'),
(1307, 18, 'Địa chỉ IP', 'Địa chỉ IP'),
(1308, 18, 'Thiết bị', 'Thiết bị'),
(1309, 18, 'Số tiền trước', 'Số tiền trước'),
(1310, 18, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(1311, 18, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(1312, 18, 'Nội dung', 'Nội dung'),
(1313, 18, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(1314, 18, 'Nhập số tiền cần nạp', 'ใส่จำนวนเงินที่จะฝาก'),
(1315, 18, 'Tạo hoá đơn', 'สร้างใบแจ้งหนี้'),
(1316, 18, 'Nhập số tiền bạn cần nạp vào hệ thống', 'ระบุจำนวนที่ต้องการฝากเข้าระบบ'),
(1317, 18, 'Hoá Đơn', 'ใบแจ้งหนี้'),
(1318, 18, 'Trạng thái', 'Trạng thái'),
(1319, 18, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(1320, 18, 'Huỷ bỏ', 'Huỷ bỏ'),
(1321, 18, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(1322, 18, 'Đã thanh toán', 'Đã thanh toán'),
(1323, 18, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(1324, 18, 'Vui lòng nhập số tiền cần nạp', 'กรุณากรอกจำนวนเงินที่จะฝาก'),
(1325, 18, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(1326, 18, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(1327, 18, 'Số tiền nạp tối thiểu là', 'จำนวนเงินฝากขั้นต่ำคือ'),
(1328, 18, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'คุณมีใบแจ้งหนี้ที่รอดำเนินการมากเกินไปสำหรับวันนั้น'),
(1329, 18, 'Tạo hoá đơn nạp tiền', 'สร้างใบแจ้งหนี้การเติมเงิน'),
(1330, 18, 'Tạo hoá đơn thành công', 'การสร้างใบแจ้งหนี้ที่ประสบความสำเร็จ'),
(1331, 18, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'การสร้างใบแจ้งหนี้ล้มเหลว โปรดลองอีกครั้ง'),
(1332, 18, 'Chi tiết hoá đơn', 'รายละเอียดใบแจ้งหนี้'),
(1333, 18, 'Tải Về', 'Tải Về'),
(1334, 18, 'Xoá', 'Xoá'),
(1335, 18, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(1336, 18, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(1337, 18, 'Đồng Ý', 'Đồng Ý'),
(1338, 18, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(1339, 18, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(1340, 18, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(1341, 18, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(1342, 18, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(1343, 18, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(1344, 18, 'Sao Chép', 'Sao Chép'),
(1345, 18, 'Quay Lại', 'Quay Lại'),
(1346, 18, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(1347, 18, 'Đánh giá ngay', 'Đánh giá ngay'),
(1348, 18, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(1349, 18, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(1350, 18, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(1351, 18, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(1352, 18, 'Xác Nhận', 'Xác Nhận'),
(1353, 18, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(1354, 18, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(1355, 18, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(1356, 18, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(1357, 18, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(1358, 18, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(1359, 18, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(1360, 18, 'Sản phẩm mới', 'Sản phẩm mới'),
(1361, 18, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(1362, 18, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(1363, 18, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(1364, 18, 'Tạo hoá đơn nạp tiền qua PayPal', 'สร้างใบแจ้งหนี้การเติมเงินผ่าน PayPal'),
(1365, 18, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(1366, 18, 'Giá', 'Giá'),
(1367, 18, 'MUA NGAY', 'MUA NGAY'),
(1368, 18, 'Đã bán', 'Đã bán'),
(1369, 18, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(1370, 18, 'Quốc gia', 'Quốc gia'),
(1371, 18, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(1372, 18, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(1373, 18, 'Tên sản phẩm', 'Tên sản phẩm'),
(1374, 18, 'Hiện có', 'Hiện có'),
(1375, 18, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(1376, 18, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(1377, 18, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(1378, 18, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(1379, 18, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(1380, 18, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(1381, 18, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(1382, 18, 'Số lượng cần mua', 'Số lượng cần mua'),
(1383, 18, 'Mã giảm giá', 'Mã giảm giá'),
(1384, 18, 'Đánh giá', 'Đánh giá'),
(1385, 18, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(1386, 18, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(1387, 18, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(1388, 18, 'FAQ', 'FAQ'),
(1389, 18, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(1390, 18, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(1391, 18, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(1392, 18, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(1393, 18, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(1394, 18, 'Tài Liệu API', 'Tài Liệu API'),
(1395, 18, 'Số Dư', 'Số Dư'),
(1396, 18, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(1397, 18, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(1398, 18, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(1399, 18, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(1400, 18, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(1401, 18, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(1402, 18, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(1403, 18, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(1404, 18, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(1405, 18, 'Tài khoản', 'Tài khoản'),
(1406, 18, 'Tài khoản:', 'Tài khoản:'),
(1407, 18, 'Số lượng mua:', 'Số lượng mua:'),
(1408, 18, 'Thông báo', 'Thông báo'),
(1409, 18, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(1410, 18, 'Nạp Thẻ', 'Nạp Thẻ'),
(1411, 18, 'Lưu Ý', 'Lưu Ý'),
(1412, 18, 'Lý do', 'Lý do'),
(1413, 18, 'Thực nhận', 'Thực nhận'),
(1414, 18, 'Nhà mạng', 'Nhà mạng'),
(1415, 18, 'Chính sách bảo mật', 'นโยบายความเป็นส่วนตัว'),
(1416, 18, 'Điều khoản sử dụng', 'ข้อกำหนดการใช้งาน'),
(1417, 18, 'Captcha không chính xác', 'Captcha không chính xác'),
(1418, 18, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1419, 18, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1420, 18, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1421, 18, 'Bật', 'Bật'),
(1422, 18, 'Tắt', 'Tắt'),
(1423, 18, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1424, 18, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1425, 18, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1426, 18, 'Mã Xác Minh', 'Mã Xác Minh'),
(1427, 18, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1428, 18, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1429, 18, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1430, 18, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1431, 18, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1432, 18, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1433, 18, 'Xác minh 2FA', 'Xác minh 2FA'),
(1434, 18, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1435, 18, 'Xác Minh OTP', 'Xác Minh OTP'),
(1436, 18, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1437, 18, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1438, 18, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1439, 18, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1440, 18, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1441, 18, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1442, 18, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1443, 18, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1444, 18, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1445, 18, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1446, 18, 'Mở hộp quà', 'Mở hộp quà'),
(1447, 18, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1448, 18, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1449, 18, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1450, 18, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1451, 18, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1452, 18, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1453, 18, 'Phiên bản', 'Phiên bản'),
(1454, 18, 'Số tiền nạp', 'Số tiền nạp'),
(1455, 18, 'Lịch sử nạp PayPal', 'Lịch sử nạp PayPal'),
(1456, 18, 'Thành công', 'Thành công'),
(1457, 18, 'Cảm ơn bạn đã mua hàng', 'Cảm ơn bạn đã mua hàng'),
(1458, 18, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây'),
(1459, 18, 'Tổng thanh toán', 'Tổng thanh toán'),
(1460, 18, 'Xem chi tiết đơn hàng', 'Xem chi tiết đơn hàng'),
(1461, 18, 'Xem Ngay', 'Xem Ngay'),
(1462, 18, 'Tạo hoá đơn nạp tiền thành công', 'สร้างใบแจ้งหนี้การเติมเงินสำเร็จ'),
(1463, 18, 'Vòng quay may mắn', 'Vòng quay may mắn'),
(1464, 18, 'Đang chờ kết quả...', 'Đang chờ kết quả...'),
(1465, 18, 'Lịch Sử Quay Thưởng', 'Lịch Sử Quay Thưởng'),
(1466, 18, 'Số lượt quay hiện tại của bạn đã hết', 'Số lượt quay hiện tại của bạn đã hết'),
(1467, 18, 'Chúc mừng bạn đã quay được phần thường', 'Chúc mừng bạn đã quay được phần thường'),
(1468, 18, 'Chức năng này đang được bảo trì', 'Chức năng này đang được bảo trì'),
(1469, 18, 'Cách kiếm thêm lượt quay', 'Cách kiếm thêm lượt quay'),
(1470, 18, 'Thực Hiện', 'Thực Hiện'),
(1471, 18, 'Thanh Toán Bằng Perfect Money', 'Thanh Toán Bằng Perfect Money'),
(1472, 18, 'Khuôn Mặt Ngẫu Nhiên', 'Khuôn Mặt Ngẫu Nhiên'),
(1473, 18, 'Bạn chưa đăng nhập', 'Bạn chưa đăng nhập'),
(1474, 18, 'Mua', 'Mua'),
(1475, 18, 'với giá', 'với giá'),
(1476, 18, 'Giao Dịch Dần Đây Của Hệ Thống', 'Giao Dịch Dần Đây Của Hệ Thống'),
(1477, 18, 'giây trước', 'giây trước'),
(1478, 18, 'năm trước', 'năm trước'),
(1479, 18, 'tháng trước', 'tháng trước'),
(1480, 18, 'tuần trước', 'tuần trước'),
(1481, 18, 'ngày trước', 'ngày trước'),
(1482, 18, 'Hôm qua', 'Hôm qua'),
(1483, 18, 'tiếng trước', 'tiếng trước'),
(1484, 18, 'phút trước', 'phút trước'),
(1485, 18, 'Sao Chép Tất Cả', 'Sao Chép Tất Cả'),
(1486, 18, 'Bài viết nổi bật', 'Bài viết nổi bật'),
(1487, 18, 'Danh sách bài viết', 'Danh sách bài viết'),
(1488, 18, 'HẾT HÀNG', 'HẾT HÀNG'),
(1489, 18, 'MUA TÀI KHOẢN', 'ซื้อบัญชีผู้หญิง'),
(1490, 18, 'MUA TÀI LIỆU', 'ซื้อวัสดุ'),
(1491, 18, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v'),
(1492, 18, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v'),
(1493, 18, 'XEM CỬA HÀNG', 'XEM CỬA HÀNG'),
(1494, 18, 'Danh sách TUT/Trick', 'Danh sách TUT/Trick'),
(1495, 18, 'Chuyên mục', 'Chuyên mục'),
(1496, 18, 'Ngày đăng', 'วันที่ส่ง'),
(1497, 18, 'Cập nhật', 'อัปเดต'),
(1498, 18, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'คุณไม่สามารถใช้ฟังก์ชันนี้ได้เนื่องจากเป็นไซต์สาธิต'),
(1499, 18, 'Tổng nạp lớn hơn hoặc bằng', 'ค่าใช้จ่ายทั้งหมดมากกว่าหรือเท่ากับ'),
(1500, 18, 'Khuyến mãi thêm', 'โปรโมชั่นพิเศษ'),
(1501, 18, 'Số tiền nhận được', 'จำนวนเงินที่ได้รับ'),
(1502, 18, 'Ví', 'กระเป๋าสตางค์'),
(1503, 18, 'Giảm', 'ลด'),
(1504, 18, 'ĐƠN HÀNG GẦN ĐÂY', 'คำสั่งซื้อล่าสุด'),
(1505, 18, 'NẠP TIỀN GẦN ĐÂY', 'เงินฝากล่าสุด'),
(1506, 18, 'Gợi ý sản phẩm cho bạn', 'แนะนำสินค้าสำหรับคุณ');
INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(1507, 18, 'Bảng Xếp Hạng', 'ชาร์ต'),
(1508, 18, 'Bài Viết', 'Posts'),
(1509, 18, 'Công Cụ', 'เครื่องมือ'),
(1510, 18, 'Bảng Xếp Hạng Nạp Tiền', 'กระดานผู้นำเติมเงิน'),
(1511, 18, 'Xếp Hạng', 'เรตติ้ง'),
(1512, 18, 'Tổng Nạp', 'ยอดเงินฝาก'),
(1513, 18, 'Vị Trí', 'ที่ตั้ง'),
(1514, 18, 'Thành Viên', 'สมาชิก'),
(1515, 18, 'KHÁC', 'อื่นๆ'),
(1516, 8, 'THÔNG TIN CHI TIẾT', 'THÔNG TIN CHI TIẾT'),
(1517, 16, 'THÔNG TIN CHI TIẾT', 'DETAILS'),
(1518, 18, 'THÔNG TIN CHI TIẾT', 'รายละเอียด'),
(1519, 8, 'LINK GIỚI THIỆU CỦA BẠN', 'LINK GIỚI THIỆU CỦA BẠN'),
(1520, 16, 'LINK GIỚI THIỆU CỦA BẠN', 'YOUR INTRODUCTION LINK'),
(1521, 18, 'LINK GIỚI THIỆU CỦA BẠN', 'ลิงค์แนะนำของคุณ'),
(1522, 8, 'Tiếp Thị Liên Kết', 'Tiếp Thị Liên Kết'),
(1523, 16, 'Tiếp Thị Liên Kết', 'Affiliate Program'),
(1524, 18, 'Tiếp Thị Liên Kết', 'การตลาดพันธมิตร'),
(1525, 8, 'TỔNG SỐ CLICK', 'TỔNG SỐ CLICK'),
(1526, 18, 'TỔNG SỐ CLICK', 'TỔNG SỐ CLICK'),
(1527, 16, 'TỔNG SỐ CLICK', 'TOTAL CLICKS'),
(1528, 8, 'ĐĂNG KÝ MỚI', 'ĐĂNG KÝ MỚI'),
(1529, 18, 'ĐĂNG KÝ MỚI', 'ĐĂNG KÝ MỚI'),
(1530, 16, 'ĐĂNG KÝ MỚI', 'NEW SIGN UP'),
(1531, 8, 'HOA HỒNG ĐÃ NHẬN', 'HOA HỒNG ĐÃ NHẬN'),
(1532, 18, 'HOA HỒNG ĐÃ NHẬN', 'HOA HỒNG ĐÃ NHẬN'),
(1533, 16, 'HOA HỒNG ĐÃ NHẬN', 'COMMISSIONS RECEIVED'),
(1534, 8, 'Mức hoa hồng:', 'Mức hoa hồng:'),
(1535, 18, 'Mức hoa hồng:', 'Mức hoa hồng:'),
(1536, 16, 'Mức hoa hồng:', 'Commission level:'),
(1537, 8, 'Số dư hoa hồng khả dụng:', 'Số dư hoa hồng khả dụng:'),
(1538, 18, 'Số dư hoa hồng khả dụng:', 'Số dư hoa hồng khả dụng:'),
(1539, 16, 'Số dư hoa hồng khả dụng:', 'Available commission balance:'),
(1540, 8, 'TỔNG QUAN', 'TỔNG QUAN'),
(1541, 18, 'TỔNG QUAN', 'TỔNG QUAN'),
(1542, 16, 'TỔNG QUAN', 'OVERVIEW'),
(1543, 8, 'RÚT TIỀN', 'RÚT TIỀN'),
(1544, 18, 'RÚT TIỀN', 'RÚT TIỀN'),
(1545, 16, 'RÚT TIỀN', 'WITHDRAW'),
(1546, 8, 'LỊCH SỬ', 'LỊCH SỬ'),
(1547, 18, 'LỊCH SỬ', 'LỊCH SỬ'),
(1548, 16, 'LỊCH SỬ', 'HISTORY'),
(1549, 8, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.'),
(1550, 18, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'คัดลอกที่อยู่นี้และแชร์ให้เพื่อนของคุณ'),
(1551, 16, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share to your friends.'),
(1552, 8, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU'),
(1553, 18, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'รายชื่อเพื่อนที่คุณแนะนำ'),
(1554, 16, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'LIST OF FRIENDS RECOMMENDED BY YOU'),
(1555, 8, 'TẠO YÊU CẦU RÚT TIỀN', 'TẠO YÊU CẦU RÚT TIỀN'),
(1556, 18, 'TẠO YÊU CẦU RÚT TIỀN', 'สร้างคำขอถอนเงิน'),
(1557, 16, 'TẠO YÊU CẦU RÚT TIỀN', 'CREATE WITHDRAWAL REQUEST'),
(1558, 8, 'LỊCH SỬ HOA HỒNG', 'LỊCH SỬ HOA HỒNG'),
(1559, 18, 'LỊCH SỬ HOA HỒNG', 'ประวัติดอกกุหลาบ'),
(1560, 16, 'LỊCH SỬ HOA HỒNG', 'HISTORY OF COMMISSION'),
(1561, 8, 'Ngân hàng:', 'Ngân hàng:'),
(1562, 18, 'Ngân hàng:', 'ธนาคาร:'),
(1563, 16, 'Ngân hàng:', 'Bank:'),
(1564, 8, 'Số tài khoản:', 'Số tài khoản:'),
(1565, 18, 'Số tài khoản:', 'หมายเลขบัญชี:'),
(1566, 16, 'Số tài khoản:', 'Account number:'),
(1567, 8, 'Chủ tài khoản:', 'Chủ tài khoản:'),
(1568, 18, 'Chủ tài khoản:', 'ผู้ถือบัญชี:'),
(1569, 16, 'Chủ tài khoản:', 'Account holder:'),
(1570, 8, 'Số tiền cần rút:', 'Số tiền cần rút:'),
(1571, 18, 'Số tiền cần rút:', 'จำนวนเงินที่จะถอน:'),
(1572, 16, 'Số tiền cần rút:', 'Amount to withdraw:'),
(1573, 8, 'DANH SÁCH ĐƠN RÚT TIỀN', 'DANH SÁCH ĐƠN RÚT TIỀN'),
(1574, 18, 'DANH SÁCH ĐƠN RÚT TIỀN', 'รายชื่อใบสมัครถอนเงิน'),
(1575, 16, 'DANH SÁCH ĐƠN RÚT TIỀN', 'LIST OF WITHDRAWAL APPLICATIONS'),
(1576, 16, 'Số dư API không đủ, vui lòng liên hệ admin', 'Số dư API không đủ, vui lòng liên hệ admin'),
(1577, 18, 'Số dư API không đủ, vui lòng liên hệ admin', 'การทำธุรกรรมล้มเหลว โปรดติดต่อผู้ดูแลระบบ'),
(1578, 8, 'Số dư API không đủ, vui lòng liên hệ admin', 'Giao dịch thất bại, vui lòng liên hệ Admin'),
(1582, 16, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1583, 18, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1584, 8, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1585, 8, 'Quét mã QR để thanh toán', 'Quét mã QR để thanh toán'),
(1586, 18, 'Quét mã QR để thanh toán', 'Quét mã QR để thanh toán'),
(1587, 16, 'Quét mã QR để thanh toán', 'Scan QR code to pay'),
(1588, 8, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Vui lòng nhập đúng nội dung chuyển tiền'),
(1589, 18, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Vui lòng nhập đúng nội dung chuyển tiền'),
(1590, 16, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Please enter the correct remittance information'),
(1591, 8, 'Nội dung chuyển tiền', 'Nội dung chuyển tiền'),
(1592, 18, 'Nội dung chuyển tiền', 'Nội dung chuyển tiền'),
(1593, 16, 'Nội dung chuyển tiền', 'Money transfer content'),
(1594, 8, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1595, 18, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1596, 16, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1597, 8, 'Số tiền cần chuyển là', 'Số tiền cần chuyển là'),
(1598, 18, 'Số tiền cần chuyển là', 'Số tiền cần chuyển là'),
(1599, 16, 'Số tiền cần chuyển là', 'Amount to transfer is'),
(1600, 8, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công'),
(1601, 18, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công'),
(1602, 16, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'The system automatically processes the transaction when the money transfer is successful'),
(1603, 8, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.'),
(1604, 18, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.'),
(1605, 16, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Please pay to the above account information for the system to process the invoice automatically.'),
(1606, 8, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1607, 18, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1608, 16, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Use &lt;b&gt;MoMo App&lt;/b&gt; or a camera app that supports QR code to scan the code'),
(1609, 8, 'Số tiền cần thanh toán', 'Số tiền cần thanh toán'),
(1610, 18, 'Số tiền cần thanh toán', 'Số tiền cần thanh toán'),
(1611, 16, 'Số tiền cần thanh toán', 'Amount to be paid'),
(1612, 8, 'Nội dung chuyển khoản', 'Nội dung chuyển khoản'),
(1613, 18, 'Nội dung chuyển khoản', 'Nội dung chuyển khoản'),
(1614, 16, 'Nội dung chuyển khoản', 'Transfer Contents'),
(1615, 8, 'Chủ tài khoản', 'Chủ tài khoản'),
(1616, 18, 'Chủ tài khoản', 'Chủ tài khoản'),
(1617, 16, 'Chủ tài khoản', 'Account holder'),
(1618, 8, 'Số tài khoản', 'Số tài khoản'),
(1619, 18, 'Số tài khoản', 'Số tài khoản'),
(1620, 16, 'Số tài khoản', 'Account number'),
(1621, 8, 'Thanh toán hoá đơn', 'Thanh toán hoá đơn'),
(1622, 18, 'Thanh toán hoá đơn', 'Thanh toán hoá đơn'),
(1623, 16, 'Thanh toán hoá đơn', 'Payment bills'),
(1624, 8, 'LƯỢT QUAY CÒN LẠI:', 'LƯỢT QUAY CÒN LẠI:'),
(1625, 18, 'LƯỢT QUAY CÒN LẠI:', 'LƯỢT QUAY CÒN LẠI:'),
(1627, 8, 'LƯỢT QUAY CÒN LẠI', 'LƯỢT QUAY CÒN LẠI'),
(1628, 18, 'LƯỢT QUAY CÒN LẠI', 'LƯỢT QUAY CÒN LẠI'),
(1629, 16, 'LƯỢT QUAY CÒN LẠI', 'SPIN'),
(1630, 8, 'KIẾM LƯỢT QUAY', 'KIẾM LƯỢT QUAY'),
(1631, 18, 'KIẾM LƯỢT QUAY', 'KIẾM LƯỢT QUAY'),
(1632, 16, 'KIẾM LƯỢT QUAY', 'EARNING SPIN'),
(1633, 8, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng'),
(1634, 18, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng'),
(1635, 16, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Pay for an order with a price greater than or equal to'),
(1636, 8, 'sẽ nhận được thêm 1 lượt quay.', 'sẽ nhận được thêm 1 lượt quay.'),
(1637, 18, 'sẽ nhận được thêm 1 lượt quay.', 'sẽ nhận được thêm 1 lượt quay.'),
(1638, 16, 'sẽ nhận được thêm 1 lượt quay.', 'will get 1 extra spin.'),
(1639, 8, 'QUAY NGAY', 'QUAY NGAY'),
(1640, 18, 'QUAY NGAY', 'QUAY NGAY'),
(1641, 16, 'QUAY NGAY', 'START'),
(1642, 8, 'Thất bại', 'Thất bại'),
(1643, 18, 'Thất bại', 'Thất bại'),
(1644, 16, 'Thất bại', 'Error'),
(1645, 8, 'Cảnh báo', 'Cảnh báo'),
(1646, 18, 'Cảnh báo', 'Cảnh báo'),
(1647, 16, 'Cảnh báo', 'Warning'),
(1648, 8, 'Chọn ngân hàng cần rút', 'Chọn ngân hàng cần rút'),
(1649, 18, 'Chọn ngân hàng cần rút', 'Chọn ngân hàng cần rút'),
(1650, 16, 'Chọn ngân hàng cần rút', 'Select the bank to withdraw'),
(1651, 8, 'Nhập số tài khoản cần rút', 'Nhập số tài khoản cần rút'),
(1652, 18, 'Nhập số tài khoản cần rút', 'Nhập số tài khoản cần rút'),
(1653, 16, 'Nhập số tài khoản cần rút', 'Enter the account number to withdraw'),
(1654, 8, 'Nhập tên chủ tài khoản', 'Nhập tên chủ tài khoản'),
(1655, 18, 'Nhập tên chủ tài khoản', 'Nhập tên chủ tài khoản'),
(1656, 16, 'Nhập tên chủ tài khoản', 'Enter the account holder\\\'s name'),
(1657, 8, 'Nhập số dư hoa hồng cần rút', 'Nhập số dư hoa hồng cần rút'),
(1658, 18, 'Nhập số dư hoa hồng cần rút', 'Nhập số dư hoa hồng cần rút'),
(1659, 16, 'Nhập số dư hoa hồng cần rút', 'Enter the commission balance to withdraw'),
(1660, 8, 'Vui lòng chọn ngân hàng cần rút', 'Vui lòng chọn ngân hàng cần rút'),
(1661, 18, 'Vui lòng chọn ngân hàng cần rút', 'Vui lòng chọn ngân hàng cần rút'),
(1662, 16, 'Vui lòng chọn ngân hàng cần rút', 'Please select the bank to withdraw'),
(1663, 8, 'RÚT NGAY', 'RÚT NGAY'),
(1664, 18, 'RÚT NGAY', 'RÚT NGAY'),
(1665, 16, 'RÚT NGAY', 'WITHDRAW NOW'),
(1666, 8, 'Vui lòng nhập số tài khoản cần rút', 'Vui lòng nhập số tài khoản cần rút'),
(1667, 18, 'Vui lòng nhập số tài khoản cần rút', 'Vui lòng nhập số tài khoản cần rút'),
(1668, 16, 'Vui lòng nhập số tài khoản cần rút', 'Please enter the account number to withdraw'),
(1669, 8, 'Vui lòng nhập tên chủ tài khoản', 'Vui lòng nhập tên chủ tài khoản'),
(1670, 18, 'Vui lòng nhập tên chủ tài khoản', 'Vui lòng nhập tên chủ tài khoản'),
(1671, 16, 'Vui lòng nhập tên chủ tài khoản', 'Please enter the account holder\\\'s name'),
(1672, 8, 'Vui lòng nhập số tiền cần rút', 'Vui lòng nhập số tiền cần rút'),
(1673, 18, 'Vui lòng nhập số tiền cần rút', 'Vui lòng nhập số tiền cần rút'),
(1674, 16, 'Vui lòng nhập số tiền cần rút', 'Please enter the amount to withdraw'),
(1675, 8, 'NẠP TIỀN QUA CRYPTO', 'NẠP TIỀN QUA CRYPTO'),
(1676, 18, 'NẠP TIỀN QUA CRYPTO', 'NẠP TIỀN QUA CRYPTO'),
(1677, 16, 'NẠP TIỀN QUA CRYPTO', 'CRYPTO PAYMENT'),
(1678, 8, 'LỊCH SỬ NẠP CRYPTO', 'LỊCH SỬ NẠP CRYPTO'),
(1679, 18, 'LỊCH SỬ NẠP CRYPTO', 'LỊCH SỬ NẠP CRYPTO'),
(1680, 16, 'LỊCH SỬ NẠP CRYPTO', 'CRYPTO HISTORY'),
(1681, 8, 'Nhập số tiền:', 'Nhập số tiền:'),
(1682, 18, 'Nhập số tiền:', 'Nhập số tiền:'),
(1683, 16, 'Nhập số tiền:', 'Enter amount:'),
(1684, 8, 'Nhập số tiền: (USD)', 'Nhập số tiền: (USD)'),
(1685, 18, 'Nhập số tiền: (USD)', 'Nhập số tiền: (USD)'),
(1686, 16, 'Nhập số tiền: (USD)', 'Enter amount: (USD)'),
(1687, 8, 'thực hiện nạp', 'thực hiện nạp'),
(1688, 18, 'thực hiện nạp', 'thực hiện nạp'),
(1689, 16, 'thực hiện nạp', 'recharge');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `ctv` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `login_attempts` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `time_session` int(11) DEFAULT '0',
  `time_request` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` float NOT NULL DEFAULT '0',
  `total_money` float NOT NULL DEFAULT '0',
  `rankings` int(11) NOT NULL DEFAULT '0',
  `icon_ranking` text COLLATE utf8_unicode_ci,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `device` text COLLATE utf8_unicode_ci,
  `avatar` text COLLATE utf8_unicode_ci,
  `status_2fa` int(11) NOT NULL DEFAULT '0',
  `SecretKey_2fa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chietkhau` float NOT NULL DEFAULT '0',
  `spin` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `ref_click` int(11) NOT NULL DEFAULT '0',
  `ref_money` float NOT NULL DEFAULT '0',
  `ref_total_money` float NOT NULL DEFAULT '0',
  `ref_amount` float NOT NULL DEFAULT '0',
  `ref_ck` float NOT NULL DEFAULT '0',
  `change_password` int(11) NOT NULL DEFAULT '0',
  `token_forgot_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_forgot_password` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(661, 'admin', '$2a$10$F81A1hu0DC4RCnRvQs2NK.lVDKEt5nu5nmsusYw3lXGHFi8DIPllm', 'admin@cmsnt.co', NULL, NULL, 1, 0, 0, 0, 0, '2022-07-20 21:50:20', '2022-07-20 21:50:20', 1685542053, 1685541766, '::1', 'd9fe3e1de4e1f646444e3cbad3a0990b', 704211, 1208030, 0, NULL, 'Male', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, 0, 'IDSSEL7SXQ5XUA54', 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_ref`
--

CREATE TABLE `withdraw_ref` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connect_api`
--
ALTER TABLE `connect_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `coupon_used`
--
ALTER TABLE `coupon_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Indexes for table `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sending`
--
ALTER TABLE `email_sending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `ip_white`
--
ALTER TABLE `ip_white`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_ref`
--
ALTER TABLE `log_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nowpayments`
--
ALTER TABLE `nowpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `order_autofb`
--
ALTER TABLE `order_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_service`
--
ALTER TABLE `order_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_history`
--
ALTER TABLE `otp_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_paypal`
--
ALTER TABLE `payment_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_pm`
--
ALTER TABLE `payment_pm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_autofb`
--
ALTER TABLE `rate_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_email`
--
ALTER TABLE `send_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server2_autobank`
--
ALTER TABLE `server2_autobank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `service_otp`
--
ALTER TABLE `service_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `spin_history`
--
ALTER TABLE `spin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_option`
--
ALTER TABLE `spin_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_fanpage`
--
ALTER TABLE `store_fanpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_email`
--
ALTER TABLE `task_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `BillCode` (`BillCode`);

--
-- Indexes for table `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112247;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banned_ips`
--
ALTER TABLE `banned_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category_service`
--
ALTER TABLE `category_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `connect_api`
--
ALTER TABLE `connect_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_used`
--
ALTER TABLE `coupon_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sending`
--
ALTER TABLE `email_sending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftbox`
--
ALTER TABLE `giftbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_white`
--
ALTER TABLE `ip_white`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log_ref`
--
ALTER TABLE `log_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nowpayments`
--
ALTER TABLE `nowpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_autofb`
--
ALTER TABLE `order_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_service`
--
ALTER TABLE `order_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_history`
--
ALTER TABLE `otp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_paypal`
--
ALTER TABLE `payment_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_pm`
--
ALTER TABLE `payment_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rate_autofb`
--
ALTER TABLE `rate_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `send_email`
--
ALTER TABLE `send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server2_autobank`
--
ALTER TABLE `server2_autobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_order`
--
ALTER TABLE `service_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_otp`
--
ALTER TABLE `service_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `spin_history`
--
ALTER TABLE `spin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_option`
--
ALTER TABLE `spin_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `store_fanpage`
--
ALTER TABLE `store_fanpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_email`
--
ALTER TABLE `task_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1690;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=874;

--
-- AUTO_INCREMENT for table `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
