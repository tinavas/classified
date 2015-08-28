-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2015 at 09:40 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `virtuald_classified`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `category_id` int(11) NOT NULL,
  `advertise_title` varchar(45) NOT NULL,
  `photo_name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile_number` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `advertise_comment`
--

CREATE TABLE IF NOT EXISTS `advertise_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `advertise_id` int(10) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `body` text,
  `enabled` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '0',
  `mark_spam` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `advertise_comment_fk0` (`advertise_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` int(10) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE IF NOT EXISTS `category_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catetory_additional_fields`
--

CREATE TABLE IF NOT EXISTS `catetory_additional_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertise_id` int(11) NOT NULL,
  `optional_field_id` int(11) NOT NULL,
  `optional_field_value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catetory_additional_fields_fk0` (`advertise_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `region_id` int(10) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `slug` varchar(60) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=459 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `region_id`, `name`, `slug`, `country_code`, `status`) VALUES
(1, 1, 'Asker', 'asker', 'no', 1),
(2, 1, 'Aurskog-høland', 'aurskog-h%c3%b8land', 'no', 1),
(3, 1, 'Bærum', 'b%c3%a6rum', 'no', 1),
(4, 1, 'Eidsvoll', 'eidsvoll', 'no', 1),
(5, 1, 'Enebakk', 'enebakk', 'no', 1),
(6, 1, 'Fet', 'fet', 'no', 1),
(7, 1, 'Frogn', 'frogn', 'no', 1),
(8, 1, 'Gjerdrum', 'gjerdrum', 'no', 1),
(9, 1, 'Hurdal', 'hurdal', 'no', 1),
(10, 1, 'Lørenskog', 'l%c3%b8renskog', 'no', 1),
(11, 1, 'Nannestad', 'nannestad', 'no', 1),
(12, 1, 'Nes', 'nes', 'no', 1),
(13, 1, 'Nesodden', 'nesodden', 'no', 1),
(14, 1, 'Nittedal', 'nittedal', 'no', 1),
(15, 1, 'Oppegård', 'oppegard', 'no', 1),
(16, 1, 'Rælingen', 'r%c3%a6lingen', 'no', 1),
(17, 1, 'Skedsmo', 'skedsmo', 'no', 1),
(18, 1, 'Ski', 'ski', 'no', 1),
(19, 1, 'Sørum', 's%c3%b8rum', 'no', 1),
(20, 1, 'Ullensaker', 'ullensaker', 'no', 1),
(21, 1, 'Vestby', 'vestby', 'no', 1),
(22, 1, 'Ås', 'as', 'no', 1),
(23, 2, 'Åmli', 'amli', 'no', 1),
(24, 2, 'Arendal', 'arendal', 'no', 1),
(25, 2, 'Birkenes', 'birkenes', 'no', 1),
(26, 2, 'Bygland', 'bygland', 'no', 1),
(27, 2, 'Bykle', 'bykle', 'no', 1),
(28, 2, 'Evje Og Hornnes', 'evje-og-hornnes', 'no', 1),
(29, 2, 'Froland', 'froland', 'no', 1),
(30, 2, 'Gjerstad', 'gjerstad', 'no', 1),
(31, 2, 'Grimstad', 'grimstad', 'no', 1),
(32, 2, 'Iveland', 'iveland', 'no', 1),
(33, 2, 'Lillesand', 'lillesand', 'no', 1),
(34, 2, 'Risør', 'ris%c3%b8r', 'no', 1),
(35, 2, 'Tvedestrand', 'tvedestrand', 'no', 1),
(36, 2, 'Valle', 'valle', 'no', 1),
(37, 2, 'Vegårshei', 'vegarshei', 'no', 1),
(38, 3, 'Ål', 'al', 'no', 1),
(39, 3, 'Drammen', 'drammen', 'no', 1),
(40, 3, 'Flesberg', 'flesberg', 'no', 1),
(41, 3, 'Flå', 'fla', 'no', 1),
(42, 3, 'Gol', 'gol', 'no', 1),
(43, 3, 'Hemsedal', 'hemsedal', 'no', 1),
(44, 3, 'Hol', 'hol', 'no', 1),
(45, 3, 'Hole', 'hole', 'no', 1),
(46, 3, 'Hurum', 'hurum', 'no', 1),
(47, 3, 'Kongsberg', 'kongsberg', 'no', 1),
(48, 3, 'Krødsherad', 'kr%c3%b8dsherad', 'no', 1),
(49, 3, 'Lier', 'lier', 'no', 1),
(50, 3, 'Modum', 'modum', 'no', 1),
(51, 3, 'Nedre Eiker', 'nedre-eiker', 'no', 1),
(52, 3, 'Nes', 'nes', 'no', 1),
(53, 3, 'Nore Og Uvdal', 'nore-og-uvdal', 'no', 1),
(54, 3, 'Øvre Eiker', '%c3%98vre-eiker', 'no', 1),
(55, 3, 'Ringerike', 'ringerike', 'no', 1),
(56, 3, 'Rollag', 'rollag', 'no', 1),
(57, 3, 'Røyken', 'r%c3%b8yken', 'no', 1),
(58, 3, 'Sigdal', 'sigdal', 'no', 1),
(59, 4, 'Alta', 'alta', 'no', 1),
(60, 4, 'Batsfjord', 'batsfjord', 'no', 1),
(61, 4, 'Berlevag', 'berlevag', 'no', 1),
(62, 4, 'Hammerfest', 'hammerfest', 'no', 1),
(63, 4, 'Hasvik', 'hasvik', 'no', 1),
(64, 4, 'Havoysund', 'havoysund', 'no', 1),
(65, 4, 'Honningsvag', 'honningsvag', 'no', 1),
(66, 4, 'Kamoyvaer', 'kamoyvaer', 'no', 1),
(67, 4, 'Karasjok', 'karasjok', 'no', 1),
(68, 4, 'Kautokeino', 'kautokeino', 'no', 1),
(69, 4, 'Kirkenes', 'kirkenes', 'no', 1),
(70, 4, 'Lakselv', 'lakselv', 'no', 1),
(71, 4, 'Mehamn', 'mehamn', 'no', 1),
(72, 4, 'North Cape', 'north-cape', 'no', 1),
(73, 4, 'Oksfjord', 'oksfjord', 'no', 1),
(74, 4, 'Repvag', 'repvag', 'no', 1),
(75, 4, 'Skarsvag', 'skarsvag', 'no', 1),
(76, 4, 'Talvik', 'talvik', 'no', 1),
(77, 4, 'Tana', 'tana', 'no', 1),
(78, 4, 'Vadso', 'vadso', 'no', 1),
(79, 4, 'Vardo', 'vardo', 'no', 1),
(80, 5, 'Alvdal', 'alvdal', 'no', 1),
(81, 5, 'Eidskog', 'eidskog', 'no', 1),
(82, 5, 'Elverum', 'elverum', 'no', 1),
(83, 5, 'Engerdal', 'engerdal', 'no', 1),
(84, 5, 'Folldal', 'folldal', 'no', 1),
(85, 5, 'Grue', 'grue', 'no', 1),
(86, 5, 'Hamar', 'hamar', 'no', 1),
(87, 5, 'Kongsvinger', 'kongsvinger', 'no', 1),
(88, 5, 'Løten', 'l%c3%b8ten', 'no', 1),
(89, 5, 'Nord-odal', 'nord-odal', 'no', 1),
(90, 5, 'Os', 'os', 'no', 1),
(91, 5, 'Rendalen', 'rendalen', 'no', 1),
(92, 5, 'Ringsaker', 'ringsaker', 'no', 1),
(93, 5, 'Stange', 'stange', 'no', 1),
(94, 5, 'Stor-elvdal', 'stor-elvdal', 'no', 1),
(95, 5, 'Sør-odal', 's%c3%b8r-odal', 'no', 1),
(96, 5, 'Tolga', 'tolga', 'no', 1),
(97, 5, 'Trysil', 'trysil', 'no', 1),
(98, 5, 'Tynset', 'tynset', 'no', 1),
(99, 5, 'Våler', 'valer', 'no', 1),
(100, 5, 'Åmot', 'amot', 'no', 1),
(101, 5, 'Åsnes', 'asnes', 'no', 1),
(102, 6, 'Askøy', 'ask%c3%b8y', 'no', 1),
(103, 6, 'Austevoll', 'austevoll', 'no', 1),
(104, 6, 'Austrheim', 'austrheim', 'no', 1),
(105, 6, 'Bergen', 'bergen', 'no', 1),
(106, 6, 'Bømlo', 'b%c3%b8mlo', 'no', 1),
(107, 6, 'Eidfjord', 'eidfjord', 'no', 1),
(108, 6, 'Etne', 'etne', 'no', 1),
(109, 6, 'Fedje', 'fedje', 'no', 1),
(110, 6, 'Fitjar', 'fitjar', 'no', 1),
(111, 6, 'Fjell', 'fjell', 'no', 1),
(112, 6, 'Fusa', 'fusa', 'no', 1),
(113, 6, 'Granvin', 'granvin', 'no', 1),
(114, 6, 'Jondal', 'jondal', 'no', 1),
(115, 6, 'Kvam', 'kvam', 'no', 1),
(116, 6, 'Kvinnherad', 'kvinnherad', 'no', 1),
(117, 6, 'Lindås', 'lindas', 'no', 1),
(118, 6, 'Masfjorden', 'masfjorden', 'no', 1),
(119, 6, 'Meland', 'meland', 'no', 1),
(120, 6, 'Modalen', 'modalen', 'no', 1),
(121, 6, 'Odda', 'odda', 'no', 1),
(122, 6, 'Os', 'os', 'no', 1),
(123, 6, 'Osterøy', 'oster%c3%b8y', 'no', 1),
(124, 6, 'Øygarden', '%c3%98ygarden', 'no', 1),
(125, 6, 'Radøy', 'rad%c3%b8y', 'no', 1),
(126, 6, 'Samnanger', 'samnanger', 'no', 1),
(127, 6, 'Stord', 'stord', 'no', 1),
(128, 6, 'Sund', 'sund', 'no', 1),
(129, 6, 'Sveio', 'sveio', 'no', 1),
(130, 6, 'Tysnes', 'tysnes', 'no', 1),
(131, 6, 'Ullensvang', 'ullensvang', 'no', 1),
(132, 6, 'Ulvik', 'ulvik', 'no', 1),
(133, 6, 'Vaksdal', 'vaksdal', 'no', 1),
(134, 6, 'Voss', 'voss', 'no', 1),
(135, 7, 'Ålesund', 'alesund', 'no', 1),
(136, 7, 'Aukra', 'aukra', 'no', 1),
(137, 7, 'Aure', 'aure', 'no', 1),
(138, 7, 'Averøy', 'aver%c3%b8y', 'no', 1),
(139, 7, 'Eide', 'eide', 'no', 1),
(140, 7, 'Fræna', 'fr%c3%a6na', 'no', 1),
(141, 7, 'Frei', 'frei', 'no', 1),
(142, 7, 'Giske', 'giske', 'no', 1),
(143, 7, 'Gjemnes', 'gjemnes', 'no', 1),
(144, 7, 'Halsa', 'halsa', 'no', 1),
(145, 7, 'Haram', 'haram', 'no', 1),
(146, 7, 'Hareid', 'hareid', 'no', 1),
(147, 7, 'Herøy', 'her%c3%b8y', 'no', 1),
(148, 7, 'Kristiansund', 'kristiansund', 'no', 1),
(149, 7, 'Midsund', 'midsund', 'no', 1),
(150, 7, 'Molde', 'molde', 'no', 1),
(151, 7, 'Nesset', 'nesset', 'no', 1),
(152, 7, 'Norddal', 'norddal', 'no', 1),
(153, 7, 'Ørskog', '%c3%98rskog', 'no', 1),
(154, 7, 'Ørsta', '%c3%98rsta', 'no', 1),
(155, 7, 'Rauma', 'rauma', 'no', 1),
(156, 7, 'Rindal', 'rindal', 'no', 1),
(157, 7, 'Sande', 'sande', 'no', 1),
(158, 7, 'Sandøy', 'sand%c3%b8y', 'no', 1),
(159, 7, 'Skodje', 'skodje', 'no', 1),
(160, 7, 'Smøla', 'sm%c3%b8la', 'no', 1),
(161, 7, 'Stordal', 'stordal', 'no', 1),
(162, 7, 'Stranda', 'stranda', 'no', 1),
(163, 7, 'Sula', 'sula', 'no', 1),
(164, 7, 'Sunndal', 'sunndal', 'no', 1),
(165, 7, 'Surnadal', 'surnadal', 'no', 1),
(166, 7, 'Sykkylven', 'sykkylven', 'no', 1),
(167, 7, 'Tingvoll', 'tingvoll', 'no', 1),
(168, 7, 'Tustna', 'tustna', 'no', 1),
(169, 7, 'Ulstein', 'ulstein', 'no', 1),
(170, 7, 'Vanylven', 'vanylven', 'no', 1),
(171, 7, 'Vestnes', 'vestnes', 'no', 1),
(172, 7, 'Volda', 'volda', 'no', 1),
(173, 8, 'Alstahaug', 'alstahaug', 'no', 1),
(174, 8, 'Andøy', 'and%c3%b8y', 'no', 1),
(175, 8, 'Ballangen', 'ballangen', 'no', 1),
(176, 8, 'Beiarn', 'beiarn', 'no', 1),
(177, 8, 'Bindal', 'bindal', 'no', 1),
(178, 8, 'Bø', 'b%c3%b8', 'no', 1),
(179, 8, 'Bodø', 'bod%c3%b8', 'no', 1),
(180, 8, 'Brønnøy', 'br%c3%b8nn%c3%b8y', 'no', 1),
(181, 8, 'Dønna', 'd%c3%b8nna', 'no', 1),
(182, 8, 'Evenes', 'evenes', 'no', 1),
(183, 8, 'Fauske', 'fauske', 'no', 1),
(184, 8, 'Flakstad', 'flakstad', 'no', 1),
(185, 8, 'Gildeskål', 'gildeskal', 'no', 1),
(186, 8, 'Grane', 'grane', 'no', 1),
(187, 8, 'Hadsel', 'hadsel', 'no', 1),
(188, 8, 'Hamarøy', 'hamar%c3%b8y', 'no', 1),
(189, 8, 'Hattfjelldal', 'hattfjelldal', 'no', 1),
(190, 8, 'Hemnes', 'hemnes', 'no', 1),
(191, 8, 'Herøy', 'her%c3%b8y', 'no', 1),
(192, 8, 'Leirfjord', 'leirfjord', 'no', 1),
(193, 8, 'Lødingen', 'l%c3%b8dingen', 'no', 1),
(194, 8, 'Lurøy', 'lur%c3%b8y', 'no', 1),
(195, 8, 'Meløy', 'mel%c3%b8y', 'no', 1),
(196, 8, 'Moskenes', 'moskenes', 'no', 1),
(197, 8, 'Narvik', 'narvik', 'no', 1),
(198, 8, 'Nesna', 'nesna', 'no', 1),
(199, 8, 'Øksnes', '%c3%98ksnes', 'no', 1),
(200, 8, 'Rana', 'rana', 'no', 1),
(201, 8, 'Rødøy', 'r%c3%b8d%c3%b8y', 'no', 1),
(202, 8, 'Røst', 'r%c3%b8st', 'no', 1),
(203, 8, 'Saltdal', 'saltdal', 'no', 1),
(204, 8, 'Sømna', 's%c3%b8mna', 'no', 1),
(205, 8, 'Sørfold', 's%c3%b8rfold', 'no', 1),
(206, 8, 'Sortland', 'sortland', 'no', 1),
(207, 8, 'Steigen', 'steigen', 'no', 1),
(208, 8, 'Tjeldsund', 'tjeldsund', 'no', 1),
(209, 8, 'Træna', 'tr%c3%a6na', 'no', 1),
(210, 8, 'Tysfjord', 'tysfjord', 'no', 1),
(211, 8, 'Værøy', 'v%c3%a6r%c3%b8y', 'no', 1),
(212, 8, 'Vågan', 'vagan', 'no', 1),
(213, 8, 'Vefsn', 'vefsn', 'no', 1),
(214, 8, 'Vega', 'vega', 'no', 1),
(215, 8, 'Vestvågøy', 'vestvag%c3%b8y', 'no', 1),
(216, 8, 'Vevelstad', 'vevelstad', 'no', 1),
(217, 9, 'Flatanger', 'flatanger', 'no', 1),
(218, 9, 'Fosnes', 'fosnes', 'no', 1),
(219, 9, 'Frosta', 'frosta', 'no', 1),
(220, 9, 'Grong', 'grong', 'no', 1),
(221, 9, 'Høylandet', 'h%c3%b8ylandet', 'no', 1),
(222, 9, 'Inderøy', 'inder%c3%b8y', 'no', 1),
(223, 9, 'Leka', 'leka', 'no', 1),
(224, 9, 'Leksvik', 'leksvik', 'no', 1),
(225, 9, 'Levanger', 'levanger', 'no', 1),
(226, 9, 'Lierne', 'lierne', 'no', 1),
(227, 9, 'Meråker', 'meraker', 'no', 1),
(228, 9, 'Mosvik', 'mosvik', 'no', 1),
(229, 9, 'Nærøy', 'n%c3%a6r%c3%b8y', 'no', 1),
(230, 9, 'Namdalseid', 'namdalseid', 'no', 1),
(231, 9, 'Namsos', 'namsos', 'no', 1),
(232, 9, 'Namsskogan', 'namsskogan', 'no', 1),
(233, 9, 'Overhalla', 'overhalla', 'no', 1),
(234, 9, 'Røyrvik', 'r%c3%b8yrvik', 'no', 1),
(235, 9, 'Snåsa', 'snasa', 'no', 1),
(236, 9, 'Steinkjer', 'steinkjer', 'no', 1),
(237, 9, 'Stjørdal', 'stj%c3%b8rdal', 'no', 1),
(238, 9, 'Verdal', 'verdal', 'no', 1),
(239, 9, 'Verran', 'verran', 'no', 1),
(240, 9, 'Vikna', 'vikna', 'no', 1),
(241, 10, 'Dovre', 'dovre', 'no', 1),
(242, 10, 'Etnedal', 'etnedal', 'no', 1),
(243, 10, 'Gausdal', 'gausdal', 'no', 1),
(244, 10, 'Gjøvik', 'gj%c3%b8vik', 'no', 1),
(245, 10, 'Gran', 'gran', 'no', 1),
(246, 10, 'Jevnaker', 'jevnaker', 'no', 1),
(247, 10, 'Lesja', 'lesja', 'no', 1),
(248, 10, 'Lillehammer', 'lillehammer', 'no', 1),
(249, 10, 'Lom', 'lom', 'no', 1),
(250, 10, 'Lunner', 'lunner', 'no', 1),
(251, 10, 'Nord-aurdal', 'nord-aurdal', 'no', 1),
(252, 10, 'Nord-fron', 'nord-fron', 'no', 1),
(253, 10, 'Nordre Land', 'nordre-land', 'no', 1),
(254, 10, 'Østre Toten', '%c3%98stre-toten', 'no', 1),
(255, 10, 'Øyer', '%c3%98yer', 'no', 1),
(256, 10, 'Øystre Slidre', '%c3%98ystre-slidre', 'no', 1),
(257, 10, 'Ringebu', 'ringebu', 'no', 1),
(258, 10, 'Sel', 'sel', 'no', 1),
(259, 10, 'Skjåk', 'skjak', 'no', 1),
(260, 10, 'Søndre Land', 's%c3%b8ndre-land', 'no', 1),
(261, 10, 'Sør-aurdal', 's%c3%b8r-aurdal', 'no', 1),
(262, 10, 'Sør-fron', 's%c3%b8r-fron', 'no', 1),
(263, 10, 'Vågå', 'vaga', 'no', 1),
(264, 10, 'Vang', 'vang', 'no', 1),
(265, 10, 'Vestre Slidre', 'vestre-slidre', 'no', 1),
(266, 10, 'Vestre Toten', 'vestre-toten', 'no', 1),
(267, 11, 'Bjerke', 'bjerke', 'no', 1),
(268, 11, 'Bygdøy-frogner', 'bygd%c3%b8y-frogner', 'no', 1),
(269, 11, 'Bøler', 'b%c3%b8ler', 'no', 1),
(270, 11, 'Ekeberg-bekkelaget', 'ekeberg-bekkelaget', 'no', 1),
(271, 11, 'Furuset', 'furuset', 'no', 1),
(272, 11, 'Gamle Oslo', 'gamle-oslo', 'no', 1),
(273, 11, 'Grefsen-kjelsås', 'grefsen-kjelsas', 'no', 1),
(274, 11, 'Grorud', 'grorud', 'no', 1),
(275, 11, 'Grünerløkka-sofienberg', 'grunerl%c3%b8kka-sofienberg', 'no', 1),
(276, 11, 'Hellerud', 'hellerud', 'no', 1),
(277, 11, 'Helsfyr-sinsen', 'helsfyr-sinsen', 'no', 1),
(278, 11, 'Lambertseter', 'lambertseter', 'no', 1),
(279, 11, 'Manglerud', 'manglerud', 'no', 1),
(280, 11, 'Nordstrand', 'nordstrand', 'no', 1),
(281, 11, 'Romsås', 'romsas', 'no', 1),
(282, 11, 'Røa', 'r%c3%b8a', 'no', 1),
(283, 11, 'Sagene-torshov', 'sagene-torshov', 'no', 1),
(284, 11, 'Sogn', 'sogn', 'no', 1),
(285, 11, 'St. Hanshaugen-ullevål', 'st-hanshaugen-ulleval', 'no', 1),
(286, 11, 'Stovner', 'stovner', 'no', 1),
(287, 11, 'Søndre Nordstrand', 's%c3%b8ndre-nordstrand', 'no', 1),
(288, 11, 'Ullern', 'ullern', 'no', 1),
(289, 11, 'Uranienborg-majorstuen', 'uranienborg-majorstuen', 'no', 1),
(290, 11, 'Vinderen', 'vinderen', 'no', 1),
(291, 11, 'Østensjø', '%c3%98stensj%c3%b8', 'no', 1),
(292, 12, 'Aremark', 'aremark', 'no', 1),
(293, 12, 'Askim', 'askim', 'no', 1),
(294, 12, 'Eidsberg', 'eidsberg', 'no', 1),
(295, 12, 'Fredrikstad', 'fredrikstad', 'no', 1),
(296, 12, 'Halden', 'halden', 'no', 1),
(297, 12, 'Hobøl', 'hob%c3%b8l', 'no', 1),
(298, 12, 'Hvaler', 'hvaler', 'no', 1),
(299, 12, 'Marker', 'marker', 'no', 1),
(300, 12, 'Moss', 'moss', 'no', 1),
(301, 12, 'Rakkestad', 'rakkestad', 'no', 1),
(302, 12, 'Rygge', 'rygge', 'no', 1),
(303, 12, 'Rømskog', 'r%c3%b8mskog', 'no', 1),
(304, 12, 'Råde', 'rade', 'no', 1),
(305, 12, 'Sarpsborg', 'sarpsborg', 'no', 1),
(306, 12, 'Skiptvet', 'skiptvet', 'no', 1),
(307, 12, 'Spydeberg', 'spydeberg', 'no', 1),
(308, 12, 'Trøgstad', 'tr%c3%b8gstad', 'no', 1),
(309, 12, 'Våler', 'valer', 'no', 1),
(310, 13, 'Bjerkreim', 'bjerkreim', 'no', 1),
(311, 13, 'Bokn', 'bokn', 'no', 1),
(312, 13, 'Eigersund', 'eigersund', 'no', 1),
(313, 13, 'Finnøy', 'finn%c3%b8y', 'no', 1),
(314, 13, 'Forsand', 'forsand', 'no', 1),
(315, 13, 'Gjesdal', 'gjesdal', 'no', 1),
(316, 13, 'Haugesund', 'haugesund', 'no', 1),
(317, 13, 'Hjelmeland', 'hjelmeland', 'no', 1),
(318, 13, 'Hå', 'ha', 'no', 1),
(319, 13, 'Karmøy', 'karm%c3%b8y', 'no', 1),
(320, 13, 'Klepp', 'klepp', 'no', 1),
(321, 13, 'Kvitsøy', 'kvits%c3%b8y', 'no', 1),
(322, 13, 'Lund', 'lund', 'no', 1),
(323, 13, 'Randaberg', 'randaberg', 'no', 1),
(324, 13, 'Rennesøy', 'rennes%c3%b8y', 'no', 1),
(325, 13, 'Sandnes', 'sandnes', 'no', 1),
(326, 13, 'Sauda', 'sauda', 'no', 1),
(327, 13, 'Sokndal', 'sokndal', 'no', 1),
(328, 13, 'Sola', 'sola', 'no', 1),
(329, 13, 'Stavanger', 'stavanger', 'no', 1),
(330, 13, 'Strand', 'strand', 'no', 1),
(331, 13, 'Suldal', 'suldal', 'no', 1),
(332, 13, 'Time', 'time', 'no', 1),
(333, 13, 'Tysvær', 'tysv%c3%a6r', 'no', 1),
(334, 13, 'Utsira', 'utsira', 'no', 1),
(335, 13, 'Vindafjord', 'vindafjord', 'no', 1),
(336, 14, 'Årdal', 'ardal', 'no', 1),
(337, 14, 'Askvoll', 'askvoll', 'no', 1),
(338, 14, 'Aurland', 'aurland', 'no', 1),
(339, 14, 'Balestrand', 'balestrand', 'no', 1),
(340, 14, 'Bremanger', 'bremanger', 'no', 1),
(341, 14, 'Eid', 'eid', 'no', 1),
(342, 14, 'Fjaler', 'fjaler', 'no', 1),
(343, 14, 'Flora', 'flora', 'no', 1),
(344, 14, 'Førde', 'f%c3%b8rde', 'no', 1),
(345, 14, 'Gaular', 'gaular', 'no', 1),
(346, 14, 'Gloppen', 'gloppen', 'no', 1),
(347, 14, 'Gulen', 'gulen', 'no', 1),
(348, 14, 'Hornindal', 'hornindal', 'no', 1),
(349, 14, 'Høyanger', 'h%c3%b8yanger', 'no', 1),
(350, 14, 'Hyllestad', 'hyllestad', 'no', 1),
(351, 14, 'Jølster', 'j%c3%b8lster', 'no', 1),
(352, 14, 'Lærdal', 'l%c3%a6rdal', 'no', 1),
(353, 14, 'Leikanger', 'leikanger', 'no', 1),
(354, 14, 'Luster', 'luster', 'no', 1),
(355, 14, 'Naustdal', 'naustdal', 'no', 1),
(356, 14, 'Selje', 'selje', 'no', 1),
(357, 14, 'Sogndal', 'sogndal', 'no', 1),
(358, 14, 'Solund', 'solund', 'no', 1),
(359, 14, 'Stryn', 'stryn', 'no', 1),
(360, 14, 'Vågsøy', 'vags%c3%b8y', 'no', 1),
(361, 14, 'Vik', 'vik', 'no', 1),
(362, 15, 'Åfjord', 'afjord', 'no', 1),
(363, 15, 'Agdenes', 'agdenes', 'no', 1),
(364, 15, 'Bjugn', 'bjugn', 'no', 1),
(365, 15, 'Frøya', 'fr%c3%b8ya', 'no', 1),
(366, 15, 'Hemne', 'hemne', 'no', 1),
(367, 15, 'Hitra', 'hitra', 'no', 1),
(368, 15, 'Holtålen', 'holtalen', 'no', 1),
(369, 15, 'Klæbu', 'kl%c3%a6bu', 'no', 1),
(370, 15, 'Malvik', 'malvik', 'no', 1),
(371, 15, 'Meldal', 'meldal', 'no', 1),
(372, 15, 'Melhus', 'melhus', 'no', 1),
(373, 15, 'Midtre Gauldal', 'midtre-gauldal', 'no', 1),
(374, 15, 'Oppdal', 'oppdal', 'no', 1),
(375, 15, 'Orkdal', 'orkdal', 'no', 1),
(376, 15, 'Ørland', '%c3%98rland', 'no', 1),
(377, 15, 'Osen', 'osen', 'no', 1),
(378, 15, 'Rennebu', 'rennebu', 'no', 1),
(379, 15, 'Rissa', 'rissa', 'no', 1),
(380, 15, 'Roan', 'roan', 'no', 1),
(381, 15, 'Røros', 'r%c3%b8ros', 'no', 1),
(382, 15, 'Selbu', 'selbu', 'no', 1),
(383, 15, 'Skaun', 'skaun', 'no', 1),
(384, 15, 'Snillfjord', 'snillfjord', 'no', 1),
(385, 15, 'Trondheim', 'trondheim', 'no', 1),
(386, 15, 'Tydal', 'tydal', 'no', 1),
(387, 16, 'Bamble', 'bamble', 'no', 1),
(388, 16, 'Bø', 'b%c3%b8', 'no', 1),
(389, 16, 'Drangedal', 'drangedal', 'no', 1),
(390, 16, 'Fyresdal', 'fyresdal', 'no', 1),
(391, 16, 'Hjartdal', 'hjartdal', 'no', 1),
(392, 16, 'Kragerø', 'krager%c3%b8', 'no', 1),
(393, 16, 'Kviteseid', 'kviteseid', 'no', 1),
(394, 16, 'Nissedal', 'nissedal', 'no', 1),
(395, 16, 'Nome', 'nome', 'no', 1),
(396, 16, 'Notodden', 'notodden', 'no', 1),
(397, 16, 'Porsgrunn', 'porsgrunn', 'no', 1),
(398, 16, 'Sauherad', 'sauherad', 'no', 1),
(399, 16, 'Seljord', 'seljord', 'no', 1),
(400, 16, 'Siljan', 'siljan', 'no', 1),
(401, 16, 'Skien', 'skien', 'no', 1),
(402, 16, 'Tinn', 'tinn', 'no', 1),
(403, 16, 'Tokke', 'tokke', 'no', 1),
(404, 16, 'Vinje', 'vinje', 'no', 1),
(405, 17, 'Balsfjord', 'balsfjord', 'no', 1),
(406, 17, 'Bardu', 'bardu', 'no', 1),
(407, 17, 'Berg', 'berg', 'no', 1),
(408, 17, 'Bjarkøy', 'bjark%c3%b8y', 'no', 1),
(409, 17, 'Dyrøy', 'dyr%c3%b8y', 'no', 1),
(410, 17, 'Gratangen', 'gratangen', 'no', 1),
(411, 17, 'Harstad', 'harstad', 'no', 1),
(412, 17, 'Ibestad', 'ibestad', 'no', 1),
(413, 17, 'Kåfjord', 'kafjord', 'no', 1),
(414, 17, 'Karlsøy', 'karls%c3%b8y', 'no', 1),
(415, 17, 'Kvæfjord', 'kv%c3%a6fjord', 'no', 1),
(416, 17, 'Kvænangen', 'kv%c3%a6nangen', 'no', 1),
(417, 17, 'Lavangen', 'lavangen', 'no', 1),
(418, 17, 'Lenvik', 'lenvik', 'no', 1),
(419, 17, 'Lyngen', 'lyngen', 'no', 1),
(420, 17, 'Målselv', 'malselv', 'no', 1),
(421, 17, 'Nordreisa', 'nordreisa', 'no', 1),
(422, 17, 'Salangen', 'salangen', 'no', 1),
(423, 17, 'Skånland', 'skanland', 'no', 1),
(424, 17, 'Skjervøy', 'skjerv%c3%b8y', 'no', 1),
(425, 17, 'Sørreisa', 's%c3%b8rreisa', 'no', 1),
(426, 17, 'Storfjord', 'storfjord', 'no', 1),
(427, 17, 'Torsken', 'torsken', 'no', 1),
(428, 17, 'Tranøy', 'tran%c3%b8y', 'no', 1),
(429, 17, 'Tromsø', 'troms%c3%b8', 'no', 1),
(430, 18, 'Åseral', 'aseral', 'no', 1),
(431, 18, 'Audnedal', 'audnedal', 'no', 1),
(432, 18, 'Farsund', 'farsund', 'no', 1),
(433, 18, 'Flekkefjord', 'flekkefjord', 'no', 1),
(434, 18, 'Hægebostad', 'h%c3%a6gebostad', 'no', 1),
(435, 18, 'Kristiansand', 'kristiansand', 'no', 1),
(436, 18, 'Kvinesdal', 'kvinesdal', 'no', 1),
(437, 18, 'Lindesnes', 'lindesnes', 'no', 1),
(438, 18, 'Lyngdal', 'lyngdal', 'no', 1),
(439, 18, 'Mandal', 'mandal', 'no', 1),
(440, 18, 'Marnardal', 'marnardal', 'no', 1),
(441, 18, 'Sirdal', 'sirdal', 'no', 1),
(442, 18, 'Songdalen', 'songdalen', 'no', 1),
(443, 18, 'Søgne', 's%c3%b8gne', 'no', 1),
(444, 18, 'Vennesla', 'vennesla', 'no', 1),
(445, 19, 'Andebu', 'andebu', 'no', 1),
(446, 19, 'Hof', 'hof', 'no', 1),
(447, 19, 'Holmestrand', 'holmestrand', 'no', 1),
(448, 19, 'Horten', 'horten', 'no', 1),
(449, 19, 'Lardal', 'lardal', 'no', 1),
(450, 19, 'Larvik', 'larvik', 'no', 1),
(451, 19, 'Nøtterøy', 'n%c3%b8tter%c3%b8y', 'no', 1),
(452, 19, 'Re', 're', 'no', 1),
(453, 19, 'Sande', 'sande', 'no', 1),
(454, 19, 'Sandefjord', 'sandefjord', 'no', 1),
(455, 19, 'Stokke', 'stokke', 'no', 1),
(456, 19, 'Svelvik', 'svelvik', 'no', 1),
(457, 19, 'Tjøme', 'tj%c3%b8me', 'no', 1),
(458, 19, 'Tønsberg', 't%c3%b8nsberg', 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` char(2) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `slug` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_fk0` (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `name`, `slug`) VALUES
(1, 'NO', 'Norway', 'norway');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `advertise_id` int(10) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1440392615),
('m130524_201442_init', 1440392618);

-- --------------------------------------------------------

--
-- Table structure for table `optional_fields`
--

CREATE TABLE IF NOT EXISTS `optional_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titles` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country_code` char(2) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `slug` varchar(60) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `region_fk1` (`country_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `country_code`, `name`, `slug`, `status`) VALUES
(1, 'no', 'Akershus', 'akershus', 1),
(2, 'no', 'Aust-agder', 'aust-agder', 1),
(3, 'no', 'Buskerud', 'buskerud', 1),
(4, 'no', 'Finnmark', 'finnmark', 1),
(5, 'no', 'Hedmark', 'hedmark', 1),
(6, 'no', 'Hordaland', 'hordaland', 1),
(7, 'no', 'Møre Og Romsdal', 'm%c3%b8re-og-romsdal', 1),
(8, 'no', 'Nordland', 'nordland', 1),
(9, 'no', 'Nord-trøndelag', 'nord-tr%c3%b8ndelag', 1),
(10, 'no', 'Oppland', 'oppland', 1),
(11, 'no', 'Oslo', 'oslo', 1),
(12, 'no', 'Østfold', '%c3%98stfold', 1),
(13, 'no', 'Rogaland', 'rogaland', 1),
(14, 'no', 'Sogn Og Fjordane', 'sogn-og-fjordane', 1),
(15, 'no', 'Sør-trøndelag', 's%c3%b8r-tr%c3%b8ndelag', 1),
(16, 'no', 'Telemark', 'telemark', 1),
(17, 'no', 'Troms', 'troms', 1),
(18, 'no', 'Vest-agder', 'vest-agder', 1),
(19, 'no', 'Vestfold', 'vestfold', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_user`
--

CREATE TABLE IF NOT EXISTS `tmp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT '10',
  `sms_verify` int(11) DEFAULT NULL,
  `email_verify` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT '10',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'gBH_Zf8YMObcD2MlGxm82qJFYGhtYcr9', '$2y$13$rH4EwEmf..t6D/7D0gZWm.Y7LB6YawxCjHKey8sFKccp4.DjeBmXy', NULL, 'pm@virtual-developers.com', 10, 1440569589, 1440569589);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
