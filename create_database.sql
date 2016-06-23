-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 jun 2016 om 09:53
-- Serverversie: 5.7.11
-- PHP-versie: 5.5.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avontuur_simpel`
--
DROP DATABASE `avontuur_simpel`;
CREATE DATABASE IF NOT EXISTS `avontuur_simpel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `avontuur_simpel`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `choices`
--

DROP TABLE IF EXISTS `choices`;
CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `choices`
--

INSERT INTO `choices` (`id`, `from_id`, `to_id`, `title`) VALUES
(1, 1, 2, 'Ga naar het oosten van de stad'),
(2, 2, 1, 'Ga terug naar het begin'),
(3, 1, 3, 'Loop naar het noorden.'),
(4, 3, 2, 'Loop naar het oosten van de stad.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `locations`
--

INSERT INTO `locations` (`id`, `title`, `image`, `description`) VALUES
(1, 'Start', 'http://www.adventuregamestudio.co.uk/images/games/905.jpg', 'Je bent gestart met een nieuw spel.'),
(2, 'Het oosten van de stad', 'http://www.adventurelantern.com/previews/twokingdoms/1.jpg', 'Je ziet een groep tenten.'),
(3, 'Het noorden van de stad', 'http://www.hardcoregaming101.net/500wordindies/ataleoftwokingdoms-04.png', 'Je ziet de chief ogre van het dorp.');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
