-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Dez 2016 um 12:51
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `wortschatz`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `grundform`
--

CREATE TABLE `grundform` (
  `id` int(11) NOT NULL,
  `bereich` int(11) NOT NULL,
  `k_grundform` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `k_wortart` int(11) NOT NULL,
  `k_genus` int(11) NOT NULL,
  `k_ipa` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `k_beispiel` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `k_synonym` text NOT NULL,
  `d_grundform` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `d_wortart` int(11) NOT NULL,
  `d_genus` int(11) NOT NULL,
  `d_ipa` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `d_beispiel` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `d_synonym` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `grundform`
--

INSERT INTO `grundform` (`id`, `bereich`, `k_grundform`, `k_wortart`, `k_genus`, `k_ipa`, `k_beispiel`, `k_synonym`, `d_grundform`, `d_wortart`, `d_genus`, `d_ipa`, `d_beispiel`, `d_synonym`) VALUES
(1, 1, 'escola', 1, 2, 'əsˈkɔɫə\r\n', 'Al centre hi ha una escola primària.', '', 'Schule', 1, 2, 'ˈʃuːlə', 'Im Zentrum gibt es eine Grundschule.', ''),
(2, 1, 'l’alumne, l’alumna', 1, 4, 'əˈɫumnə, əˈɫumnə', 'És una classe de 23 alumnes.', '', 'der Schüler, die Schülerin', 1, 4, 'ˈʃyːlɐ, ˈʃyːləʁɪn', '23 Schüler gehören zur Klasse.', ''),
(3, 1, 'el professor, la professora', 1, 4, 'pɾufəˈso, pɾufəˈsoɾə', 'La senyora Vogt és la nostra professora d’alemany.', '', 'der Lehrer, die Lehrerin', 1, 4, 'ˈleːʁɐ, ˈleːʁəʁɪn', 'Frau Vogt ist unsere Deutschlehrerin.', ''),
(4, 1, 'estudiar', 3, 100, 'əstuðiˈa', 'Hem estudiat castellà.', '', 'lernen', 3, 100, 'ˈlɛʁnən', 'Wir haben Spanisch gelernt.', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wliste`
--

CREATE TABLE `wliste` (
  `id` int(11) NOT NULL,
  `bereich` varchar(3) COLLATE utf8_bin NOT NULL,
  `k_vorfeld` text COLLATE utf8_bin NOT NULL,
  `k_wort` text COLLATE utf8_bin NOT NULL,
  `k_nachfeld` text COLLATE utf8_bin NOT NULL,
  `k_ipa` text COLLATE utf8_bin NOT NULL,
  `k_wortart` varchar(3) COLLATE utf8_bin NOT NULL,
  `k_kommentar` text COLLATE utf8_bin NOT NULL,
  `d_vorfeld` text COLLATE utf8_bin NOT NULL,
  `d_wort` text COLLATE utf8_bin NOT NULL,
  `d_nachfeld` text COLLATE utf8_bin NOT NULL,
  `d_ipa` text COLLATE utf8_bin NOT NULL,
  `d_wortart` varchar(3) COLLATE utf8_bin NOT NULL,
  `d_kommentar` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `wliste`
--

INSERT INTO `wliste` (`id`, `bereich`, `k_vorfeld`, `k_wort`, `k_nachfeld`, `k_ipa`, `k_wortart`, `k_kommentar`, `d_vorfeld`, `d_wort`, `d_nachfeld`, `d_ipa`, `d_wortart`, `d_kommentar`) VALUES
(1, 'edu', 'l’', 'escola', '', 'əsˈkɔɫə', '1', '', 'die', 'Schule', '', 'ˈʃuːlə', '1', ''),
(2, 'edu', 'la', 'universitat', '', 'uniβəɾsiˈtat', '1', '', 'die', 'Universität', '', 'ʔunivɛɐ̯ziˈtɛːt', '1', ''),
(3, 'edu', 'el', 'professor', '', 'pɾufəˈso', '1', '', 'der', 'Lehrer', '', 'ˈleːʁɐ', '1', ''),
(4, 'edu', '', 'fer', 'classe', 'ˈfe ˈkɫasə', '3', '', '', 'unterrichten', '', 'ʊntɐˈʀɪçtn̩', '3', ''),
(5, 'edu', 'les', 'vacances', '', 'bəˈkansəs', '1', '', 'die', 'Ferien', '', 'ˈfeːʀi̯ən', '1', ''),
(6, 'cal', 'el', 'calendari', '', 'kəɫənˈdaɾi', '1', '', 'der', 'Kalender', '', '', '1', ''),
(7, 'cal', 'la', 'setmana', '', 'səmˈmanə', '1', '', 'die', 'Woche', '', '', '1', ''),
(8, 'edu', '', 'estudiar', 'ac.', 'əstuðiˈa', '3', '', 'etw.', 'lernen', '', '', '3', ''),
(9, 'rel', '', 'שלום', '', 'shalom', '1', '', 'der', 'Frieden', '', '', '1', ''),
(10, 'rel', '', 'cristià', '', 'kɾistiˈa', '2', '', '', 'christlich', '', '', '3', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wverb`
--

CREATE TABLE `wverb` (
  `id` int(11) NOT NULL,
  `reihe` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `infinitiv` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parti_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parti_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parti_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parti_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gerundi` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `futcon` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pres_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pres_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pres_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pres_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pres_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pres_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imp_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imp_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imp_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imp_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imp_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imp_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pret_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pret_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pret_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pret_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pret_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pret_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fut_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fut_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fut_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fut_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fut_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fut_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spres_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spres_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spres_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spres_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spres_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `spres_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `simp_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `simp_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `simp_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `simp_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `simp_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `simp_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `impa_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `impa_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `impa_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `impa_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `impa_6` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `wverb`
--

INSERT INTO `wverb` (`id`, `reihe`, `infinitiv`, `parti_1`, `parti_2`, `parti_3`, `parti_4`, `gerundi`, `futcon`, `pres_1`, `pres_2`, `pres_3`, `pres_4`, `pres_5`, `pres_6`, `imp_1`, `imp_2`, `imp_3`, `imp_4`, `imp_5`, `imp_6`, `pret_1`, `pret_2`, `pret_3`, `pret_4`, `pret_5`, `pret_6`, `fut_1`, `fut_2`, `fut_3`, `fut_4`, `fut_5`, `fut_6`, `con_1`, `con_2`, `con_3`, `con_4`, `con_5`, `con_6`, `spres_1`, `spres_2`, `spres_3`, `spres_4`, `spres_5`, `spres_6`, `simp_1`, `simp_2`, `simp_3`, `simp_4`, `simp_5`, `simp_6`, `impa_2`, `impa_3`, `impa_4`, `impa_5`, `impa_6`) VALUES
(1, 'er', 'fer', 'fet', 'fets', 'feta', 'fetes', 'fent', 'far', 'faig', 'fas', 'fa', 'fem', 'feu', 'fan', 'feia', 'feies', 'feia', 'fèiem', 'fèieu', 'feien', 'fiu', 'feres', 'féu', 'férem', 'féreu', 'feren', 'faré', 'faràs', 'farà', 'farem', 'fareu', 'faran', 'faria', 'faries', 'faria', 'faríem', 'faríeu', 'farien', 'faci', 'facis', 'faci', 'fem', 'feu', 'facin', 'fes', 'fessis', 'fes', 'féssim', 'féssiu', 'fessin', 'fes', 'faci', 'fem', 'feu', 'facin');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `grundform`
--
ALTER TABLE `grundform`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `wliste`
--
ALTER TABLE `wliste`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `wverb`
--
ALTER TABLE `wverb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `grundform`
--
ALTER TABLE `grundform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `wliste`
--
ALTER TABLE `wliste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `wverb`
--
ALTER TABLE `wverb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
