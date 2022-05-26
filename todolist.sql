-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 26 mai 2022 à 15:56
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `todolist`
--
CREATE DATABASE IF NOT EXISTS `todolist` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `todolist`;

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

DROP TABLE IF EXISTS `liste`;
CREATE TABLE IF NOT EXISTS `liste` (
  `id_liste` int(10) NOT NULL AUTO_INCREMENT,
  `libelle_liste` varchar(50) DEFAULT NULL,
  `FK_id_utilisateur` int(10) NOT NULL,
  PRIMARY KEY (`id_liste`),
  KEY `FK_id_utilisateur` (`FK_id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste`
--

INSERT INTO `liste` (`id_liste`, `libelle_liste`, `FK_id_utilisateur`) VALUES
(1, 'Achats magasin', 1),
(2, 'Révisions', 1),
(3, 'Ménage', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

DROP TABLE IF EXISTS `tache`;
CREATE TABLE IF NOT EXISTS `tache` (
  `id_tache` int(10) NOT NULL AUTO_INCREMENT,
  `libelle_tache` varchar(50) DEFAULT NULL,
  `etat_tache` tinyint(1) DEFAULT NULL,
  `couleur_tache` varchar(50) DEFAULT NULL,
  `FK_id_liste` int(10) NOT NULL,
  `FK_id_type` int(10) NOT NULL,
  PRIMARY KEY (`id_tache`),
  KEY `FK_id_liste` (`FK_id_liste`),
  KEY `FK_id_type` (`FK_id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tache`
--

INSERT INTO `tache` (`id_tache`, `libelle_tache`, `etat_tache`, `couleur_tache`, `FK_id_liste`, `FK_id_type`) VALUES
(1, 'Acheter des glaces', 0, '#6d8ce8', 1, 1),
(2, 'Bonbons', 0, '#00c575', 1, 1),
(3, 'Développement web', 0, '#00c575', 2, 3),
(4, 'Système d\'exploitation', 1, '#00c575', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id_type` int(10) NOT NULL AUTO_INCREMENT,
  `libelle_type` varchar(50) DEFAULT NULL,
  `FK_id_type` int(10) NOT NULL,
  PRIMARY KEY (`id_type`),
  KEY `FK_id_type` (`FK_id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id_type`, `libelle_type`, `FK_id_type`) VALUES
(1, 'Courses', 1),
(2, 'Produits frais', 1),
(3, 'Cours', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(10) NOT NULL AUTO_INCREMENT,
  `mail_utilisateur` varchar(50) DEFAULT NULL,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `prenom_utilisateur` varchar(50) DEFAULT NULL,
  `mdp_utilisateur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `mail_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `mdp_utilisateur`) VALUES
(1, 'toto@domaine.com', 'Toto', 'Toto', 'toto');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `liste`
--
ALTER TABLE `liste`
  ADD CONSTRAINT `liste_ibfk_1` FOREIGN KEY (`FK_id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `tache`
--
ALTER TABLE `tache`
  ADD CONSTRAINT `tache_ibfk_1` FOREIGN KEY (`FK_id_liste`) REFERENCES `liste` (`id_liste`),
  ADD CONSTRAINT `tache_ibfk_2` FOREIGN KEY (`FK_id_type`) REFERENCES `type` (`id_type`);

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`FK_id_type`) REFERENCES `type` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
