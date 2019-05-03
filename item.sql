-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 03 mai 2019 à 20:15
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ece_amazon`
--

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Prix` int(11) NOT NULL,
  `Categorie` varchar(20) NOT NULL,
  `Photo` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`Id`, `Nom`, `Description`, `Prix`, `Categorie`, `Photo`) VALUES
(10, 'a', 'aa', 10, '', ''),
(11, 'jhk', 'tf', 50, 'Livres', ''),
(12, 'jh', 'a', 10, 'Musique', ''),
(22, 'aa', 'a', 50, 'Livres', ''),
(21, 'iuiu', 'khjphj', 10, 'Livres', ''),
(20, 'jhl', 'nnn', 10, 'Sport&Loisirs', ''),
(19, 'jhl', 'nnn', 10, 'Sport&Loisirs', ''),
(23, 'b', 'a', 50, 'Livres', ''),
(24, 'aa', 'khmjo', 10, 'Livres', ''),
(25, 'o', 'jioo', 10, 'Livres', ''),
(26, 'o', 'jioo', 10, 'Livres', ''),
(27, 'l', 'k', 20, 'Livres', ''),
(37, 'xxs', 'd', 10, 'Musique', ''),
(36, 'a', 'kl', 10, 'Musique', ''),
(30, 'll', 'l', 10, 'Livres', ''),
(31, 'll', 'l', 10, 'Livres', ''),
(32, 'll', 'l', 10, 'Livres', ''),
(33, 'a', 'a', 10, 'Livres', ''),
(34, 'ipi', 'kl', 10, 'VÃªtemets', ''),
(35, 'h', 'j', 10, 'Livres', ''),
(38, 'l', 'n', 10, 'Livres', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
