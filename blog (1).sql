-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 21 mai 2023 à 19:37
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `titre` varchar(140) COLLATE utf8mb4_general_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `tag` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `tag`) VALUES
(1, 'Bonjour', '++', '2023-03-24 15:22:07', ''),
(4, 'AH ', 'AAAAHHHHH', '2023-03-24 18:12:37', ''),
(11, 'Zerator_Lite', 'Zevent oui ', '2023-05-20 22:54:52', ''),
(13, 'aaaaa', 'aaaaaa', '2023-05-21 18:10:34', 'rouge'),
(14, 'yyyyyy', 'yyyyyyy', '2023-05-21 18:28:47', 'bleu');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nom` text COLLATE utf8mb4_general_ci NOT NULL,
  `pseudo` text COLLATE utf8mb4_general_ci NOT NULL,
  `mail` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `pseudo`, `mail`, `password`, `photo`) VALUES
(3, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$2fh6HT91AReGxkcKmGZYHeq1FRMN71NC.cP9uct67RsbDE0PP.kJ.', 'ui'),
(4, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$QxZPk9AHtJR0sSu8yIWPHuyHCMObLfDnnD2p07jJDnu0IGreBtpnW', 'ui'),
(5, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$dNIX0OrUlpW7a604pAD4iuuDT78po/31yxYAFelmNAgdmOfJnrV8S', 'ui'),
(6, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$guMpO.njOBreFjYkQ1Vj/Oi47p2k2f2AiJyEHiIyboyjf2hpxF6i.', 'ui'),
(7, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$pG3NyYvBGHnHGcxnu0CyCeG0cz/jkz0Mik64p7gF8fXMwIHgoVN/O', 'ui'),
(8, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$Cn4p19eWFizMapwx7gTV3eZilPujbTrfmHd90fles9ZUlaL2WEjFK', 'ui'),
(9, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$A0o0P1trc3SMbQAnH7eNGetDaTSqL1lvweYYIwyp.SilvuelkpIlS', 'non'),
(10, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$prJdMZCBjO/V9dndPl3SQ.oELmFV.7I1MjMEvUjU4dndEjyiII2vW', 'ui'),
(11, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$60fXPweWUl18gsHGEhRxxOaVAXn3ZK//DANEOs/G87VMXHvhec/dW', 'ui'),
(12, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$CNKKVhy8tMSyPnUQcURT1eDvJPyhnPV6hZolVzLvAKGNobb2oSBTy', 'ui'),
(13, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$8J/yTJTe58LsR4UV0iGtIenE3ebvJHWtrBId1YFhJ1Q9nM71oXYcu', 'ui'),
(14, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$Ao4tvCxYZYRuMBWAEOqXneEYKOzmcdqVkysOd.gLVX1f1JHXyCgLa', 'ui'),
(15, 'Potté', 'Chat', 'Pussinboots@gmail.com', '$2y$10$jrJvjrUmGmLwxx5qrLpCuuIVo.fC20Zx1NhT89ZQrGd5MuJ0HjScm', 'ui');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
