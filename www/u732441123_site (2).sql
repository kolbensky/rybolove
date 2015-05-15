
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 21 2015 г., 17:15
-- Версия сервера: 10.0.13-MariaDB
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u732441123_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounting1c`
--

CREATE TABLE IF NOT EXISTS `accounting1c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ActionLog`
--

CREATE TABLE IF NOT EXISTS `ActionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `event` tinyint(255) DEFAULT NULL,
  `model_name` varchar(50) DEFAULT '',
  `model_title` text,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `event` (`event`),
  KEY `datetime` (`datetime`),
  KEY `model_name` (`model_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331 ;

--
-- Дамп данных таблицы `ActionLog`
--

INSERT INTO `ActionLog` (`id`, `username`, `event`, `model_name`, `model_title`, `datetime`) VALUES
(1, 'admin', 1, 'Order', NULL, '2014-12-04 00:17:33'),
(2, 'admin', 2, 'Order', '1', '2014-12-04 00:17:44'),
(3, 'admin', 2, 'Order', '1', '2014-12-04 00:17:54'),
(4, 'admin', 2, 'Order', '1', '2014-12-04 00:17:55'),
(5, 'admin', 2, 'Order', '1', '2014-12-04 00:18:11'),
(6, 'admin', 2, 'Order', '1', '2014-12-04 00:18:11'),
(7, 'admin', 2, 'Order', '1', '2014-12-04 00:18:11'),
(8, 'admin', 2, 'Order', '1', '2014-12-04 00:18:11'),
(9, 'admin', 2, 'Order', '1', '2014-12-04 00:18:28'),
(10, 'admin', 2, 'Order', '1', '2014-12-04 00:18:28'),
(11, 'admin', 2, 'Order', '1', '2014-12-04 00:18:28'),
(12, 'admin', 2, 'Order', '1', '2014-12-04 00:18:28'),
(13, 'admin', 1, 'OrderStatus', 'проверен', '2014-12-04 00:18:49'),
(14, 'admin', 1, 'OrderStatus', 'возврат', '2014-12-04 00:18:56'),
(15, 'admin', 1, 'SSystemLanguage', 'Українська', '2014-12-04 00:20:41'),
(16, 'admin', 1, 'SSystemLanguage', 'Укр', '2014-12-04 00:26:05'),
(17, 'admin', 2, 'Comment', 'dsfafjhadkfs kjahfd ', '2014-12-04 00:29:02'),
(18, 'admin', 3, 'SSystemLanguage', 'Укр', '2014-12-04 00:48:35'),
(19, 'admin', 2, 'SSystemLanguage', 'English', '2014-12-04 00:49:00'),
(20, 'admin', 2, 'User', 'successus', '2014-12-04 23:29:35'),
(21, 'successus', 2, 'User', 'admin2', '2014-12-04 23:31:25'),
(22, 'successus', 2, 'User', 'admin', '2014-12-04 23:31:58'),
(23, 'admin', 1, 'User', 'kolbensky', '2014-12-04 23:41:37'),
(24, 'admin', 2, 'User', 'admin', '2014-12-04 23:49:07'),
(25, 'admin', 3, 'StoreProduct', 'LG Flatron IPS226V', '2014-12-10 22:13:13'),
(26, 'admin', 3, 'StoreProduct', 'Samsung SyncMaster S22A350N', '2014-12-10 22:13:18'),
(27, 'admin', 3, 'StoreProduct', 'Philips 237E3QPHSU', '2014-12-13 23:35:56'),
(28, 'admin', 3, 'StoreProduct', 'Philips 227E3LSU', '2014-12-13 23:35:59'),
(29, 'admin', 3, 'StoreProduct', 'HP ZR2740w', '2014-12-13 23:36:01'),
(30, 'admin', 3, 'StoreProduct', 'HP ZR2440w', '2014-12-13 23:36:12'),
(31, 'admin', 3, 'StoreProduct', 'Samsung Galaxy Ace II', '2014-12-13 23:36:31'),
(32, 'admin', 3, 'StoreProduct', 'Lenovo G570', '2014-12-13 23:36:50'),
(33, 'admin', 3, 'StoreProduct', 'ASUS K53U', '2014-12-13 23:36:50'),
(34, 'admin', 3, 'StoreProduct', 'ASUS X54C', '2014-12-13 23:36:50'),
(35, 'admin', 3, 'StoreProduct', 'DELL INSPIRON N5050', '2014-12-13 23:36:50'),
(36, 'admin', 3, 'StoreProduct', 'Fujitsu LIFEBOOK AH531', '2014-12-13 23:36:50'),
(37, 'admin', 3, 'StoreProduct', 'HP EliteBook 8560w', '2014-12-13 23:36:50'),
(38, 'admin', 3, 'StoreProduct', 'DELL ALIENWARE M17x', '2014-12-13 23:36:50'),
(39, 'admin', 3, 'StoreProduct', 'Apple MacBook Pro 15 Late 2011', '2014-12-13 23:36:50'),
(40, 'admin', 3, 'StoreProduct', 'Lenovo THINKPAD W520', '2014-12-13 23:36:50'),
(41, 'admin', 3, 'StoreProduct', 'Sony VAIO VPC-F13S8R', '2014-12-13 23:36:50'),
(42, 'admin', 3, 'StoreProduct', 'Acer ASPIRE 5943G-7748G75TWiss', '2014-12-13 23:36:50'),
(43, 'admin', 3, 'StoreProduct', 'Logitech X-530', '2014-12-13 23:36:50'),
(44, 'admin', 3, 'StoreProduct', 'Microlab M-860', '2014-12-13 23:36:50'),
(45, 'admin', 3, 'StoreProduct', 'Edifier M3700', '2014-12-13 23:36:50'),
(46, 'admin', 3, 'StoreProduct', 'Logitech Z-313', '2014-12-13 23:36:50'),
(47, 'admin', 3, 'StoreProduct', 'Sven SPS-820', '2014-12-13 23:36:50'),
(48, 'admin', 3, 'StoreProduct', 'HTC One XL', '2014-12-13 23:36:50'),
(49, 'admin', 3, 'StoreProduct', 'HTC Sensation XL', '2014-12-13 23:36:50'),
(50, 'admin', 3, 'StoreProduct', 'Apple iPhone 4S 16Gb', '2014-12-13 23:36:50'),
(51, 'admin', 3, 'StoreProduct', 'Apple iPhone 3GS 8Gb', '2014-12-13 23:36:50'),
(52, 'admin', 3, 'StoreProduct', 'Apple iPhone 4 16Gb', '2014-12-13 23:36:50'),
(53, 'admin', 3, 'StoreProduct', 'Nokia N9', '2014-12-13 23:36:50'),
(54, 'admin', 3, 'StoreProduct', 'BlackBerry Bold 9900', '2014-12-13 23:36:50'),
(55, 'admin', 3, 'StoreProduct', 'BlackBerry Bold 9780', '2014-12-13 23:36:50'),
(56, 'admin', 3, 'StoreProduct', 'Apple iPad 2 16Gb Wi-Fi + 3G', '2014-12-13 23:36:50'),
(57, 'admin', 3, 'StoreProduct', 'Apple iPad 2 64Gb Wi-Fi + 3G', '2014-12-13 23:36:50'),
(58, 'admin', 3, 'StoreProduct', 'Samsung Galaxy Tab 7.0 Plus P6200 16GB', '2014-12-13 23:36:50'),
(59, 'admin', 3, 'StoreProduct', 'Acer Iconia Tab A100 8Gb', '2014-12-13 23:36:50'),
(60, 'admin', 3, 'StoreProduct', 'Asus Transformer Pad Prime 201 64Gb', '2014-12-13 23:36:50'),
(61, 'admin', 3, 'StoreProduct', 'Samsung Galaxy Tab 10.1 P7500 16Gb', '2014-12-13 23:36:50'),
(62, 'admin', 3, 'StoreProduct', 'Lenovo B570', '2014-12-13 23:37:00'),
(63, 'admin', 3, 'StoreProduct', 'Edifier M1385', '2014-12-13 23:37:00'),
(64, 'admin', 3, 'StoreProduct', 'Edifier X600', '2014-12-13 23:37:00'),
(65, 'admin', 3, 'StoreProduct', 'Microlab FC 362', '2014-12-13 23:37:00'),
(66, 'admin', 3, 'StoreProduct', 'DELL U2412M', '2014-12-13 23:37:00'),
(67, 'admin', 3, 'StoreProduct', 'DELL U2312HM', '2014-12-13 23:37:00'),
(68, 'admin', 3, 'StoreProduct', 'LG Flatron M2250D', '2014-12-13 23:37:00'),
(69, 'admin', 3, 'StoreProductType', 'Простой продукт', '2014-12-13 23:37:49'),
(70, 'admin', 3, 'StoreProductType', 'Ноутбук', '2014-12-13 23:37:49'),
(71, 'admin', 3, 'StoreProductType', 'Акустика', '2014-12-13 23:37:49'),
(72, 'admin', 3, 'StoreProductType', 'Монитор', '2014-12-13 23:37:49'),
(73, 'admin', 3, 'StoreProductType', 'Телефон', '2014-12-13 23:37:49'),
(74, 'admin', 3, 'StoreProductType', 'Планшет', '2014-12-13 23:37:49'),
(75, 'admin', 1, 'StoreProductType', 'Балансири', '2014-12-13 23:38:18'),
(76, 'admin', 1, 'StoreProductType', 'Леска зимова', '2014-12-13 23:39:26'),
(77, 'admin', 1, 'StoreProductType', 'Кивки лавсанові', '2014-12-13 23:39:42'),
(78, 'admin', 1, 'StoreProductType', 'кивки залізні', '2014-12-13 23:39:48'),
(79, 'admin', 1, 'StoreProductType', 'Мормишки', '2014-12-13 23:39:53'),
(80, 'admin', 2, 'StoreProductType', 'Кивки залізні', '2014-12-13 23:40:05'),
(81, 'admin', 3, 'StoreManufacturer', 'Lenovo', '2014-12-13 23:41:18'),
(82, 'admin', 3, 'StoreManufacturer', 'Asus', '2014-12-13 23:41:18'),
(83, 'admin', 3, 'StoreManufacturer', 'Dell', '2014-12-13 23:41:18'),
(84, 'admin', 3, 'StoreManufacturer', 'Fujitsu', '2014-12-13 23:41:18'),
(85, 'admin', 3, 'StoreManufacturer', 'HP', '2014-12-13 23:41:18'),
(86, 'admin', 3, 'StoreManufacturer', 'Apple', '2014-12-13 23:41:18'),
(87, 'admin', 3, 'StoreManufacturer', 'Sony', '2014-12-13 23:41:18'),
(88, 'admin', 3, 'StoreManufacturer', 'Acer', '2014-12-13 23:41:18'),
(89, 'admin', 3, 'StoreManufacturer', 'Logitech', '2014-12-13 23:41:18'),
(90, 'admin', 3, 'StoreManufacturer', 'Microlab', '2014-12-13 23:41:18'),
(91, 'admin', 3, 'StoreManufacturer', 'Edifier', '2014-12-13 23:41:18'),
(92, 'admin', 3, 'StoreManufacturer', 'Sven', '2014-12-13 23:41:18'),
(93, 'admin', 3, 'StoreManufacturer', 'LG', '2014-12-13 23:41:18'),
(94, 'admin', 3, 'StoreManufacturer', 'Samsung', '2014-12-13 23:41:18'),
(95, 'admin', 3, 'StoreManufacturer', 'Philips', '2014-12-13 23:41:18'),
(96, 'admin', 3, 'StoreManufacturer', 'HTC', '2014-12-13 23:41:18'),
(97, 'admin', 3, 'StoreManufacturer', 'Nokia', '2014-12-13 23:41:18'),
(98, 'admin', 3, 'StoreManufacturer', 'BlackBerry', '2014-12-13 23:41:18'),
(99, 'admin', 1, 'StoreCategory', 'Зимова рибалка', '2014-12-13 23:42:27'),
(100, 'admin', 3, 'StoreCategory', 'Мониторы', '2014-12-13 23:42:51'),
(101, 'admin', 3, 'StoreCategory', 'Телефоны', '2014-12-13 23:42:56'),
(102, 'admin', 3, 'StoreCategory', 'Планшеты', '2014-12-13 23:42:59'),
(103, 'admin', 3, 'StoreCategory', 'Компьютерная акустика', '2014-12-13 23:43:03'),
(104, 'admin', 3, 'StoreCategory', 'Компьютеры', '2014-12-13 23:43:06'),
(105, 'admin', 3, 'StoreCategory', 'Игровой', '2014-12-13 23:43:11'),
(106, 'admin', 3, 'StoreCategory', 'Бюджетный', '2014-12-13 23:43:14'),
(107, 'admin', 3, 'StoreCategory', 'Ноутбуки', '2014-12-13 23:43:19'),
(108, 'admin', 1, 'StoreManufacturer', 'Укр. Пласт', '2014-12-13 23:45:16'),
(109, 'admin', 1, 'StoreProduct', 'Винт', '2014-12-13 23:46:54'),
(110, 'admin', 2, 'StoreProduct', 'Винт', '2014-12-13 23:49:06'),
(111, 'admin', 2, 'StoreProduct', 'Винт', '2014-12-13 23:50:13'),
(112, 'admin', 2, 'StoreProduct', 'Винт', '2014-12-13 23:50:37'),
(113, 'admin', 3, 'StoreAttribute', 'processor_manufacturer', '2014-12-13 23:50:58'),
(114, 'admin', 3, 'StoreAttribute', 'sound_type', '2014-12-13 23:50:58'),
(115, 'admin', 3, 'StoreAttribute', 'tablet_screen_size', '2014-12-13 23:50:58'),
(116, 'admin', 3, 'StoreAttribute', 'freq', '2014-12-13 23:50:58'),
(117, 'admin', 3, 'StoreAttribute', 'monitor_diagonal', '2014-12-13 23:50:58'),
(118, 'admin', 3, 'StoreAttribute', 'memmory_size', '2014-12-13 23:50:58'),
(119, 'admin', 3, 'StoreAttribute', 'memmory', '2014-12-13 23:50:58'),
(120, 'admin', 3, 'StoreAttribute', 'monitor_dimension', '2014-12-13 23:50:58'),
(121, 'admin', 3, 'StoreAttribute', 'weight', '2014-12-13 23:50:58'),
(122, 'admin', 3, 'StoreAttribute', 'memmory_type', '2014-12-13 23:50:58'),
(123, 'admin', 3, 'StoreAttribute', 'view_angle', '2014-12-13 23:50:58'),
(124, 'admin', 3, 'StoreAttribute', 'screen', '2014-12-13 23:50:58'),
(125, 'admin', 3, 'StoreAttribute', 'phone_platform', '2014-12-13 23:50:58'),
(126, 'admin', 3, 'StoreAttribute', 'screen_dimension', '2014-12-13 23:50:58'),
(127, 'admin', 3, 'StoreAttribute', 'phone_weight', '2014-12-13 23:50:58'),
(128, 'admin', 3, 'StoreAttribute', 'rms_power', '2014-12-13 23:50:58'),
(129, 'admin', 3, 'StoreAttribute', 'phone_display', '2014-12-13 23:50:58'),
(130, 'admin', 3, 'StoreAttribute', 'corpus_material', '2014-12-13 23:50:58'),
(131, 'admin', 3, 'StoreAttribute', 'phone_camera', '2014-12-13 23:50:58'),
(132, 'admin', 1, 'StoreAttribute', 'white', '2014-12-13 23:52:16'),
(133, 'admin', 1, 'StoreProduct', 'Винт', '2014-12-13 23:53:27'),
(134, 'admin', 2, 'StoreProduct', 'Винт', '2014-12-13 23:55:37'),
(135, 'admin', 2, 'StoreProduct', 'Винт', '2014-12-13 23:56:12'),
(136, 'admin', 2, 'StoreProduct', 'Винт', '2014-12-13 23:57:16'),
(137, 'admin', 2, 'StoreProduct', 'Винт бронза', '2014-12-13 23:58:06'),
(138, 'admin', 2, 'StoreProduct', 'Винт білий', '2014-12-13 23:58:15'),
(139, 'admin', 2, 'StoreProduct', 'Винт бронза', '2014-12-14 00:01:16'),
(140, 'admin', 2, 'StoreProduct', 'Винт білий', '2014-12-14 00:02:32'),
(141, 'admin', 1, 'StoreProduct', 'Винт мідь', '2014-12-14 00:03:38'),
(142, 'admin', 2, 'StoreProduct', 'Винт мідь', '2014-12-14 00:04:04'),
(143, 'admin', 2, 'StoreProduct', 'Винт мідь', '2014-12-14 00:05:01'),
(144, 'admin', 2, 'StoreProduct', 'Винт мідь', '2014-12-14 00:05:31'),
(145, 'admin', 2, 'StoreProduct', 'Винт мідь', '2014-12-14 00:07:03'),
(146, 'admin', 1, 'StoreCategory', 'Балансири', '2014-12-14 00:10:38'),
(147, 'admin', 3, 'StoreCategory', 'Балансири', '2014-12-14 00:11:02'),
(148, 'admin', 1, 'StoreCategory', 'догпа', '2014-12-14 00:14:08'),
(149, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:17'),
(150, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:28'),
(151, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:31'),
(152, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:34'),
(153, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:36'),
(154, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:49'),
(155, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:14:51'),
(156, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:15:01'),
(157, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:15:09'),
(158, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:15:13'),
(159, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:15:17'),
(160, 'admin', 2, 'StoreCategory', 'догпа', '2014-12-14 00:15:57'),
(161, 'admin', 2, 'StoreCategory', 'Балансири', '2014-12-14 00:16:10'),
(162, 'admin', 2, 'StoreProduct', 'Винт мідь', '2014-12-14 00:16:41'),
(163, 'admin', 2, 'StoreProduct', 'Винт бронза', '2014-12-14 00:16:50'),
(164, 'admin', 2, 'StoreProduct', 'Винт білий', '2014-12-14 00:16:56'),
(165, 'admin', 2, 'StoreProduct', 'Винт мідь', '2014-12-14 00:17:46'),
(166, 'admin', 1, 'StoreProduct', ',Винт чорний', '2014-12-14 00:20:25'),
(167, 'admin', 2, 'StoreProduct', 'Винт чорний', '2014-12-14 00:20:34'),
(168, 'admin', 2, 'StoreProduct', 'Винт чорний', '2014-12-14 00:21:20'),
(169, 'admin', 2, 'StoreProduct', 'Винт чорний', '2014-12-14 00:22:14'),
(170, 'admin', 1, 'StoreProduct', 'Винт сталь', '2014-12-14 00:24:21'),
(171, 'admin', 2, 'StoreProduct', 'Винт сталь', '2014-12-14 00:24:37'),
(172, 'admin', 2, 'StoreProduct', 'Винт сталь', '2014-12-14 00:25:19'),
(173, 'admin', 2, 'StoreProduct', 'Винт сталь', '2014-12-14 00:26:23'),
(174, 'admin', 1, 'StoreProduct', 'Винт срібло', '2014-12-14 00:28:41'),
(175, 'admin', 2, 'StoreProduct', 'Винт срібло', '2014-12-14 00:29:46'),
(176, 'admin', 2, 'StoreProduct', 'Винт срібло', '2014-12-14 00:30:20'),
(177, 'admin', 2, 'StoreProduct', 'Винт срібло', '2014-12-14 00:41:53'),
(178, 'admin', 1, 'StoreProduct', 'Винт золото', '2014-12-14 00:48:22'),
(179, 'admin', 2, 'StoreProduct', 'Винт золото', '2014-12-14 00:48:36'),
(180, 'admin', 2, 'StoreProduct', 'Винт золото', '2014-12-14 00:50:13'),
(181, 'admin', 2, 'StoreProduct', 'Винт золото', '2014-12-14 00:51:14'),
(182, 'admin', 1, 'StoreProduct', 'Винт сталь', '2014-12-14 00:54:29'),
(183, 'admin', 2, 'StoreProduct', 'Винт сталь', '2014-12-14 00:54:39'),
(184, 'admin', 2, 'StoreProduct', 'Винт сталь', '2014-12-14 00:55:30'),
(185, 'admin', 2, 'StoreProduct', 'Балансир "Оса"', '2014-12-15 14:18:20'),
(186, 'admin', 2, 'StoreProduct', 'Балансир "Оса"', '2014-12-15 14:18:42'),
(187, 'admin', 2, 'StoreProduct', 'Балансир "Оса" сталь', '2014-12-15 14:19:42'),
(188, 'admin', 2, 'StoreProduct', 'Балансир "Оса" чорний', '2014-12-15 14:19:58'),
(189, 'admin', 2, 'StoreProduct', 'Балансир "Оса" срібло', '2014-12-15 14:20:14'),
(190, 'admin', 2, 'StoreProduct', 'Балансир "Оса" мідь', '2014-12-15 14:20:34'),
(191, 'admin', 2, 'StoreProduct', 'Балансир "Оса" бронза', '2014-12-15 14:20:55'),
(192, 'admin', 2, 'StoreProduct', 'Балансир "Оса" білий', '2014-12-15 14:21:06'),
(193, 'admin', 2, 'StoreProduct', 'Балансир "Оса" золото', '2014-12-15 14:21:20'),
(194, 'admin', 3, 'StoreProduct', 'Винт сталь', '2014-12-15 14:21:40'),
(195, 'admin', 2, 'StoreProduct', 'Балансир "Оса" білий', '2014-12-15 14:24:43'),
(196, 'admin', 2, 'StoreProduct', 'Балансир "Оса" мідь', '2014-12-15 14:25:00'),
(197, 'admin', 2, 'StoreProduct', 'Балансир "Оса" бронза', '2014-12-15 14:25:20'),
(198, 'admin', 2, 'StoreProduct', 'Балансир "Оса" чорний', '2014-12-15 14:25:30'),
(199, 'admin', 2, 'StoreProduct', 'Балансир "Оса" сталь', '2014-12-15 14:25:39'),
(200, 'admin', 2, 'StoreProduct', 'Балансир "Оса" срібло', '2014-12-15 14:25:50'),
(201, 'admin', 2, 'StoreProduct', 'Балансир "Оса" золото', '2014-12-15 14:26:01'),
(202, 'admin', 1, 'StoreProduct', 'ForMAX Ice Mystic 30 м.', '2014-12-15 14:27:49'),
(203, 'admin', 1, 'StoreCategory', 'Леска зимова', '2014-12-15 14:28:13'),
(204, 'admin', 2, 'StoreProduct', 'ForMAX Ice Mystic 30 м.', '2014-12-15 14:28:38'),
(205, 'admin', 2, 'StoreProduct', 'ForMAX Ice Mystic 30 м.', '2014-12-15 14:29:12'),
(206, 'admin', 1, 'StoreProduct', 'Globe', '2014-12-15 14:30:40'),
(207, 'admin', 2, 'StoreProduct', 'Globe', '2014-12-15 14:30:59'),
(208, 'admin', 1, 'StoreCategory', 'Кивки', '2014-12-15 14:31:28'),
(209, 'admin', 1, 'StoreProduct', 'Кивок лавсановий', '2014-12-15 14:32:42'),
(210, 'admin', 2, 'StoreProduct', 'Кивок лавсановий', '2014-12-15 14:33:16'),
(211, 'admin', 2, 'StoreProduct', 'Globe', '2014-12-15 14:34:45'),
(212, 'admin', 2, 'StoreProduct', 'Кивок лавсановий', '2014-12-15 14:35:58'),
(213, 'admin', 1, 'StoreCategory', 'Спиннинг', '2014-12-15 14:36:54'),
(214, 'admin', 2, 'StoreProduct', 'Globe', '2014-12-15 14:39:02'),
(215, 'admin', 3, 'StoreProduct', 'Кивок лавсановий', '2014-12-15 14:40:36'),
(216, 'admin', 3, 'StoreProduct', 'ForMAX Ice Mystic 30 м.', '2014-12-15 14:40:38'),
(217, 'admin', 3, 'StoreProductType', 'Кивки лавсанові', '2014-12-15 14:41:12'),
(218, 'admin', 2, 'StoreCategory', 'Леска зимова', '2014-12-15 14:41:45'),
(219, 'admin', 2, 'StoreCategory', 'Леска зимова', '2014-12-15 14:41:57'),
(220, 'admin', 2, 'StoreCategory', 'Кивки', '2014-12-15 14:42:00'),
(221, 'admin', 2, 'StoreCategory', 'Спиннинг', '2014-12-15 14:42:02'),
(222, 'admin', 2, 'StoreCategory', 'Спиннинг', '2014-12-15 14:42:24'),
(223, 'admin', 3, 'StoreProduct', 'Балансир "Оса" мідь', '2014-12-15 14:42:37'),
(224, 'admin', 3, 'StoreProduct', 'Балансир "Оса" білий', '2014-12-15 14:42:37'),
(225, 'admin', 3, 'StoreProduct', 'Балансир "Оса" срібло', '2014-12-15 14:42:37'),
(226, 'admin', 3, 'StoreProduct', 'Балансир "Оса" сталь', '2014-12-15 14:42:37'),
(227, 'admin', 3, 'StoreProduct', 'Балансир "Оса" бронза', '2014-12-15 14:42:37'),
(228, 'admin', 3, 'StoreProduct', 'Балансир "Оса" чорний', '2014-12-15 14:42:37'),
(229, 'admin', 3, 'StoreProduct', 'Балансир "Оса" золото', '2014-12-15 14:42:37'),
(230, 'admin', 3, 'StoreCategory', 'Балансири', '2014-12-15 14:42:37'),
(231, 'admin', 3, 'StoreCategory', 'Леска зимова', '2014-12-15 14:42:37'),
(232, 'admin', 3, 'StoreCategory', 'Кивки', '2014-12-15 14:42:37'),
(233, 'admin', 3, 'StoreCategory', 'Спиннинг', '2014-12-15 14:42:37'),
(234, 'admin', 3, 'StoreProduct', 'Globe', '2014-12-15 14:42:37'),
(235, 'admin', 3, 'StoreCategory', 'Зимова рибалка', '2014-12-15 14:42:37'),
(236, 'admin', 3, 'StoreCurrency', 'Рубли', '2014-12-15 14:43:51'),
(237, 'admin', 1, 'StoreCurrency', 'UAH', '2014-12-15 14:45:33'),
(238, 'admin', 3, 'StoreProductType', 'Леска зимова', '2014-12-16 00:04:31'),
(239, 'admin', 3, 'StoreProductType', 'Балансири', '2014-12-16 00:04:31'),
(240, 'admin', 3, 'StoreProductType', 'Кивки залізні', '2014-12-16 00:04:31'),
(241, 'admin', 3, 'StoreProductType', 'Мормишки', '2014-12-16 00:04:31'),
(242, 'admin', 1, 'StoreCategory', 'Спінніги', '2014-12-16 00:04:53'),
(243, 'admin', 1, 'StoreCategory', 'Зимова рибалка', '2014-12-16 00:05:44'),
(244, 'admin', 1, 'StoreCategory', 'Category', '2014-12-16 00:15:48'),
(245, 'admin', 1, 'StoreCategory', 'Subcategory', '2014-12-16 00:15:48'),
(246, 'admin', 1, 'StoreProductType', 'Base Product', '2014-12-16 00:15:48'),
(247, 'admin', 1, 'StoreProduct', 'Product Name', '2014-12-16 00:15:48'),
(248, 'admin', 1, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Аксессуары', '2014-12-17 23:05:42'),
(249, 'admin', 1, 'StoreProductType', '4 705 301', '2014-12-17 23:05:42'),
(250, 'admin', 1, 'StoreManufacturer', 'Spro', '2014-12-17 23:05:42'),
(251, 'admin', 1, 'StoreProductType', '4 705 302', '2014-12-17 23:05:42'),
(252, 'admin', 1, 'StoreProductType', 'SR-GO10A', '2014-12-17 23:05:42'),
(253, 'admin', 1, 'StoreManufacturer', 'Vilco', '2014-12-17 23:05:42'),
(254, 'admin', 1, 'StoreProductType', 'max 5', '2014-12-17 23:05:42'),
(255, 'admin', 1, 'StoreManufacturer', 'Karismax', '2014-12-17 23:05:42'),
(256, 'admin', 1, 'StoreProductType', 'max 6', '2014-12-17 23:05:42'),
(257, 'admin', 1, 'StoreProductType', 'max 8', '2014-12-17 23:05:42'),
(258, 'admin', 1, 'StoreProductType', '1278687', '2014-12-17 23:05:42'),
(259, 'admin', 1, 'StoreManufacturer', 'Berkley', '2014-12-17 23:05:42'),
(260, 'admin', 1, 'StoreProduct', 'Надувная лодка Berkley Tec Tube Belly Boat Ripple 1278687', '2014-12-17 23:05:42'),
(261, 'admin', 1, 'StoreProductType', '1131058', '2014-12-17 23:05:44'),
(262, 'admin', 1, 'StoreProductType', '1155044', '2014-12-17 23:05:44'),
(263, 'admin', 1, 'StoreManufacturer', 'Shakespeare', '2014-12-17 23:05:44'),
(264, 'admin', 1, 'StoreProductType', '1114861', '2014-12-17 23:05:45'),
(265, 'admin', 1, 'StoreManufacturer', 'Abu Garcia', '2014-12-17 23:05:45'),
(266, 'admin', 1, 'StoreProduct', 'Подсака Abu Garcia Landing Nets  средняя 1114861', '2014-12-17 23:05:45'),
(267, 'admin', 1, 'StoreProductType', '1114862', '2014-12-17 23:05:46'),
(268, 'admin', 1, 'StoreProductType', '1199529', '2014-12-17 23:05:46'),
(269, 'admin', 1, 'StoreManufacturer', 'JRC', '2014-12-17 23:05:46'),
(270, 'admin', 1, 'StoreProductType', '1132004', '2014-12-17 23:05:51'),
(271, 'admin', 1, 'StoreManufacturer', 'Mitchell', '2014-12-17 23:05:51'),
(272, 'admin', 1, 'StoreProductType', '1193031', '2014-12-17 23:05:52'),
(273, 'admin', 1, 'StoreProductType', '1153653', '2014-12-17 23:05:53'),
(274, 'admin', 1, 'StoreProductType', '1153654', '2014-12-17 23:05:53'),
(275, 'admin', 1, 'StoreProductType', '1276340', '2014-12-17 23:05:54'),
(276, 'admin', 1, 'StoreProductType', '4 700 201', '2014-12-17 23:05:55'),
(277, 'admin', 1, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Рыболовные катушки', '2014-12-17 23:05:55'),
(278, 'admin', 1, 'StoreProductType', '1311898', '2014-12-17 23:05:55'),
(279, 'admin', 1, 'StoreProduct', 'Катушка Abu Garcia Revo MGXtreme -L 1311898', '2014-12-17 23:05:55'),
(280, 'admin', 1, 'StoreProductType', '1278794', '2014-12-17 23:05:55'),
(281, 'admin', 1, 'StoreProductType', '1278795', '2014-12-17 23:05:55'),
(282, 'admin', 1, 'StoreProductType', '1278790', '2014-12-17 23:05:56'),
(283, 'admin', 1, 'StoreProductType', '1129943', '2014-12-17 23:05:56'),
(284, 'admin', 1, 'StoreProductType', '1115466', '2014-12-17 23:05:57'),
(285, 'admin', 1, 'StoreProductType', '1130163', '2014-12-17 23:05:57'),
(286, 'admin', 1, 'StoreProductType', '1122215', '2014-12-17 23:05:58'),
(287, 'admin', 1, 'StoreProductType', '1122221', '2014-12-17 23:05:59'),
(288, 'admin', 1, 'StoreProductType', '1122216', '2014-12-17 23:05:59'),
(289, 'admin', 1, 'StoreProductType', '1122218', '2014-12-17 23:06:00'),
(290, 'admin', 1, 'StoreProductType', '1082193', '2014-12-17 23:06:00'),
(291, 'admin', 2, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur REVO SX-HS RH 1122218', '2014-12-17 23:08:05'),
(292, 'admin', 2, 'StoreProduct', 'Катушка Abu Garcia TORN T3006HSI 1082193', '2015-03-13 09:54:56'),
(293, 'admin', 2, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Аксессуары', '2015-03-13 09:58:18'),
(294, 'admin', 2, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Аксессуары', '2015-03-13 09:58:24'),
(295, 'admin', 2, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur REVO SX-HS RH 1122218', '2015-03-21 21:54:22'),
(296, 'admin', 3, 'StoreProduct', 'Подставка под удилища JRC Euro Pod 1153653', '2015-03-21 21:55:33'),
(297, 'admin', 3, 'StoreProduct', 'Подставка под удилища JRC Euro Pod 3-4 rod 1193031', '2015-03-21 21:55:33'),
(298, 'admin', 3, 'StoreProduct', 'Подсака JRC Contact Landing net 1199529', '2015-03-21 21:55:33'),
(299, 'admin', 3, 'StoreProduct', 'Подставка под удилища JRC X-Lite Euro Pod 1153654', '2015-03-21 21:55:33'),
(300, 'admin', 3, 'StoreProduct', 'Набор Shakespeare FLY TYING KIT-DELUXE для вязания мушек 1155044', '2015-03-21 21:55:33'),
(301, 'admin', 3, 'StoreProduct', 'Точило Berkley Knife Sharpening System 1131058', '2015-03-21 21:55:33'),
(302, 'admin', 3, 'StoreProduct', 'Сигнализатор поклевки JRC Radar DS Solar Color Set 3+1 1276340', '2015-03-21 21:55:33'),
(303, 'admin', 3, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Аксессуары', '2015-03-21 21:55:33'),
(304, 'admin', 3, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Удочки', '2015-03-21 21:55:38'),
(305, 'admin', 3, 'StoreProduct', 'Надувная лодка Berkley Tec Tube Belly Boat Ripple 1278687', '2015-03-21 21:55:43'),
(306, 'admin', 3, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Надувные лодки', '2015-03-21 21:55:43'),
(307, 'admin', 3, 'StoreProduct', 'Подсака Mitchell Trout Racket Nets 1132004', '2015-03-21 21:55:50'),
(308, 'admin', 3, 'StoreProduct', 'Подсака Abu Garcia Landing Nets большая 1114862', '2015-03-21 21:55:50'),
(309, 'admin', 3, 'StoreProduct', 'Подсака Abu Garcia Landing Nets  средняя 1114861', '2015-03-21 21:55:50'),
(310, 'admin', 3, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Сети', '2015-03-21 21:55:50'),
(311, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur REVO SX RH 1122216', '2015-03-21 21:55:55'),
(312, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur REVO STX-HS RH 1122221', '2015-03-21 21:55:55'),
(313, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur REVO S-L LH 1122215', '2015-03-21 21:55:55'),
(314, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur REVO PREMIER 1130163', '2015-03-21 21:55:55'),
(315, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia Ambassadeur Classic C4 6601 мультипликаторная 1115466', '2015-03-21 21:55:55'),
(316, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia AMB 6500 C3 мультипликаторная 1129943', '2015-03-21 21:55:55'),
(317, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia REVO SX10 1278790', '2015-03-21 21:55:55'),
(318, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia REVO S20 1278795', '2015-03-21 21:55:55'),
(319, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia REVO S10 1278794', '2015-03-21 21:55:55'),
(320, 'admin', 3, 'StoreProduct', 'Катушка Abu Garcia Revo MGXtreme -L 1311898', '2015-03-21 21:55:55'),
(321, 'admin', 3, 'StoreCategory', 'Спортивные товары > Отдых на природе > Рыбалка > Рыболовные катушки', '2015-03-21 21:55:55'),
(322, 'admin', 3, 'StoreProduct', 'Product Name', '2015-03-21 21:57:31'),
(323, 'admin', 3, 'StoreCategory', 'Subcategory', '2015-03-21 21:57:31'),
(324, 'admin', 3, 'StoreCategory', 'Category', '2015-03-21 21:57:37'),
(325, 'admin', 3, 'StoreCategory', 'Зимова рибалка', '2015-03-21 21:57:41'),
(326, 'admin', 2, 'StoreCategory', 'Катушки', '2015-03-21 21:57:55'),
(327, 'admin', 2, 'StoreCategory', 'Катушки', '2015-03-21 21:58:06'),
(328, 'admin', 1, 'StoreCategory', 'Category', '2015-03-22 20:47:12'),
(329, 'admin', 1, 'StoreCategory', 'Subcategory', '2015-03-22 20:47:12'),
(330, 'admin', 1, 'StoreProduct', 'Product Name', '2015-03-22 20:47:12');

-- --------------------------------------------------------

--
-- Структура таблицы `AuthAssignment`
--

CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `AuthAssignment`
--

INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('Admin', '1', NULL, NULL),
('Authenticated', '57', NULL, 'N;'),
('Authenticated', '58', NULL, 'N;'),
('Orders.Orders.*', '56', NULL, 'N;'),
('Orders.Statuses.*', '56', NULL, 'N;'),
('Authenticated', '56', NULL, 'N;'),
('Authenticated', '62', NULL, 'N;'),
('Authenticated', '63', NULL, 'N;'),
('Authenticated', '2', NULL, 'N;'),
('Admin', '2', NULL, 'N;'),
('Admin', '3', NULL, 'N;'),
('Authenticated', '3', NULL, 'N;'),
('Authenticated', '4', NULL, 'N;');

-- --------------------------------------------------------

--
-- Структура таблицы `AuthItem`
--

CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `AuthItem`
--

INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('Admin', 2, NULL, NULL, 'N;'),
('Authenticated', 2, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Orders.Orders.*', 1, NULL, NULL, 'N;'),
('Orders.Statuses.*', 1, NULL, NULL, 'N;'),
('Orders.Orders.Index', 0, NULL, NULL, 'N;'),
('Orders.Orders.Create', 0, NULL, NULL, 'N;'),
('Orders.Orders.Update', 0, NULL, NULL, 'N;'),
('Orders.Orders.AddProductList', 0, NULL, NULL, 'N;'),
('Orders.Orders.AddProduct', 0, NULL, NULL, 'N;'),
('Orders.Orders.RenderOrderedProducts', 0, NULL, NULL, 'N;'),
('Orders.Orders.JsonOrderedProducts', 0, NULL, NULL, 'N;'),
('Orders.Orders.Delete', 0, NULL, NULL, 'N;'),
('Orders.Orders.DeleteProduct', 0, NULL, NULL, 'N;'),
('Orders.Statuses.Index', 0, NULL, NULL, 'N;'),
('Orders.Statuses.Create', 0, NULL, NULL, 'N;'),
('Orders.Statuses.Update', 0, NULL, NULL, 'N;'),
('Orders.Statuses.Delete', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Структура таблицы `AuthItemChild`
--

CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `class_name` varchar(100) DEFAULT '',
  `object_pk` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `text` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_name_index` (`class_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Discount`
--

CREATE TABLE IF NOT EXISTS `Discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `active` tinyint(1) DEFAULT NULL,
  `sum` varchar(10) DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `Discount`
--

INSERT INTO `Discount` (`id`, `name`, `active`, `sum`, `start_date`, `end_date`, `roles`) VALUES
(1, 'Скидка на всю технику Apple', 1, '5%', '2014-11-26 23:00:20', '2015-01-01 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `DiscountCategory`
--

CREATE TABLE IF NOT EXISTS `DiscountCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=317 ;

--
-- Дамп данных таблицы `DiscountCategory`
--

INSERT INTO `DiscountCategory` (`id`, `discount_id`, `category_id`) VALUES
(308, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `DiscountManufacturer`
--

CREATE TABLE IF NOT EXISTS `DiscountManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Структура таблицы `grid_view_filter`
--

CREATE TABLE IF NOT EXISTS `grid_view_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `grid_id` varchar(100) DEFAULT '',
  `name` varchar(100) DEFAULT '',
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Order`
--

CREATE TABLE IF NOT EXISTS `Order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `secret_key` varchar(10) DEFAULT '',
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` float(10,2) DEFAULT NULL,
  `total_price` float(10,2) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL COMMENT 'delivery address',
  `user_phone` varchar(30) DEFAULT NULL,
  `user_comment` varchar(500) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `admin_comment` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `secret_key` (`secret_key`),
  KEY `delivery_id` (`delivery_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `Order`
--

INSERT INTO `Order` (`id`, `user_id`, `secret_key`, `delivery_id`, `delivery_price`, `total_price`, `status_id`, `paid`, `user_name`, `user_email`, `user_address`, `user_phone`, `user_comment`, `ip_address`, `created`, `updated`, `discount`, `admin_comment`) VALUES
(1, 1, '2qohix7j3d', 16, 30.00, 2070.00, 5, 0, 'Stas', 'stas.revko@gmail.com', 'asdfasfd asdf', '0500117217', '', '127.0.0.1', '2014-12-04 00:17:33', '2014-12-04 00:18:28', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `OrderHistory`
--

CREATE TABLE IF NOT EXISTS `OrderHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `data_before` text,
  `data_after` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_index` (`order_id`),
  KEY `created_index` (`created`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `OrderHistory`
--

INSERT INTO `OrderHistory` (`id`, `order_id`, `user_id`, `username`, `handler`, `data_before`, `data_after`, `created`) VALUES
(1, 1, 1, 'admin', 'product', 'a:4:{s:7:"deleted";b:0;s:4:"name";s:27:"Samsung SyncMaster S22A350N";s:5:"price";s:6:"150.00";s:8:"quantity";s:1:"1";}', '', '2014-12-04 00:17:44'),
(2, 1, 1, 'admin', 'product', 'a:4:{s:7:"deleted";b:0;s:4:"name";s:16:"Philips 227E3LSU";s:5:"price";s:6:"190.00";s:8:"quantity";s:1:"1";}', '', '2014-12-04 00:17:54'),
(3, 1, 1, 'admin', 'product', 'a:4:{s:7:"deleted";b:0;s:4:"name";s:10:"HP ZR2440w";s:5:"price";s:6:"380.00";s:8:"quantity";s:1:"1";}', '', '2014-12-04 00:17:55'),
(4, 1, 1, 'admin', 'product', 'a:3:{s:7:"changed";b:1;s:4:"name";s:27:"Samsung SyncMaster S22A350N";s:8:"quantity";s:1:"1";}', 'a:1:{s:8:"quantity";i:10;}', '2014-12-04 00:18:11'),
(5, 1, 1, 'admin', 'attributes', 'a:1:{s:9:"status_id";s:10:"Новый";}', 'a:1:{s:9:"status_id";s:18:"Доставлен";}', '2014-12-04 00:18:28');

-- --------------------------------------------------------

--
-- Структура таблицы `OrderProduct`
--

CREATE TABLE IF NOT EXISTS `OrderProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `configurable_id` int(11) DEFAULT NULL,
  `name` text,
  `configurable_name` text COMMENT 'Store name of configurable product',
  `configurable_data` text,
  `variants` text,
  `quantity` smallint(6) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `configurable_id` (`configurable_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Дамп данных таблицы `OrderProduct`
--

INSERT INTO `OrderProduct` (`id`, `order_id`, `product_id`, `configurable_id`, `name`, `configurable_name`, `configurable_data`, `variants`, `quantity`, `sku`, `price`) VALUES
(88, 1, 25, NULL, 'Samsung SyncMaster S22A350N', NULL, NULL, NULL, 10, NULL, 150.00),
(89, 1, 27, NULL, 'Philips 227E3LSU', NULL, NULL, NULL, 1, NULL, 190.00),
(90, 1, 29, NULL, 'HP ZR2440w', NULL, NULL, NULL, 1, NULL, 380.00);

-- --------------------------------------------------------

--
-- Структура таблицы `OrderStatus`
--

CREATE TABLE IF NOT EXISTS `OrderStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `OrderStatus`
--

INSERT INTO `OrderStatus` (`id`, `name`, `position`) VALUES
(1, 'Новый', 0),
(5, 'Доставлен', 1),
(6, 'проверен', 2),
(7, 'возврат', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Page`
--

CREATE TABLE IF NOT EXISTS `Page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `layout` varchar(2555) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `publish_date` (`publish_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `Page`
--

INSERT INTO `Page` (`id`, `user_id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES
(8, 1, NULL, 'help', '2012-06-10 22:35:51', '2012-07-07 11:47:09', '2012-06-10 22:35:29', 'published', '', ''),
(9, 1, NULL, 'how-to-create-order', '2012-06-10 22:36:50', '2012-07-07 11:45:53', '2012-06-10 22:36:27', 'published', '', ''),
(10, 1, NULL, 'garantiya', '2012-06-10 22:37:06', '2012-07-07 11:45:38', '2012-06-10 22:36:50', 'published', '', ''),
(11, 1, NULL, 'dostavka-i-oplata', '2012-06-10 22:37:18', '2012-07-07 11:41:49', '2012-06-10 22:37:07', 'published', '', ''),
(12, 1, 7, 'samsung-pitaetsya-izbezhat-zapreta-na-galaxy-nexus-v-shtatah-pri-pomoshi-patcha', '2012-07-07 12:08:50', '2012-07-07 12:09:33', '2012-07-07 12:06:19', 'published', '', ''),
(13, 1, 7, 'za-85-mesyacev-android-40-popal-na-11-ustroistv', '2012-07-07 12:19:44', '2013-06-04 23:20:21', '2012-07-07 12:14:48', 'published', '', ''),
(14, 1, 7, 'google-prezentoval-svoi-ochki-dopolnennoi-realnosti', '2012-07-07 12:26:11', '2012-07-07 12:26:11', '2012-07-07 12:25:48', 'published', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `PageCategory`
--

CREATE TABLE IF NOT EXISTS `PageCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_url` text,
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `page_size` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `PageCategory`
--

INSERT INTO `PageCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES
(7, NULL, 'news', 'news', '', '', '2012-07-07 12:06:03', '2013-04-29 23:24:05', NULL),
(10, NULL, 'tesstovya2', 'tesstovya2', '', '', '2013-05-21 23:59:34', '2013-05-21 23:59:34', NULL),
(12, 7, 'tesstovya2', 'news/tesstovya2', '', '', '2013-05-22 00:07:01', '2013-05-22 00:07:01', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `PageCategoryTranslate`
--

CREATE TABLE IF NOT EXISTS `PageCategoryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `PageCategoryTranslate`
--

INSERT INTO `PageCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(13, 7, 1, 'Новости', '', '', '', ''),
(14, 7, 9, 'Новости', '', '', '', ''),
(15, 11, 1, 'sdfsdf', '', '', '', ''),
(16, 11, 9, 'sdfsdf', '', '', '', ''),
(17, 12, 1, 'Тесстовя2', '', '', '', ''),
(18, 12, 9, 'Тесстовя2', '', '', '', ''),
(19, 7, 10, 'Новости', '', '', '', ''),
(20, 12, 10, 'Тесстовя2', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `PageTranslate`
--

CREATE TABLE IF NOT EXISTS `PageTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `PageTranslate`
--

INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(22, 11, 9, 'Доставка и оплата', '', '', '', '', ''),
(15, 8, 1, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', '', ''),
(16, 8, 9, 'Помощь', '', '', '', '', ''),
(17, 9, 1, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>', '', '', '', ''),
(18, 9, 9, 'Как сделать заказ', '', '', '', '', ''),
(19, 10, 1, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '', '', '', ''),
(20, 10, 9, 'Гарантия', '', '', '', '', ''),
(21, 11, 1, 'Доставка и оплата', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '', '', '', ''),
(23, 12, 1, 'Samsung пытается избежать запрета на Galaxy Nexus', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. ', 'В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', ''),
(25, 13, 1, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
(24, 12, 9, 'Samsung пытается избежать запрета на Galaxy Nexus в Штатах при помощи патча', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', '', ''),
(26, 13, 9, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
(27, 14, 1, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
(28, 14, 9, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
(29, 14, 10, 'Google презентовал свои очки дополненной реальности‎', 'Компания Google приступит к продаже очков дополненной реальности, который разрабатываются в рамках проекта Google Project Glass, пишет блог All Things Digital. ', 'Очки будут стоить 1,5 тысячи долларов, и поставки стартуют в начале 2013 года. Устройство, однако, будет предназначено только для разработчиков. Оформить предварительный заказ на него смогут исключительно посетители конференции I/O, открывшейся 27 июня в Сан-Франциско. ', '', '', ''),
(30, 13, 10, 'За 8,5 месяцев Android 4.0 попал на 11% устройств', 'В свое время платформа Android 2.x распространялась активнее, чем Android 4.0 Ice Cream Sandwich, а ведь уже появилась новая мобильная ОС от Google — Android 4.1 Jelly Bean. За 8,5 месяцев своего существования Android ICS попал на 10,9% устройств, а лидировать на рынке продолжает Android 2,3 Gingerbread.', '', '', '', ''),
(31, 12, 10, 'Samsung пытается избежать запрета на Galaxy Nexus', 'Текущую ситуацию с судебным противостоянием Apple и Samsung в Штатах (ссылка по теме) можно описать строчкой их двух слов: всё плохо. ', 'В смысле всё плохо для Samsung — южнокорейская корпорация так и не сумела отбиться от назначенного судом предварительного запрета на американские продажи планшетников Galaxy Tab 10.1 и, главное, новейших смартфонов Galaxy Nexus. Расклад намечается хуже некуда: по некоторым выкладкам, потенциальный ущерб от подобного запрета может достигнуть 180 млн. долларов, две трети из которых придутся на непроданные Galaxy Nexus.', '', '', ''),
(32, 11, 10, 'Доставка и оплата', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '', '', '', ''),
(33, 10, 10, 'Гарантия', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, "consectetur", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги "de Finibus Bonorum et Malorum" ("О пределах добра и зла"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, "Lorem ipsum dolor sit amet..", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 "de Finibus Bonorum et Malorum" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '', '', '', ''),
(34, 9, 10, 'Как сделать заказ', '<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или "невозможных" слов.</p>', '', '', '', ''),
(35, 8, 10, 'Помощь', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `Rights`
--

CREATE TABLE IF NOT EXISTS `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreAttribute`
--

CREATE TABLE IF NOT EXISTS `StoreAttribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `type` tinyint(4) DEFAULT NULL,
  `display_on_front` tinyint(1) DEFAULT '1',
  `use_in_filter` tinyint(1) DEFAULT NULL,
  `use_in_variants` tinyint(1) DEFAULT NULL,
  `use_in_compare` tinyint(1) DEFAULT '0',
  `select_many` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `use_in_filter` (`use_in_filter`),
  KEY `display_on_front` (`display_on_front`),
  KEY `position` (`position`),
  KEY `use_in_variants` (`use_in_variants`),
  KEY `use_in_compare` (`use_in_compare`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `StoreAttribute`
--

INSERT INTO `StoreAttribute` (`id`, `name`, `type`, `display_on_front`, `use_in_filter`, `use_in_variants`, `use_in_compare`, `select_many`, `position`, `required`) VALUES
(20, 'white', 1, 1, 1, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreAttributeOption`
--

CREATE TABLE IF NOT EXISTS `StoreAttributeOption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreAttributeOptionTranslate`
--

CREATE TABLE IF NOT EXISTS `StoreAttributeOptionTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=321 ;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreAttributeTranslate`
--

CREATE TABLE IF NOT EXISTS `StoreAttributeTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Дамп данных таблицы `StoreAttributeTranslate`
--

INSERT INTO `StoreAttributeTranslate` (`id`, `object_id`, `language_id`, `title`) VALUES
(119, 20, 12, 'Колір'),
(118, 20, 9, 'Колір'),
(117, 20, 1, 'Колір');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreCategory`
--

CREATE TABLE IF NOT EXISTS `StoreCategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `level` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_path` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `level` (`level`),
  KEY `url` (`url`),
  KEY `full_path` (`full_path`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=255 ;

--
-- Дамп данных таблицы `StoreCategory`
--

INSERT INTO `StoreCategory` (`id`, `lft`, `rgt`, `level`, `url`, `full_path`, `layout`, `view`, `description`) VALUES
(1, 1, 16, 1, 'root', '', '', '', NULL),
(253, 12, 15, 2, 'category', 'category', '', '', NULL),
(254, 13, 14, 3, 'subcategory', 'category/subcategory', '', '', NULL),
(244, 10, 11, 2, 'spinnigi', 'spinnigi', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreCategoryTranslate`
--

CREATE TABLE IF NOT EXISTS `StoreCategoryTranslate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Дамп данных таблицы `StoreCategoryTranslate`
--

INSERT INTO `StoreCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES
(1, 1, 1, 'root', '', '', '', NULL),
(22, 219, 1, 'Планшеты', '', '', '', NULL),
(23, 219, 9, 'Планшеты', '', '', '', NULL),
(24, 220, 1, 'Ассортимент', '', '', '', NULL),
(25, 220, 9, 'Ассортимент', '', '', '', NULL),
(28, 1, 9, 'root', '', '', '', NULL),
(124, 253, 1, 'Category', NULL, NULL, NULL, NULL),
(125, 253, 9, 'Category', NULL, NULL, NULL, NULL),
(126, 253, 12, 'Category', NULL, NULL, NULL, NULL),
(127, 254, 1, 'Subcategory', NULL, NULL, NULL, NULL),
(128, 254, 9, 'Subcategory', NULL, NULL, NULL, NULL),
(129, 254, 12, 'Subcategory', NULL, NULL, NULL, NULL),
(61, 1, 10, 'root', '', '', '', NULL),
(99, 244, 12, 'Спінніги', '', '', '', ''),
(98, 244, 9, 'Катушки', '', '', '', ''),
(97, 244, 1, 'Спінніги', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreCurrency`
--

CREATE TABLE IF NOT EXISTS `StoreCurrency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `iso` varchar(10) DEFAULT '',
  `symbol` varchar(10) DEFAULT '',
  `rate` float(10,3) DEFAULT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `StoreCurrency`
--

INSERT INTO `StoreCurrency` (`id`, `name`, `iso`, `symbol`, `rate`, `main`, `default`) VALUES
(1, 'Доллары', 'USD', '$', 1.000, 1, 0),
(3, 'UAH', '4217', '₴', 16.000, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreDeliveryMethod`
--

CREATE TABLE IF NOT EXISTS `StoreDeliveryMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float(10,2) DEFAULT '0.00',
  `free_from` float(10,2) DEFAULT '0.00',
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `StoreDeliveryMethod`
--

INSERT INTO `StoreDeliveryMethod` (`id`, `price`, `free_from`, `position`, `active`) VALUES
(14, 10.00, 1000.00, 0, 1),
(15, 0.00, 0.00, 1, 1),
(16, 30.00, 0.00, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreDeliveryMethodTranslate`
--

CREATE TABLE IF NOT EXISTS `StoreDeliveryMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `StoreDeliveryMethodTranslate`
--

INSERT INTO `StoreDeliveryMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
(1, 14, 1, 'Курьером', ''),
(2, 14, 9, 'English', 'english description'),
(3, 15, 1, 'Самовывоз', ''),
(4, 15, 9, 'Самовывоз', ''),
(5, 16, 1, 'Адресная доставка по стране', ''),
(6, 16, 9, 'Адресная доставка по стране', ''),
(7, 14, 10, 'Курьером', ''),
(8, 15, 10, 'Самовывоз', ''),
(9, 16, 10, 'Адресная доставка по стране', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreDeliveryPayment`
--

CREATE TABLE IF NOT EXISTS `StoreDeliveryPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Saves relations between delivery and payment methods ' AUTO_INCREMENT=83 ;

--
-- Дамп данных таблицы `StoreDeliveryPayment`
--

INSERT INTO `StoreDeliveryPayment` (`id`, `delivery_id`, `payment_id`) VALUES
(24, 12, 14),
(23, 10, 16),
(22, 10, 13),
(21, 10, 14),
(34, 11, 16),
(33, 11, 13),
(25, 12, 15),
(26, 12, 16),
(78, 14, 21),
(77, 14, 19),
(76, 14, 20),
(75, 14, 18),
(82, 15, 20),
(81, 15, 18),
(55, 16, 17),
(56, 16, 18),
(57, 16, 20),
(58, 16, 19),
(74, 14, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreManufacturer`
--

CREATE TABLE IF NOT EXISTS `StoreManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `view` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `StoreManufacturer`
--

INSERT INTO `StoreManufacturer` (`id`, `url`, `layout`, `view`) VALUES
(27, 'mitchell', '', ''),
(26, 'jrc', '', ''),
(25, 'abu-garcia', '', ''),
(24, 'shakespeare', '', ''),
(23, 'berkley', '', ''),
(22, 'karismax', '', ''),
(21, 'vilco', '', ''),
(20, 'spro', '', ''),
(19, 'ukr-plast', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreManufacturerTranslate`
--

CREATE TABLE IF NOT EXISTS `StoreManufacturerTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Дамп данных таблицы `StoreManufacturerTranslate`
--

INSERT INTO `StoreManufacturerTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(121, 27, 12, 'Mitchell', NULL, NULL, NULL, NULL),
(120, 27, 9, 'Mitchell', NULL, NULL, NULL, NULL),
(118, 26, 12, 'JRC', NULL, NULL, NULL, NULL),
(117, 26, 9, 'JRC', NULL, NULL, NULL, NULL),
(115, 25, 12, 'Abu Garcia', NULL, NULL, NULL, NULL),
(114, 25, 9, 'Abu Garcia', NULL, NULL, NULL, NULL),
(112, 24, 12, 'Shakespeare', NULL, NULL, NULL, NULL),
(111, 24, 9, 'Shakespeare', NULL, NULL, NULL, NULL),
(110, 24, 1, 'Shakespeare', NULL, NULL, NULL, NULL),
(109, 23, 12, 'Berkley', NULL, NULL, NULL, NULL),
(107, 23, 1, 'Berkley', NULL, NULL, NULL, NULL),
(105, 22, 9, 'Karismax', NULL, NULL, NULL, NULL),
(104, 22, 1, 'Karismax', NULL, NULL, NULL, NULL),
(103, 21, 12, 'Vilco', NULL, NULL, NULL, NULL),
(101, 21, 1, 'Vilco', NULL, NULL, NULL, NULL),
(100, 20, 12, 'Spro', NULL, NULL, NULL, NULL),
(99, 20, 9, 'Spro', NULL, NULL, NULL, NULL),
(97, 19, 12, 'Укр. Пласт', '', '', '', ''),
(96, 19, 9, 'Укр. Пласт', '', '', '', ''),
(119, 27, 1, 'Mitchell', NULL, NULL, NULL, NULL),
(116, 26, 1, 'JRC', NULL, NULL, NULL, NULL),
(113, 25, 1, 'Abu Garcia', NULL, NULL, NULL, NULL),
(108, 23, 9, 'Berkley', NULL, NULL, NULL, NULL),
(106, 22, 12, 'Karismax', NULL, NULL, NULL, NULL),
(102, 21, 9, 'Vilco', NULL, NULL, NULL, NULL),
(98, 20, 1, 'Spro', NULL, NULL, NULL, NULL),
(95, 19, 1, 'Укр. Пласт', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StorePaymentMethod`
--

CREATE TABLE IF NOT EXISTS `StorePaymentMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `payment_system` varchar(100) DEFAULT '',
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `StorePaymentMethod`
--

INSERT INTO `StorePaymentMethod` (`id`, `currency_id`, `active`, `payment_system`, `position`) VALUES
(17, 1, 1, 'webmoney', 0),
(18, 2, 1, '', 2),
(19, 1, 1, 'robokassa', 1),
(20, 2, 1, '', 3),
(21, 2, 1, 'qiwi', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `StorePaymentMethodTranslate`
--

CREATE TABLE IF NOT EXISTS `StorePaymentMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `StorePaymentMethodTranslate`
--

INSERT INTO `StorePaymentMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES
(1, 17, 1, 'WebMoney', 'WebMoney — это универсальное средство для расчетов в Сети, целая среда финансовых взаимоотношений, которой сегодня пользуются миллионы людей по всему миру.'),
(2, 17, 9, 'English payment1', 'russian description'),
(3, 18, 1, 'Наличная', 'Наличная оплата осуществляется только в рублях при доставке товара курьером покупателю.'),
(7, 20, 1, 'Безналичная', ' Стоимость товара при безналичной оплате без ПДВ равна розничной цене товара + 2% '),
(8, 20, 9, 'Безналичная', ''),
(4, 18, 9, 'Наличка', '<p>ыла оылдао ылдао ылдоа ылдва<br />ыаол ывла оывалд ыова</p>'),
(5, 19, 1, 'Robokassa', 'Многими пользователями электронные платежные системы расцениваются в качестве наиболее удобного средства оплаты товаров и услуг в Интернете.'),
(6, 19, 9, 'Robokassa', '<p>Description goes here</p>'),
(9, 21, 1, 'Qiwi', 'Оплата с помощью Qiwi'),
(10, 21, 9, 'Qiwi', 'Оплата с помощью Qiwi');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProduct`
--

CREATE TABLE IF NOT EXISTS `StoreProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `use_configurations` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `max_price` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `availability` tinyint(2) DEFAULT '1',
  `auto_decrease_quantity` tinyint(2) DEFAULT '1',
  `views_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `added_to_cart_count` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `video` text,
  PRIMARY KEY (`id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `type_id` (`type_id`),
  KEY `price` (`price`),
  KEY `max_price` (`max_price`),
  KEY `is_active` (`is_active`),
  KEY `sku` (`sku`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `added_to_cart_count` (`added_to_cart_count`),
  KEY `views_count` (`views_count`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Дамп данных таблицы `StoreProduct`
--

INSERT INTO `StoreProduct` (`id`, `manufacturer_id`, `type_id`, `use_configurations`, `url`, `price`, `max_price`, `is_active`, `layout`, `view`, `sku`, `quantity`, `availability`, `auto_decrease_quantity`, `views_count`, `created`, `updated`, `added_to_cart_count`, `votes`, `rating`, `discount`, `video`) VALUES
(79, 25, 42, 0, 'katushka-abu-garcia-torn-t3006hsi-1082193', 1053.00, 0.00, 1, '', '', '', 1, 1, 1, NULL, '2014-12-17 23:06:00', '2015-03-13 09:54:56', NULL, NULL, NULL, '', NULL),
(78, 25, 41, 0, 'katushka-abu-garcia-ambassadeur-revo-sx-hs-rh-1122218', 1480.00, 0.00, 1, '', '', '', 1, 1, 1, NULL, '2014-12-17 23:06:00', '2015-03-21 21:54:22', NULL, NULL, NULL, '', NULL),
(80, NULL, 12, 0, 'product-name', 10.99, 0.00, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, '2015-03-22 20:47:12', '2015-03-22 20:47:12', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductAttributeEAV`
--

CREATE TABLE IF NOT EXISTS `StoreProductAttributeEAV` (
  `entity` int(11) unsigned NOT NULL,
  `attribute` varchar(250) DEFAULT '',
  `value` text,
  KEY `ikEntity` (`entity`),
  KEY `attribute` (`attribute`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductCategoryRef`
--

CREATE TABLE IF NOT EXISTS `StoreProductCategoryRef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `product` (`product`),
  KEY `is_main` (`is_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=289 ;

--
-- Дамп данных таблицы `StoreProductCategoryRef`
--

INSERT INTO `StoreProductCategoryRef` (`id`, `product`, `category`, `is_main`) VALUES
(288, 80, 254, 1),
(286, 78, 244, 1),
(287, 79, 244, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductConfigurableAttributes`
--

CREATE TABLE IF NOT EXISTS `StoreProductConfigurableAttributes` (
  `product_id` int(11) NOT NULL COMMENT 'Attributes available to configure product',
  `attribute_id` int(11) NOT NULL,
  UNIQUE KEY `product_attribute_index` (`product_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductConfigurations`
--

CREATE TABLE IF NOT EXISTS `StoreProductConfigurations` (
  `product_id` int(11) NOT NULL COMMENT 'Saves relations beetwen product and configurations',
  `configurable_id` int(11) NOT NULL,
  UNIQUE KEY `idsunique` (`product_id`,`configurable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductImage`
--

CREATE TABLE IF NOT EXISTS `StoreProductImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `is_main` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=255 ;

--
-- Дамп данных таблицы `StoreProductImage`
--

INSERT INTO `StoreProductImage` (`id`, `product_id`, `name`, `is_main`, `uploaded_by`, `date_uploaded`, `title`) VALUES
(253, 78, '78_1211586301.png', 1, 1, '2014-12-17 23:06:00', ''),
(254, 79, '79_3484178719.jpeg', 1, 1, '2014-12-17 23:06:01', '');

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductTranslate`
--

CREATE TABLE IF NOT EXISTS `StoreProductTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=549 ;

--
-- Дамп данных таблицы `StoreProductTranslate`
--

INSERT INTO `StoreProductTranslate` (`id`, `object_id`, `language_id`, `name`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(546, 80, 1, 'Product Name', NULL, NULL, NULL, NULL, NULL),
(547, 80, 9, 'Product Name', NULL, NULL, NULL, NULL, NULL),
(548, 80, 12, 'Product Name', NULL, NULL, NULL, NULL, NULL),
(540, 78, 1, 'Катушка Abu Garcia Ambassadeur REVO SX-HS RH 1122218', NULL, 'Вес, грамм – 246\r\nКол-во подшипников – 10 + 1 роликовый\r\nФрикцион: магнитный Carbon Matrix\r\nЕмкость шпули, мм/м: 0.30/145\r\nПредаточное число - 7.1:1 \r\nРучка катушки –  правая (RH)\r\nМгновенный стопор обратного хода\r\nВысокоточный латунный механизм Duragear\r\nШпуля - конструкция Infini II \r\nФирменный магнитный тормоз шпули MagTrax', NULL, NULL, NULL),
(541, 78, 9, 'Катушка Abu Garcia Ambassadeur REVO SX-HS RH 1122218', '', 'Вес, грамм – 246\r\nКол-во подшипников – 10 + 1 роликовый\r\nФрикцион: магнитный Carbon Matrix\r\nЕмкость шпули, мм/м: 0.30/145\r\nПредаточное число - 7.1:1 \r\nРучка катушки –  правая (RH)\r\nМгновенный стопор обратного хода\r\nВысокоточный латунный механизм Duragear\r\nШпуля - конструкция Infini II \r\nФирменный магнитный тормоз шпули MagTrax', '', '', ''),
(542, 78, 12, 'Катушка Abu Garcia Ambassadeur REVO SX-HS RH 1122218', NULL, 'Вес, грамм – 246\r\nКол-во подшипников – 10 + 1 роликовый\r\nФрикцион: магнитный Carbon Matrix\r\nЕмкость шпули, мм/м: 0.30/145\r\nПредаточное число - 7.1:1 \r\nРучка катушки –  правая (RH)\r\nМгновенный стопор обратного хода\r\nВысокоточный латунный механизм Duragear\r\nШпуля - конструкция Infini II \r\nФирменный магнитный тормоз шпули MagTrax', NULL, NULL, NULL),
(543, 79, 1, 'Катушка Abu Garcia TORN T3006HSI 1082193', NULL, 'Количество подшипников 6 ш.п. + 1 р.п. \r\nПередаточное число: 5,8:1 \r\nЕмкость шпули: Монолеска (мм/м): 0,1/105 \r\nРасположение ручки: Левое \r\nВес: 259 г', NULL, NULL, NULL),
(544, 79, 9, 'Катушка Abu Garcia TORN T3006HSI 1082193', '', 'Количество подшипников 6 ш.п. + 1 р.п. \r\nПередаточное число: 5,8:1 \r\nЕмкость шпули: Монолеска (мм/м): 0,1/105 \r\nРасположение ручки: Левое \r\nВес: 259 г', '', '', ''),
(545, 79, 12, 'Катушка Abu Garcia TORN T3006HSI 1082193', NULL, 'Количество подшипников 6 ш.п. + 1 р.п. \r\nПередаточное число: 5,8:1 \r\nЕмкость шпули: Монолеска (мм/м): 0,1/105 \r\nРасположение ручки: Левое \r\nВес: 259 г', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductType`
--

CREATE TABLE IF NOT EXISTS `StoreProductType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `categories_preset` text,
  `main_category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `StoreProductType`
--

INSERT INTO `StoreProductType` (`id`, `name`, `categories_preset`, `main_category`) VALUES
(16, 'max 5', NULL, 0),
(17, 'max 6', NULL, 0),
(15, 'SR-GO10A', NULL, 0),
(14, '4 705 302', NULL, 0),
(13, '4 705 301', NULL, 0),
(12, 'Base Product', NULL, 0),
(18, 'max 8', NULL, 0),
(19, '1278687', NULL, 0),
(20, '1131058', NULL, 0),
(21, '1155044', NULL, 0),
(22, '1114861', NULL, 0),
(23, '1114862', NULL, 0),
(24, '1199529', NULL, 0),
(25, '1132004', NULL, 0),
(26, '1193031', NULL, 0),
(27, '1153653', NULL, 0),
(28, '1153654', NULL, 0),
(29, '1276340', NULL, 0),
(30, '4 700 201', NULL, 0),
(31, '1311898', NULL, 0),
(32, '1278794', NULL, 0),
(33, '1278795', NULL, 0),
(34, '1278790', NULL, 0),
(35, '1129943', NULL, 0),
(36, '1115466', NULL, 0),
(37, '1130163', NULL, 0),
(38, '1122215', NULL, 0),
(39, '1122221', NULL, 0),
(40, '1122216', NULL, 0),
(41, '1122218', NULL, 0),
(42, '1082193', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `StoreProductVariant`
--

CREATE TABLE IF NOT EXISTS `StoreProductVariant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float(10,2) DEFAULT '0.00',
  `price_type` tinyint(1) DEFAULT NULL,
  `sku` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=298 ;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreRelatedProduct`
--

CREATE TABLE IF NOT EXISTS `StoreRelatedProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Handle related products' AUTO_INCREMENT=90 ;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreTypeAttribute`
--

CREATE TABLE IF NOT EXISTS `StoreTypeAttribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreWishlist`
--

CREATE TABLE IF NOT EXISTS `StoreWishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(10) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `StoreWishlistProducts`
--

CREATE TABLE IF NOT EXISTS `StoreWishlistProducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_id` (`wishlist_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Структура таблицы `SystemLanguage`
--

CREATE TABLE IF NOT EXISTS `SystemLanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `code` varchar(25) DEFAULT '',
  `locale` varchar(100) DEFAULT '',
  `default` tinyint(1) DEFAULT NULL,
  `flag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `SystemLanguage`
--

INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
(1, 'Русский', 'ru', 'ru', 0, 'ru.png'),
(9, 'English', 'en', 'en', 1, 'us.png'),
(12, 'Українська', 'ua', 'ua', 0, 'ua.png');

-- --------------------------------------------------------

--
-- Структура таблицы `SystemModules`
--

CREATE TABLE IF NOT EXISTS `SystemModules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Дамп данных таблицы `SystemModules`
--

INSERT INTO `SystemModules` (`id`, `name`, `enabled`) VALUES
(7, 'users', 1),
(9, 'pages', 1),
(11, 'core', 1),
(12, 'rights', 1),
(16, 'orders', 1),
(15, 'store', 1),
(17, 'comments', 1),
(37, 'feedback', 1),
(38, 'discounts', 1),
(39, 'newsletter', 1),
(40, 'csv', 1),
(41, 'logger', 1),
(52, 'accounting1c', 1),
(53, 'yandexMarket', 1),
(54, 'notifier', 1),
(55, 'statistics', 1),
(56, 'sitemap', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `SystemSettings`
--

CREATE TABLE IF NOT EXISTS `SystemSettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `key` varchar(255) DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `key` (`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Дамп данных таблицы `SystemSettings`
--

INSERT INTO `SystemSettings` (`id`, `category`, `key`, `value`) VALUES
(9, 'feedback', 'max_message_length', '1000'),
(8, 'feedback', 'enable_captcha', '1'),
(7, 'feedback', 'admin_email', 'admin@localhost.local'),
(10, '17_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', 'Z123456578811'),
(11, '17_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', 'theSercretPassword'),
(12, '18_WebMoneyPaymentSystem', 'LMI_PAYEE_PURSE', '1'),
(13, '18_WebMoneyPaymentSystem', 'LMI_SECRET_KEY', '2'),
(14, '19_RobokassaPaymentSystem', 'login', 'login'),
(15, '19_RobokassaPaymentSystem', 'password1', 'password1value'),
(16, '19_RobokassaPaymentSystem', 'password2', 'password2value'),
(22, 'accounting1c', 'password', 'f880fefe2aff8130bb31d480f08e47c03e655b60'),
(21, 'accounting1c', 'ip', '127.0.0.1'),
(23, 'accounting1c', 'tempdir', 'application.runtime'),
(24, 'yandexMarket', 'name', 'Демо магазин'),
(25, 'yandexMarket', 'company', 'Демо кампания'),
(26, 'yandexMarket', 'url', 'http://demo-company.loc/'),
(27, 'yandexMarket', 'currency_id', '2'),
(28, 'core', 'siteName', 'rybolove.com.ua'),
(29, 'core', 'productsPerPage', '12,18,24'),
(30, 'core', 'productsPerPageAdmin', '30'),
(31, 'core', 'theme', 'default'),
(32, '20_QiwiPaymentSystem', 'shop_id', ''),
(33, '20_QiwiPaymentSystem', 'password', ''),
(34, '21_QiwiPaymentSystem', 'shop_id', '211182'),
(35, '21_QiwiPaymentSystem', 'password', 'xsi100500'),
(36, 'core', 'editorTheme', 'complete'),
(37, 'core', 'editorHeight', '150'),
(38, 'core', 'editorAutoload', '1'),
(39, 'images', 'path', 'webroot.uploads.product'),
(40, 'images', 'thumbPath', 'webroot.assets.productThumbs'),
(41, 'images', 'url', '/uploads/product/'),
(42, 'images', 'thumbUrl', '/assets/productThumbs/'),
(43, 'images', 'maxFileSize', '10485760'),
(44, 'images', 'max_sizes', '1800х1600'),
(45, 'images', 'maximum_image_size', '1935x947'),
(46, 'images', 'watermark_image', ''),
(47, 'images', 'watermark_active', '0'),
(48, 'images', 'watermark_position', 'bottomRight'),
(49, 'images', 'watermark_position_vertical', 'bottom'),
(50, 'images', 'watermark_position_horizontal', 'right'),
(51, 'images', 'watermark_opacity', '100');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1361214193),
('m130218_190341_add_description_to_store_category', 1361214373),
('m130218_190818_add_description_to_store_category_translate', 1361214547),
('m130420_194012_add_roles_to_discounts', 1366487103),
('m130420_204956_add_personal_discount_to_user', 1366491054),
('m130421_095545_add_personal_discount_to_product', 1366538394),
('m130504_170119_add_discout_to_order', 1367686940),
('m130504_183903_add_title_to_store_product_image', 1367692811),
('m130507_103455_add_banned_to_user', 1367923070),
('m130507_104810_unban_all_users', 1367923771),
('m130624_155800_add_new_fields_to_product', 1372089566),
('m130714_114907_add_admin_comment_to_orders', 1373802668),
('m130726_042212_create_order_history_table', 1374814430);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `recovery_key` varchar(20) DEFAULT NULL,
  `recovery_password` varchar(100) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Saves user accounts' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `login_ip`, `recovery_key`, `recovery_password`, `discount`, `banned`) VALUES
(1, 'admin', '29fb3570f1a79f389531f23ad50d8f8aa1f2f095', 'stas.revko@gmail.com', '2014-11-26 23:00:20', '2015-04-21 11:51:39', '194.31.248.226', NULL, NULL, 'admin', 0),
(2, 'admin2', 'ac7c4f79093aa3c8d1846cd0e188e4c3082be3b9', 'admin@dfs.ua', '2014-11-27 01:31:28', '2014-11-27 01:31:28', '127.0.0.1', NULL, NULL, 'admin', 0),
(3, 'kolbensky', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'kolbensky@gmail.com', '2014-12-05 23:40:16', '0000-00-00 00:00:00', '93.75.75.73', '5OT1OAG7VO', 'N8PIFK9G3X878PK', 'admin', 0),
(4, 'qwert', '7ab515d12bd2cf431745511ac4ee13fed15ab578', 'zxcvbnm@mail.ru', '2015-02-09 22:24:15', '2015-02-09 22:24:15', '109.251.36.184', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `full_name`, `phone`, `delivery_address`) VALUES
(1, 1, 'successus', '', ''),
(2, 2, 'admin', 'admin', ''),
(3, 3, 'Бенковский Николай', 'colcV0nytUG0', ''),
(4, 4, 'assah bussah', '1234567890', 'дупа');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
