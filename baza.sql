-- MÓJ PLIK
-- USE DATABASE komis
-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 16 Maj 2017, 09:05
-- Wersja serwera: 5.6.21
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Baza danych: `komis`
--
-- --------------------------------------------------------
--
-- Struktura tabeli dla tabeli `samochody`
--
CREATE TABLE IF NOT EXISTS `samochody` (
`id` int(5) NOT NULL,
  `marka` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `rocznik` year(4) NOT NULL,
  `kolor` varchar(20) NOT NULL,
  `stan` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
--
-- Zrzut danych tabeli `samochody`
--
INSERT INTO `samochody` (`id`, `marka`, `model`, `rocznik`, `kolor`, `stan`) VALUES
(1, 'Fiat', 'Punto', 2016, 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', 2002, 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', 2007, 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', 2016, 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', 2003, 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', 2016, 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', 2014, 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', 2004, 'granatowy', 'dobry');
-- --------------------------------------------------------
--
-- Struktura tabeli dla tabeli `zamowienia`
--
CREATE TABLE IF NOT EXISTS `zamowienia` (
`id` int(5) NOT NULL,
  `samochody_id` int(5) NOT NULL,
  `klient` varchar(30) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `datazam` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
--
-- Zrzut danych tabeli `zamowienia`
--
INSERT INTO `zamowienia` (`id`, `samochody_id`, `klient`, `telefon`, `datazam`) VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');
--
-- Indeksy dla zrzutów tabel
--
--
-- Indexes for table `samochody`
--
ALTER TABLE `samochody`
 ADD PRIMARY KEY (`id`);
--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
 ADD PRIMARY KEY (`id`), ADD KEY `zamowienia_ibfk_1` (`samochody_id`);
--
-- AUTO_INCREMENT for dumped tables
--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ograniczenia dla zrzutów tabel
--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`samochody_id`) REFERENCES `samochody` (`id`);

