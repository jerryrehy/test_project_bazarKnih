-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vygenerováno: Úte 01. čec 2014, 19:46
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

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE IF NOT EXISTS `knihy` (
  `autor` varchar(50) COLLATE cp1250_czech_cs NOT NULL,
  `nazev` varchar(50) COLLATE cp1250_czech_cs NOT NULL,
  `vydavatelstvi` varchar(50) COLLATE cp1250_czech_cs NOT NULL,
  `rok` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`autor`, `nazev`, `vydavatelstvi`, `rok`) VALUES
('John Galsworthy', 'Sága rodu Forsytů', 'Odeon', 1988),
('Jan Amos Komenský', 'Labyrint života a ráj srdce', 'Odeon', 1965),
('Mark Twain', 'Dobrodružství Toma Sawyera', 'Albatros', 1995),
('Eduard Štorch', 'Lovci mamutů', 'Albatros', 1977),
('Oscar Wilde', 'Jméno růže', 'Odeon', 2000),
('J. R. R. Tolkien', 'Pán prstenů', 'Albatros', 1975),
('Michal Viewegh', 'Román pro ženy', 'Odeon', 2002),
('Kate Rowling', 'Harry potter a princ dvojí krve', 'Albatros', 2005);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
