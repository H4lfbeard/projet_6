-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 12 avr. 2023 à 08:46
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet6`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(3, 'Grabs', 'grabs'),
(4, 'Rotation', 'rotation'),
(5, 'Grind', 'grind'),
(7, 'Flip', 'flip'),
(8, 'Rotation désaxée', 'rotation-desaxee'),
(9, 'One foot trick', 'one-foot-trick'),
(10, 'Old School', 'old-school');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230301171538', '2023-03-01 17:18:03', 82),
('DoctrineMigrations\\Version20230302093811', '2023-03-02 09:38:52', 49),
('DoctrineMigrations\\Version20230302105823', '2023-03-02 10:58:47', 67),
('DoctrineMigrations\\Version20230307100358', '2023-03-07 10:04:09', 75),
('DoctrineMigrations\\Version20230307101738', '2023-03-07 10:17:47', 75),
('DoctrineMigrations\\Version20230307103400', '2023-03-07 10:34:14', 90),
('DoctrineMigrations\\Version20230307103849', '2023-03-07 10:38:59', 89),
('DoctrineMigrations\\Version20230307105340', '2023-03-07 10:53:49', 106),
('DoctrineMigrations\\Version20230309101642', '2023-03-09 10:16:50', 81),
('DoctrineMigrations\\Version20230313143922', '2023-03-13 14:39:34', 96),
('DoctrineMigrations\\Version20230314164504', '2023-03-14 16:45:13', 66),
('DoctrineMigrations\\Version20230314165528', '2023-03-15 10:36:07', 114);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `trick_id`, `title`, `description`, `user_id`) VALUES
(22, 20, '090554389f964734680c256f5e28e93a.webp', NULL, NULL),
(25, 15, '627c3622338df347a42bcfad8478d07a.jpg', NULL, NULL),
(26, 16, '810cd92c49f32fd3ee6a572af6d43b84.jpg', NULL, NULL),
(27, 17, 'f2947736a090334f99d5a77b4710f3d4.webp', NULL, NULL),
(28, 21, '483540ee3a9685638edd22166798ae7c.jpg', NULL, NULL),
(29, 22, '829545048bbc2a2c5e010118ee419fb6.jpg', NULL, NULL),
(30, 23, '3cdf1524018e667a9ef0e70546e11864.jpg', NULL, NULL),
(43, 14, 'b6069c67ab180e8069fbf5d3c76f0ef1.jpg', NULL, NULL),
(87, 14, 'ccbe8cb311f3e5b4f1a88f4d011abd51.jpg', NULL, NULL),
(89, 58, '506bd3425455f976b6b56cf2a2c29401.jpg', NULL, NULL),
(104, NULL, '6432d0c350823.png', NULL, 19),
(109, 69, '290f8f712c6d9b3c1f0de6a9b38422bb.webp', NULL, NULL),
(110, 67, 'adc82ddec9d7a64bd92eb5af9cfa0081.webp', NULL, NULL),
(111, 70, 'fff944a8dc5872b3355f367a1dee45cc.jpg', NULL, NULL),
(112, 71, '98acc10fd3744276f8f0e69898411c00.jpg', NULL, NULL),
(113, 72, 'ec64e8899168d571abf4403727a006d3.jpg', NULL, NULL),
(114, 73, '1998cb702002c8898e823b63dd68206b.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trick_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `trick_id`, `content`, `date`) VALUES
(82, 13, 14, '720° TEST 1', '2023-04-10'),
(88, 13, 58, '360° TEST 1', '2023-04-11'),
(89, 13, 67, '50-50 TEST 1', '2023-03-31'),
(90, 13, 58, '360° TEST 2', '2023-04-11'),
(91, 13, 58, '360° TEST 3', '2023-04-11'),
(92, 13, 58, '360° TEST 3', '2023-04-11'),
(93, 13, 58, '360° TEST 4', '2023-04-11'),
(94, 13, 58, '360° TEST 4', '2023-04-11'),
(95, 13, 67, '50-50 TEST 2', '2023-04-01'),
(97, 13, 14, '720° TEST 2', '2023-04-11'),
(98, 13, 67, '50-50 TEST 3', '2023-04-02'),
(101, 12, 67, '50-50 TEST 4', '2023-04-03'),
(102, 12, 67, '50-50 TEST 5', '2023-04-04'),
(103, 12, 67, '50-50 TEST 6', '2023-04-05'),
(104, 12, 67, '50-50 TEST 7', '2023-04-06'),
(105, 12, 67, '50-50 TEST 8', '2023-04-07'),
(106, 12, 67, '50-50 TEST 9', '2023-04-08'),
(107, 12, 67, '50-50 TEST 10', '2023-04-09'),
(108, 12, 67, '50-50 TEST 11', '2023-04-10'),
(109, 12, 67, '50-50 TEST 12', '2023-04-11'),
(110, 21, 69, 'Boardslide TEST 1', '2023-04-11');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2272:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:174:\\\"https://127.0.0.1:8000/verify/email?expires=1677757302&signature=Fj%2B1LY6u1wKx%2BzzW0Cmu7nLeUZ7wQ4tSuB%2Bwiiyd12M%3D&token=aoj2NODlOcwFxriqpF%2BxSj5pIZL3V8Svf8%2B5RL13GO4%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-reply@projet6.test\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:12:\\\"Projet6.test\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"tomtom@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-02 10:41:42', '2023-03-02 10:41:42', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2266:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:168:\\\"https://127.0.0.1:8000/verify/email?expires=1677769782&signature=TNX6ZmfbsIivDmXP0XXx82oxrzz0MXH7MfcDY9X%2Fhm8%3D&token=wmRaQ2anuKce1Eo46WRAsnmbA3Ecwii%2FXZSF74BPdIE%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-reply@projet6.test\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:12:\\\"Projet6.test\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"tomtom@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-02 14:09:42', '2023-03-02 14:09:42', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2268:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:170:\\\"https://127.0.0.1:8000/verify/email?expires=1677770175&signature=Polv0Z%2FH03LOC4clSlfGXuc0SjphKI6Umu7Pk%2FCJ8f8%3D&token=vhSlIe9bWwdLBaAjIpwB%2Bi6BZcSHGVhGj5NSeOao768%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-reply@projet6.test\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:12:\\\"Projet6.test\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:16:\\\"tomtom@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-02 14:16:15', '2023-03-02 14:16:15', NULL),
(4, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";C:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":2267:{a:4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:168:\\\"https://127.0.0.1:8000/verify/email?expires=1677771467&signature=Rpoz%2FmPKsvQBeqVGRLeqmfZhB79vC4BMoml79NMI9uI%3D&token=CY42czlTg0fsZBgojUU1hWxdTgoMhap84HwEczS1G%2FY%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:21:\\\"no-reply@projet6.test\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:12:\\\"Projet6.test\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"contact@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2023-03-02 14:37:47', '2023-03-02 14:37:47', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tricks`
--

CREATE TABLE `tricks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tricks`
--

INSERT INTO `tricks` (`id`, `title`, `content`, `date`, `user_id`, `slug`, `categories_id`) VALUES
(14, '720°', 'Faire 2 tours sur soi-même une fois dans les airs; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse fermentum elit ligula, eget auctor sem rhoncus eget. Vestibulum urna eros, placerat vel commodo eu, consectetur eget arcu. Vivamus pretium lorem a erat ornare convallis. Integer tristique ex at enim dictum, ac pulvinar massa condimentum. Sed gravida urna ut auctor pretium. Sed in tellus ut nisi auctor hendrerit in ut metus. Morbi tempus dolor ullamcorper lobortis dignissim. Donec a arcu egestas, pulvinar odio sit amet, sollicitudin ipsum. Pellentesque in diam nec odio venenatis maximus vel quis tortor. Sed magna dolor, aliquam et dui ac, volutpat tempus elit. Sed non dui elementum, gravida est eget, consequat arcu. Phasellus justo odio, finibus quis magna vitae, aliquam imperdiet augue. Ut eu pellentesque velit, vitae ullamcorper ipsum. Sed blandit rhoncus nulla eu placerat. Praesent ac nulla eget neque egestas volutpat quis nec sapien. Praesent ac nunc eget nisi ornare luctus nec id magna. Nulla auctor nulla ante, vitae gravida massa suscipit blandit. Etiam vel neque lectus. Cras vitae odio est. Pellentesque imperdiet risus cursus imperdiet sollicitudin. Duis faucibus lobortis mauris, eu sodales lacus.', '2023-03-17', 6, '720deg', 4),
(15, '1080°', 'Faire 3 tours sur soi-même une fois dans les airs; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse fermentum elit ligula, eget auctor sem rhoncus eget. Vestibulum urna eros, placerat vel commodo eu, consectetur eget arcu. Vivamus pretium lorem a erat ornare convallis. Integer tristique ex at enim dictum, ac pulvinar massa condimentum. Sed gravida urna ut auctor pretium. Sed in tellus ut nisi auctor hendrerit in ut metus. Morbi tempus dolor ullamcorper lobortis dignissim. Donec a arcu egestas, pulvinar odio sit amet, sollicitudin ipsum. Pellentesque in diam nec odio venenatis maximus vel quis tortor. Sed magna dolor, aliquam et dui ac, volutpat tempus elit. Sed non dui elementum, gravida est eget, consequat arcu. Phasellus justo odio, finibus quis magna vitae, aliquam imperdiet augue. Ut eu pellentesque velit, vitae ullamcorper ipsum. Sed blandit rhoncus nulla eu placerat. Praesent ac nulla eget neque egestas volutpat quis nec sapien. Praesent ac nunc eget nisi ornare luctus nec id magna. Nulla auctor nulla ante, vitae gravida massa suscipit blandit. Etiam vel neque lectus. Cras vitae odio est. Pellentesque imperdiet risus cursus imperdiet sollicitudin. Duis faucibus lobortis mauris, eu sodales lacus.', '2023-03-17', 6, '1080deg', 4),
(16, 'Nose Grab', 'Attraper le bout avant de sa planche dans les airs. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse fermentum elit ligula, eget auctor sem rhoncus eget. Vestibulum urna eros, placerat vel commodo eu, consectetur eget arcu. Vivamus pretium lorem a erat ornare convallis. Integer tristique ex at enim dictum, ac pulvinar massa condimentum. Sed gravida urna ut auctor pretium. Sed in tellus ut nisi auctor hendrerit in ut metus. Morbi tempus dolor ullamcorper lobortis dignissim. Donec a arcu egestas, pulvinar odio sit amet, sollicitudin ipsum. Pellentesque in diam nec odio venenatis maximus vel quis tortor. Sed magna dolor, aliquam et dui ac, volutpat tempus elit. Sed non dui elementum, gravida est eget, consequat arcu. Phasellus justo odio, finibus quis magna vitae, aliquam imperdiet augue. Ut eu pellentesque velit, vitae ullamcorper ipsum. Sed blandit rhoncus nulla eu placerat. Praesent ac nulla eget neque egestas volutpat quis nec sapien. Praesent ac nunc eget nisi ornare luctus nec id magna. Nulla auctor nulla ante, vitae gravida massa suscipit blandit. Etiam vel neque lectus. Cras vitae odio est. Pellentesque imperdiet risus cursus imperdiet sollicitudin. Duis faucibus lobortis mauris, eu sodales lacus.', '2023-03-17', 6, 'nose-grab', 3),
(17, 'Tail grab', 'Attraper le bout arrière de sa planche dans les airs. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse fermentum elit ligula, eget auctor sem rhoncus eget. Vestibulum urna eros, placerat vel commodo eu, consectetur eget arcu. Vivamus pretium lorem a erat ornare convallis. Integer tristique ex at enim dictum, ac pulvinar massa condimentum. Sed gravida urna ut auctor pretium. Sed in tellus ut nisi auctor hendrerit in ut metus. Morbi tempus dolor ullamcorper lobortis dignissim. Donec a arcu egestas, pulvinar odio sit amet, sollicitudin ipsum. Pellentesque in diam nec odio venenatis maximus vel quis tortor. Sed magna dolor, aliquam et dui ac, volutpat tempus elit. Sed non dui elementum, gravida est eget, consequat arcu. Phasellus justo odio, finibus quis magna vitae, aliquam imperdiet augue. Ut eu pellentesque velit, vitae ullamcorper ipsum. Sed blandit rhoncus nulla eu placerat. Praesent ac nulla eget neque egestas volutpat quis nec sapien. Praesent ac nunc eget nisi ornare luctus nec id magna. Nulla auctor nulla ante, vitae gravida massa suscipit blandit. Etiam vel neque lectus. Cras vitae odio est. Pellentesque imperdiet risus cursus imperdiet sollicitudin. Duis faucibus lobortis mauris, eu sodales lacus.', '2023-03-17', 6, 'tail-grab', 3),
(20, 'Mute', 'saisie de la carre frontside de la planche entre les deux pieds avec la main avant.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus viverra purus nunc, nec porttitor mi sagittis sed. Duis at congue nibh. Proin at pellentesque ante. Suspendisse vitae erat mollis, imperdiet lorem non, sollicitudin nisi. Ut quis magna justo. Nullam finibus egestas vestibulum. Maecenas viverra purus in sem consequat finibus. Vestibulum dignissim, eros malesuada consequat congue, urna mauris tincidunt arcu, id ornare ligula magna a velit. Phasellus venenatis magna metus, vitae feugiat purus venenatis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed luctus leo gravida, ultrices felis vitae, efficitur erat. Nunc quis massa non nisl lacinia mollis. Nulla facilisi.', '2023-03-22', 6, 'mute', 3),
(21, 'Indy', 'saisie de la carre frontside de la planche, entre les deux pieds, avec la main arrière ; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus viverra purus nunc, nec porttitor mi sagittis sed. Duis at congue nibh. Proin at pellentesque ante. Suspendisse vitae erat mollis, imperdiet lorem non, sollicitudin nisi. Ut quis magna justo. Nullam finibus egestas vestibulum. Maecenas viverra purus in sem consequat finibus. Vestibulum dignissim, eros malesuada consequat congue, urna mauris tincidunt arcu, id ornare ligula magna a velit. Phasellus venenatis magna metus, vitae feugiat purus venenatis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed luctus leo gravida, ultrices felis vitae, efficitur erat. Nunc quis massa non nisl lacinia mollis. Nulla facilisi.', '2023-03-22', 6, 'indy', 3),
(22, 'Japan', 'saisie de l\'avant de la planche, avec la main avant, du côté de la carre frontside. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus viverra purus nunc, nec porttitor mi sagittis sed. Duis at congue nibh. Proin at pellentesque ante. Suspendisse vitae erat mollis, imperdiet lorem non, sollicitudin nisi. Ut quis magna justo. Nullam finibus egestas vestibulum. Maecenas viverra purus in sem consequat finibus. Vestibulum dignissim, eros malesuada consequat congue, urna mauris tincidunt arcu, id ornare ligula magna a velit. Phasellus venenatis magna metus, vitae feugiat purus venenatis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed luctus leo gravida, ultrices felis vitae, efficitur erat. Nunc quis massa non nisl lacinia mollis. Nulla facilisi.', '2023-03-22', 6, 'japan', 3),
(23, 'Truck driver', 'aisie du carre avant et carre arrière avec chaque main (comme tenir un volant de voiture); Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus viverra purus nunc, nec porttitor mi sagittis sed. Duis at congue nibh. Proin at pellentesque ante. Suspendisse vitae erat mollis, imperdiet lorem non, sollicitudin nisi. Ut quis magna justo. Nullam finibus egestas vestibulum. Maecenas viverra purus in sem consequat finibus. Vestibulum dignissim, eros malesuada consequat congue, urna mauris tincidunt arcu, id ornare ligula magna a velit. Phasellus venenatis magna metus, vitae feugiat purus venenatis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed luctus leo gravida, ultrices felis vitae, efficitur erat. Nunc quis massa non nisl lacinia mollis. Nulla facilisi.', '2023-03-22', 6, 'truck-driver', 3),
(58, '360°', 'The allow_delete option means that if an item of a collection isn\'t sent on submission, the related data is removed from the collection on the server. In order for this to work in an HTML form, you must remove the DOM element for the collection item to be removed, before submitting the form.\r\n\r\nFirst, add a \"delete this tag\" link to each tag form:', '2023-04-05', 12, '360deg', 4),
(67, '50-50', 'Il faut arriver de manière parallèle sur la barre de slide et glisser tout droit. Le snowboard freestyle (anglicisme) ou la planche acrobatique de neige1 (ou artistique) est la pratique de la planche à neige de figures, apparue dans les années 1980 et héritière du skateboard. Cette discipline de planche acrobatique consiste pour ses pratiquants à exécuter des figures libres lors de sauts pratiqués à l\'aide de structures diverses utilisées comme tremplin. Elle a principalement lieu dans des zones spéciales dédiées comme les snowparks ou en milieu urbain. Elle peut aussi être pratiquée en hors-piste (backcountry en anglais). Cette discipline est considérée comme un sport extrême.', '2023-04-11', 13, '50-50', 5),
(69, 'Boardslide', 'Le boardslide consiste à arriver de manière perpendiculaire sur la barre de slide et glisser tout droit. Il faut penser à se remettre dans le sens de la pente à la fin de la barre. Le snowboard freestyle (anglicisme) ou la planche acrobatique de neige1 (ou artistique) est la pratique de la planche à neige de figures, apparue dans les années 1980 et héritière du skateboard. Cette discipline de planche acrobatique consiste pour ses pratiquants à exécuter des figures libres lors de sauts pratiqués à l\'aide de structures diverses utilisées comme tremplin. Elle a principalement lieu dans des zones spéciales dédiées comme les snowparks ou en milieu urbain. Elle peut aussi être pratiquée en hors-piste (backcountry en anglais). Cette discipline est considérée comme un sport extrême.', '2023-04-11', 12, 'boardslide', 5),
(70, '180°', 'Prendre un saut et une fois dans les airs, effectué un demi-tour sur vous même avant la réception. Attention à ne pas trop tourner sinon c\'est un 360° ! Le snowboard freestyle (anglicisme) ou la planche acrobatique de neige1 (ou artistique) est la pratique de la planche à neige de figures, apparue dans les années 1980 et héritière du skateboard. Cette discipline de planche acrobatique consiste pour ses pratiquants à exécuter des figures libres lors de sauts pratiqués à l\'aide de structures diverses utilisées comme tremplin. Elle a principalement lieu dans des zones spéciales dédiées comme les snowparks ou en milieu urbain. Elle peut aussi être pratiquée en hors-piste (backcountry en anglais). Cette discipline est considérée comme un sport extrême.', '2023-04-11', 12, '180deg', 4),
(71, 'Stalefish', 'saisie de la carre backside de la planche entre les deux pieds avec la main arrière. Le snowboard freestyle (anglicisme) ou la planche acrobatique de neige1 (ou artistique) est la pratique de la planche à neige de figures, apparue dans les années 1980 et héritière du skateboard. Cette discipline de planche acrobatique consiste pour ses pratiquants à exécuter des figures libres lors de sauts pratiqués à l\'aide de structures diverses utilisées comme tremplin. Elle a principalement lieu dans des zones spéciales dédiées comme les snowparks ou en milieu urbain. Elle peut aussi être pratiquée en hors-piste (backcountry en anglais). Cette discipline est considérée comme un sport extrême.', '2023-04-11', 12, 'stalefish', 3),
(72, '540°', 'Le 540° consiste à faire un tour et demi sur soi-même une fois dans les airs. Le snowboard freestyle (anglicisme) ou la planche acrobatique de neige1 (ou artistique) est la pratique de la planche à neige de figures, apparue dans les années 1980 et héritière du skateboard. Cette discipline de planche acrobatique consiste pour ses pratiquants à exécuter des figures libres lors de sauts pratiqués à l\'aide de structures diverses utilisées comme tremplin. Elle a principalement lieu dans des zones spéciales dédiées comme les snowparks ou en milieu urbain. Elle peut aussi être pratiquée en hors-piste (backcountry en anglais). Cette discipline est considérée comme un sport extrême.', '2023-04-11', 12, '540deg', 4),
(73, 'Five-0', 'Le Five-0 est un grind qui consiste à prendre un bar de grind en ligne droite et ne reposant que sur l’arrière de la planche. Le snowboard freestyle (anglicisme) ou la planche acrobatique de neige1 (ou artistique) est la pratique de la planche à neige de figures, apparue dans les années 1980 et héritière du skateboard. Cette discipline de planche acrobatique consiste pour ses pratiquants à exécuter des figures libres lors de sauts pratiqués à l\'aide de structures diverses utilisées comme tremplin. Elle a principalement lieu dans des zones spéciales dédiées comme les snowparks ou en milieu urbain. Elle peut aussi être pratiquée en hors-piste (backcountry en anglais). Cette discipline est considérée comme un sport extrême.', '2023-04-11', 12, 'five-0', 5);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `is_verified`, `name`, `firstname`) VALUES
(12, 'tomtom@gmail.com', '[]', '$2y$13$sPu1A9nQfMMKFcL4aE2gHePPWOyfugPVmrkNjuRC960Vx669S8/.W', 0, 'Tom', 'Tom'),
(13, 'do@gmail.com', '[]', '$2y$13$v3on5Y1dfGBtDBtIGrvOo.wF1pxEXOWQqMEAdPLN3Z8Hrw5knUZdS', 0, 'Do', 'Lucas'),
(19, 'til@gmail.com', '[]', '$2y$13$px0lvCc3AdVONm3UtxekkeHH73kq2vsD//AlhYzVwLn756KkGhoXG', 0, 'Horton', 'Tim'),
(20, 'hugo@gmail.com', '[]', '$2y$13$.eMg4bLC7VCJRA4xOXU4Ieo4M7wrBtFlvdyJsqD0e0l8XNvSHCmx2', 0, 'Stiglitz', 'Hugo'),
(21, 'tomtom.humbert@gmail.com', '[]', '$2y$13$Rmg6io4WC2JwG8NDvD5RM.nkIpjjPlQotQwAPRP4yZfnE0y/AsEwG', 1, 'Half', 'Tom');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) NOT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `videos`
--

INSERT INTO `videos` (`id`, `trick_id`, `url`) VALUES
(82, 14, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PnFrb2kYRCg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(84, 69, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/12OHPNTeoRs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(85, 67, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/97g33ytDI2Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(86, 70, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HJiAYHGQApU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(87, 71, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xXCCGYqAWqI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(88, 72, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/cGiAFk2adMw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(89, 73, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eZJo8aBQ0JQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(90, 58, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(91, 20, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(92, 21, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(93, 22, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(94, 23, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(95, 15, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(96, 16, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(97, 17, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9T5AWWDxYM4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E01FBE6AA76ED395` (`user_id`),
  ADD KEY `IDX_E01FBE6AB281BE2E` (`trick_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DB021E96A76ED395` (`user_id`),
  ADD KEY `IDX_DB021E96B281BE2E` (`trick_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `tricks`
--
ALTER TABLE `tricks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E1D902C12B36786B` (`title`),
  ADD KEY `IDX_E1D902C1A76ED395` (`user_id`),
  ADD KEY `IDX_E1D902C1A21214B7` (`categories_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29AA6432B281BE2E` (`trick_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tricks`
--
ALTER TABLE `tricks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_E01FBE6AB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `tricks` (`id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `FK_DB021E96A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_DB021E96B281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `tricks` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `tricks`
--
ALTER TABLE `tricks`
  ADD CONSTRAINT `FK_E1D902C1A21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FK_E1D902C1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_29AA6432B281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `tricks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
