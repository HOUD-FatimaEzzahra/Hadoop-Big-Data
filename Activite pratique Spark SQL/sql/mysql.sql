-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : lun. 03 avr. 2023 à 21:09
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `auto_plus`
--
CREATE DATABASE IF NOT EXISTS `auto_plus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `auto_plus`;

-- --------------------------------------------------------

--
-- Structure de la table `candidat_table`
--

CREATE TABLE `candidat_table` (
  `cin` int NOT NULL,
  `nomc` varchar(50) DEFAULT NULL,
  `prenomc` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sexe` varchar(50) DEFAULT NULL,
  `gsm` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `etatcd` varchar(20) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `typeiscri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `candidat_table`
--

INSERT INTO `candidat_table` (`cin`, `nomc`, `prenomc`, `date_naissance`, `age`, `sexe`, `gsm`, `adresse`, `date_inscription`, `etatcd`, `image`, `typeiscri`) VALUES
(1, 'belmed', 'eded', '2010-08-04', 6, 'Masculin', '12', 'jjjjj', '2016-05-02', 'Actif', 'C:\\xamp\\htdocs\\img\\belmed_tn.png', 'A'),
(3, 'houcine', 'hassan', '1970-05-02', 46, 'Masculin', '5', 'tn', '2016-05-12', 'Actif', 'C:\\xamp\\htdocs\\img\\houcine_tn.jpg', 'B'),
(4, 'med ', 'mabrouk', '2010-01-30', 6, 'Masculin', '11', 'hjk', '2016-02-29', 'Archive', 'C:\\Users\\anouer\\Documents\\AutoplusJframe.png', ''),
(5, 'mouhamed', 'felhi', '2002-03-13', 14, 'Masculin', '5', 'k', '2016-03-02', 'Actif', NULL, ''),
(6, 'ali', 'benali', '2011-02-01', 5, 'Féminin', '55', 'jk', '2016-02-29', 'Actif', '', 'D1'),
(7, 'ali', 'ali2', '2010-02-01', 6, 'Masculin', '4', 'gafsa', '2016-02-29', 'Actif', '', 'C+E'),
(8, 'mariem', 'tounssi', '1994-05-02', 22, 'Féminin', '55996369', 'Gafsa', '2016-03-09', 'Actif', 'C:\\xamp\\htdocs\\img\\mariem_tn.png', 'A'),
(9, 'h1', 'h1', '1952-05-03', 64, 'Masculin', '25', 'hg', '2016-04-26', 'Actif', '', 'A'),
(10, 'azedert', 'azedzert', '2000-03-11', 16, 'Masculin', '41', 'ghjk', '2016-03-03', 'Actif', NULL, ''),
(11, 'zedsds', 'sdsdss', '2015-05-07', 1, 'Masculin', '2', 'ded', '2016-05-02', 'Actif', 'C:\\Users\\anouer\\Desktop\\Auto Plus\\steven_wells100x100.jpg', 'B'),
(12, 'afef', 'afef', '1987-05-16', 29, 'Féminin', '55555', 'maroco', '2016-05-15', 'Actif', '', 'A'),
(15, 'foufa', 'foufa', '1975-07-30', 41, 'Féminin', '155151', 'sasasasasas', '2016-05-30', 'Actif', '', 'A'),
(16, 'mech', 'mech', '2003-05-10', 13, 'Féminin', '8523', 'tn', '2016-05-31', 'Actif', 'C:\\Users\\anouer\\Desktop\\Download\\pp.png', 'B+E'),
(22, 'ahmed', 'ahmed', '2000-03-05', 16, 'Masculin', '52892', 'gafsatn', '2016-03-10', 'Actif', NULL, ''),
(45, 'anwer', 'anwer', '1984-03-30', 32, 'Masculin', '21', 'j', '2016-03-03', 'Actif', NULL, ''),
(120, 'azed', 'azed', '2012-02-04', 4, 'Féminin', '2', '5h', '2016-03-01', 'Actif', NULL, ''),
(201, 'ahmed', 'ahmed', '1993-03-12', 23, 'Masculin', '45', 'sdfghj', '2016-03-03', NULL, NULL, ''),
(250, 'aqs', 'aqs', '2016-04-02', 0, 'Masculin', '25', 'gafsa', '2016-01-04', 'Actif', NULL, ''),
(333, '7afouthi', '7afouth', '1993-04-03', 23, 'Masculin', '25566', 'sdfghj', '2016-04-28', 'Actif', '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0V\0\0\0\0\0\0@\\«•\0\0\0tEXtSoftware\0Adobe ImageReadyqÉe<\0\0qiTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"A', ''),
(1200, 'ali', 'ajki', '2016-03-05', 2, 'Masculin', '22', 'nddvdfv', '2016-03-02', NULL, '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Œ\0\0\0Œ\0\0\0™±\0\0\0tEXtSoftware\0Adobe ImageReadyqÉe<\0\0!iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"A', ''),
(1202, 'ali', 'ali', '2000-03-04', 16, 'Féminin', '52', 'tn', '2016-03-31', 'Actif', NULL, ''),
(2512, '22', 'lll', '2016-04-10', 0, 'Féminin', '5', 'lll', '2016-01-04', 'Actif', NULL, ''),
(10010, 'lol', 'l', '2016-03-12', 0, 'Masculin', '52', 'tn', '2016-03-09', 'Archive', NULL, ''),
(88888, 'akermi', 'afef', '1985-04-19', 31, 'Féminin', '5285285', 'gafsa', '2016-05-08', 'Actif', '', ''),
(125454, 'rim', 'rim', '1990-02-08', 26, 'Féminin', '555588', 'tn', '2016-06-10', 'Actif', 'C:\\Users\\anouer\\Desktop\\rim_tn.png', 'A'),
(76666666, 'sami', 'yahya', '1985-01-02', 31, 'Masculin', '56231564', 'gafsa centre', '2016-06-01', 'Actif', 'C:\\xamp\\htdocs\\img\\sami_tn.png', 'A');

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

CREATE TABLE `contrat` (
  `idctr` int NOT NULL,
  `cinctr` int NOT NULL,
  `datdbctr` date NOT NULL,
  `datfinctr` date NOT NULL,
  `montantctr` int NOT NULL,
  `nbrheure` int NOT NULL,
  `nbrexamen` int NOT NULL,
  `catpermis` varchar(50) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `typectr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`idctr`, `cinctr`, `datdbctr`, `datfinctr`, `montantctr`, `nbrheure`, `nbrexamen`, `catpermis`, `etat`, `typectr`) VALUES
(9, 1, '2018-05-19', '2018-05-08', 554, 552, 6, 'B', 'Archive', 'Conduite'),
(12, 3, '2016-05-01', '2016-05-08', 500, 2, 2, 'B', 'Actif', 'Conduite'),
(14, 3, '2016-05-08', '2016-05-08', 500, 1, 2, 'A', 'Actif', 'Conduite'),
(16, 3, '2016-05-08', '2016-05-14', 6000, 22, 2, 'B', 'Archive', 'Code'),
(17, 12, '2016-05-15', '2016-05-15', 650, 20, 2, 'c', 'Actif', 'Conduite'),
(18, 12, '2016-05-15', '2016-05-15', 500, 20, 2, 'A', 'Archive', 'Conduite'),
(19, 12, '2016-05-15', '2016-05-07', 230, 5, 2, 'A', 'Actif', 'Conduite'),
(20, 12, '2016-05-15', '2016-05-01', 600, 20, 2, 'A', 'Actif', 'Code'),
(21, 1, '2016-05-07', '2017-05-22', 600, 23, 1, 'A', 'Actif', 'Code'),
(22, 1, '2016-05-01', '2016-05-08', 150, 15, 12, 'B', 'Actif', 'Code'),
(23, 8, '2016-05-27', '2016-05-07', 520, 20, 4, 'A', 'Actif', 'Conduite'),
(24, 1, '2016-05-06', '2016-05-12', 500, 20, 6, 'A', 'Actif', 'Conduite'),
(25, 1, '2016-05-12', '2016-05-18', 500, 17, 3, 'B', 'Archive', 'Code'),
(26, 76666666, '2016-06-01', '2017-06-01', 500, 20, 5, 'A', 'Actif', 'Conduite'),
(27, 76666666, '2016-06-01', '2017-06-01', 500, 15, 20, 'A', 'Actif', 'Code'),
(28, 4, '2016-06-10', '2017-06-10', 650, 20, 6, '', 'Actif', 'Code'),
(29, 4, '2016-06-10', '2016-06-10', 300, 3, 2, '', 'Actif', 'Conduite');

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `iddep` int NOT NULL,
  `date_dep` date NOT NULL,
  `type_dep` varchar(70) NOT NULL,
  `libelle` varchar(70) DEFAULT NULL,
  `aqui` varchar(70) DEFAULT NULL,
  `montant_dep` int NOT NULL,
  `description` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `depenses`
--

INSERT INTO `depenses` (`iddep`, `date_dep`, `type_dep`, `libelle`, `aqui`, `montant_dep`, `description`) VALUES
(2, '2013-05-30', 'Ecole', 'assurance', 'voiture dacia', 10, '5 eme vidange \n'),
(3, '2016-05-30', 'Vehicule', 'accedent', 'voiture 2', 520, '1 ere accedent'),
(6, '2016-05-31', 'Personnel', 'salaire', 'moniteur a', 500, ''),
(8, '2016-05-31', 'Personnel', 'montant', 'moniteur de code', 500, 'montant'),
(9, '2016-06-01', 'Personnel', 'salaire', 'moniteur de code', 550, 'salaire '),
(10, '2016-06-10', 'Personnel', 'salaire', 'formateur de code', 500, 'salaire');

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

CREATE TABLE `examen` (
  `idex` int NOT NULL,
  `dateex` date NOT NULL,
  `hdbex` int NOT NULL,
  `hfnex` int NOT NULL,
  `typeexamen` varchar(50) NOT NULL,
  `typepermis` varchar(50) NOT NULL,
  `mtex` float NOT NULL,
  `cincand` int NOT NULL,
  `cinmonite` int DEFAULT NULL,
  `numve` int DEFAULT NULL,
  `idlec` int NOT NULL,
  `etatex` varchar(50) NOT NULL,
  `comexamen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `examen`
--

INSERT INTO `examen` (`idex`, `dateex`, `hdbex`, `hfnex`, `typeexamen`, `typepermis`, `mtex`, `cincand`, `cinmonite`, `numve`, `idlec`, `etatex`, `comexamen`) VALUES
(21, '2016-05-31', 7, 8, 'ExamenCode', 'A', 35, 1, 12345, NULL, 13, 'Admis', NULL),
(29, '2016-06-01', 7, 8, 'ExamenCode', 'A', 35, 76666666, 12345, NULL, 18, 'Admis', NULL),
(30, '2016-06-01', 7, 8, 'ExamenConduite', 'A', 70, 76666666, 1236, 122, 19, 'Admis', NULL),
(31, '2016-06-10', 15, 16, 'ExamenCode', 'A', 35, 125454, 12345, NULL, 18, 'Admis', NULL),
(32, '2016-06-10', 15, 16, 'ExamenConduite', 'A', 70, 125454, 1236, 122, 19, 'Refuser', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lecon`
--

CREATE TABLE `lecon` (
  `idlecon` int NOT NULL,
  `Categoriepermis` varchar(50) DEFAULT NULL,
  `type_lec` varchar(50) DEFAULT NULL,
  `mt_lec` int DEFAULT NULL,
  `description_lec` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lecon`
--

INSERT INTO `lecon` (`idlecon`, `Categoriepermis`, `type_lec`, `mt_lec`, `description_lec`) VALUES
(1, 'A', 'Conduite', 20, 'Sans remize'),
(2, 'A', 'Code', 10, 'Sans remize'),
(3, 'A', 'Code', 0, 'Contrat '),
(4, 'A', 'Conduite', 0, 'Contrat'),
(7, 'B', 'Conduite', 20, 'Sans remise'),
(8, 'B', 'Code', 10, 'Sans remise'),
(9, 'A', 'Code', 35, 'Examen de code de \nla route'),
(10, 'A', 'Code', 360, '2'),
(11, 'c', 'Code', 80, 'sans'),
(12, 'B', 'ExamenConduite', 70, 'sansremise'),
(13, 'B', 'ExamenCode', 35, 'sans remise'),
(14, 'B', 'Code', 0, 'contrat'),
(15, 'B', 'Code', 15, 'sans remise'),
(16, 'B', 'Conduite', 0, 'contrat'),
(17, 'B', 'Conduite', 20, 'sans remise'),
(18, 'A', 'ExamenCode', 35, ''),
(19, 'A', 'ExamenConduite', 70, '');

-- --------------------------------------------------------

--
-- Structure de la table `login_table`
--

CREATE TABLE `login_table` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `sexe` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `cin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login_table`
--

INSERT INTO `login_table` (`login`, `password`, `nom`, `prenom`, `type`, `sexe`, `tel`, `image`, `cin`) VALUES
('', '', 'Fatema', 'Ftema', 'Secrétaire', 'Masculin', '2222', '', '888'),
('22', '22', '8', '8', 'Adminstrateur', 'Masculin', '2222', '', '888'),
('admin', 'admin', 'mouhamed', 'trabelessi', 'Adminstrateur', 'Féminin', '5252', '', '22'),
('bnnb', '', 'sdn', 'cvbn,', 'Secrétaire', 'Féminin', '', '', '886'),
('refreferf', 'refreferfer', 'refre', 'refref', 'Secrétaire', 'Féminin', 'refrefrf', '', '12121'),
('sect', 'sect', 'hayefa', 'ben ali', 'Secrétaire', 'Féminin', '2882', 'C:\\xamp\\htdocs\\pics\\amy_jones.jpg', '88'),
('sqs', 'sqsq', 'ferfref', 'referfreferf', 'Adminstrateur', 'Masculin', '52', '', '82');

-- --------------------------------------------------------

--
-- Structure de la table `moniteur`
--

CREATE TABLE `moniteur` (
  `cinmoni` int NOT NULL,
  `nom_moni` varchar(50) DEFAULT NULL,
  `prenom_moni` varchar(50) DEFAULT NULL,
  `date_naissmoni` date DEFAULT NULL,
  `sexe` varchar(20) DEFAULT NULL,
  `adresse_moni` varchar(100) DEFAULT NULL,
  `tel1` varchar(25) DEFAULT NULL,
  `tel2` varchar(25) DEFAULT NULL,
  `poste_moni` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `moniteur`
--

INSERT INTO `moniteur` (`cinmoni`, `nom_moni`, `prenom_moni`, `date_naissmoni`, `sexe`, `adresse_moni`, `tel1`, `tel2`, `poste_moni`, `image`) VALUES
(1236, 'ahk', 'ahk', '2001-02-23', 'Masculin', 'gafsatn', '5212', '225522', 'Conduite', 'C:\\Users\\anouer\\Desktop\\Auto Plus\\dg.png'),
(8520, 'zed', 'zed', '2010-02-02', 'Masculin', 'fr1', '52', '852', 'Conduite', 'C:\\Users\\anouer\\Documents\\AutoplusJframe.png'),
(12345, 'med', 'ali', '1975-03-01', 'Féminin', 'tnga', '5252', '2323', 'Code', 'C:\\Users\\anouer\\Documents\\AutoplusJframe.png'),
(999999, 'mabrouk', 'mabrouk', '2016-05-04', 'Masculin', 'gafsa', '852', '', 'Conduite', '');

-- --------------------------------------------------------

--
-- Structure de la table `parametre`
--

CREATE TABLE `parametre` (
  `idar` int NOT NULL,
  `nom_auto` varchar(50) NOT NULL,
  `propretaire_auto` varchar(50) NOT NULL,
  `adresse_auto` varchar(50) NOT NULL,
  `ville_auto` varchar(50) NOT NULL,
  `codepostal` varchar(50) NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `telfixe` varchar(50) DEFAULT NULL,
  `telportable` varchar(50) DEFAULT NULL,
  `identifientfiscal` varchar(50) DEFAULT NULL,
  `code_auto` varchar(50) DEFAULT NULL,
  `date_ouverture` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parametre`
--

INSERT INTO `parametre` (`idar`, `nom_auto`, `propretaire_auto`, `adresse_auto`, `ville_auto`, `codepostal`, `mail`, `telfixe`, `telportable`, `identifientfiscal`, `code_auto`, `date_ouverture`) VALUES
(1, 'ALEmmetiaz', 'Yahya Ramzi', 'Mawala', 'gafsa centre ', '2100', '0', '36169555', '26262626', '1212', '1255', '2009-02-01');

-- --------------------------------------------------------

--
-- Structure de la table `regelement`
--

CREATE TABLE `regelement` (
  `idreg` int NOT NULL,
  `cinct` int NOT NULL,
  `datereg` date NOT NULL,
  `mtreg` int NOT NULL,
  `mode` varchar(50) NOT NULL,
  `numche` varchar(50) DEFAULT NULL,
  `typesp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `regelement`
--

INSERT INTO `regelement` (`idreg`, `cinct`, `datereg`, `mtreg`, `mode`, `numche`, `typesp`) VALUES
(2, 8, '2016-05-07', 80650, 'Espces', '', NULL),
(3, 4, '2016-05-08', 600, 'Espces', '', NULL),
(7, 9, '2016-05-31', 5000, 'Chéque', 'rdfvgbyhunj,i', NULL),
(12, 76666666, '2016-06-01', 1000, 'Espces', '', 'A'),
(13, 76666666, '2016-06-01', 105, 'Chéque', '5555555', 'A');

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `ids` int NOT NULL,
  `date_sean` date DEFAULT NULL,
  `heure_db` int DEFAULT NULL,
  `heure_fin` int DEFAULT NULL,
  `duree_sean` int DEFAULT NULL,
  `type_sean` varchar(50) NOT NULL,
  `cinc` int NOT NULL,
  `cinmoni` int NOT NULL,
  `numv` int DEFAULT NULL,
  `idlecon` int NOT NULL,
  `typepermis` varchar(50) DEFAULT NULL,
  `mtsean` float NOT NULL,
  `parcking` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `seance`
--

INSERT INTO `seance` (`ids`, `date_sean`, `heure_db`, `heure_fin`, `duree_sean`, `type_sean`, `cinc`, `cinmoni`, `numv`, `idlecon`, `typepermis`, `mtsean`, `parcking`) VALUES
(9, '2016-05-01', 7, 8, 1, 'Conduite', 22, 1236, 122, 3, 'A', 0, ''),
(11, '2016-05-01', 7, 8, 1, 'Conduite', 5, 1236, 122, 1, 'A', 20000, ''),
(12, '2016-05-29', 7, 8, 1, 'Conduite', 5, 1236, 122, 1, 'A', 20000, ''),
(14, '2016-05-15', 7, 23, 16, 'Code', 6, 12345, NULL, 2, 'A', 160000, ''),
(15, '2016-05-15', 7, 23, 16, 'Code', 6, 12345, NULL, 2, 'A', 160000, ''),
(16, '2016-05-15', 7, 23, 16, 'Code', 6, 12345, NULL, 2, 'A', 160000, ''),
(17, '2016-05-15', 7, 23, 16, 'Code', 6, 12345, NULL, 2, 'A', 160000, ''),
(18, '2016-05-15', 7, 23, 16, 'Code', 6, 12345, NULL, 2, 'A', 160000, ''),
(20, '2016-05-01', 7, 8, 1, 'Code', 12, 12345, NULL, 8, 'A', 10, ''),
(23, '2016-05-08', 7, 8, 1, 'Code', 9, 12345, NULL, 2, 'A', 10000, ''),
(34, '2016-06-02', 11, 12, 1, 'Conduite', 8, 1236, 122, 1, 'A', 20, ''),
(35, '2016-05-08', 7, 8, 1, 'Code', 12, 12345, NULL, 2, 'B', 10000, ''),
(36, '2016-05-01', 7, 8, 1, 'Code', 3, 12345, NULL, 8, 'B', 10, ''),
(37, '2016-05-08', 7, 8, 1, 'Code', 8, 12345, NULL, 2, 'b', 10, ''),
(38, '2016-05-07', 7, 8, 1, 'Conduite', 1, 999999, 158, 1, 'A', 20, ''),
(39, '2016-05-29', 7, 13, 6, 'Conduite', 1, 999999, 158, 1, 'A', 120, ''),
(40, '2016-05-01', 7, 8, 1, 'Conduite', 1, 1236, 122, 1, 'A', 20, 'parcking'),
(42, '2016-05-30', 7, 8, 1, 'Code', 3, 12345, NULL, 8, 'B', 10, ''),
(44, '2016-05-31', 7, 8, 1, 'Code', 3, 12345, NULL, 8, 'B', 10, ''),
(45, '2016-05-29', 7, 8, 1, 'Code', 1, 12345, NULL, 2, 'A', 10, ''),
(46, '2016-06-30', 7, 8, 1, 'Code', 1, 12345, NULL, 8, 'B', 10, ''),
(49, '2016-06-01', 7, 8, 1, 'Code', 76666666, 12345, NULL, 3, 'A', 0, ''),
(50, '2016-06-01', 7, 8, 1, 'Conduite', 76666666, 1236, 122, 4, 'A', 0, ''),
(51, '2016-06-05', 7, 8, 1, 'Code', 125454, 12345, NULL, 2, 'A', 10, ''),
(52, '2016-06-10', 7, 8, 1, 'Conduite', 125454, 1236, 122, 1, 'A', 20, '');

-- --------------------------------------------------------

--
-- Structure de la table `suivivoiture`
--

CREATE TABLE `suivivoiture` (
  `idsuivi` int NOT NULL,
  `numvehicule` int NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `datedebuts` date DEFAULT NULL,
  `datefins` date DEFAULT NULL,
  `datealert` date DEFAULT NULL,
  `kilometrage` varchar(50) DEFAULT NULL,
  `descriptionsuivi` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suivivoiture`
--

INSERT INTO `suivivoiture` (`idsuivi`, `numvehicule`, `action`, `datedebuts`, `datefins`, `datealert`, `kilometrage`, `descriptionsuivi`) VALUES
(2, 122, 'Visite', '2016-05-01', '2016-05-08', '2016-05-29', '12', 'rdgf'),
(3, 122, 'Visite', '2016-05-01', '2016-05-01', '2016-05-01', '', ''),
(4, 122, 'Assurance', '2016-05-01', '2016-05-01', '2016-05-30', '', ''),
(7, 120, 'Assurance', '2016-05-01', '2016-05-01', '2016-05-29', '', 'Assurance Dacia'),
(8, 120, 'Assurance', '2016-05-01', '2020-05-01', '8888-02-03', '', ''),
(9, 120, 'Visite', '2016-05-01', '2020-05-01', '8888-02-03', '', ''),
(10, 120, 'Assurance', '2016-05-08', '2016-05-01', '2016-05-01', '', ''),
(13, 120, 'Assurance', '2016-05-01', '2020-05-01', '8888-02-03', '', ''),
(14, 120, 'Assurance', '2010-11-19', '2016-08-13', '2016-05-21', '', ''),
(15, 158, 'Visite', '2016-05-01', '2017-05-30', '2016-05-31', '452525', 'dcftvgbhunji,rtgy'),
(16, 120, 'Visite', '2016-06-01', '2016-09-01', '2016-08-24', '', ''),
(17, 122, 'Assurance', '2016-06-01', '2017-06-30', '2016-06-01', '5555555', '3eme assurance'),
(18, 122, 'Visite', '2016-06-10', '2016-06-10', '2016-06-10', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `numv` int NOT NULL,
  `marquev` varchar(50) DEFAULT NULL,
  `modelev` varchar(50) DEFAULT NULL,
  `couleurv` varchar(50) DEFAULT NULL,
  `etatv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`numv`, `marquev`, `modelev`, `couleurv`, `etatv`) VALUES
(120, '320', '6450', '7505', 'Hors service'),
(122, 'peugeot', '206', 'bleuc', 'En service'),
(158, 'renault', 'clio', 'gris', 'En service');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidat_table`
--
ALTER TABLE `candidat_table`
  ADD PRIMARY KEY (`cin`);

--
-- Index pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD PRIMARY KEY (`idctr`),
  ADD KEY `fk0l` (`cinctr`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`iddep`);

--
-- Index pour la table `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`idex`),
  ADD KEY `fkl` (`cincand`),
  ADD KEY `fk22` (`cinmonite`),
  ADD KEY `fk31` (`numve`),
  ADD KEY `fk33` (`idlec`);

--
-- Index pour la table `lecon`
--
ALTER TABLE `lecon`
  ADD PRIMARY KEY (`idlecon`);

--
-- Index pour la table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`login`);

--
-- Index pour la table `moniteur`
--
ALTER TABLE `moniteur`
  ADD PRIMARY KEY (`cinmoni`);

--
-- Index pour la table `parametre`
--
ALTER TABLE `parametre`
  ADD PRIMARY KEY (`idar`);

--
-- Index pour la table `regelement`
--
ALTER TABLE `regelement`
  ADD PRIMARY KEY (`idreg`),
  ADD KEY `fkl0` (`cinct`);

--
-- Index pour la table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`ids`),
  ADD KEY `fk1` (`cinc`),
  ADD KEY `fk2` (`idlecon`),
  ADD KEY `fk3` (`cinmoni`),
  ADD KEY `fk4` (`numv`);

--
-- Index pour la table `suivivoiture`
--
ALTER TABLE `suivivoiture`
  ADD PRIMARY KEY (`idsuivi`),
  ADD KEY `f` (`numvehicule`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`numv`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contrat`
--
ALTER TABLE `contrat`
  MODIFY `idctr` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `iddep` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `examen`
--
ALTER TABLE `examen`
  MODIFY `idex` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `lecon`
--
ALTER TABLE `lecon`
  MODIFY `idlecon` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `parametre`
--
ALTER TABLE `parametre`
  MODIFY `idar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `regelement`
--
ALTER TABLE `regelement`
  MODIFY `idreg` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `seance`
--
ALTER TABLE `seance`
  MODIFY `ids` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `suivivoiture`
--
ALTER TABLE `suivivoiture`
  MODIFY `idsuivi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `fk0l` FOREIGN KEY (`cinctr`) REFERENCES `candidat_table` (`cin`);

--
-- Contraintes pour la table `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `fk22` FOREIGN KEY (`cinmonite`) REFERENCES `moniteur` (`cinmoni`),
  ADD CONSTRAINT `fk31` FOREIGN KEY (`numve`) REFERENCES `vehicule` (`numv`),
  ADD CONSTRAINT `fk33` FOREIGN KEY (`idlec`) REFERENCES `lecon` (`idlecon`),
  ADD CONSTRAINT `fkl` FOREIGN KEY (`cincand`) REFERENCES `candidat_table` (`cin`);

--
-- Contraintes pour la table `regelement`
--
ALTER TABLE `regelement`
  ADD CONSTRAINT `fkl0` FOREIGN KEY (`cinct`) REFERENCES `candidat_table` (`cin`);

--
-- Contraintes pour la table `seance`
--
ALTER TABLE `seance`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`cinc`) REFERENCES `candidat_table` (`cin`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`idlecon`) REFERENCES `lecon` (`idlecon`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`cinmoni`) REFERENCES `moniteur` (`cinmoni`),
  ADD CONSTRAINT `fk4` FOREIGN KEY (`numv`) REFERENCES `vehicule` (`numv`);

--
-- Contraintes pour la table `suivivoiture`
--
ALTER TABLE `suivivoiture`
  ADD CONSTRAINT `f` FOREIGN KEY (`numvehicule`) REFERENCES `vehicule` (`numv`);
--
-- Base de données : `BDEmployes`
--
CREATE DATABASE IF NOT EXISTS `BDEmployes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `BDEmployes`;

-- --------------------------------------------------------

--
-- Structure de la table `Employe`
--

CREATE TABLE `Employe` (
  `id` int NOT NULL,
  `nom` text NOT NULL,
  `age` int NOT NULL,
  `departement` text NOT NULL,
  `salaire` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Employe`
--

INSERT INTO `Employe` (`id`, `nom`, `age`, `departement`, `salaire`) VALUES
(1, 'ahmed', 21, 'informatique', 15000),
(2, 'Fatiza', 22, 'informatique', 17000),
(3, 'Hasnae', 22, 'marketing', 12000),
(4, 'Imane', 25, 'Finance', 15000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Employe`
--
ALTER TABLE `Employe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Employe`
--
ALTER TABLE `Employe`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de données : `Cabinet_Medical`
--
CREATE DATABASE IF NOT EXISTS `Cabinet_Medical` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Cabinet_Medical`;

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `id_consultation` int NOT NULL,
  `date_consultation` date NOT NULL,
  `id_patient` int DEFAULT NULL,
  `id_medecin` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id_medecin` int NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Patient`
--

CREATE TABLE `Patient` (
  `id_patient` int NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `cin` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Patient`
--

INSERT INTO `Patient` (`id_patient`, `nom`, `prenom`, `cin`, `telephone`, `email`, `date_naissance`) VALUES
(1, 'HOUD', 'Fatiza', 'EE456789', '06 74 29 39 57', 'fatiza2001@gmail.com', '2002-12-08'),
(2, 'ELBOUCHOUKI', 'Ahmed', 'EE767878', '06 80 79 29 04', 'mohmad@gmail.com', '2001-12-05'),
(6, 'bibi', 'test', 'test', 'test', 'test', '2022-12-29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id_consultation`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `id_medecin` (`id_medecin`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id_medecin`);

--
-- Index pour la table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`id_patient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id_consultation` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id_medecin` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Patient`
--
ALTER TABLE `Patient`
  MODIFY `id_patient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `Patient` (`id_patient`),
  ADD CONSTRAINT `consultation_ibfk_2` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_medecin`);
--
-- Base de données : `DB_CATALOGUE`
--
CREATE DATABASE IF NOT EXISTS `DB_CATALOGUE` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `DB_CATALOGUE`;

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` int NOT NULL,
  `nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Categorie`
--

INSERT INTO `Categorie` (`id`, `nom`) VALUES
(1, 'robes'),
(2, 'tricots'),
(3, 'chemises'),
(4, 'jeans'),
(5, 'pantalons'),
(6, 'jupes'),
(7, 'blouses'),
(8, 'tuniques'),
(30, 'écharpes'),
(31, 'bijoux');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id` int NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `mail`) VALUES
(1, 'HOUD', 'Fatiza', 'Riad essalam Mohammedia', '06 74 29 39 57', 'fatimaezzahrahoud14@gmail.com'),
(2, 'KASEMI', 'Laila', 'Mhamid Marrakech', '07 67 45 67 44', 'malakissmi@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `id` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `prix` double NOT NULL,
  `quantite` int NOT NULL,
  `categorie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Produit`
--

INSERT INTO `Produit` (`id`, `nom`, `description`, `prix`, `quantite`, `categorie`) VALUES
(7, 'Pattes éléphant', 'gris avec motifs', 250, 20, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie` (`categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Produit`
--
ALTER TABLE `Produit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD CONSTRAINT `Produit_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `Categorie` (`id`);
--
-- Base de données : `DB_Hopita`
--
CREATE DATABASE IF NOT EXISTS `DB_Hopita` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `DB_Hopita`;
--
-- Base de données : `DB_Hopital`
--
CREATE DATABASE IF NOT EXISTS `DB_Hopital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `DB_Hopital`;

-- --------------------------------------------------------

--
-- Structure de la table `Consultations`
--

CREATE TABLE `Consultations` (
  `id` int NOT NULL,
  `id_medecin` int NOT NULL,
  `id_patient` int NOT NULL,
  `date_consultation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Consultations`
--

INSERT INTO `Consultations` (`id`, `id_medecin`, `id_patient`, `date_consultation`) VALUES
(1, 1, 2, '2023-04-01'),
(2, 1, 1, '2023-04-14'),
(3, 2, 2, '2023-04-19'),
(4, 2, 1, '2023-04-19'),
(5, 1, 1, '2023-04-19');

-- --------------------------------------------------------

--
-- Structure de la table `Medecins`
--

CREATE TABLE `Medecins` (
  `id` int NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(201) NOT NULL,
  `specialite` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Medecins`
--

INSERT INTO `Medecins` (`id`, `nom`, `prenom`, `email`, `tel`, `specialite`) VALUES
(1, 'BENJELLOUN', 'Mohamed', 'mohmad@gmail.com', '06987654', 'Généraliste'),
(2, 'KEBAJ', 'Hind', 'hindkebaj@gmail.com', '0765987769', 'Dentiste');

-- --------------------------------------------------------

--
-- Structure de la table `Patients`
--

CREATE TABLE `Patients` (
  `id` int NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `cin` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Patients`
--

INSERT INTO `Patients` (`id`, `nom`, `prenom`, `cin`, `tel`, `email`, `date_naissance`) VALUES
(1, 'HOUD', 'Fatiza', 'EE456789', '0674293957', 'fatiza2001@gmail.com', '2001-12-05'),
(2, 'ALAOUI', 'Meriem', 'H897654', '0678776543', 'mery2001@gmail.com', '2001-01-19');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Consultations`
--
ALTER TABLE `Consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_medecin` (`id_medecin`),
  ADD KEY `FK_patient` (`id_patient`);

--
-- Index pour la table `Medecins`
--
ALTER TABLE `Medecins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Patients`
--
ALTER TABLE `Patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Consultations`
--
ALTER TABLE `Consultations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Medecins`
--
ALTER TABLE `Medecins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Patients`
--
ALTER TABLE `Patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Consultations`
--
ALTER TABLE `Consultations`
  ADD CONSTRAINT `FK_medecin` FOREIGN KEY (`id_medecin`) REFERENCES `Medecins` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_patient` FOREIGN KEY (`id_patient`) REFERENCES `Patients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
--
-- Base de données : `drupal`
--
CREATE DATABASE IF NOT EXISTS `drupal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `drupal`;
--
-- Base de données : `EmployeesManagement`
--
CREATE DATABASE IF NOT EXISTS `EmployeesManagement` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `EmployeesManagement`;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id`, `email`, `first_name`, `last_name`, `phone`, `salary`) VALUES
(10, 'fatimaezzahrahoud14@gmail.com', 'Fatima-Ezzahra', 'Houd', '0674293957', 10000),
(13, 'Houdhind@gmail.com', 'Hind', 'Houd', '0667654434', 8500),
(14, 'alami123@gmail.com', 'Imane', 'Alami', '0765432145', 7000),
(15, 'elbouchoukigamer@gmail.com', 'Ahmed', 'Elbouchouki', '0657889876', 9000),
(16, 'zikoel@gmail.com', 'Zakaria', 'Tahiri', '0789887654', 4500),
(17, 'imadeben@gmail.com', 'Imade', 'Ben fettah', '0788956676', 8500);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Base de données : `GestionEmprunts`
--
CREATE DATABASE IF NOT EXISTS `GestionEmprunts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `GestionEmprunts`;

-- --------------------------------------------------------

--
-- Structure de la table `Adherent`
--

CREATE TABLE `Adherent` (
  `id` int NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `cin` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Adherent`
--

INSERT INTO `Adherent` (`id`, `nom`, `prenom`, `cin`, `telephone`, `email`, `date_naissance`) VALUES
(1, 'HOUD', 'Fatiza', 'EE456789', '06 74 29 39 57', 'fatiza2001@gmail.com', '2002-12-08'),
(2, 'ALAOUI', 'Meriem', 'H897654', '06 57 76 55 49', 'mery2001@gmail.com', '2001-01-19'),
(5, 'test', 'test', 'test', 'test', 'test', '2022-02-09');

-- --------------------------------------------------------

--
-- Structure de la table `Emprunt`
--

CREATE TABLE `Emprunt` (
  `id` int NOT NULL,
  `date_emprunt` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL,
  `id_adherent` int DEFAULT NULL,
  `id_livre` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Emprunt`
--

INSERT INTO `Emprunt` (`id`, `date_emprunt`, `date_retour`, `id_adherent`, `id_livre`) VALUES
(1, '2023-01-03', '2023-01-07', 1, 2),
(2, '2023-01-09', '2023-01-21', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Livre`
--

CREATE TABLE `Livre` (
  `id` int NOT NULL,
  `titre` varchar(50) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `date_edition` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Livre`
--

INSERT INTO `Livre` (`id`, `titre`, `isbn`, `date_edition`) VALUES
(1, 'La boîte a merveilles', 'HY2Y8981', '2023-01-04'),
(2, 'Antigo_______', 'U8887JGG', '2023-01-22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Adherent`
--
ALTER TABLE `Adherent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_adherent` (`id_adherent`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Index pour la table `Livre`
--
ALTER TABLE `Livre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Adherent`
--
ALTER TABLE `Adherent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Emprunt`
--
ALTER TABLE `Emprunt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Livre`
--
ALTER TABLE `Livre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD CONSTRAINT `Emprunt_ibfk_1` FOREIGN KEY (`id_adherent`) REFERENCES `Adherent` (`id`),
  ADD CONSTRAINT `Emprunt_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `Livre` (`id`);
--
-- Base de données : `gestion_produits`
--
CREATE DATABASE IF NOT EXISTS `gestion_produits` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gestion_produits`;

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `N_achat` int NOT NULL,
  `nom_prenom_forn` varchar(30) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `quantite` int NOT NULL,
  `prix_total` float NOT NULL,
  `prix_unitaire` double NOT NULL,
  `date_achat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `N_client` int NOT NULL,
  `nom_prenom` varchar(30) NOT NULL,
  `N_telephone` varchar(20) DEFAULT NULL,
  `Adresse` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `N_fact` int NOT NULL,
  `nom_prenom_forn` varchar(50) NOT NULL,
  `montant_a_paye` float NOT NULL,
  `montant_verser` float NOT NULL,
  `montant_reste` float NOT NULL,
  `date_versement` date NOT NULL,
  `etat` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fornisseur`
--

CREATE TABLE `fornisseur` (
  `N_forn` int NOT NULL,
  `nom_prenom` varchar(30) NOT NULL,
  `N_telephone` varchar(20) DEFAULT NULL,
  `Adresse` varchar(60) NOT NULL,
  `Ville` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `N_prod` int NOT NULL,
  `designation` varchar(50) NOT NULL,
  `categorie` varchar(80) DEFAULT NULL,
  `unite` varchar(10) NOT NULL,
  `date_exp` date DEFAULT NULL,
  `qte_totale` int NOT NULL,
  `qte_vente` int NOT NULL,
  `qte_reste` int NOT NULL,
  `prix_unt` float NOT NULL,
  `prix_vent` float NOT NULL,
  `gain` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `user`, `password`) VALUES
(1, 'amine', '2610');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `N_vente` int NOT NULL,
  `nom_prenom_client` varchar(60) NOT NULL,
  `commentaire` varchar(80) DEFAULT NULL,
  `marchendise` text NOT NULL,
  `prix_a_payez` float NOT NULL,
  `benefice` float NOT NULL,
  `date_vente` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD PRIMARY KEY (`N_achat`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`N_client`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`N_fact`);

--
-- Index pour la table `fornisseur`
--
ALTER TABLE `fornisseur`
  ADD PRIMARY KEY (`N_forn`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`N_prod`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`N_vente`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achat`
--
ALTER TABLE `achat`
  MODIFY `N_achat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `N_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `N_fact` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `fornisseur`
--
ALTER TABLE `fornisseur`
  MODIFY `N_forn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `N_prod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `N_vente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de données : `hotel_management`
--
CREATE DATABASE IF NOT EXISTS `hotel_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `hotel_management`;

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE `bills` (
  `billID` int NOT NULL,
  `reservationID` int NOT NULL,
  `billDate` date NOT NULL,
  `billAmount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `bills`
--

INSERT INTO `bills` (`billID`, `reservationID`, `billDate`, `billAmount`) VALUES
(1, 2, '2021-12-12', 33000),
(2, 5, '2021-12-14', 19500);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customerIDNumber` int NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerNationality` varchar(20) NOT NULL,
  `customerGender` varchar(10) NOT NULL,
  `customerPhoneNo` int NOT NULL,
  `customerEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`customerIDNumber`, `customerName`, `customerNationality`, `customerGender`, `customerPhoneNo`, `customerEmail`) VALUES
(2510092, 'Quốc Khánh', 'Viet Nam', 'Male', 97938274, 'khanh3000@gmail.com'),
(9348957, 'TestName', 'China', 'Male', 9247375, 'test@gmail.com'),
(255100992, 'Dave Jum', 'China', 'Male', 673950337, 'daveJ@gmail.com'),
(355184941, 'Sakura Matou', 'Japan', 'Female', 53250430, 'sakura87@gmail.com'),
(422510092, 'Billy Dope', 'USA', 'Male', 84927442, 'billyb9@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `reservationID` int NOT NULL,
  `customerIDNumber` int NOT NULL,
  `roomNumber` varchar(20) NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Checked In'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`reservationID`, `customerIDNumber`, `roomNumber`, `checkInDate`, `checkOutDate`, `status`) VALUES
(1, 422510092, '100', '2021-12-01', '2021-12-14', 'Checked In'),
(2, 255100992, '303', '2021-12-01', '2021-12-12', 'Checked Out'),
(3, 355184941, '202', '2021-12-01', '2021-12-13', 'Checked In'),
(4, 2510092, '102', '2021-12-10', '2021-12-13', 'Checked In'),
(5, 9348957, '701', '2021-12-01', '2021-12-14', 'Checked Out');

-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

CREATE TABLE `rooms` (
  `roomNumber` varchar(20) NOT NULL,
  `roomType` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Not Booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `rooms`
--

INSERT INTO `rooms` (`roomNumber`, `roomType`, `price`, `status`) VALUES
('100', 'Single', 1000, 'Booked'),
('101', 'Double', 1500, 'Not Booked'),
('102', 'Single', 1000, 'Booked'),
('200', 'Family', 3000, 'Not Booked'),
('201', 'Luxury', 5000, 'Not Booked'),
('202', 'Double', 1500, 'Booked'),
('301', 'Luxury', 5000, 'Not Booked'),
('302', 'Luxury', 5000, 'Not Booked'),
('303', 'Family', 3000, 'Not Booked'),
('401', 'Single', 1000, 'Not Booked'),
('402', 'Double', 1000, 'Not Booked'),
('501', 'Presidential Suite', 10000, 'Not Booked'),
('502', 'Presidential Suite', 10000, 'Not Booked'),
('701', 'Double', 1500, 'Not Booked');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `securityQuestion` varchar(100) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `gender`, `securityQuestion`, `answer`, `address`, `status`) VALUES
(1, 'Duc', 'minhduc1122002', 'Duc2002lol@', 'Male', 'What is the name of your first pet?', 'Jeff', 'Ha Noi', NULL),
(2, 'Khanh', 'khanh0140', 'iamironman3', 'Male', 'What is the name of the town where you were born?', 'Ha Noi', 'Ha Noi', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billID`),
  ADD UNIQUE KEY `fk_bills_res` (`reservationID`) USING BTREE;

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerIDNumber`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationID`),
  ADD KEY `fk_customers_res` (`customerIDNumber`),
  ADD KEY `fk_rooms_res` (`roomNumber`);

--
-- Index pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomNumber`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bills`
--
ALTER TABLE `bills`
  MODIFY `billID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_bills_res` FOREIGN KEY (`reservationID`) REFERENCES `reservations` (`reservationID`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_customers_res` FOREIGN KEY (`customerIDNumber`) REFERENCES `customers` (`customerIDNumber`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rooms_res` FOREIGN KEY (`roomNumber`) REFERENCES `rooms` (`roomNumber`) ON UPDATE CASCADE;
--
-- Base de données : `library_management`
--
CREATE DATABASE IF NOT EXISTS `library_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `library_management`;

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int UNSIGNED NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('jakir', 'Jakir Hossain', 15191713, 'What is your mother toungue?', 'bangla');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `book_id` int UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int UNSIGNED NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `stock`) VALUES
(503, 'Geetanjoli', 6, 'Rabindranath Tagor', 220, 129);

-- --------------------------------------------------------

--
-- Structure de la table `issue`
--

CREATE TABLE `issue` (
  `book_id` int UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int UNSIGNED NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL,
  `stu_id` int UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `doi`) VALUES
(503, 'Geetanjoli', 6, 'Rabindranath Tagor', 220, 130, 664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', '2018-03-25');

-- --------------------------------------------------------

--
-- Structure de la table `returntbl`
--

CREATE TABLE `returntbl` (
  `stu_id` int UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `returntbl`
--

INSERT INTO `returntbl` (`stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `doi`, `doreturn`) VALUES
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', 503, 'Geetanjoli', '6', 'Rabindranath Tagor', 220, 128, '2018-03-20', '2018-04-21'),
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', 503, 'Geetanjoli', '6', 'Rabindranath Tagor', 220, 128, '2018-04-25', '2018-04-25'),
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th', 503, 'Geetanjoli', '6', 'Rabindranath Tagor', 220, 129, '2018-03-25', '2018-03-26');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `student_id` int UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fathers_name`, `course`, `branch`, `year`, `semister`) VALUES
(664, 'Jakir Hossain', 'M Uddin', 'BBA', 'Dhanmondi', '4th', '8th');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);
--
-- Base de données : `PatientsDB`
--
CREATE DATABASE IF NOT EXISTS `PatientsDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `PatientsDB`;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id` bigint NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `malade` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id`, `date_naissance`, `malade`, `nom`, `prenom`, `score`) VALUES
(1, '2023-03-19', b'1', 'ALAMI', 'Hiba', 1),
(2, '2023-03-19', b'0', 'JALAL', 'Ihssan', 10),
(4, '2023-03-08', b'0', 'Amal', 'DEBBAGH', 100),
(6, '2023-03-08', b'0', 'Najoua', 'AFA', 300),
(7, '2023-03-29', b'0', 'Ritaj', 'BAHI', 0),
(8, '2023-03-05', b'0', 'HOUD', 'Fatiza', 10),
(13, '2023-03-12', b'0', 'HOUD', 'Fatiza', 10),
(14, '2023-03-12', b'0', 'HOUD', 'Hind', 18),
(15, '2023-03-12', b'0', 'HOUD', 'Fatiza', 10),
(16, '2023-03-12', b'0', 'HOUD', 'Hind', 18),
(17, '2023-03-12', b'0', 'HOUD', 'Fatiza', 10),
(18, '2023-03-12', b'0', 'HOUD', 'Hind', 18),
(19, '2023-03-12', b'0', 'HOUD', 'Fatiza', 10),
(20, '2023-03-12', b'0', 'HOUD', 'Hind', 18),
(21, '2023-03-12', b'0', 'HOUD', 'Fatiza', 10),
(22, '2023-03-12', b'0', 'HOUD', 'Hind', 18),
(23, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(24, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(25, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(26, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(27, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(28, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(29, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(30, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(31, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(32, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(33, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(34, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(35, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(36, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(37, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(38, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(39, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(40, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(41, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(42, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(43, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(44, '2023-03-13', b'0', 'HOUD', 'Hind', 18),
(45, '2023-03-13', b'0', 'HOUD', 'Fatiza', 10),
(46, '2023-03-13', b'0', 'HOUD', 'Hind', 18);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Base de données : `Products`
--
CREATE DATABASE IF NOT EXISTS `Products` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Products`;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`) VALUES
(3, 'test', 0, 0),
(10, 'DELL Latitude E54557', 10000, 10),
(20, 'MacBook pro 15', 20000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(101);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
--
-- Base de données : `Produits_Catalogue`
--
CREATE DATABASE IF NOT EXISTS `Produits_Catalogue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Produits_Catalogue`;
--
-- Base de données : `Test`
--
CREATE DATABASE IF NOT EXISTS `Test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Test`;

-- --------------------------------------------------------

--
-- Structure de la table `Personne`
--

CREATE TABLE `Personne` (
  `id` int NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `date_naiss` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Personne`
--

INSERT INTO `Personne` (`id`, `nom`, `prenom`, `date_naiss`) VALUES
(1, 'HOUD', 'Fatiza', '2001-09-03'),
(2, 'Houd', 'Hind', '1995-04-29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Personne`
--
ALTER TABLE `Personne`
  ADD PRIMARY KEY (`id`);
--
-- Base de données : `testest`
--
CREATE DATABASE IF NOT EXISTS `testest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `testest`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
