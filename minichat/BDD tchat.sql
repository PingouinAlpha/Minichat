-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 24 mai 2022 à 13:41
-- Version du serveur :  8.0.18
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `À nommer`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `messages_pseudo` varchar(25) NOT NULL,
  `messages_dateM` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `messages_contenu` varchar(255) NOT NULL,
  PRIMARY KEY (`messages_dateM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`messages_pseudo`, `messages_dateM`, `messages_contenu`) VALUES
('cricri76', '2016-11-23 18:15:12', ' Et les balises ?'),
('cricri76', '2016-11-23 18:35:24', ' test avec Samba '),
('cricri76', '2017-01-16 18:18:35', 'Coucou Kevin !'),
('cricri76', '2017-01-16 18:28:45', 'T\'as tout compris ?'),
('cricri76', '2017-06-14 09:28:58', 'gestion des sessions'),
('cricri76', '2017-06-14 09:41:07', 'et maintenant ?'),
('cricri76', '2017-06-14 09:41:31', '8 messages affichés'),
('cricri76', '2017-06-14 09:48:31', 'Coucou'),
('corinne', '2017-08-01 17:52:04', 'nouvelle session avec Christophe'),
('cricri76', '2017-08-03 14:33:12', 'Je teste'),
('corinne', '2017-08-03 14:37:36', 'test d\'insertion de commentaires'),
('cricri76', '2017-08-03 14:40:07', 'nouveau test'),
('cricri76', '2017-08-21 10:28:27', 'Bonjour Thomas'),
('TomC', '2017-08-21 10:29:05', 'Bonjour Christophe'),
('TomC', '2017-08-21 10:48:33', 'Je crois que j\'ai compris'),
('kheiri', '2017-09-07 18:05:28', 'Coucou Christophe'),
('cricri76', '2017-09-07 18:06:21', 'Salut à toi !'),
('cricri76', '2017-09-07 18:18:21', 'nouveau message'),
('Cricri', '2018-02-21 16:38:48', 'Salut Antony'),
('Antony', '2018-02-21 16:44:19', 'C\'est quoi une session ?'),
('Cricri', '2018-02-21 16:52:14', 'Gestion d\'un nouvel enregistrement !'),
('Cricri', '2018-02-21 16:56:12', 'alert(\'coucou\');'),
('Antony', '2018-02-28 16:56:01', 'coucou'),
('kalidou gatta', '2018-05-21 10:36:59', 'test du chat'),
('kalidou gatta', '2018-05-21 10:39:02', 'un nouveau message'),
('cricri', '2018-05-21 10:41:16', 'c\'est pour tester la gestion des sessions'),
('David', '2018-05-21 10:49:54', 'Coucou'),
('Cricri', '2018-08-27 14:53:44', 'bonjour Julien'),
('Julien', '2018-08-27 14:55:09', 'Coucou !'),
('Vilain', '2018-08-27 15:03:43', 'alert(\'coucou\');'),
('superdev', '2018-09-28 09:17:37', 'test'),
('Hedi', '2018-10-15 13:52:11', 'un mini chat ?'),
('Guillaume', '2019-12-13 17:22:51', 'j\'aime pas l\'objet'),
('Simon', '2019-12-17 08:41:52', 'je découvre PHP'),
('Cricri', '2019-12-17 08:47:02', 'il faut un début'),
('Cricri', '2019-12-17 09:00:48', 'Allons plus loin'),
('Cricri', '2019-12-17 09:05:25', 'et les failles ?'),
('Hilda', '2020-01-16 19:14:38', 'Coucou !'),
('Sandra', '2020-01-20 13:44:32', 'Découverte de PHP'),
('Cricri', '2020-01-20 13:49:52', 'Démonstration'),
('Cricri', '2020-01-20 13:59:53', 'nouveau test'),
('Raphaël', '2020-01-21 11:18:18', 'Démo SQL'),
('Hilda', '2020-02-19 18:30:12', 'démo php'),
('David', '2020-02-27 09:08:05', 'je découvre PHP'),
('abdenour', '2020-03-11 09:48:59', 'Coucou !'),
('Thomas', '2020-04-01 09:48:43', 'Découverte de PHP'),
('Thomas', '2020-04-01 10:00:08', 'Nouveau test'),
('Célia', '2020-04-20 11:35:12', 'Découverte du P4'),
('Cricri', '2020-04-20 11:36:17', 'C\'est cool'),
('Hicham', '2020-06-03 09:40:44', 'un minichat ?'),
('Hicham', '2020-06-03 09:51:00', 'c\'est cool'),
('Hicham', '2020-06-03 09:52:53', 'alert(\'test\');'),
('Romain', '2020-06-29 10:21:32', 'c\'est quoi le MVC ?'),
('Cricri', '2020-06-29 10:25:34', 'Coucou !'),
('Hicham', '2020-07-15 09:23:23', 'ordre ?'),
('Elysa', '2020-08-04 08:08:04', 'un minichat ?'),
('Romain', '2020-08-10 10:23:23', 'Salut !'),
('jean', '2020-08-14 10:28:55', 'découverte php'),
('Ahmed', '2020-11-12 14:20:36', 'c\'est quoi PHP ?'),
('Dolorès', '2020-12-07 16:25:00', 'Découvrons le PHP'),
('Cricri', '2020-12-07 16:49:40', 'vue d\'ensemble'),
('Marie-Anne', '2020-12-09 15:28:04', 'démo PHP ?'),
('Benoît', '2021-02-24 09:39:02', 'découverte de PHP'),
('Benoît', '2021-02-24 09:53:12', 'test sécurité'),
('Florian', '2022-05-12 09:25:28', 'C\'est commencé ?'),
('Sabah', '2022-05-12 09:41:09', 'J\'ai tout compris'),
('Quentin', '2022-05-12 09:54:39', 'C\'est bien vrai !'),
('Quentin', '2022-05-12 09:56:06', 'c\'est cool'),
('Florian', '2022-05-12 10:44:06', 'test'),
('Florian', '2022-05-12 10:44:35', 'truc'),
('David', '2022-05-12 10:46:59', 'balise echo !'),
('David', '2022-05-12 10:48:05', 'C\'est bien vu !');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
