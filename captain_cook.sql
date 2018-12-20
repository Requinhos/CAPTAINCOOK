-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 13 déc. 2018 à 08:56
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
-- Base de données :  `captain cook`
--

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ingedient` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients_recette`
--

DROP TABLE IF EXISTS `ingredients_recette`;
CREATE TABLE IF NOT EXISTS `ingredients_recette` (
  `id_recette` int(5) NOT NULL,
  `id_ingredient` int(5) NOT NULL,
  KEY `id_recette` (`id_recette`,`id_ingredient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id_pays` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pays`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `id_recette` int(11) NOT NULL AUTO_INCREMENT,
  `recette_du_jour` varchar(25) NOT NULL COMMENT 'Le titre des recettes',
  `entree` varchar(25) NOT NULL COMMENT 'Le titre de l''entrée',
  `plat` varchar(25) NOT NULL COMMENT 'Le titre du plat',
  `dessert` varchar(25) NOT NULL COMMENT 'Le titre du dessert',
  `id_pays` int(11) NOT NULL,
  `nom_de_la_recette` varchar(25) NOT NULL,
  `duree_de_la_recette` int(11) NOT NULL,
  `descriptif_de_la_recette` text NOT NULL COMMENT 'Les étapes pour la création de la recette',
  `id_utilisateur` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  PRIMARY KEY (`id_recette`),
  KEY `id_pays` (`id_pays`),
  KEY `id_ingredients` (`id_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `rang_utilisateur` int(11) NOT NULL COMMENT '(admin,user,...)',
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mot_de_passe` int(20) NOT NULL,
  `adresse_mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
