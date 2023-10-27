-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 sep. 2023 à 13:18
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pint_dev2`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230424135619', '2023-04-24 14:02:50', 103),
('DoctrineMigrations\\Version20230426064643', '2023-04-26 06:51:49', 152),
('DoctrineMigrations\\Version20230524082914', '2023-05-24 10:29:59', 194),
('DoctrineMigrations\\Version20230526120930', '2023-05-26 14:11:40', 117),
('DoctrineMigrations\\Version20230526123506', '2023-05-26 14:37:22', 82),
('DoctrineMigrations\\Version20230605130044', '2023-06-05 15:05:28', 224),
('DoctrineMigrations\\Version20230612112454', '2023-06-12 13:27:26', 225),
('DoctrineMigrations\\Version20230614081024', '2023-06-14 10:11:52', 288),
('DoctrineMigrations\\Version20230619131353', '2023-06-19 15:15:59', 187);

-- --------------------------------------------------------

--
-- Structure de la table `pins`
--

DROP TABLE IF EXISTS `pins`;
CREATE TABLE IF NOT EXISTS `pins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3F0FE980A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pins`
--

INSERT INTO `pins` (`id`, `title`, `description`, `created_at`, `updated_at`, `image_name`, `user_id`, `image_size`) VALUES
(1, 'Pin 1', 'Description Pin 1 edited a second time yes yes', '2023-04-28 07:12:27', '2023-06-28 09:21:44', '2233473-649bdf88bf7ac920503087.webp', 1, 114210),
(2, 'Pin 2', 'Description Pin 2', '2023-04-28 07:12:27', '2023-05-31 09:50:26', '36ddb52e60dbb1f3472c2939d2a7219d.jpeg', 2, NULL),
(3, 'Pin 3', 'Description Pin 3', '2023-04-28 07:12:27', '2023-05-31 09:51:12', 'tumblr_48e796e68ae30457e79c79425e7126d7_6ec42a20_400.webp', 1, NULL),
(4, 'Pin 4 edited', 'Description Pin 4', '2023-04-28 07:12:27', '2023-05-24 10:46:35', '5d193bfff6560f03e7bc2ecfeadef5f4.jpeg', 2, NULL),
(5, 'Pin 5', 'Description Pin 5', '2023-04-28 07:12:27', '2023-06-28 09:41:52', 'goku-649be44083c45163488711.jpg', 1, 71794),
(13, 'Pin de julien', 'Lal la laalala', '2023-05-22 14:11:09', '2023-05-24 10:47:26', '1cd3d849a4d41defc2119fc949aae894.jpeg', 2, NULL),
(21, 'Pin au pif 2', 'Voici une image au pif', '2023-05-24 10:34:52', '2023-05-31 10:49:49', '28d0953bb64b7ff8400c5c1aa6fe6464.jpeg', 1, NULL),
(22, 'Pin sans image', 'Pin avec image par defaut', '2023-05-24 11:05:13', '2023-05-24 11:05:13', 'istockphoto-1193057179-612x612.jpg', 2, NULL),
(24, 'Pin terminator 2', 'Voici le pin de  schwarzy 2', '2023-05-30 08:55:56', '2023-05-30 08:56:21', 'Arnold_Schwarzenegger_by_Gage_Skidmore_4.jpg', 1, NULL),
(25, 'Pin James Bond', 'Voila la description du pin de James Bond', '2023-05-30 11:51:29', '2023-05-30 11:51:29', '95ca17243a31b21dad06e6ef6c35e6e6.jpeg', 2, NULL),
(26, 'Pin de Jack Bauer', 'Voici le pin de 24h chrono', '2023-06-05 13:39:02', '2023-06-05 13:39:02', '87604111-26f1-4d5f-9318-8c4d86673387_ORIGINAL.webp', 2, NULL),
(28, 'Pin de base', 'Voici le pin de base que j\'ai crée par defaut', '2023-06-19 16:04:10', '2023-06-28 09:44:43', '2e620c8bc3956354b0766917a5d39721-649be4eb5d8e9932546840.jpeg', 1, 21214),
(29, 'James bond pin', 'Voici le pin edited par jamesbond de julien', '2023-06-26 15:19:16', '2023-06-28 09:42:50', 'profile-649be47ae474c626372573.jpeg', 1, 41750),
(30, 'Pin de Seb', 'blablablablablbalbalbalab', '2023-07-14 14:54:02', '2023-07-14 14:54:02', 'bond-selec-big-w770-64b1456a5f710249797442.jpg', 13, 68696);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(2, 2, 'kslAMLUbgYoibNngAaRQ', '6OM55vBas/OMChrY5+fOIh45mslCMpAUQVNibjWfIa4=', '2023-06-12 13:47:57', '2023-06-12 14:47:57');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `created_at`, `updated_at`, `is_verified`, `image_name`, `image_size`) VALUES
(1, 'jamesbond@cfitech.be', '[]', '$2y$13$BY1G/cLrNZ0Y52cR.yVVhu0aN6Uw0kOQdGfxOavoxrytWzdx46pwW', 'James', 'Bond', '2023-05-30 11:23:41', '2023-06-14 11:11:56', 1, 'bond-selec-big-w770-6489845c7f6ac987621905.jpg', 68696),
(2, 'jackbauer@cfitech.be', '[]', '$2y$13$7uvyzJkGQE6j45wDUdQAVubLV5YK2uCfACfvboj6G.jRx.9mDOpMG', 'Jack', 'Bauer', '2023-05-30 11:45:18', '2023-06-14 12:14:28', 0, '79459-6489930411d8c554904261.jpg', 57559),
(4, 'julien@cfitech.be', '[]', '$2y$13$0YJ3ChG0Ok4bJW/B1Ej0l.4mu6jVDj0dc/N3K9HAvQOAxncTsZypi', 'Julien', 'Dunia', '2023-06-05 15:49:03', '2023-06-05 15:55:37', 1, NULL, NULL),
(5, 'blabla@hot.be', '[]', '$2y$13$ZwamNz3mJhhUmRH98SB8MusuNwe.8X0BfLj35JzF9/sdHmabAimBi', 'Julien', 'mksldfqln', '2023-06-06 09:33:52', '2023-06-06 09:33:52', 0, NULL, NULL),
(6, 'blabla2@h.c', '[]', '$2y$13$OLC49CuhG1xMqQXYoHVai.6FR13uBrB48tKtPiv8lYn8AzcBJ/65W', 'Julien', 'qskjfjkqjdsl', '2023-06-06 09:42:34', '2023-06-06 09:54:27', 1, NULL, NULL),
(7, 'blabla3@h.c', '[]', '$2y$13$izQr36DO./2ouJ60re3uUeSOWR06ThO1/CrSPVgKF0KA.j.OHRGC.', 'Julien', 'sdkmvg,dqs:', '2023-06-06 10:07:47', '2023-06-06 10:07:47', 0, NULL, NULL),
(8, 'kjbkjb', '[]', '$2y$13$xeFXeluwX3.9qE.8wUuFkuuwBPx2Oab0k7LAWYxukdSfy7tXwd18a', 'Julien', 'klnkhbjh', '2023-06-12 15:30:11', '2023-06-12 15:30:11', 0, NULL, NULL),
(9, 'blabla', '[]', '$2y$13$yPKnEwcPIDJvRNwgAH23d.ptOU1MaqPunI.2Jq59Y12CDNwhAOV8m', 'Julien', 'klnkhbjh', '2023-06-12 15:30:26', '2023-06-12 15:30:26', 0, NULL, NULL),
(10, 'testos@testos.com', '[]', '$2y$13$w4bxIJI733tsY4RltAFMee59lGLjOFPtGz2jjGyvKjknYCRfkocS2', 'Testos', 'Testos', '2023-06-14 11:37:30', '2023-06-14 11:37:53', 1, 'profile.jpeg', NULL),
(11, 'anonyme@cfitech.be', '[]', '$2y$13$gL.Svdq9QQiaOIfDbTBmbOnqDSK2murCUjaFQUBMEpRnk1oq4KFr.', 'Anonyme', 'Ano', '2023-06-14 11:39:26', '2023-06-14 11:39:59', 1, 'profile.jpeg', 57559),
(12, 'bonjour@lol.com', '[]', '$2y$13$3pI.4mXjx7FPE.YQaAS4UuxtDVgdessIbOu0guqMRXqLwH.lFuIgS', 'Julien', 'lol', '2023-06-16 13:41:44', '2023-06-16 13:42:26', 1, 'bond-selec-big-w770-648c4aa2ec227871045956.jpg', 68696),
(13, 'sebastien@cfitech.be', '[]', '$2y$13$pi7GQJqhmq/xCHbDds7InONUTJ4ylaLaEHhb9U/655hv4GCD0K/fW', 'sebastien', 'Cfitech', '2023-07-14 14:50:42', '2023-07-14 14:52:42', 1, '427-200x300-64b144e358b31439976784.jpg', 4471);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pins`
--
ALTER TABLE `pins`
  ADD CONSTRAINT `FK_3F0FE980A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
