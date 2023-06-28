-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 14 juin 2023 à 12:17
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hsedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE `action` (
  `Action_ID` int(11) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Date_created` date NOT NULL,
  `TimeCreated` time NOT NULL,
  `ActionType` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Incident_ID` int(11) NOT NULL,
  `Wsv_ID` int(11) NOT NULL,
  `Date_deleted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `action`
--

INSERT INTO `action` (`Action_ID`, `Title`, `Description`, `Date_created`, `TimeCreated`, `ActionType`, `Status`, `Incident_ID`, `Wsv_ID`, `Date_deleted`) VALUES
(1, 'testaction', 'description de l\'action d\'un incident', '0000-00-00', '00:00:00', 'actiontype', 'null', 1, 0, '0000-00-00'),
(2, 'testaction', 'description de l\'action d\'un wsv', '0000-00-00', '00:00:00', 'actiontype', 'null', 0, 2, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `actionstatus`
--

CREATE TABLE `actionstatus` (
  `StatusNum` int(11) NOT NULL,
  `StastusDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `actionstatus`
--

INSERT INTO `actionstatus` (`StatusNum`, `StastusDesc`) VALUES
(1, 'testactionstatusincident'),
(2, 'testactionstatuswsv');

-- --------------------------------------------------------

--
-- Structure de la table `hseadmin`
--

CREATE TABLE `hseadmin` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hseadmin`
--

INSERT INTO `hseadmin` (`User_ID`, `Name`) VALUES
(152496, 'batta'),
(152497, 'ahlijah');

-- --------------------------------------------------------

--
-- Structure de la table `incident`
--

CREATE TABLE `incident` (
  `Incident_ID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Date_created` datetime NOT NULL,
  `TimeCreated` time NOT NULL,
  `Location` varchar(250) NOT NULL,
  `Status` int(11) NOT NULL,
  `Region` varchar(250) NOT NULL,
  `City` varchar(250) NOT NULL,
  `District` varchar(250) NOT NULL,
  `IncidentCategory` int(11) NOT NULL,
  `Investigator_ID` int(11) NOT NULL,
  `Action_ID` int(11) NOT NULL,
  `UserCreated` varchar(250) NOT NULL,
  `Date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `incident`
--

INSERT INTO `incident` (`Incident_ID`, `Title`, `Description`, `Date_created`, `TimeCreated`, `Location`, `Status`, `Region`, `City`, `District`, `IncidentCategory`, `Investigator_ID`, `Action_ID`, `UserCreated`, `Date_deleted`) VALUES
(0, 'Test', 'lorem ipsuim test', '2023-05-26 18:22:35', '00:00:00', 'douala', 0, 'test', 'test', 'test test', 1, 0, 0, '', '2023-05-26 18:22:35'),
(1, 'incidenttest', 'déclarer un incident', '0000-00-00 00:00:00', '00:00:00', 'localisationtes', 0, 'littoral', 'douala', 'districttest', 0, 11, 1, 'null', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `incidentcategory`
--

CREATE TABLE `incidentcategory` (
  `Category_ID` int(11) NOT NULL,
  `CategoryDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `incidentcategory`
--

INSERT INTO `incidentcategory` (`Category_ID`, `CategoryDesc`) VALUES
(1, 'categorydesctest');

-- --------------------------------------------------------

--
-- Structure de la table `incidentstatus`
--

CREATE TABLE `incidentstatus` (
  `StatusNum` int(11) NOT NULL,
  `StatusDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `incidentstatus`
--

INSERT INTO `incidentstatus` (`StatusNum`, `StatusDesc`) VALUES
(11, 'Statusdesctest');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `test_ID` int(11) NOT NULL,
  `title` varchar(138) CHARACTER SET armscii8 DEFAULT NULL,
  `description` varchar(138) CHARACTER SET armscii8 NOT NULL,
  `Date_created` datetime NOT NULL,
  `Date_update` datetime NOT NULL,
  `Date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`test_ID`, `title`, `description`, `Date_created`, `Date_update`, `Date_deleted`) VALUES
(0, '', '', '2023-05-27 17:02:18', '2023-05-27 17:02:18', '2023-05-27 17:02:18'),
(1, 'Debogage', 'Boite a suggestion pour l\\\'amelioration de l\\\'application', '2023-05-27 17:02:18', '2023-05-27 17:02:18', '2023-05-27 17:02:18'),
(2, 'Missions', 'apprendre les processus de sap', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Missions', 'apprendre les processus de sap', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `systemeadmin`
--

CREATE TABLE `systemeadmin` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `systemeadmin`
--

INSERT INTO `systemeadmin` (`User_ID`, `Name`) VALUES
(21, 'parfait');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `Matricule` varchar(250) NOT NULL,
  `Nom` varchar(250) NOT NULL,
  `WorkLocation` varchar(250) NOT NULL,
  `PhoneNum` int(11) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Unit` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`Matricule`, `Nom`, `WorkLocation`, `PhoneNum`, `Email`, `Unit`) VALUES
('234', '[bobo]', '[douala]', 690685056, '[michelhansbatta@gmail.com]', '[dasi]');

-- --------------------------------------------------------

--
-- Structure de la table `wsv`
--

CREATE TABLE `wsv` (
  `WSV_ID` int(11) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Date_created` date NOT NULL,
  `TimeCreated` time NOT NULL,
  `Location` varchar(250) NOT NULL,
  `Status` int(11) NOT NULL,
  `Category` int(11) NOT NULL,
  `WsvType` varchar(250) NOT NULL,
  `Region` varchar(250) NOT NULL,
  `City` varchar(250) NOT NULL,
  `District` varchar(250) NOT NULL,
  `Investigator_ID` int(11) NOT NULL,
  `Validator_ID` int(11) NOT NULL,
  `UserCreated` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wsv`
--

INSERT INTO `wsv` (`WSV_ID`, `Title`, `Description`, `Date_created`, `TimeCreated`, `Location`, `Status`, `Category`, `WsvType`, `Region`, `City`, `District`, `Investigator_ID`, `Validator_ID`, `UserCreated`) VALUES
(2, '[testwsv]', '[testdescription]', '0000-00-00', '00:00:00', '[value-6]', 0, 0, '[value-9]', '[value-10]', '[value-11]', '[value-12]', 0, 0, '[value-15]');

-- --------------------------------------------------------

--
-- Structure de la table `wsvcategory`
--

CREATE TABLE `wsvcategory` (
  `Wsv_ID` int(11) NOT NULL,
  `WsvCategory` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wsvcategory`
--

INSERT INTO `wsvcategory` (`Wsv_ID`, `WsvCategory`) VALUES
(2, 'b');

-- --------------------------------------------------------

--
-- Structure de la table `wsvstatus`
--

CREATE TABLE `wsvstatus` (
  `StatusNum` int(11) NOT NULL,
  `StastusDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wsvstatus`
--

INSERT INTO `wsvstatus` (`StatusNum`, `StastusDesc`) VALUES
(22, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `wsvtype`
--

CREATE TABLE `wsvtype` (
  `WsvNum` int(11) NOT NULL,
  `WsvDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wsvtype`
--

INSERT INTO `wsvtype` (`WsvNum`, `WsvDesc`) VALUES
(22, 'testwsvDesc');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`Action_ID`);

--
-- Index pour la table `actionstatus`
--
ALTER TABLE `actionstatus`
  ADD PRIMARY KEY (`StatusNum`);

--
-- Index pour la table `hseadmin`
--
ALTER TABLE `hseadmin`
  ADD PRIMARY KEY (`User_ID`);

--
-- Index pour la table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`Incident_ID`);

--
-- Index pour la table `incidentcategory`
--
ALTER TABLE `incidentcategory`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Index pour la table `incidentstatus`
--
ALTER TABLE `incidentstatus`
  ADD PRIMARY KEY (`StatusNum`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`test_ID`);

--
-- Index pour la table `systemeadmin`
--
ALTER TABLE `systemeadmin`
  ADD PRIMARY KEY (`User_ID`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Matricule`);

--
-- Index pour la table `wsv`
--
ALTER TABLE `wsv`
  ADD PRIMARY KEY (`WSV_ID`);

--
-- Index pour la table `wsvcategory`
--
ALTER TABLE `wsvcategory`
  ADD PRIMARY KEY (`Wsv_ID`);

--
-- Index pour la table `wsvstatus`
--
ALTER TABLE `wsvstatus`
  ADD PRIMARY KEY (`StatusNum`);

--
-- Index pour la table `wsvtype`
--
ALTER TABLE `wsvtype`
  ADD PRIMARY KEY (`WsvNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
