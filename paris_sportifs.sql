-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 17 nov. 2025 à 14:08
-- Version du serveur : 8.0.44
-- Version de PHP : 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `paris_sportifs`
--

-- --------------------------------------------------------

--
-- Structure de la table `les_gains`
--

CREATE TABLE `les_gains` (
  `id_gain` int NOT NULL,
  `id_pari` int NOT NULL,
  `montant_gain` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `les_gains`
--

INSERT INTO `les_gains` (`id_gain`, `id_pari`, `montant_gain`) VALUES
(1, 1, 35.00),
(2, 2, 0.00),
(3, 3, 0.00);

-- --------------------------------------------------------

--
-- Structure de la table `les_matchs`
--

CREATE TABLE `les_matchs` (
  `id_match` int NOT NULL,
  `equipe_dom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `equipe_ext` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_match` datetime NOT NULL,
  `id_sport` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `les_matchs`
--

INSERT INTO `les_matchs` (`id_match`, `equipe_dom`, `equipe_ext`, `date_match`, `id_sport`) VALUES
(1, 'PSG', 'OM', '2025-11-17 13:08:16', 1),
(2, 'Lakers', 'Bulls', '2025-11-17 13:09:41', 2),
(3, 'Nadal', 'Federer', '2025-11-17 13:10:03', 3);

-- --------------------------------------------------------

--
-- Structure de la table `les_sports`
--

CREATE TABLE `les_sports` (
  `id_sport` int NOT NULL,
  `nom_sport` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `les_sports`
--

INSERT INTO `les_sports` (`id_sport`, `nom_sport`) VALUES
(1, 'Football'),
(2, 'Basketball'),
(3, 'Tennis');

-- --------------------------------------------------------

--
-- Structure de la table `les_utilisateurs`
--

CREATE TABLE `les_utilisateurs` (
  `id_user` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `les_utilisateurs`
--

INSERT INTO `les_utilisateurs` (`id_user`, `nom`, `prenom`, `email`) VALUES
(1, 'Dupont', 'Marc', 'marc.dupont@gmail.com'),
(2, 'Lopez', 'Sara', 'sara.lopez@gmail.com'),
(3, 'Idrissi', 'Karim', 'karim.idrissi@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `pari`
--

CREATE TABLE `pari` (
  `id_pari` int NOT NULL,
  `id_user` int NOT NULL,
  `id_match` int NOT NULL,
  `id_typepari` int NOT NULL,
  `mise` decimal(6,2) NOT NULL,
  `choix` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pari`
--

INSERT INTO `pari` (`id_pari`, `id_user`, `id_match`, `id_typepari`, `mise`, `choix`) VALUES
(1, 1, 1, 1, 20.00, ''),
(2, 2, 2, 2, 15.00, ''),
(3, 3, 3, 3, 10.00, '');

-- --------------------------------------------------------

--
-- Structure de la table `types_de_paris`
--

CREATE TABLE `types_de_paris` (
  `id_typepari` int NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `types_de_paris`
--

INSERT INTO `types_de_paris` (`id_typepari`, `description`) VALUES
(1, 'vainqueur du match'),
(2, 'Nombre de buts/points');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `les_gains`
--
ALTER TABLE `les_gains`
  ADD PRIMARY KEY (`id_gain`),
  ADD KEY `id_pari` (`id_pari`);

--
-- Index pour la table `les_matchs`
--
ALTER TABLE `les_matchs`
  ADD PRIMARY KEY (`id_match`),
  ADD KEY `id_sport` (`id_sport`);

--
-- Index pour la table `les_sports`
--
ALTER TABLE `les_sports`
  ADD PRIMARY KEY (`id_sport`);

--
-- Index pour la table `les_utilisateurs`
--
ALTER TABLE `les_utilisateurs`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `pari`
--
ALTER TABLE `pari`
  ADD PRIMARY KEY (`id_pari`),
  ADD KEY `id_match` (`id_match`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_typepari` (`id_typepari`);

--
-- Index pour la table `types_de_paris`
--
ALTER TABLE `types_de_paris`
  ADD PRIMARY KEY (`id_typepari`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `les_gains`
--
ALTER TABLE `les_gains`
  MODIFY `id_gain` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `les_matchs`
--
ALTER TABLE `les_matchs`
  MODIFY `id_match` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `les_sports`
--
ALTER TABLE `les_sports`
  MODIFY `id_sport` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `les_utilisateurs`
--
ALTER TABLE `les_utilisateurs`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pari`
--
ALTER TABLE `pari`
  MODIFY `id_pari` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `types_de_paris`
--
ALTER TABLE `types_de_paris`
  MODIFY `id_typepari` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `les_gains`
--
ALTER TABLE `les_gains`
  ADD CONSTRAINT `les_gains_ibfk_1` FOREIGN KEY (`id_pari`) REFERENCES `pari` (`id_pari`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `les_matchs`
--
ALTER TABLE `les_matchs`
  ADD CONSTRAINT `les_matchs_ibfk_1` FOREIGN KEY (`id_sport`) REFERENCES `les_sports` (`id_sport`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `pari`
--
ALTER TABLE `pari`
  ADD CONSTRAINT `pari_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `les_utilisateurs` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pari_ibfk_2` FOREIGN KEY (`id_match`) REFERENCES `les_matchs` (`id_match`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `types_de_paris`
--
ALTER TABLE `types_de_paris`
  ADD CONSTRAINT `types_de_paris_ibfk_1` FOREIGN KEY (`id_typepari`) REFERENCES `pari` (`id_typepari`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
