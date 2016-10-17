-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Verze serveru: 5.6.11
-- Verze PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `bazar`
--
CREATE DATABASE IF NOT EXISTS `bazar` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `bazar`;

-- --------------------------------------------------------

--
-- Struktura tabulky `inzeraty`
--

CREATE TABLE IF NOT EXISTS `inzeraty` (
  `jmeno` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `kniha` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=7 ;

--
-- Vypisuji data pro tabulku `inzeraty`
--

INSERT INTO `inzeraty` (`jmeno`, `email`, `cena`, `kniha`, `id`) VALUES
('jaroslav', 'j@reh.cz', 2500, 'Pán prstenů. Společenstvo prstenu', 1),
('Honza', 'Jan@ben.cz', 6500, 'Macbeth', 2),
('Michal', 'misak.s@gmail.com', 320, 'Dobrodružství Toma Sawyera', 3),
('Tomas', 'tom@tom.com', 475, 'Román pro ženy', 4),
('Jaroslav Řehák', 'RehakJ@seznam.cz', 1200, 'Lovci mamutů', 5),
('Petra', 'p@p.cz', 1400, 'Sága rodu Forsytů', 6);

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE IF NOT EXISTS `knihy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `nazev` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `vydavatelstvi` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `rok` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=9 ;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id`, `autor`, `nazev`, `vydavatelstvi`, `rok`) VALUES
(1, 'John Galsworthy', 'Sága rodu Forsytů', 'Allegro', 1992),
(2, 'Jan Amos Komenský', 'Labyrint světa a ráj srdce', 'Naše vítězství', 1928),
(3, 'Mark Twain', 'Dobrodružství Toma Sawyera', 'BB art', 1999),
(4, 'Eduard Štorch', 'Lovci mamutů', 'SNDK', 1951),
(5, 'William Shakespeare', 'Macbeth', 'Atlantis', 2008),
(6, 'J. R. R. Tolkien', 'Pán prstenů. Společenstvo prstenu', 'Argo', 2012),
(7, 'Michal Viewegh', 'Román pro ženy', 'Petrov', 2001),
(8, 'J. K. Rowling', 'Harry potter a princ dvojí krve', 'Albatros', 2005);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
