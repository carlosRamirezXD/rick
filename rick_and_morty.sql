-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-11-2025 a las 07:14:31
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rick_and_morty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

DROP TABLE IF EXISTS `personajes`;
CREATE TABLE IF NOT EXISTS `personajes` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL,
  `species` varchar(100) NOT NULL,
  `type` varchar(150) DEFAULT '',
  `gender` varchar(50) NOT NULL,
  `origin_name` varchar(150) NOT NULL,
  `location_name` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `name`, `status`, `species`, `type`, `gender`, `origin_name`, `location_name`, `image`, `created`) VALUES
(1, 'Rick Sanchez', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', '2017-11-04 18:48:46'),
(2, 'Morty Smith', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', '2017-11-04 18:50:21'),
(3, 'Summer Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', '2017-11-04 19:09:56'),
(4, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', '2017-11-04 19:22:43'),
(5, 'Jerry Smith', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', '2017-11-04 19:26:56'),
(6, 'Abadango Cluster Princess', 'Alive', 'Alien', '', 'Female', 'Abadango', 'Abadango', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', '2017-11-04 19:50:28'),
(7, 'Abradolf Lincler', 'unknown', 'Human', 'Genetic experiment', 'Male', 'Earth (Replacement Dimension)', 'Testicle Monster Dimension', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', '2017-11-04 19:59:20'),
(8, 'Adjudicator Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', '2017-11-04 20:03:34'),
(9, 'Agency Director', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', '2017-11-04 20:06:54'),
(10, 'Alan Rails', 'Dead', 'Human', 'Superhuman (Ghost trains summoner)', 'Male', 'unknown', 'Worldender\'s lair', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2017-11-04 20:19:09'),
(11, 'Albert Einstein', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', '2017-11-04 20:20:20'),
(12, 'Alexander', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', '2017-11-04 20:32:33'),
(13, 'Alien Googah', 'unknown', 'Alien', '', 'unknown', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', '2017-11-04 20:33:30'),
(14, 'Alien Morty', 'unknown', 'Alien', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', '2017-11-04 20:51:31'),
(15, 'Alien Rick', 'unknown', 'Alien', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', '2017-11-04 20:56:13'),
(16, 'Amish Cyborg', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', '2017-11-04 21:12:45'),
(17, 'Annie', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', '2017-11-04 22:21:24'),
(18, 'Antenna Morty', 'Alive', 'Human', 'Human with antennae', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', '2017-11-04 22:25:29'),
(19, 'Antenna Rick', 'unknown', 'Human', 'Human with antennae', 'Male', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', '2017-11-04 22:28:13'),
(20, 'Ants in my Eyes Johnson', 'unknown', 'Human', 'Human with ants in his eyes', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', '2017-11-04 22:34:53'),
(21, 'Aqua Morty', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/21.jpeg', '2017-11-04 22:39:48'),
(22, 'Aqua Rick', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/22.jpeg', '2017-11-04 22:41:07'),
(23, 'Arcade Alien', 'unknown', 'Alien', '', 'Male', 'unknown', 'Immortality Field Resort', 'https://rickandmortyapi.com/api/character/avatar/23.jpeg', '2017-11-05 08:43:05'),
(24, 'Armagheadon', 'Alive', 'Alien', 'Cromulon', 'Male', 'Signus 5 Expanse', 'Signus 5 Expanse', 'https://rickandmortyapi.com/api/character/avatar/24.jpeg', '2017-11-05 08:48:30'),
(25, 'Armothy', 'Dead', 'unknown', 'Self-aware arm', 'Male', 'Post-Apocalyptic Earth', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/25.jpeg', '2017-11-05 08:54:29'),
(26, 'Arthricia', 'Alive', 'Alien', 'Cat-Person', 'Female', 'Purge Planet', 'Purge Planet', 'https://rickandmortyapi.com/api/character/avatar/26.jpeg', '2017-11-05 08:56:46'),
(27, 'Artist Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/27.jpeg', '2017-11-05 08:59:07'),
(28, 'Attila Starwar', 'Alive', 'Human', '', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/28.jpeg', '2017-11-05 09:02:16'),
(29, 'Baby Legs', 'Alive', 'Human', 'Human with baby legs', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/29.jpeg', '2017-11-05 09:06:19'),
(30, 'Baby Poopybutthole', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/30.jpeg', '2017-11-05 09:13:16'),
(31, 'Baby Wizard', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/31.jpeg', '2017-11-05 09:15:11'),
(32, 'Bearded Lady', 'Dead', 'Alien', 'Parasite', 'Female', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/32.jpeg', '2017-11-05 09:18:04'),
(33, 'Beebo', 'Dead', 'Alien', '', 'Male', 'Venzenulon 7', 'Venzenulon 7', 'https://rickandmortyapi.com/api/character/avatar/33.jpeg', '2017-11-05 09:21:55'),
(34, 'Benjamin', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/34.jpeg', '2017-11-05 09:24:04'),
(35, 'Bepisian', 'Alive', 'Alien', 'Bepisian', 'unknown', 'Bepis 9', 'Bepis 9', 'https://rickandmortyapi.com/api/character/avatar/35.jpeg', '2017-11-05 09:27:38'),
(36, 'Beta-Seven', 'Alive', 'Alien', 'Hivemind', 'unknown', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/36.jpeg', '2017-11-05 09:31:08'),
(37, 'Beth Sanchez', 'Alive', 'Human', '', 'Female', 'Earth (C-500A)', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/character/avatar/37.jpeg', '2017-11-05 09:38:22'),
(38, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/38.jpeg', '2017-11-05 09:48:44'),
(39, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Evil Rick\'s Target Dimension)', 'Earth (Evil Rick\'s Target Dimension)', 'https://rickandmortyapi.com/api/character/avatar/39.jpeg', '2017-11-05 09:52:31'),
(40, 'Beth\'s Mytholog', 'Dead', 'Mythological Creature', 'Mytholog', 'Female', 'Nuptia 4', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/40.jpeg', '2017-11-05 10:02:26'),
(41, 'Big Boobed Waitress', 'Alive', 'Mythological Creature', '', 'Female', 'Fantasy World', 'Fantasy World', 'https://rickandmortyapi.com/api/character/avatar/41.jpeg', '2017-11-05 10:13:45'),
(42, 'Big Head Morty', 'unknown', 'Human', 'Human with giant head', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/42.jpeg', '2017-11-05 10:15:53'),
(43, 'Big Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/43.jpeg', '2017-11-05 10:17:04'),
(44, 'Body Guard Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/44.jpeg', '2017-11-05 10:18:11'),
(45, 'Bill', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/45.jpeg', '2017-11-05 10:22:27'),
(46, 'Bill', 'unknown', 'Animal', 'Dog', 'Male', 'Earth (Replacement Dimension)', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/46.jpeg', '2017-11-05 10:24:38'),
(47, 'Birdperson', 'Alive', 'Alien', 'Bird-Person', 'Male', 'Bird World', 'Planet Squanch', 'https://rickandmortyapi.com/api/character/avatar/47.jpeg', '2017-11-05 11:13:36'),
(48, 'Black Rick', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/48.jpeg', '2017-11-05 11:15:26'),
(49, 'Blamph', 'Alive', 'Alien', '', 'unknown', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/49.jpeg', '2017-11-05 11:18:26'),
(50, 'Blim Blam', 'Alive', 'Alien', 'Korblock', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/50.jpeg', '2017-11-05 11:21:43'),
(51, 'Blue Diplomat', 'Alive', 'Alien', '', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/51.jpeg', '2017-11-05 11:24:49'),
(52, 'Blue Footprint Guy', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/52.jpeg', '2017-11-05 11:26:42'),
(53, 'Blue Shirt Morty', 'unknown', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/53.jpeg', '2017-11-05 11:28:38'),
(54, 'Bobby Moynihan', 'Alive', 'Human', '', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/54.jpeg', '2017-11-05 11:31:26'),
(55, 'Boobloosian', 'Dead', 'Alien', 'Boobloosian', 'unknown', 'unknown', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/55.jpeg', '2017-11-05 11:32:53'),
(56, 'Bootleg Portal Chemist Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/56.jpeg', '2017-11-05 11:34:16'),
(57, 'Borpocian', 'Alive', 'Alien', 'Elephant-Person', 'Male', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/57.jpeg', '2017-11-05 11:38:29'),
(58, 'Brad', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/58.jpeg', '2017-11-05 11:40:02'),
(59, 'Brad Anderson', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/59.jpeg', '2017-11-05 11:41:38'),
(60, 'Calypso', 'Dead', 'Human', 'Superhuman', 'Female', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/60.jpeg', '2017-11-05 11:52:45'),
(61, 'Campaign Manager Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/61.jpeg', '2017-11-05 11:53:44'),
(62, 'Canklanker Thom', 'Dead', 'Alien', 'Gromflomite', 'Male', 'Gromflom Prime', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/62.jpeg', '2017-11-05 12:06:23'),
(63, 'Centaur', 'Alive', 'Mythological Creature', 'Centaur', 'Male', 'unknown', 'Mr. Goldenfold\'s dream', 'https://rickandmortyapi.com/api/character/avatar/63.jpeg', '2017-11-05 12:22:17'),
(64, 'Chris', 'Dead', 'Alien', 'Organic gun', 'unknown', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/64.jpeg', '2017-11-05 12:25:03'),
(65, 'Chris', 'Alive', 'Humanoid', 'Microverse inhabitant', 'Male', 'Rick\'s Battery Microverse', 'Rick\'s Battery Microverse', 'https://rickandmortyapi.com/api/character/avatar/65.jpeg', '2017-11-30 11:02:41'),
(66, 'Coach Feratu (Balik Alistane)', 'Dead', 'Mythological Creature', 'Vampire', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/66.jpeg', '2017-11-30 11:10:10'),
(67, 'Collector', 'Alive', 'Alien', 'Light bulb-Alien', 'Male', 'The Menagerie', 'The Menagerie', 'https://rickandmortyapi.com/api/character/avatar/67.jpeg', '2017-11-30 11:13:46'),
(68, 'Colossus', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/68.jpeg', '2017-11-30 11:17:32'),
(69, 'Commander Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/69.jpeg', '2017-11-30 11:28:06'),
(70, 'Concerto', 'Dead', 'Humanoid', '', 'Male', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/70.jpeg', '2017-11-30 11:31:41'),
(71, 'Conroy', 'Dead', 'Robot', '', 'unknown', 'Earth (Replacement Dimension)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/71.jpeg', '2017-11-30 11:35:50'),
(72, 'Cool Rick', 'Alive', 'Human', '', 'Male', 'Earth (K-83)', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/72.jpeg', '2017-11-30 11:41:11'),
(73, 'Cop Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/73.jpeg', '2017-11-30 11:43:04'),
(74, 'Cop Rick', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/74.jpeg', '2017-11-30 11:48:18'),
(75, 'Courier Flap', 'Alive', 'Alien', '', 'unknown', 'unknown', 'Planet Squanch', 'https://rickandmortyapi.com/api/character/avatar/75.jpeg', '2017-11-30 12:12:57'),
(76, 'Cousin Nicky', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/76.jpeg', '2017-11-30 14:11:52'),
(77, 'Cowboy Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/77.jpeg', '2017-11-30 14:13:17'),
(78, 'Cowboy Rick', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/78.jpeg', '2017-11-30 14:15:18'),
(79, 'Crab Spider', 'Alive', 'Alien', 'Animal', 'unknown', 'Hideout Planet', 'Hideout Planet', 'https://rickandmortyapi.com/api/character/avatar/79.jpeg', '2017-11-30 14:18:16'),
(80, 'Creepy Little Girl', 'Alive', 'Human', '', 'Female', 'unknown', 'Mr. Goldenfold\'s dream', 'https://rickandmortyapi.com/api/character/avatar/80.jpeg', '2017-11-30 14:20:35'),
(81, 'Crocubot', 'Dead', 'Animal', 'Robot-Crocodile hybrid', 'Male', 'unknown', 'Worldender\'s lair', 'https://rickandmortyapi.com/api/character/avatar/81.jpeg', '2017-11-30 14:23:41'),
(82, 'Cronenberg Rick', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/82.jpeg', '2017-11-30 14:28:54'),
(83, 'Cronenberg Morty', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/83.jpeg', '2017-11-30 20:02:29'),
(84, 'Cult Leader Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'Hideout Planet', 'https://rickandmortyapi.com/api/character/avatar/84.jpeg', '2017-11-30 20:41:48'),
(85, 'Cyclops Morty', 'Alive', 'Humanoid', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/85.jpeg', '2017-11-30 20:49:52'),
(86, 'Cyclops Rick', 'Dead', 'Humanoid', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/86.jpeg', '2017-11-30 20:53:10'),
(87, 'Cynthia', 'Dead', 'Alien', 'Zigerion', 'Female', 'unknown', 'Zigerion\'s Base', 'https://rickandmortyapi.com/api/character/avatar/87.jpeg', '2017-11-30 21:08:32'),
(88, 'Cynthia', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/88.jpeg', '2017-11-30 21:16:35'),
(89, 'Dale', 'Dead', 'Mythological Creature', 'Giant', 'Male', 'Giant\'s Town', 'Giant\'s Town', 'https://rickandmortyapi.com/api/character/avatar/89.jpeg', '2017-12-01 10:32:08'),
(90, 'Daron Jefferson', 'Alive', 'Alien', 'Cone-nippled alien', 'Male', 'Unity\'s Planet', 'Unity\'s Planet', 'https://rickandmortyapi.com/api/character/avatar/90.jpeg', '2017-12-01 10:54:34'),
(91, 'David Letterman', 'Alive', 'Human', '', 'Male', 'Earth (C-500A)', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/character/avatar/91.jpeg', '2017-12-01 11:12:25'),
(92, 'Davin', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/92.jpeg', '2017-12-01 11:20:51'),
(93, 'Diablo Verde', 'Dead', 'Mythological Creature', 'Demon', 'Male', 'unknown', 'Dorian 5', 'https://rickandmortyapi.com/api/character/avatar/93.jpeg', '2017-12-01 11:36:16'),
(94, 'Diane Sanchez', 'Dead', 'Human', '', 'Female', 'Earth (C-137)', 'Rick\'s Memories', 'https://rickandmortyapi.com/api/character/avatar/94.jpeg', '2017-12-01 11:49:43'),
(95, 'Dipper and Mabel Mortys', 'unknown', 'Human', '', 'unknown', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/95.jpeg', '2017-12-01 11:54:36'),
(96, 'Tuberculosis', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/96.jpeg', '2017-12-01 11:59:04'),
(97, 'Gonorrhea', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/97.jpeg', '2017-12-01 12:00:27'),
(98, 'Hepatitis A', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/98.jpeg', '2017-12-01 12:01:43'),
(99, 'Hepatitis C', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/99.jpeg', '2017-12-01 12:02:00'),
(100, 'Bubonic Plague', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/100.jpeg', '2017-12-01 12:02:21'),
(101, 'E. Coli', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/101.jpeg', '2017-12-01 12:03:31'),
(102, 'Donna Gueterman', 'Dead', 'Robot', '', 'Female', 'unknown', 'Planet Squanch', 'https://rickandmortyapi.com/api/character/avatar/102.jpeg', '2017-12-01 12:21:21'),
(103, 'Doofus Rick', 'unknown', 'Human', '', 'Male', 'Earth (J19ζ7)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/103.jpeg', '2017-12-01 12:29:27'),
(104, 'Doom-Nomitron', 'Dead', 'Alien', 'Shapeshifter', 'unknown', 'unknown', 'Dorian 5', 'https://rickandmortyapi.com/api/character/avatar/104.jpeg', '2017-12-26 12:34:36'),
(105, 'Dr. Glip-Glop', 'Dead', 'Alien', '', 'Male', 'unknown', 'St. Gloopy Noops Hospital', 'https://rickandmortyapi.com/api/character/avatar/105.jpeg', '2017-12-26 12:39:22'),
(106, 'Dr. Schmidt', 'unknown', 'Human', 'Game', 'Male', 'Roy: A Life Well Lived', 'Roy: A Life Well Lived', 'https://rickandmortyapi.com/api/character/avatar/106.jpeg', '2017-12-26 12:46:48'),
(107, 'Dr. Wong', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/107.jpeg', '2017-12-26 12:55:58'),
(108, 'Dr. Xenon Bloom', 'Dead', 'Humanoid', 'Amoeba-Person', 'Male', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/108.jpeg', '2017-12-26 13:14:12'),
(109, 'Duck With Muscles', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/109.jpeg', '2017-12-26 13:17:40'),
(110, 'Eli', 'Alive', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/110.jpeg', '2017-12-26 13:37:27'),
(111, 'Eli\'s Girlfriend', 'Alive', 'Human', '', 'Female', 'Post-Apocalyptic Earth', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/111.jpeg', '2017-12-26 13:38:47'),
(112, 'Eric McMan', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/112.jpeg', '2017-12-26 13:40:06'),
(113, 'Eric Stoltz Mask Morty', 'unknown', 'Human', '', 'Male', 'Eric Stoltz Mask Earth', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/113.jpeg', '2017-12-26 13:43:29'),
(114, 'Ethan', 'unknown', 'Human', 'Cronenberg', 'Male', 'Earth (C-137)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/114.jpeg', '2017-12-26 16:01:13'),
(115, 'Ethan', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/115.jpeg', '2017-12-26 16:01:50'),
(116, 'Evil Beth Clone', 'Dead', 'Human', 'Clone', 'Female', 'unknown', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/116.jpeg', '2017-12-26 16:10:47'),
(117, 'Evil Jerry Clone', 'Dead', 'Human', 'Clone', 'Male', 'unknown', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/117.jpeg', '2017-12-26 16:11:15'),
(118, 'Evil Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/118.jpeg', '2017-12-26 16:13:41'),
(119, 'Evil Rick', 'Dead', 'Humanoid', 'Robot', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/119.jpeg', '2017-12-26 16:17:16'),
(120, 'Evil Summer Clone', 'Dead', 'Human', 'Clone', 'Female', 'unknown', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/120.jpeg', '2017-12-26 16:24:02'),
(121, 'Eyehole Man', 'Alive', 'Alien', '', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/121.jpeg', '2017-12-26 16:41:58'),
(122, 'Fart', 'Dead', 'Alien', 'Interdimensional gaseous being', 'Male', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/122.jpeg', '2017-12-26 17:19:40'),
(123, 'Fat Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/123.jpeg', '2017-12-26 17:22:40'),
(124, 'Father Bob', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/124.jpeg', '2017-12-26 17:31:29'),
(125, 'Flansian', 'Alive', 'Alien', 'Flansian', 'unknown', 'unknown', 'Planet Squanch', 'https://rickandmortyapi.com/api/character/avatar/125.jpeg', '2017-12-26 17:43:58'),
(126, 'Fleeb', 'unknown', 'Alien', '', 'unknown', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/126.jpeg', '2017-12-26 18:45:42'),
(127, 'Frank Palicky', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/127.jpeg', '2017-12-26 19:22:48'),
(128, 'Frankenstein\'s Monster', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/128.jpeg', '2017-12-26 19:24:56'),
(129, 'Fulgora', 'Alive', 'Human', '', 'Female', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/129.jpeg', '2017-12-26 19:30:02'),
(130, 'Galactic Federation President', 'Dead', 'Alien', 'Gromflomite', 'Male', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/130.jpeg', '2017-12-26 19:49:41'),
(131, 'Gar Gloonch', 'Dead', 'Alien', 'Zombodian', 'Male', 'unknown', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/131.jpeg', '2017-12-26 19:54:43'),
(132, 'Gar\'s Mytholog', 'Dead', 'Mythological Creature', 'Mytholog', 'Male', 'Nuptia 4', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/132.jpeg', '2017-12-26 20:02:38'),
(133, 'Garblovian', 'Alive', 'Alien', 'Garblovian', 'Male', 'Glaagablaaga', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/133.jpeg', '2017-12-26 20:30:45'),
(134, 'Garmanarnar', 'Alive', 'Alien', '', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/134.jpeg', '2017-12-26 20:36:54'),
(135, 'Garment District Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/135.jpeg', '2017-12-26 20:51:43'),
(136, 'Gazorpazorpfield', 'Alive', 'Alien', 'Gazorpian', 'Male', 'Gazorpazorp', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/136.jpeg', '2017-12-27 17:59:59'),
(137, 'Gene', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/137.jpeg', '2017-12-27 18:14:57'),
(138, 'General Nathan', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/138.jpeg', '2017-12-27 18:22:18'),
(139, 'General Store Owner', 'Dead', 'Alien', 'Cat-Person', 'Male', 'Purge Planet', 'Purge Planet', 'https://rickandmortyapi.com/api/character/avatar/139.jpeg', '2017-12-27 18:41:03'),
(140, 'Genital Washer', 'Alive', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/140.jpeg', '2017-12-27 18:47:44'),
(141, 'Ghost in a Jar', 'Dead', 'Alien', 'Parasite', 'Genderless', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/141.jpeg', '2017-12-27 19:14:14'),
(142, 'Gibble Snake', 'Dead', 'Alien', 'Animal', 'unknown', 'Resort Planet', 'Resort Planet', 'https://rickandmortyapi.com/api/character/avatar/142.jpeg', '2017-12-27 20:16:32'),
(143, 'Glasses Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'Citadel of Ricks', 'https://rickandmortyapi.com/api/character/avatar/143.jpeg', '2017-12-27 20:37:26'),
(144, 'Glenn', 'Dead', 'Alien', 'Gromflomite', 'Male', 'unknown', 'Interdimensional Customs', 'https://rickandmortyapi.com/api/character/avatar/144.jpeg', '2017-12-29 10:37:48'),
(145, 'Glenn', 'Alive', 'Human', 'Eat shiter-Person', 'Male', 'unknown', 'Interdimensional Cable', 'https://rickandmortyapi.com/api/character/avatar/145.jpeg', '2017-12-29 11:03:43'),
(146, 'Glexo Slim Slom', 'Alive', 'Alien', '', 'Male', 'unknown', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/146.jpeg', '2017-12-29 11:28:29'),
(147, 'Gobo', 'Dead', 'Alien', '', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/147.jpeg', '2017-12-29 11:38:29'),
(148, 'Goddess Beth', 'unknown', 'Mythological Creature', 'Goddess', 'Female', 'Nuptia 4', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/148.jpeg', '2017-12-29 11:40:25'),
(149, 'Gordon Lunas', 'Dead', 'Human', '', 'Male', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/149.jpeg', '2017-12-29 11:44:00'),
(150, 'Cornvelious Daniel', 'Dead', 'Alien', 'Gromflomite', 'Male', 'unknown', 'Galactic Federation Prison', 'https://rickandmortyapi.com/api/character/avatar/150.jpeg', '2017-12-29 12:02:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
