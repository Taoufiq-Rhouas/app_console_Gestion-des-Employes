-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 déc. 2020 à 16:42
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionpersonnel`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id_employer` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id_employer`, `nom`, `prenom`, `age`) VALUES
(1, 'toto', 'rh', 22),
(2, 'NT1', 'PT1', 10),
(3, 'NOUVELNM\"', 'NOUVELPR3', 3333),
(4, 'NT', 'PT3', 30),
(5, 'DD', 'DD', 22),
(6, 'KKL1', 'KKL1', 11),
(7, 'YASSINE2', 'AIBI2', 44);

-- --------------------------------------------------------

--
-- Structure de la table `info_salaire`
--

CREATE TABLE `info_salaire` (
  `id_info_salaire` int(11) NOT NULL,
  `date` varchar(60) NOT NULL,
  `chifredaffire` double NOT NULL,
  `Salire_total` double NOT NULL,
  `id_poste_de_travail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `info_salaire`
--

INSERT INTO `info_salaire` (`id_info_salaire`, `date`, `chifredaffire`, `Salire_total`, `id_poste_de_travail`) VALUES
(1, '2020-12-25', 100, 1520, 1),
(2, '2020-12-25', 20, 100, 3),
(3, '2020-12-25', 20, 100, 6),
(4, '2020-12-25', 40, 200, 6),
(10, '2020-12-25', 44, 420, 3),
(11, '2020-12-25', 66, 530, 14),
(12, '2020-12-25', 88, 640, 15),
(13, '2020-12-25', 56, 3000, 18),
(14, '2020-12-25', 22, 1300, 18),
(15, '2020-12-25', 90, 2518, 20);

-- --------------------------------------------------------

--
-- Structure de la table `poste_de_travail`
--

CREATE TABLE `poste_de_travail` (
  `id_post_de_travail` int(11) NOT NULL,
  `date_dentree_service` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  `id_employer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `poste_de_travail`
--

INSERT INTO `poste_de_travail` (`id_post_de_travail`, `date_dentree_service`, `type`, `id_employer`) VALUES
(1, '2020-12-24', 'la_Vente', 1),
(2, '2020-10-24', 'la_Vente', 2),
(3, '2020-12-24', 'la_Production', 3),
(4, '2020-12-24', 'la_Manutention', 4),
(6, '2020-12-24', 'la_Production', 5),
(7, '2020-12-24', 'la_Manutention', 2),
(8, '2020-12-24', 'la_Representation', 6),
(9, '2020-12-25', 'la_Vente', 2),
(10, '2020-12-25', 'la_Manutention_a_risques', 6),
(11, '2020-12-25', 'la_Production_a_risques', 2),
(12, '2020-12-25', 'la_Production_a_risques', 5),
(13, '2020-12-25', 'la_Production_a_risques', 6),
(14, '2020-12-25', 'la_Production_a_risques', 2),
(15, '2020-12-25', 'la_Production_a_risques', 3),
(16, '2020-12-25', 'la_Manutention_a_risques', 3),
(17, '2020-12-25', 'la_Production', 3),
(18, '2020-12-25', 'la_Manutention_a_risques', 3),
(19, '2020-12-25', 'la_Vente', 7),
(20, '2020-12-25', 'la_Representation', 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id_employer`);

--
-- Index pour la table `info_salaire`
--
ALTER TABLE `info_salaire`
  ADD PRIMARY KEY (`id_info_salaire`),
  ADD KEY `id_poste_de_travail` (`id_poste_de_travail`);

--
-- Index pour la table `poste_de_travail`
--
ALTER TABLE `poste_de_travail`
  ADD PRIMARY KEY (`id_post_de_travail`),
  ADD KEY `id_employer` (`id_employer`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id_employer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `info_salaire`
--
ALTER TABLE `info_salaire`
  MODIFY `id_info_salaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `poste_de_travail`
--
ALTER TABLE `poste_de_travail`
  MODIFY `id_post_de_travail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `info_salaire`
--
ALTER TABLE `info_salaire`
  ADD CONSTRAINT `info_salaire_ibfk_1` FOREIGN KEY (`id_poste_de_travail`) REFERENCES `poste_de_travail` (`id_post_de_travail`);

--
-- Contraintes pour la table `poste_de_travail`
--
ALTER TABLE `poste_de_travail`
  ADD CONSTRAINT `poste_de_travail_ibfk_1` FOREIGN KEY (`id_employer`) REFERENCES `employe` (`id_employer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
