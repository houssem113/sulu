-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 17 juil. 2023 à 09:15
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `noe`
--

-- --------------------------------------------------------

--
-- Structure de la table `ac_activities`
--

DROP TABLE IF EXISTS `ac_activities`;
CREATE TABLE IF NOT EXISTS `ac_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` json NOT NULL,
  `timestamp` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `batch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `resourceKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceLocale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceWebspaceKey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceTitleLocale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityContext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3EE015D064B64DCC` (`userId`),
  KEY `timestamp_idx` (`timestamp`),
  KEY `resourceKey_idx` (`resourceKey`),
  KEY `resourceId_idx` (`resourceId`),
  KEY `resourceSecurityContext_idx` (`resourceSecurityContext`),
  KEY `resourceSecurityObjectType_idx` (`resourceSecurityObjectType`),
  KEY `resourceSecurityObjectId_idx` (`resourceSecurityObjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac_activities`
--

INSERT INTO `ac_activities` (`id`, `type`, `context`, `timestamp`, `batch`, `payload`, `resourceKey`, `resourceId`, `resourceLocale`, `resourceWebspaceKey`, `resourceTitle`, `resourceTitleLocale`, `resourceSecurityContext`, `resourceSecurityObjectType`, `resourceSecurityObjectId`, `userId`) VALUES
(1, 'created', '[]', '2023-07-13 13:16:54', '64aff9479fcde5.06058948', NULL, 'pages', '693ac9a7-244e-4f94-9519-26f494a0d6a8', 'en', 'noe', 'Homepage', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '693ac9a7-244e-4f94-9519-26f494a0d6a8', NULL),
(2, 'published', '[]', '2023-07-13 13:16:55', '64aff9479fcde5.06058948', NULL, 'pages', '693ac9a7-244e-4f94-9519-26f494a0d6a8', 'en', 'noe', 'Homepage', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '693ac9a7-244e-4f94-9519-26f494a0d6a8', NULL),
(3, 'created', '[]', '2023-07-13 13:17:01', '64aff94dd13444.80075220', NULL, 'collections', '1', 'en', NULL, 'System', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '1', NULL),
(4, 'created', '[]', '2023-07-13 13:17:02', '64aff94e237d57.21204482', NULL, 'collections', '2', 'en', NULL, 'Sulu media', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '2', NULL),
(5, 'translation_added', '[]', '2023-07-13 13:17:02', '64aff94e65f741.10997466', NULL, 'collections', '2', 'de', NULL, 'Sulu Medien', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '2', NULL),
(6, 'created', '[]', '2023-07-13 13:17:02', '64aff94e6ef599.31113269', NULL, 'collections', '3', 'en', NULL, 'Preview images', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '3', NULL),
(7, 'translation_added', '[]', '2023-07-13 13:17:02', '64aff94ea45119.75336542', NULL, 'collections', '3', 'de', NULL, 'Vorschaubilder', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '3', NULL),
(8, 'created', '[]', '2023-07-13 13:17:02', '64aff94eace8f6.96937398', NULL, 'collections', '4', 'en', NULL, 'Sulu contacts', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '4', NULL),
(9, 'translation_added', '[]', '2023-07-13 13:17:02', '64aff94ed97897.18312509', NULL, 'collections', '4', 'de', NULL, 'Sulu Kontakte', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '4', NULL),
(10, 'created', '[]', '2023-07-13 13:17:02', '64aff94ee1f821.13262234', NULL, 'collections', '5', 'en', NULL, 'People', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '5', NULL),
(11, 'translation_added', '[]', '2023-07-13 13:17:03', '64aff94f12ad27.94959708', NULL, 'collections', '5', 'de', NULL, 'Personen', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '5', NULL),
(12, 'created', '[]', '2023-07-13 13:17:03', '64aff94f1a8402.10633658', NULL, 'collections', '6', 'en', NULL, 'Organizations', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '6', NULL),
(13, 'translation_added', '[]', '2023-07-13 13:17:03', '64aff94f421159.03490566', NULL, 'collections', '6', 'de', NULL, 'Organisationen', 'de', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '6', NULL),
(14, 'created', '[]', '2023-07-13 13:40:28', '64affecd1a39a6.25022631', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(15, 'published', '[]', '2023-07-13 13:40:28', '64affecd1a39a6.25022631', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(16, 'modified', '[]', '2023-07-13 13:43:46', '64afff92dcfd13.55474999', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(17, 'published', '[]', '2023-07-13 13:43:46', '64afff92dcfd13.55474999', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(18, 'modified', '[]', '2023-07-13 14:02:19', '64b003ec4d89d7.59342149', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(19, 'published', '[]', '2023-07-13 14:02:20', '64b003ec4d89d7.59342149', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(20, 'modified', '[]', '2023-07-13 15:14:20', '64b014ccd41e76.54752375', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(21, 'published', '[]', '2023-07-13 15:14:20', '64b014ccd41e76.54752375', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(22, 'modified', '[]', '2023-07-13 15:28:35', '64b01824c36866.77833671', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(23, 'published', '[]', '2023-07-13 15:28:36', '64b01824c36866.77833671', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(24, 'modified', '[]', '2023-07-14 09:11:56', '64b1115c6fbfc3.33347215', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(25, 'published', '[]', '2023-07-14 09:11:56', '64b1115c6fbfc3.33347215', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(26, 'created', '[]', '2023-07-14 09:14:09', '64b111e1d58707.27205086', NULL, 'collections', '7', 'en', NULL, 'gabarit faq', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(27, 'created', '[]', '2023-07-14 09:14:31', '64b111f7c79aa7.17327119', NULL, 'media', '1', 'en', NULL, 'Imprimantes', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(28, 'modified', '[]', '2023-07-14 09:15:11', '64b11220ee3f85.89815331', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(29, 'published', '[]', '2023-07-14 09:15:12', '64b11220ee3f85.89815331', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(30, 'modified', '[]', '2023-07-14 11:01:42', '64b12b16b8f340.93212243', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(31, 'published', '[]', '2023-07-14 11:01:42', '64b12b16b8f340.93212243', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(32, 'created', '[]', '2023-07-14 12:37:50', '64b1419e89c7d1.41382575', NULL, 'media', '2', 'en', NULL, 'smart-protect-3', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(33, 'created', '[]', '2023-07-14 12:37:53', '64b141a1e89647.91412831', NULL, 'media', '3', 'en', NULL, 'smart-protect-2', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(34, 'created', '[]', '2023-07-14 12:37:55', '64b141a3de4313.90735322', NULL, 'media', '4', 'en', NULL, 'smart-protect-1', 'en', 'sulu.media.collections', 'Sulu\\Bundle\\MediaBundle\\Entity\\Collection', '7', 1),
(35, 'modified', '[]', '2023-07-14 12:41:06', '64b14264071706.58374935', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(36, 'published', '[]', '2023-07-14 12:41:07', '64b14264071706.58374935', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(37, 'modified', '[]', '2023-07-14 12:48:01', '64b14402964768.29296869', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1),
(38, 'published', '[]', '2023-07-14 12:48:02', '64b14402964768.29296869', NULL, 'pages', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'en', 'noe', 'FAQ 1', 'en', 'sulu.webspaces.noe', 'Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior', '45578bca-ddae-4fe4-aba3-1ab734682bca', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ca_categories`
--

DROP TABLE IF EXISTS `ca_categories`;
CREATE TABLE IF NOT EXISTS `ca_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategoriesParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3D85D789AF5206F3` (`category_key`),
  KEY `IDX_3D85D78937A3C3B1` (`idCategoriesParent`),
  KEY `IDX_3D85D789DBF11E1D` (`idUsersCreator`),
  KEY `IDX_3D85D78930D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ca_category_meta`
--

DROP TABLE IF EXISTS `ca_category_meta`;
CREATE TABLE IF NOT EXISTS `ca_category_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCategories` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2575BBB0B8075882` (`idCategories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ca_category_translations`
--

DROP TABLE IF EXISTS `ca_category_translations`;
CREATE TABLE IF NOT EXISTS `ca_category_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategories` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5DCED5E3B8075882` (`idCategories`),
  KEY `IDX_5DCED5E3DBF11E1D` (`idUsersCreator`),
  KEY `IDX_5DCED5E330D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ca_category_translation_keywords`
--

DROP TABLE IF EXISTS `ca_category_translation_keywords`;
CREATE TABLE IF NOT EXISTS `ca_category_translation_keywords` (
  `idKeywords` int(11) NOT NULL,
  `idCategoryTranslations` int(11) NOT NULL,
  PRIMARY KEY (`idKeywords`,`idCategoryTranslations`),
  KEY `IDX_D15FBE37F9FC9F05` (`idKeywords`),
  KEY `IDX_D15FBE3717CA14DA` (`idCategoryTranslations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ca_category_translation_medias`
--

DROP TABLE IF EXISTS `ca_category_translation_medias`;
CREATE TABLE IF NOT EXISTS `ca_category_translation_medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `idCategoryTranslations` int(11) NOT NULL,
  `idMedia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_39FC41BA17CA14DA` (`idCategoryTranslations`),
  KEY `IDX_39FC41BA7DE8E211` (`idMedia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ca_keywords`
--

DROP TABLE IF EXISTS `ca_keywords`;
CREATE TABLE IF NOT EXISTS `ca_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_idx` (`keyword`,`locale`),
  KEY `IDX_FE02CA0BDBF11E1D` (`idUsersCreator`),
  KEY `IDX_FE02CA0B30D07CD5` (`idUsersChanger`),
  KEY `IDX_FE02CA0B5A93713B` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_accounts`
--

DROP TABLE IF EXISTS `co_accounts`;
CREATE TABLE IF NOT EXISTS `co_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `externalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corporation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `uid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeOfJurisdiction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainFax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContactsMain` int(11) DEFAULT NULL,
  `idAccountsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_805CD14A6D4A8651` (`idContactsMain`),
  KEY `IDX_805CD14AC9171171` (`idAccountsParent`),
  KEY `IDX_805CD14AE48E9A13` (`logo`),
  KEY `IDX_805CD14ADBF11E1D` (`idUsersCreator`),
  KEY `IDX_805CD14A30D07CD5` (`idUsersChanger`),
  KEY `IDX_805CD14A5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_addresses`
--

DROP TABLE IF EXISTS `co_account_addresses`;
CREATE TABLE IF NOT EXISTS `co_account_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int(11) NOT NULL,
  `idAccounts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4165FE4893205E40996BB4F7` (`idAddresses`,`idAccounts`),
  KEY `IDX_4165FE4893205E40` (`idAddresses`),
  KEY `IDX_4165FE48996BB4F7` (`idAccounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_bank_accounts`
--

DROP TABLE IF EXISTS `co_account_bank_accounts`;
CREATE TABLE IF NOT EXISTS `co_account_bank_accounts` (
  `idAccounts` int(11) NOT NULL,
  `idBankAccounts` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idBankAccounts`),
  KEY `IDX_C873A532996BB4F7` (`idAccounts`),
  KEY `IDX_C873A53237FCD1D8` (`idBankAccounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_categories`
--

DROP TABLE IF EXISTS `co_account_categories`;
CREATE TABLE IF NOT EXISTS `co_account_categories` (
  `idAccounts` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idCategories`),
  KEY `IDX_B60E9510996BB4F7` (`idAccounts`),
  KEY `IDX_B60E9510B8075882` (`idCategories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_contacts`
--

DROP TABLE IF EXISTS `co_account_contacts`;
CREATE TABLE IF NOT EXISTS `co_account_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `idPositions` int(11) DEFAULT NULL,
  `idContacts` int(11) NOT NULL,
  `idAccounts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_28C6CA0E60E33F28996BB4F7` (`idContacts`,`idAccounts`),
  KEY `IDX_28C6CA0E2A75CE2A` (`idPositions`),
  KEY `IDX_28C6CA0E60E33F28` (`idContacts`),
  KEY `IDX_28C6CA0E996BB4F7` (`idAccounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_emails`
--

DROP TABLE IF EXISTS `co_account_emails`;
CREATE TABLE IF NOT EXISTS `co_account_emails` (
  `idAccounts` int(11) NOT NULL,
  `idEmails` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idEmails`),
  KEY `IDX_3E246FC3996BB4F7` (`idAccounts`),
  KEY `IDX_3E246FC32F9040C8` (`idEmails`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_faxes`
--

DROP TABLE IF EXISTS `co_account_faxes`;
CREATE TABLE IF NOT EXISTS `co_account_faxes` (
  `idAccounts` int(11) NOT NULL,
  `idFaxes` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idFaxes`),
  KEY `IDX_7A4E77DC996BB4F7` (`idAccounts`),
  KEY `IDX_7A4E77DCCF6A2007` (`idFaxes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_medias`
--

DROP TABLE IF EXISTS `co_account_medias`;
CREATE TABLE IF NOT EXISTS `co_account_medias` (
  `idAccounts` int(11) NOT NULL,
  `idMedias` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idMedias`),
  KEY `IDX_60772810996BB4F7` (`idAccounts`),
  KEY `IDX_6077281071C3071B` (`idMedias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_notes`
--

DROP TABLE IF EXISTS `co_account_notes`;
CREATE TABLE IF NOT EXISTS `co_account_notes` (
  `idAccounts` int(11) NOT NULL,
  `idNotes` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idNotes`),
  KEY `IDX_A3FBB24A996BB4F7` (`idAccounts`),
  KEY `IDX_A3FBB24A16DFE591` (`idNotes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_phones`
--

DROP TABLE IF EXISTS `co_account_phones`;
CREATE TABLE IF NOT EXISTS `co_account_phones` (
  `idAccounts` int(11) NOT NULL,
  `idPhones` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idPhones`),
  KEY `IDX_918DA964996BB4F7` (`idAccounts`),
  KEY `IDX_918DA9648039866F` (`idPhones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_social_media_profiles`
--

DROP TABLE IF EXISTS `co_account_social_media_profiles`;
CREATE TABLE IF NOT EXISTS `co_account_social_media_profiles` (
  `idAccounts` int(11) NOT NULL,
  `idSocialMediaProfiles` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idSocialMediaProfiles`),
  KEY `IDX_E06F75F5996BB4F7` (`idAccounts`),
  KEY `IDX_E06F75F5573F8344` (`idSocialMediaProfiles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_tags`
--

DROP TABLE IF EXISTS `co_account_tags`;
CREATE TABLE IF NOT EXISTS `co_account_tags` (
  `idAccounts` int(11) NOT NULL,
  `idTags` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idTags`),
  KEY `IDX_E8D92005996BB4F7` (`idAccounts`),
  KEY `IDX_E8D920051C41CAB8` (`idTags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_account_urls`
--

DROP TABLE IF EXISTS `co_account_urls`;
CREATE TABLE IF NOT EXISTS `co_account_urls` (
  `idAccounts` int(11) NOT NULL,
  `idUrls` int(11) NOT NULL,
  PRIMARY KEY (`idAccounts`,`idUrls`),
  KEY `IDX_ADF18382996BB4F7` (`idAccounts`),
  KEY `IDX_ADF183825969693F` (`idUrls`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_addresses`
--

DROP TABLE IF EXISTS `co_addresses`;
CREATE TABLE IF NOT EXISTS `co_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primaryAddress` tinyint(1) DEFAULT NULL,
  `deliveryAddress` tinyint(1) DEFAULT NULL,
  `billingAddress` tinyint(1) DEFAULT NULL,
  `street` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addition` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryCode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxNumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxPostcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxCity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `idAdressTypes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_26E9A6142A37021A` (`idAdressTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_address_types`
--

DROP TABLE IF EXISTS `co_address_types`;
CREATE TABLE IF NOT EXISTS `co_address_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_address_types`
--

INSERT INTO `co_address_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Structure de la table `co_bank_account`
--

DROP TABLE IF EXISTS `co_bank_account`;
CREATE TABLE IF NOT EXISTS `co_bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bankName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contacts`
--

DROP TABLE IF EXISTS `co_contacts`;
CREATE TABLE IF NOT EXISTS `co_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` int(11) DEFAULT NULL,
  `firstName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `salutation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formOfAddress` int(11) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `mainEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainFax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idTitles` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_79D45A95A254E939` (`idTitles`),
  KEY `IDX_79D45A951677722F` (`avatar`),
  KEY `IDX_79D45A95DBF11E1D` (`idUsersCreator`),
  KEY `IDX_79D45A9530D07CD5` (`idUsersChanger`),
  KEY `IDX_79D45A952392A156` (`firstName`),
  KEY `IDX_79D45A9591161A88` (`lastName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_contacts`
--

INSERT INTO `co_contacts` (`id`, `avatar`, `firstName`, `middleName`, `lastName`, `birthday`, `salutation`, `formOfAddress`, `newsletter`, `gender`, `note`, `mainEmail`, `mainPhone`, `mainFax`, `mainUrl`, `created`, `changed`, `idTitles`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, NULL, 'Adam', NULL, 'Ministrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-13 13:16:58', '2023-07-13 13:16:58', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_addresses`
--

DROP TABLE IF EXISTS `co_contact_addresses`;
CREATE TABLE IF NOT EXISTS `co_contact_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int(11) NOT NULL,
  `idContacts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DEE056893205E4060E33F28` (`idAddresses`,`idContacts`),
  KEY `IDX_DEE056893205E40` (`idAddresses`),
  KEY `IDX_DEE056860E33F28` (`idContacts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_bank_accounts`
--

DROP TABLE IF EXISTS `co_contact_bank_accounts`;
CREATE TABLE IF NOT EXISTS `co_contact_bank_accounts` (
  `idContacts` int(11) NOT NULL,
  `idBankAccounts` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idBankAccounts`),
  KEY `IDX_76CDDA0660E33F28` (`idContacts`),
  KEY `IDX_76CDDA0637FCD1D8` (`idBankAccounts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_categories`
--

DROP TABLE IF EXISTS `co_contact_categories`;
CREATE TABLE IF NOT EXISTS `co_contact_categories` (
  `idContacts` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idCategories`),
  KEY `IDX_8D2C3E2360E33F28` (`idContacts`),
  KEY `IDX_8D2C3E23B8075882` (`idCategories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_emails`
--

DROP TABLE IF EXISTS `co_contact_emails`;
CREATE TABLE IF NOT EXISTS `co_contact_emails` (
  `idContacts` int(11) NOT NULL,
  `idEmails` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idEmails`),
  KEY `IDX_8982963160E33F28` (`idContacts`),
  KEY `IDX_898296312F9040C8` (`idEmails`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_faxes`
--

DROP TABLE IF EXISTS `co_contact_faxes`;
CREATE TABLE IF NOT EXISTS `co_contact_faxes` (
  `idContacts` int(11) NOT NULL,
  `idFaxes` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idFaxes`),
  KEY `IDX_61EBBEA260E33F28` (`idContacts`),
  KEY `IDX_61EBBEA2CF6A2007` (`idFaxes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_locales`
--

DROP TABLE IF EXISTS `co_contact_locales`;
CREATE TABLE IF NOT EXISTS `co_contact_locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idContacts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_31E5672760E33F28` (`idContacts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_medias`
--

DROP TABLE IF EXISTS `co_contact_medias`;
CREATE TABLE IF NOT EXISTS `co_contact_medias` (
  `idContacts` int(11) NOT NULL,
  `idMedias` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idMedias`),
  KEY `IDX_D7D1D1E260E33F28` (`idContacts`),
  KEY `IDX_D7D1D1E271C3071B` (`idMedias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_notes`
--

DROP TABLE IF EXISTS `co_contact_notes`;
CREATE TABLE IF NOT EXISTS `co_contact_notes` (
  `idContacts` int(11) NOT NULL,
  `idNotes` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idNotes`),
  KEY `IDX_B85E7B3460E33F28` (`idContacts`),
  KEY `IDX_B85E7B3416DFE591` (`idNotes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_phones`
--

DROP TABLE IF EXISTS `co_contact_phones`;
CREATE TABLE IF NOT EXISTS `co_contact_phones` (
  `idContacts` int(11) NOT NULL,
  `idPhones` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idPhones`),
  KEY `IDX_262B509660E33F28` (`idContacts`),
  KEY `IDX_262B50968039866F` (`idPhones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_social_media_profiles`
--

DROP TABLE IF EXISTS `co_contact_social_media_profiles`;
CREATE TABLE IF NOT EXISTS `co_contact_social_media_profiles` (
  `idContacts` int(11) NOT NULL,
  `idSocialMediaProfiles` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idSocialMediaProfiles`),
  KEY `IDX_74FF4CC060E33F28` (`idContacts`),
  KEY `IDX_74FF4CC0573F8344` (`idSocialMediaProfiles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_tags`
--

DROP TABLE IF EXISTS `co_contact_tags`;
CREATE TABLE IF NOT EXISTS `co_contact_tags` (
  `idContacts` int(11) NOT NULL,
  `idTags` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idTags`),
  KEY `IDX_4CB5255060E33F28` (`idContacts`),
  KEY `IDX_4CB525501C41CAB8` (`idTags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_titles`
--

DROP TABLE IF EXISTS `co_contact_titles`;
CREATE TABLE IF NOT EXISTS `co_contact_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4463FC02B36786B` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_contact_urls`
--

DROP TABLE IF EXISTS `co_contact_urls`;
CREATE TABLE IF NOT EXISTS `co_contact_urls` (
  `idContacts` int(11) NOT NULL,
  `idUrls` int(11) NOT NULL,
  PRIMARY KEY (`idContacts`,`idUrls`),
  KEY `IDX_99D86D760E33F28` (`idContacts`),
  KEY `IDX_99D86D75969693F` (`idUrls`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_emails`
--

DROP TABLE IF EXISTS `co_emails`;
CREATE TABLE IF NOT EXISTS `co_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idEmailTypes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2F2CB77D816E840` (`idEmailTypes`),
  KEY `IDX_A2F2CB77E7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_email_types`
--

DROP TABLE IF EXISTS `co_email_types`;
CREATE TABLE IF NOT EXISTS `co_email_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_email_types`
--

INSERT INTO `co_email_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Structure de la table `co_faxes`
--

DROP TABLE IF EXISTS `co_faxes`;
CREATE TABLE IF NOT EXISTS `co_faxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFaxTypes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A5EC6A18B466C5DA` (`idFaxTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_fax_types`
--

DROP TABLE IF EXISTS `co_fax_types`;
CREATE TABLE IF NOT EXISTS `co_fax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_fax_types`
--

INSERT INTO `co_fax_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Structure de la table `co_notes`
--

DROP TABLE IF EXISTS `co_notes`;
CREATE TABLE IF NOT EXISTS `co_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_phones`
--

DROP TABLE IF EXISTS `co_phones`;
CREATE TABLE IF NOT EXISTS `co_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPhoneTypes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D5B0DD0A4249AD7` (`idPhoneTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_phone_types`
--

DROP TABLE IF EXISTS `co_phone_types`;
CREATE TABLE IF NOT EXISTS `co_phone_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_phone_types`
--

INSERT INTO `co_phone_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private'),
(3, 'sulu_contact.mobile');

-- --------------------------------------------------------

--
-- Structure de la table `co_positions`
--

DROP TABLE IF EXISTS `co_positions`;
CREATE TABLE IF NOT EXISTS `co_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9FBC367E462CE4F5` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_social_media_profiles`
--

DROP TABLE IF EXISTS `co_social_media_profiles`;
CREATE TABLE IF NOT EXISTS `co_social_media_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSocialMediaTypes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DF585BFBB5BEA95F` (`idSocialMediaTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_social_media_profile_types`
--

DROP TABLE IF EXISTS `co_social_media_profile_types`;
CREATE TABLE IF NOT EXISTS `co_social_media_profile_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_social_media_profile_types`
--

INSERT INTO `co_social_media_profile_types` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Instagram');

-- --------------------------------------------------------

--
-- Structure de la table `co_urls`
--

DROP TABLE IF EXISTS `co_urls`;
CREATE TABLE IF NOT EXISTS `co_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUrlTypes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6F03842E882335CC` (`idUrlTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `co_url_types`
--

DROP TABLE IF EXISTS `co_url_types`;
CREATE TABLE IF NOT EXISTS `co_url_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `co_url_types`
--

INSERT INTO `co_url_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Structure de la table `me_collections`
--

DROP TABLE IF EXISTS `me_collections`;
CREATE TABLE IF NOT EXISTS `me_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `collection_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCollectionsMetaDefault` int(11) DEFAULT NULL,
  `idCollectionTypes` int(11) NOT NULL,
  `idCollectionsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F0D4887221904CD` (`collection_key`),
  UNIQUE KEY `UNIQ_F0D4887CFA3F467` (`idCollectionsMetaDefault`),
  KEY `IDX_F0D4887E67924D6` (`idCollectionTypes`),
  KEY `IDX_F0D4887A4F2DCF8` (`idCollectionsParent`),
  KEY `IDX_F0D4887DBF11E1D` (`idUsersCreator`),
  KEY `IDX_F0D488730D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_collections`
--

INSERT INTO `me_collections` (`id`, `style`, `lft`, `rgt`, `depth`, `collection_key`, `created`, `changed`, `idCollectionsMetaDefault`, `idCollectionTypes`, `idCollectionsParent`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, NULL, 1, 12, 0, 'system_collections', '2023-07-13 13:17:01', '2023-07-13 13:17:01', 1, 2, NULL, NULL, NULL),
(2, NULL, 2, 5, 1, 'sulu_media', '2023-07-13 13:17:02', '2023-07-13 13:17:02', 2, 2, 1, NULL, NULL),
(3, NULL, 3, 4, 2, 'sulu_media.preview_image', '2023-07-13 13:17:02', '2023-07-13 13:17:02', 4, 2, 2, NULL, NULL),
(4, NULL, 6, 11, 1, 'sulu_contact', '2023-07-13 13:17:02', '2023-07-13 13:17:02', 6, 2, 1, NULL, NULL),
(5, NULL, 7, 8, 2, 'sulu_contact.contact', '2023-07-13 13:17:02', '2023-07-13 13:17:02', 8, 2, 4, NULL, NULL),
(6, NULL, 9, 10, 2, 'sulu_contact.account', '2023-07-13 13:17:03', '2023-07-13 13:17:03', 10, 2, 4, NULL, NULL),
(7, NULL, 13, 14, 0, NULL, '2023-07-14 09:14:09', '2023-07-14 09:14:09', 12, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `me_collection_meta`
--

DROP TABLE IF EXISTS `me_collection_meta`;
CREATE TABLE IF NOT EXISTS `me_collection_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCollections` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F8D5E71693782C96` (`idCollections`),
  KEY `IDX_F8D5E7162B36786B` (`title`),
  KEY `IDX_F8D5E7164180C698` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_collection_meta`
--

INSERT INTO `me_collection_meta` (`id`, `title`, `description`, `locale`, `idCollections`) VALUES
(1, 'System', NULL, 'en', 1),
(2, 'Sulu media', NULL, 'en', 2),
(3, 'Sulu Medien', NULL, 'de', 2),
(4, 'Preview images', NULL, 'en', 3),
(5, 'Vorschaubilder', NULL, 'de', 3),
(6, 'Sulu contacts', NULL, 'en', 4),
(7, 'Sulu Kontakte', NULL, 'de', 4),
(8, 'People', NULL, 'en', 5),
(9, 'Personen', NULL, 'de', 5),
(10, 'Organizations', NULL, 'en', 6),
(11, 'Organisationen', NULL, 'de', 6),
(12, 'gabarit faq', NULL, 'en', 7);

-- --------------------------------------------------------

--
-- Structure de la table `me_collection_types`
--

DROP TABLE IF EXISTS `me_collection_types`;
CREATE TABLE IF NOT EXISTS `me_collection_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_type_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FB78DFB179078378` (`collection_type_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_collection_types`
--

INSERT INTO `me_collection_types` (`id`, `name`, `collection_type_key`, `description`) VALUES
(1, 'Default', 'collection.default', NULL),
(2, 'System Collections', 'collection.system', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `me_files`
--

DROP TABLE IF EXISTS `me_files`;
CREATE TABLE IF NOT EXISTS `me_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMedia` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CA8D04277DE8E211` (`idMedia`),
  KEY `IDX_CA8D0427DBF11E1D` (`idUsersCreator`),
  KEY `IDX_CA8D042730D07CD5` (`idUsersChanger`),
  KEY `IDX_CA8D0427BF1CD3C3` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_files`
--

INSERT INTO `me_files` (`id`, `version`, `created`, `changed`, `idMedia`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 1, '2023-07-14 09:14:31', '2023-07-14 09:14:31', 1, 1, 1),
(2, 1, '2023-07-14 12:37:50', '2023-07-14 12:37:50', 2, 1, 1),
(3, 1, '2023-07-14 12:37:53', '2023-07-14 12:37:53', 3, 1, 1),
(4, 1, '2023-07-14 12:37:55', '2023-07-14 12:37:55', 4, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `me_file_versions`
--

DROP TABLE IF EXISTS `me_file_versions`;
CREATE TABLE IF NOT EXISTS `me_file_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `subVersion` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL,
  `downloadCounter` int(11) NOT NULL DEFAULT '0',
  `storageOptions` longtext COLLATE utf8mb4_unicode_ci,
  `mimeType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focusPointX` int(11) DEFAULT NULL,
  `focusPointY` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idFileVersionsMetaDefault` int(11) DEFAULT NULL,
  `idFiles` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7B6E89456B801096` (`idFileVersionsMetaDefault`),
  KEY `IDX_7B6E894511F10344` (`idFiles`),
  KEY `IDX_7B6E8945DBF11E1D` (`idUsersCreator`),
  KEY `IDX_7B6E894530D07CD5` (`idUsersChanger`),
  KEY `IDX_7B6E8945D8F2A087` (`mimeType`),
  KEY `IDX_7B6E8945F7C0246A` (`size`),
  KEY `IDX_7B6E8945BF1CD3C3` (`version`),
  KEY `IDX_7B6E89455E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_file_versions`
--

INSERT INTO `me_file_versions` (`id`, `name`, `version`, `subVersion`, `size`, `downloadCounter`, `storageOptions`, `mimeType`, `properties`, `focusPointX`, `focusPointY`, `created`, `changed`, `idFileVersionsMetaDefault`, `idFiles`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'Imprimantes.PNG', 1, 0, 198231, 5, '{\"segment\":\"08\",\"fileName\":\"imprimantes.PNG\"}', 'image/png', '{\"width\":1926,\"height\":1028}', NULL, NULL, '2023-07-14 09:14:31', '2023-07-14 09:14:31', 1, 1, 1, 1),
(2, 'smart-protect-3.jpg', 1, 0, 6670, 3, '{\"segment\":\"08\",\"fileName\":\"smart-protect-3.jpg\"}', 'image/jpeg', '{\"width\":181,\"height\":181}', NULL, NULL, '2023-07-14 12:37:50', '2023-07-14 12:37:50', 2, 2, 1, 1),
(3, 'smart-protect-2.jpg', 1, 0, 6610, 3, '{\"segment\":\"07\",\"fileName\":\"smart-protect-2.jpg\"}', 'image/jpeg', '{\"width\":181,\"height\":181}', NULL, NULL, '2023-07-14 12:37:53', '2023-07-14 12:37:53', 3, 3, 1, 1),
(4, 'smart-protect-1.jpg', 1, 0, 7534, 3, '{\"segment\":\"01\",\"fileName\":\"smart-protect-1.jpg\"}', 'image/jpeg', '{\"width\":181,\"height\":181}', NULL, NULL, '2023-07-14 12:37:55', '2023-07-14 12:37:55', 4, 4, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `me_file_version_categories`
--

DROP TABLE IF EXISTS `me_file_version_categories`;
CREATE TABLE IF NOT EXISTS `me_file_version_categories` (
  `idFileVersions` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL,
  PRIMARY KEY (`idFileVersions`,`idCategories`),
  KEY `IDX_2F1E17D0911ADE33` (`idFileVersions`),
  KEY `IDX_2F1E17D0B8075882` (`idCategories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `me_file_version_content_languages`
--

DROP TABLE IF EXISTS `me_file_version_content_languages`;
CREATE TABLE IF NOT EXISTS `me_file_version_content_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F3FD652C911ADE33` (`idFileVersions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `me_file_version_meta`
--

DROP TABLE IF EXISTS `me_file_version_meta`;
CREATE TABLE IF NOT EXISTS `me_file_version_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `copyright` longtext COLLATE utf8mb4_unicode_ci,
  `credits` longtext COLLATE utf8mb4_unicode_ci,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AD44B0AD911ADE33` (`idFileVersions`),
  KEY `IDX_AD44B0AD2B36786B` (`title`),
  KEY `IDX_AD44B0AD4180C698` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_file_version_meta`
--

INSERT INTO `me_file_version_meta` (`id`, `title`, `description`, `copyright`, `credits`, `locale`, `idFileVersions`) VALUES
(1, 'Imprimantes', NULL, NULL, NULL, 'en', 1),
(2, 'smart-protect-3', NULL, NULL, NULL, 'en', 2),
(3, 'smart-protect-2', NULL, NULL, NULL, 'en', 3),
(4, 'smart-protect-1', NULL, NULL, NULL, 'en', 4);

-- --------------------------------------------------------

--
-- Structure de la table `me_file_version_publish_languages`
--

DROP TABLE IF EXISTS `me_file_version_publish_languages`;
CREATE TABLE IF NOT EXISTS `me_file_version_publish_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_195DAB3C911ADE33` (`idFileVersions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `me_file_version_tags`
--

DROP TABLE IF EXISTS `me_file_version_tags`;
CREATE TABLE IF NOT EXISTS `me_file_version_tags` (
  `idFileVersions` int(11) NOT NULL,
  `idTags` int(11) NOT NULL,
  PRIMARY KEY (`idFileVersions`,`idTags`),
  KEY `IDX_150A30BE911ADE33` (`idFileVersions`),
  KEY `IDX_150A30BE1C41CAB8` (`idTags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `me_format_options`
--

DROP TABLE IF EXISTS `me_format_options`;
CREATE TABLE IF NOT EXISTS `me_format_options` (
  `format_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_x` int(11) NOT NULL,
  `crop_y` int(11) NOT NULL,
  `crop_width` int(11) NOT NULL,
  `crop_height` int(11) NOT NULL,
  `fileVersion` int(11) NOT NULL,
  PRIMARY KEY (`format_key`,`fileVersion`),
  KEY `IDX_6D25443B31852B63` (`fileVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `me_media`
--

DROP TABLE IF EXISTS `me_media`;
CREATE TABLE IF NOT EXISTS `me_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMediaTypes` int(11) NOT NULL,
  `idPreviewImage` int(11) DEFAULT NULL,
  `idCollections` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A694E572D1EB44DE` (`idPreviewImage`),
  KEY `IDX_A694E57284671716` (`idMediaTypes`),
  KEY `IDX_A694E57293782C96` (`idCollections`),
  KEY `IDX_A694E572DBF11E1D` (`idUsersCreator`),
  KEY `IDX_A694E57230D07CD5` (`idUsersChanger`),
  KEY `IDX_A694E572A3F33DFA` (`changed`),
  KEY `IDX_A694E572B23DB7B8` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_media`
--

INSERT INTO `me_media` (`id`, `created`, `changed`, `idMediaTypes`, `idPreviewImage`, `idCollections`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, '2023-07-14 09:14:31', '2023-07-14 09:14:31', 2, NULL, 7, 1, 1),
(2, '2023-07-14 12:37:50', '2023-07-14 12:37:50', 2, NULL, 7, 1, 1),
(3, '2023-07-14 12:37:53', '2023-07-14 12:37:53', 2, NULL, 7, 1, 1),
(4, '2023-07-14 12:37:55', '2023-07-14 12:37:55', 2, NULL, 7, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `me_media_types`
--

DROP TABLE IF EXISTS `me_media_types`;
CREATE TABLE IF NOT EXISTS `me_media_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_9A01D6E85E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `me_media_types`
--

INSERT INTO `me_media_types` (`id`, `name`, `description`) VALUES
(1, 'document', NULL),
(2, 'image', NULL),
(3, 'video', NULL),
(4, 'audio', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_binarydata`
--

DROP TABLE IF EXISTS `phpcr_binarydata`;
CREATE TABLE IF NOT EXISTS `phpcr_binarydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `property_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int(11) NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_internal_index_types`
--

DROP TABLE IF EXISTS `phpcr_internal_index_types`;
CREATE TABLE IF NOT EXISTS `phpcr_internal_index_types` (
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`type`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_namespaces`
--

DROP TABLE IF EXISTS `phpcr_namespaces`;
CREATE TABLE IF NOT EXISTS `phpcr_namespaces` (
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_namespaces`
--

INSERT INTO `phpcr_namespaces` (`prefix`, `uri`) VALUES
('i18n', 'http://sulu.io/phpcr/locale'),
('phpcrmig', 'http://www.danteech.com/phpcr-migrations'),
('sec', 'http://sulu.io/phpcr/sec'),
('settings', 'http://sulu.io/phpcr/settings'),
('sulu', 'http://sulu.io/phpcr');

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_nodes`
--

DROP TABLE IF EXISTS `phpcr_nodes`;
CREATE TABLE IF NOT EXISTS `phpcr_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerical_props` longtext COLLATE utf8mb4_unicode_ci,
  `depth` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  KEY `IDX_A4624AD73D8E604F` (`parent`),
  KEY `IDX_A4624AD78CDE5729` (`type`),
  KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_nodes`
--

INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(1, '/', '', '', '', 'default', 'ae24003b-11a7-4d63-9fca-69825007f127', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 0, NULL),
(2, '/', '', '', '', 'default_live', '76229bdd-8029-49e4-9974-aaa8700ab71d', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 0, NULL),
(3, '/cmf', '/', 'cmf', '', 'default', '1a30a753-d472-4e03-af3c-3c15814b8bdc', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1a30a753-d472-4e03-af3c-3c15814b8bdc</sv:value></sv:property></sv:node>\n', NULL, 1, 1),
(4, '/cmf/noe', '/cmf', 'noe', '', 'default', 'f8025835-888d-4fe4-9f96-c3664eab23e3', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f8025835-888d-4fe4-9f96-c3664eab23e3</sv:value></sv:property></sv:node>\n', NULL, 2, 1),
(5, '/cmf/noe/contents', '/cmf/noe', 'contents', '', 'default', '693ac9a7-244e-4f94-9519-26f494a0d6a8', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">693ac9a7-244e-4f94-9519-26f494a0d6a8</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:54.160+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:54.160+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:54.160+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:55.318+00:00</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 3, 1),
(6, '/cmf/noe/routes', '/cmf/noe', 'routes', '', 'default', 'e46557eb-5087-46a2-b38e-d5b8a9891a72', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e46557eb-5087-46a2-b38e-d5b8a9891a72</sv:value></sv:property></sv:node>\n', NULL, 3, 2),
(7, '/cmf/noe/routes/en', '/cmf/noe/routes', 'en', '', 'default', 'e190e8de-af88-4375-a2e2-3538f8633ef7', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e190e8de-af88-4375-a2e2-3538f8633ef7</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:55.471+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:55.471+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">693ac9a7-244e-4f94-9519-26f494a0d6a8</sv:value></sv:property></sv:node>\n', NULL, 4, 1),
(8, '/cmf', '/', 'cmf', '', 'default_live', '1a30a753-d472-4e03-af3c-3c15814b8bdc', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1a30a753-d472-4e03-af3c-3c15814b8bdc</sv:value></sv:property></sv:node>\n', NULL, 1, 2),
(9, '/cmf/noe', '/cmf', 'noe', '', 'default_live', 'f8025835-888d-4fe4-9f96-c3664eab23e3', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f8025835-888d-4fe4-9f96-c3664eab23e3</sv:value></sv:property></sv:node>\n', NULL, 2, 2),
(10, '/cmf/noe/contents', '/cmf/noe', 'contents', '', 'default_live', '693ac9a7-244e-4f94-9519-26f494a0d6a8', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">693ac9a7-244e-4f94-9519-26f494a0d6a8</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:55.318+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:54.160+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:54.160+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:54.160+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n', 3, 3),
(11, '/cmf/noe/routes', '/cmf/noe', 'routes', '', 'default_live', 'e46557eb-5087-46a2-b38e-d5b8a9891a72', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e46557eb-5087-46a2-b38e-d5b8a9891a72</sv:value></sv:property></sv:node>\n', NULL, 3, 4),
(12, '/cmf/noe/routes/en', '/cmf/noe/routes', 'en', '', 'default_live', 'e190e8de-af88-4375-a2e2-3538f8633ef7', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e190e8de-af88-4375-a2e2-3538f8633ef7</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:55.471+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:55.471+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">693ac9a7-244e-4f94-9519-26f494a0d6a8</sv:value></sv:property></sv:node>\n', NULL, 4, 2),
(13, '/cmf/snippets', '/cmf', 'snippets', '', 'default', '33b1f590-c33b-40df-908f-971025eac929', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 2, 3),
(14, '/cmf/snippets', '/cmf', 'snippets', '', 'default_live', '0b92f24d-bc24-4f23-a346-b2d7a562f7da', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 2, 4),
(15, '/cmf/noe/custom-urls', '/cmf/noe', 'custom-urls', '', 'default', 'c7d3c016-5e8d-4d3d-9e61-337f0e7e7b03', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c7d3c016-5e8d-4d3d-9e61-337f0e7e7b03</sv:value></sv:property></sv:node>\n', NULL, 3, 5),
(16, '/cmf/noe/custom-urls/items', '/cmf/noe/custom-urls', 'items', '', 'default', 'e815e7c8-baba-4d16-b2c1-7971b848d43b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e815e7c8-baba-4d16-b2c1-7971b848d43b</sv:value></sv:property></sv:node>\n', NULL, 4, 1),
(17, '/cmf/noe/custom-urls/routes', '/cmf/noe/custom-urls', 'routes', '', 'default', '6addf855-22bf-4fdf-a5cd-307d23ba4d7b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">6addf855-22bf-4fdf-a5cd-307d23ba4d7b</sv:value></sv:property></sv:node>\n', NULL, 4, 2),
(18, '/jcr:versions', '/', 'versions', 'http://www.jcp.org/jcr/1.0', 'default', 'aadc954f-f711-4962-b84a-7e2f9845b88e', 'phpcrmig:versions', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"17\">phpcrmig:versions</sv:value></sv:property></sv:node>\n', NULL, 1, 3),
(19, '/jcr:versions/201504271608', '/jcr:versions', '201504271608', '', 'default', '41977585-de38-4967-b7b8-51df726796aa', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.550+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 1),
(20, '/jcr:versions/201504281842', '/jcr:versions', '201504281842', '', 'default', '65641306-5341-4269-aacc-1083606ac4a8', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.553+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 2),
(21, '/jcr:versions/201507231648', '/jcr:versions', '201507231648', '', 'default', '46981097-620e-4f5c-a2fa-ac0e3f2cd1d5', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.555+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 3),
(22, '/jcr:versions/201507281529', '/jcr:versions', '201507281529', '', 'default', '191bd056-8e52-495d-a6fb-ed37b2fad147', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.556+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 4),
(23, '/jcr:versions/201510210733', '/jcr:versions', '201510210733', '', 'default', 'f175c253-2f1e-4af7-a480-1228f897b451', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.558+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 5),
(24, '/jcr:versions/201511171538', '/jcr:versions', '201511171538', '', 'default', '3a5cb91d-8f57-4d1e-8e57-0ea127e76f0f', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.560+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 6),
(25, '/jcr:versions/201511240843', '/jcr:versions', '201511240843', '', 'default', '176c62e8-2c60-43ec-9a5b-a6fce0b57a3a', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.562+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 7),
(26, '/jcr:versions/201511240844', '/jcr:versions', '201511240844', '', 'default', 'de82dbda-17d1-4757-b45b-d1ac1c768bb9', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.567+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 8),
(27, '/jcr:versions/201512090753', '/jcr:versions', '201512090753', '', 'default', 'd254d8c9-78ca-49c4-a163-9b3e8e8cc105', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.570+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 9),
(28, '/jcr:versions/201607181533', '/jcr:versions', '201607181533', '', 'default', 'ca21be7a-ea06-4585-9f13-73c7278cfd28', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.571+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 10),
(29, '/jcr:versions/201702021447', '/jcr:versions', '201702021447', '', 'default', 'cc5e6ad7-8155-4a87-b593-0a4c22e6bda8', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.573+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 11),
(30, '/jcr:versions/201903271333', '/jcr:versions', '201903271333', '', 'default', '494a8ede-802a-4b93-8cb3-c44630ee378e', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.574+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 12),
(31, '/jcr:versions/201904110902', '/jcr:versions', '201904110902', '', 'default', '9db00621-3a16-4fe1-8f44-a8079287ec32', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.576+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 13),
(32, '/jcr:versions/201905071542', '/jcr:versions', '201905071542', '', 'default', '24e7d29b-f596-4068-a63b-05401e5b8da6', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.578+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 14),
(33, '/jcr:versions/202005191116', '/jcr:versions', '202005191116', '', 'default', '13c0f1bd-8a38-469c-bb65-41830939ad05', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.581+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 15),
(34, '/jcr:versions/202005250917', '/jcr:versions', '202005250917', '', 'default', 'caf7fd72-ca19-47cf-a238-743726ef8ce4', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.584+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 16),
(35, '/jcr:versions/202105311447', '/jcr:versions', '202105311447', '', 'default', 'd059e2ad-d349-4ea2-99fe-3a911755b4c9', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:16:56.586+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 17),
(36, '/cmf/noe/contents/faq-1', '/cmf/noe/contents', 'faq-1', '', 'default', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">45578bca-ddae-4fe4-aba3-1ab734682bca</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">FAQ 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">/faq-1</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">faq-gabarit</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:27.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:27.781+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-14T12:48:00.726+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:28.621+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">image-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-item_image#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">{\"id\":1}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">sub titre 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-title#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">titre</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 3</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 4</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">3</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_title#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">Anti-spam</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"59\">&lt;p&gt;Lorem ipsum dolor sit amet porro his no his deleniti&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_image#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">{\"displayOption\":null,\"id\":4}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_title#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Anti-spam 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"61\">&lt;p&gt;Lorem ipsum dolor sit amet porro his no his deleniti 2&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_image#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">{\"displayOption\":null,\"id\":3}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_title#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Anti-spam 3</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"61\">&lt;p&gt;Lorem ipsum dolor sit amet porro his no his deleniti 3&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_image#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">{\"displayOption\":null,\"id\":2}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">3</sv:value></sv:property></sv:node>\n', 4, 1);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(37, '/cmf/noe/routes/en/faq-1', '/cmf/noe/routes/en', 'faq-1', '', 'default', '5d0d6f55-c111-47ee-8d5d-9221e412331f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5d0d6f55-c111-47ee-8d5d-9221e412331f</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:28.643+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:28.643+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">45578bca-ddae-4fe4-aba3-1ab734682bca</sv:value></sv:property></sv:node>\n', NULL, 5, 1),
(38, '/cmf/noe/contents/faq-1', '/cmf/noe/contents', 'faq-1', '', 'default_live', '45578bca-ddae-4fe4-aba3-1ab734682bca', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">45578bca-ddae-4fe4-aba3-1ab734682bca</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">FAQ 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">/faq-1</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">faq-gabarit</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:28.621+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:27.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:27.781+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-14T12:48:00.726+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">image-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-item_image#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">{\"id\":1}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-type#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">text-section</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-settings#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">sub titre 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-title#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">titre</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#3\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#4\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 3</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-subtitle#5\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"6\">text 4</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">3</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-type#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-settings#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-type#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-settings#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_title#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">Anti-spam</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"59\">&lt;p&gt;Lorem ipsum dolor sit amet porro his no his deleniti&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_image#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">{\"displayOption\":null,\"id\":4}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_title#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Anti-spam 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_description#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"61\">&lt;p&gt;Lorem ipsum dolor sit amet porro his no his deleniti 2&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_image#1\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">{\"displayOption\":null,\"id\":3}</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_title#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Anti-spam 3</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_description#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"61\">&lt;p&gt;Lorem ipsum dolor sit amet porro his no his deleniti 3&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-item_image#2\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"29\">{\"displayOption\":null,\"id\":2}</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-blocks-list_item#1-length\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">3</sv:value></sv:property></sv:node>\n', 4, 2),
(39, '/cmf/noe/routes/en/faq-1', '/cmf/noe/routes/en', 'faq-1', '', 'default_live', '5d0d6f55-c111-47ee-8d5d-9221e412331f', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5d0d6f55-c111-47ee-8d5d-9221e412331f</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:28.643+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2023-07-13T13:40:28.643+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">45578bca-ddae-4fe4-aba3-1ab734682bca</sv:value></sv:property></sv:node>\n', NULL, 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_nodes_references`
--

DROP TABLE IF EXISTS `phpcr_nodes_references`;
CREATE TABLE IF NOT EXISTS `phpcr_nodes_references` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F3BF7E1158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_nodes_references`
--

INSERT INTO `phpcr_nodes_references` (`source_id`, `source_property_name`, `target_id`) VALUES
(7, 'sulu:content', 5),
(12, 'sulu:content', 10),
(37, 'sulu:content', 36),
(39, 'sulu:content', 38);

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_nodes_weakreferences`
--

DROP TABLE IF EXISTS `phpcr_nodes_weakreferences`;
CREATE TABLE IF NOT EXISTS `phpcr_nodes_weakreferences` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F0E4F6FA158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_type_childs`
--

DROP TABLE IF EXISTS `phpcr_type_childs`;
CREATE TABLE IF NOT EXISTS `phpcr_type_childs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `primary_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_type_childs`
--

INSERT INTO `phpcr_type_childs` (`id`, `node_type_id`, `name`, `protected`, `auto_created`, `mandatory`, `on_parent_version`, `primary_types`, `default_type`) VALUES
(1, 10, '*', 0, 0, 0, 1, 'phpcrmig:version', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_type_nodes`
--

DROP TABLE IF EXISTS `phpcr_type_nodes`;
CREATE TABLE IF NOT EXISTS `phpcr_type_nodes` (
  `node_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supertypes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`),
  UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_type_nodes`
--

INSERT INTO `phpcr_type_nodes` (`node_type_id`, `name`, `supertypes`, `is_abstract`, `is_mixin`, `queryable`, `orderable_child_nodes`, `primary_item`) VALUES
(1, 'sulu:base', 'mix:referenceable', 1, 1, 0, 0, NULL),
(2, 'sulu:path', 'sulu:base', 0, 1, 0, 0, NULL),
(3, 'sulu:content', 'sulu:base', 0, 1, 0, 0, NULL),
(4, 'sulu:snippet', 'sulu:content', 0, 1, 0, 0, NULL),
(5, 'sulu:page', 'sulu:content', 0, 1, 0, 0, NULL),
(6, 'sulu:home', 'sulu:content', 0, 1, 0, 0, NULL),
(7, 'sulu:custom_url', 'sulu:base', 0, 1, 0, 0, NULL),
(8, 'sulu:custom_url_route', 'sulu:base', 0, 1, 0, 0, NULL),
(9, 'phpcrmig:version', 'nt:base mix:created', 0, 0, 1, 0, NULL),
(10, 'phpcrmig:versions', 'nt:base', 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_type_props`
--

DROP TABLE IF EXISTS `phpcr_type_props`;
CREATE TABLE IF NOT EXISTS `phpcr_type_props` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int(11) NOT NULL,
  `query_operators` int(11) NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_type_props`
--

INSERT INTO `phpcr_type_props` (`node_type_id`, `name`, `protected`, `auto_created`, `mandatory`, `on_parent_version`, `multiple`, `fulltext_searchable`, `query_orderable`, `required_type`, `query_operators`, `default_value`) VALUES
(2, 'sulu:content', 0, 0, 1, 1, 0, 0, 0, 9, 0, NULL),
(2, 'sulu:history', 0, 1, 1, 1, 0, 0, 0, 6, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `phpcr_workspaces`
--

DROP TABLE IF EXISTS `phpcr_workspaces`;
CREATE TABLE IF NOT EXISTS `phpcr_workspaces` (
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `phpcr_workspaces`
--

INSERT INTO `phpcr_workspaces` (`name`) VALUES
('default'),
('default_live');

-- --------------------------------------------------------

--
-- Structure de la table `pr_preview_links`
--

DROP TABLE IF EXISTS `pr_preview_links`;
CREATE TABLE IF NOT EXISTS `pr_preview_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json NOT NULL,
  `visitCount` int(11) NOT NULL,
  `lastVisit` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EFB5DBF25F37A13B` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ro_routes`
--

DROP TABLE IF EXISTS `ro_routes`;
CREATE TABLE IF NOT EXISTS `ro_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_671DB7A4B548B0F4180C698` (`path`,`locale`),
  KEY `IDX_671DB7A4158E0B66` (`target_id`),
  KEY `IDX_671DB7A4DBF11E1D` (`idUsersCreator`),
  KEY `IDX_671DB7A430D07CD5` (`idUsersChanger`),
  KEY `IDX_671DB7A4B548B0F` (`path`),
  KEY `IDX_671DB7A44180C698` (`locale`),
  KEY `idx_resource` (`entity_id`,`entity_class`),
  KEY `idx_history` (`history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_access_controls`
--

DROP TABLE IF EXISTS `se_access_controls`;
CREATE TABLE IF NOT EXISTS `se_access_controls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissions` smallint(6) NOT NULL,
  `entityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entityClass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entityIdInteger` int(11) DEFAULT NULL,
  `idRoles` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C526DC52A1FA6DDA` (`idRoles`),
  KEY `IDX_C526DC52F62829FC` (`entityId`),
  KEY `IDX_C526DC523963FFAB` (`entityClass`),
  KEY `IDX_C526DC524473BB7A` (`entityIdInteger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_groups`
--

DROP TABLE IF EXISTS `se_groups`;
CREATE TABLE IF NOT EXISTS `se_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idGroupsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_231E44ECBF274AB0` (`idGroupsParent`),
  KEY `IDX_231E44ECDBF11E1D` (`idUsersCreator`),
  KEY `IDX_231E44EC30D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_group_roles`
--

DROP TABLE IF EXISTS `se_group_roles`;
CREATE TABLE IF NOT EXISTS `se_group_roles` (
  `idGroups` int(11) NOT NULL,
  `idRoles` int(11) NOT NULL,
  PRIMARY KEY (`idGroups`,`idRoles`),
  KEY `IDX_9713F725937C91EA` (`idGroups`),
  KEY `IDX_9713F725A1FA6DDA` (`idRoles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_permissions`
--

DROP TABLE IF EXISTS `se_permissions`;
CREATE TABLE IF NOT EXISTS `se_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` smallint(6) NOT NULL,
  `idRoles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5CEC3EEAE25D857EC242628A1FA6DDA` (`context`,`module`,`idRoles`),
  KEY `IDX_5CEC3EEAA1FA6DDA` (`idRoles`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `se_permissions`
--

INSERT INTO `se_permissions` (`id`, `context`, `module`, `permissions`, `idRoles`) VALUES
(1, 'sulu.contact.people', NULL, 127, 1),
(2, 'sulu.contact.organizations', NULL, 127, 1),
(3, 'sulu.media.collections', NULL, 127, 1),
(4, 'sulu.media.system_collections', NULL, 127, 1),
(5, 'sulu.settings.categories', NULL, 127, 1),
(6, 'sulu.settings.tags', NULL, 127, 1),
(7, 'sulu.global.snippets', NULL, 127, 1),
(8, 'sulu.webspaces.noe.default-snippets', NULL, 127, 1),
(9, 'sulu.webspaces.noe', NULL, 127, 1),
(10, 'sulu.webspaces.noe.analytics', NULL, 127, 1),
(11, 'sulu.webspaces.noe.custom-urls', NULL, 127, 1),
(12, 'sulu.activities.activities', NULL, 127, 1),
(13, 'sulu.trash.trash', NULL, 127, 1),
(14, 'sulu.security.roles', NULL, 127, 1),
(15, 'sulu.security.users', NULL, 127, 1);

-- --------------------------------------------------------

--
-- Structure de la table `se_roles`
--

DROP TABLE IF EXISTS `se_roles`;
CREATE TABLE IF NOT EXISTS `se_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_key` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `securitySystem` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idSecurityTypes` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_13B749A05E237E06` (`name`),
  UNIQUE KEY `UNIQ_13B749A03EF22FDB` (`role_key`),
  KEY `IDX_13B749A0D02106C0` (`idSecurityTypes`),
  KEY `IDX_13B749A0DBF11E1D` (`idUsersCreator`),
  KEY `IDX_13B749A030D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `se_roles`
--

INSERT INTO `se_roles` (`id`, `name`, `role_key`, `securitySystem`, `anonymous`, `created`, `changed`, `idSecurityTypes`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'User', NULL, 'Sulu', 0, '2023-07-13 13:16:58', '2023-07-13 13:16:58', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `se_role_settings`
--

DROP TABLE IF EXISTS `se_role_settings`;
CREATE TABLE IF NOT EXISTS `se_role_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settingKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DAD1C8CB3AA9950BB8C2FD88` (`settingKey`,`roleId`),
  KEY `IDX_DAD1C8CBB8C2FD88` (`roleId`),
  KEY `IDX_DAD1C8CB3AA9950B` (`settingKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_security_types`
--

DROP TABLE IF EXISTS `se_security_types`;
CREATE TABLE IF NOT EXISTS `se_security_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_users`
--

DROP TABLE IF EXISTS `se_users`;
CREATE TABLE IF NOT EXISTS `se_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `lastLogin` datetime DEFAULT NULL,
  `confirmationKey` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordResetToken` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordResetTokenExpiresAt` datetime DEFAULT NULL,
  `passwordResetTokenEmailsSent` int(11) DEFAULT '0',
  `privateKey` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apiKey` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContacts` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B10AC28EF85E0677` (`username`),
  UNIQUE KEY `UNIQ_B10AC28E60E33F28` (`idContacts`),
  UNIQUE KEY `UNIQ_B10AC28EADC1CD13` (`passwordResetToken`),
  UNIQUE KEY `UNIQ_B10AC28EE7927C74` (`email`),
  KEY `IDX_B10AC28EDBF11E1D` (`idUsersCreator`),
  KEY `IDX_B10AC28E30D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `se_users`
--

INSERT INTO `se_users` (`id`, `username`, `password`, `locale`, `salt`, `locked`, `enabled`, `lastLogin`, `confirmationKey`, `passwordResetToken`, `passwordResetTokenExpiresAt`, `passwordResetTokenEmailsSent`, `privateKey`, `apiKey`, `email`, `created`, `changed`, `idContacts`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'admin', '$2y$13$lPmmaYRs13aqJO2YRXCve./cUh5W6kKZrTk2yyQLbMUM4MtgYq/Ge', 'en', 'JGeu6muQPAAcb7aRgXyJHEHuDTlkAlX8NSA/yEH0nEQ=', 0, 1, '2023-07-13 13:20:22', NULL, NULL, NULL, NULL, NULL, '8013adabadafa82394c3d50a7db70cd4', 'admin@example.com', '2023-07-13 13:17:00', '2023-07-13 13:20:22', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `se_user_groups`
--

DROP TABLE IF EXISTS `se_user_groups`;
CREATE TABLE IF NOT EXISTS `se_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `idGroups` int(11) DEFAULT NULL,
  `idUsers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E43ED0C8937C91EA` (`idGroups`),
  KEY `IDX_E43ED0C8347E6F4` (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_user_roles`
--

DROP TABLE IF EXISTS `se_user_roles`;
CREATE TABLE IF NOT EXISTS `se_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUsers` int(11) DEFAULT NULL,
  `idRoles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E48BD9DB347E6F4` (`idUsers`),
  KEY `IDX_E48BD9DBA1FA6DDA` (`idRoles`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `se_user_roles`
--

INSERT INTO `se_user_roles` (`id`, `locale`, `idUsers`, `idRoles`) VALUES
(1, '[\"en\"]', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `se_user_settings`
--

DROP TABLE IF EXISTS `se_user_settings`;
CREATE TABLE IF NOT EXISTS `se_user_settings` (
  `settingsValue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `settingsKey` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUsers` int(11) NOT NULL,
  PRIMARY KEY (`settingsKey`,`idUsers`),
  KEY `IDX_108FCAFA347E6F4` (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `se_user_settings`
--

INSERT INTO `se_user_settings` (`settingsValue`, `settingsKey`, `idUsers`) VALUES
('false', 'sulu_admin.application.navigation_pinned', 1),
('\"en\"', 'sulu_admin.content_locale', 1),
('\"title\"', 'sulu_admin.list_store.collections.media_overview.sort_column', 1),
('\"asc\"', 'sulu_admin.list_store.collections.media_overview.sort_order', 1),
('[]', 'sulu_admin.list_store.equipement.list.filter', 1),
('[]', 'sulu_admin.list_store.media.media_overview.filter', 1),
('\"693ac9a7-244e-4f94-9519-26f494a0d6a8\"', 'sulu_admin.list_store.pages.page_list_noe.active', 1);

-- --------------------------------------------------------

--
-- Structure de la table `se_user_two_factors`
--

DROP TABLE IF EXISTS `se_user_two_factors`;
CREATE TABLE IF NOT EXISTS `se_user_two_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `idUsers` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_732E8321347E6F4` (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ta_tags`
--

DROP TABLE IF EXISTS `ta_tags`;
CREATE TABLE IF NOT EXISTS `ta_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B258E4995E237E06` (`name`),
  KEY `IDX_B258E499DBF11E1D` (`idUsersCreator`),
  KEY `IDX_B258E49930D07CD5` (`idUsersChanger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tr_trash_items`
--

DROP TABLE IF EXISTS `tr_trash_items`;
CREATE TABLE IF NOT EXISTS `tr_trash_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoreData` json NOT NULL,
  `restoreType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restoreOptions` json NOT NULL,
  `resourceSecurityContext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeTimestamp` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `defaultLocale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_102989B64B64DCC` (`userId`),
  KEY `IDX_102989B5DAEB55C8CF57CB1` (`resourceKey`,`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tr_trash_item_translations`
--

DROP TABLE IF EXISTS `tr_trash_item_translations`;
CREATE TABLE IF NOT EXISTS `tr_trash_item_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trashItemId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8264DAF45C8D7CA4180C698` (`trashItemId`,`locale`),
  KEY `IDX_8264DAF45C8D7CA` (`trashItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `we_analytics`
--

DROP TABLE IF EXISTS `we_analytics`;
CREATE TABLE IF NOT EXISTS `we_analytics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webspace_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_domains` tinyint(1) NOT NULL,
  `content` json NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4E50BB8D1640EFD3` (`all_domains`),
  KEY `IDX_4E50BB8DAE248174` (`webspace_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `we_analytics_domains`
--

DROP TABLE IF EXISTS `we_analytics_domains`;
CREATE TABLE IF NOT EXISTS `we_analytics_domains` (
  `analytics` int(11) NOT NULL,
  `domain` int(11) NOT NULL,
  PRIMARY KEY (`analytics`,`domain`),
  KEY `IDX_F9323B6EEAC2E688` (`analytics`),
  KEY `IDX_F9323B6EA7A91E0B` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `we_domains`
--

DROP TABLE IF EXISTS `we_domains`;
CREATE TABLE IF NOT EXISTS `we_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `environment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CFAB3F5F47645AE` (`url`),
  KEY `IDX_7CFAB3F54626DE22` (`environment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ac_activities`
--
ALTER TABLE `ac_activities`
  ADD CONSTRAINT `FK_3EE015D064B64DCC` FOREIGN KEY (`userId`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `ca_categories`
--
ALTER TABLE `ca_categories`
  ADD CONSTRAINT `FK_3D85D78930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3D85D78937A3C3B1` FOREIGN KEY (`idCategoriesParent`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3D85D789DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  ADD CONSTRAINT `FK_2575BBB0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  ADD CONSTRAINT `FK_5DCED5E330D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5DCED5E3B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5DCED5E3DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `ca_category_translation_keywords`
--
ALTER TABLE `ca_category_translation_keywords`
  ADD CONSTRAINT `FK_D15FBE3717CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D15FBE37F9FC9F05` FOREIGN KEY (`idKeywords`) REFERENCES `ca_keywords` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ca_category_translation_medias`
--
ALTER TABLE `ca_category_translation_medias`
  ADD CONSTRAINT `FK_39FC41BA17CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_39FC41BA7DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ca_keywords`
--
ALTER TABLE `ca_keywords`
  ADD CONSTRAINT `FK_FE02CA0B30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_FE02CA0BDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `co_accounts`
--
ALTER TABLE `co_accounts`
  ADD CONSTRAINT `FK_805CD14A30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14A6D4A8651` FOREIGN KEY (`idContactsMain`) REFERENCES `co_contacts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14AC9171171` FOREIGN KEY (`idAccountsParent`) REFERENCES `co_accounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14ADBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14AE48E9A13` FOREIGN KEY (`logo`) REFERENCES `me_media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  ADD CONSTRAINT `FK_4165FE4893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4165FE48996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_bank_accounts`
--
ALTER TABLE `co_account_bank_accounts`
  ADD CONSTRAINT `FK_C873A53237FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C873A532996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_categories`
--
ALTER TABLE `co_account_categories`
  ADD CONSTRAINT `FK_B60E9510996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B60E9510B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  ADD CONSTRAINT `FK_28C6CA0E2A75CE2A` FOREIGN KEY (`idPositions`) REFERENCES `co_positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_28C6CA0E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_28C6CA0E996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_emails`
--
ALTER TABLE `co_account_emails`
  ADD CONSTRAINT `FK_3E246FC32F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3E246FC3996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_faxes`
--
ALTER TABLE `co_account_faxes`
  ADD CONSTRAINT `FK_7A4E77DC996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7A4E77DCCF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_medias`
--
ALTER TABLE `co_account_medias`
  ADD CONSTRAINT `FK_6077281071C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_60772810996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_notes`
--
ALTER TABLE `co_account_notes`
  ADD CONSTRAINT `FK_A3FBB24A16DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A3FBB24A996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_phones`
--
ALTER TABLE `co_account_phones`
  ADD CONSTRAINT `FK_918DA9648039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_918DA964996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_social_media_profiles`
--
ALTER TABLE `co_account_social_media_profiles`
  ADD CONSTRAINT `FK_E06F75F5573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E06F75F5996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_tags`
--
ALTER TABLE `co_account_tags`
  ADD CONSTRAINT `FK_E8D920051C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E8D92005996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_account_urls`
--
ALTER TABLE `co_account_urls`
  ADD CONSTRAINT `FK_ADF183825969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ADF18382996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_addresses`
--
ALTER TABLE `co_addresses`
  ADD CONSTRAINT `FK_26E9A6142A37021A` FOREIGN KEY (`idAdressTypes`) REFERENCES `co_address_types` (`id`);

--
-- Contraintes pour la table `co_contacts`
--
ALTER TABLE `co_contacts`
  ADD CONSTRAINT `FK_79D45A951677722F` FOREIGN KEY (`avatar`) REFERENCES `me_media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A9530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A95A254E939` FOREIGN KEY (`idTitles`) REFERENCES `co_contact_titles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A95DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  ADD CONSTRAINT `FK_DEE056860E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE056893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_bank_accounts`
--
ALTER TABLE `co_contact_bank_accounts`
  ADD CONSTRAINT `FK_76CDDA0637FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDDA0660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_categories`
--
ALTER TABLE `co_contact_categories`
  ADD CONSTRAINT `FK_8D2C3E2360E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8D2C3E23B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_emails`
--
ALTER TABLE `co_contact_emails`
  ADD CONSTRAINT `FK_898296312F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8982963160E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_faxes`
--
ALTER TABLE `co_contact_faxes`
  ADD CONSTRAINT `FK_61EBBEA260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_61EBBEA2CF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  ADD CONSTRAINT `FK_31E5672760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Contraintes pour la table `co_contact_medias`
--
ALTER TABLE `co_contact_medias`
  ADD CONSTRAINT `FK_D7D1D1E260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D7D1D1E271C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_notes`
--
ALTER TABLE `co_contact_notes`
  ADD CONSTRAINT `FK_B85E7B3416DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B85E7B3460E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_phones`
--
ALTER TABLE `co_contact_phones`
  ADD CONSTRAINT `FK_262B509660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_262B50968039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_social_media_profiles`
--
ALTER TABLE `co_contact_social_media_profiles`
  ADD CONSTRAINT `FK_74FF4CC0573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_74FF4CC060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_tags`
--
ALTER TABLE `co_contact_tags`
  ADD CONSTRAINT `FK_4CB525501C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4CB5255060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_contact_urls`
--
ALTER TABLE `co_contact_urls`
  ADD CONSTRAINT `FK_99D86D75969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_99D86D760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `co_emails`
--
ALTER TABLE `co_emails`
  ADD CONSTRAINT `FK_A2F2CB77D816E840` FOREIGN KEY (`idEmailTypes`) REFERENCES `co_email_types` (`id`);

--
-- Contraintes pour la table `co_faxes`
--
ALTER TABLE `co_faxes`
  ADD CONSTRAINT `FK_A5EC6A18B466C5DA` FOREIGN KEY (`idFaxTypes`) REFERENCES `co_fax_types` (`id`);

--
-- Contraintes pour la table `co_phones`
--
ALTER TABLE `co_phones`
  ADD CONSTRAINT `FK_D5B0DD0A4249AD7` FOREIGN KEY (`idPhoneTypes`) REFERENCES `co_phone_types` (`id`);

--
-- Contraintes pour la table `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  ADD CONSTRAINT `FK_DF585BFBB5BEA95F` FOREIGN KEY (`idSocialMediaTypes`) REFERENCES `co_social_media_profile_types` (`id`);

--
-- Contraintes pour la table `co_urls`
--
ALTER TABLE `co_urls`
  ADD CONSTRAINT `FK_6F03842E882335CC` FOREIGN KEY (`idUrlTypes`) REFERENCES `co_url_types` (`id`);

--
-- Contraintes pour la table `me_collections`
--
ALTER TABLE `me_collections`
  ADD CONSTRAINT `FK_F0D488730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887A4F2DCF8` FOREIGN KEY (`idCollectionsParent`) REFERENCES `me_collections` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887CFA3F467` FOREIGN KEY (`idCollectionsMetaDefault`) REFERENCES `me_collection_meta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F0D4887DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887E67924D6` FOREIGN KEY (`idCollectionTypes`) REFERENCES `me_collection_types` (`id`);

--
-- Contraintes pour la table `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  ADD CONSTRAINT `FK_F8D5E71693782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_files`
--
ALTER TABLE `me_files`
  ADD CONSTRAINT `FK_CA8D042730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CA8D04277DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CA8D0427DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `me_file_versions`
--
ALTER TABLE `me_file_versions`
  ADD CONSTRAINT `FK_7B6E894511F10344` FOREIGN KEY (`idFiles`) REFERENCES `me_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7B6E894530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7B6E89456B801096` FOREIGN KEY (`idFileVersionsMetaDefault`) REFERENCES `me_file_version_meta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7B6E8945DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `me_file_version_categories`
--
ALTER TABLE `me_file_version_categories`
  ADD CONSTRAINT `FK_2F1E17D0911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2F1E17D0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  ADD CONSTRAINT `FK_F3FD652C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  ADD CONSTRAINT `FK_AD44B0AD911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  ADD CONSTRAINT `FK_195DAB3C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_file_version_tags`
--
ALTER TABLE `me_file_version_tags`
  ADD CONSTRAINT `FK_150A30BE1C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_150A30BE911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_format_options`
--
ALTER TABLE `me_format_options`
  ADD CONSTRAINT `FK_6D25443B31852B63` FOREIGN KEY (`fileVersion`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `me_media`
--
ALTER TABLE `me_media`
  ADD CONSTRAINT `FK_A694E57230D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A694E57284671716` FOREIGN KEY (`idMediaTypes`) REFERENCES `me_media_types` (`id`),
  ADD CONSTRAINT `FK_A694E57293782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A694E572D1EB44DE` FOREIGN KEY (`idPreviewImage`) REFERENCES `me_media` (`id`),
  ADD CONSTRAINT `FK_A694E572DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `ro_routes`
--
ALTER TABLE `ro_routes`
  ADD CONSTRAINT `FK_671DB7A4158E0B66` FOREIGN KEY (`target_id`) REFERENCES `ro_routes` (`id`),
  ADD CONSTRAINT `FK_671DB7A430D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_671DB7A4DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `se_access_controls`
--
ALTER TABLE `se_access_controls`
  ADD CONSTRAINT `FK_C526DC52A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_groups`
--
ALTER TABLE `se_groups`
  ADD CONSTRAINT `FK_231E44EC30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_231E44ECBF274AB0` FOREIGN KEY (`idGroupsParent`) REFERENCES `se_groups` (`id`),
  ADD CONSTRAINT `FK_231E44ECDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `se_group_roles`
--
ALTER TABLE `se_group_roles`
  ADD CONSTRAINT `FK_9713F725937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9713F725A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_permissions`
--
ALTER TABLE `se_permissions`
  ADD CONSTRAINT `FK_5CEC3EEAA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_roles`
--
ALTER TABLE `se_roles`
  ADD CONSTRAINT `FK_13B749A030D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_13B749A0D02106C0` FOREIGN KEY (`idSecurityTypes`) REFERENCES `se_security_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_13B749A0DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `se_role_settings`
--
ALTER TABLE `se_role_settings`
  ADD CONSTRAINT `FK_DAD1C8CBB8C2FD88` FOREIGN KEY (`roleId`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_users`
--
ALTER TABLE `se_users`
  ADD CONSTRAINT `FK_B10AC28E30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B10AC28E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B10AC28EDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `se_user_groups`
--
ALTER TABLE `se_user_groups`
  ADD CONSTRAINT `FK_E43ED0C8347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E43ED0C8937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_user_roles`
--
ALTER TABLE `se_user_roles`
  ADD CONSTRAINT `FK_E48BD9DB347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E48BD9DBA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_user_settings`
--
ALTER TABLE `se_user_settings`
  ADD CONSTRAINT `FK_108FCAFA347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `se_user_two_factors`
--
ALTER TABLE `se_user_two_factors`
  ADD CONSTRAINT `FK_732E8321347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ta_tags`
--
ALTER TABLE `ta_tags`
  ADD CONSTRAINT `FK_B258E49930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B258E499DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `tr_trash_items`
--
ALTER TABLE `tr_trash_items`
  ADD CONSTRAINT `FK_102989B64B64DCC` FOREIGN KEY (`userId`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `tr_trash_item_translations`
--
ALTER TABLE `tr_trash_item_translations`
  ADD CONSTRAINT `FK_8264DAF45C8D7CA` FOREIGN KEY (`trashItemId`) REFERENCES `tr_trash_items` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `we_analytics_domains`
--
ALTER TABLE `we_analytics_domains`
  ADD CONSTRAINT `FK_F9323B6EA7A91E0B` FOREIGN KEY (`domain`) REFERENCES `we_domains` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9323B6EEAC2E688` FOREIGN KEY (`analytics`) REFERENCES `we_analytics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
