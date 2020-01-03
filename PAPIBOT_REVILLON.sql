-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 14 Décembre 2018 à 00:50
-- Version du serveur :  10.1.37-MariaDB-0+deb9u1
-- Version de PHP :  7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `PAPIBOT_REVILLON`
--

-- --------------------------------------------------------

--
-- Structure de la table `AUTHORS`
--

CREATE TABLE `AUTHORS` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SURNAME` varchar(50) DEFAULT NULL,
  `BIRTH` int(5) DEFAULT NULL,
  `DEATH` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `AUTHORS`
--

INSERT INTO `AUTHORS` (`ID`, `NAME`, `SURNAME`, `BIRTH`, `DEATH`) VALUES
(1, 'de PIERRE (dit Cardinal de BERNIS)', 'François-Joachim', 1715, 1794),
(2, 'Racine', 'Jean', 1639, 1699),
(3, 'Rousseau', 'Jean-Jacques', 1712, 1778),
(4, 'Rostand', 'Edmond', 1868, 1918),
(5, 'Confucius', NULL, -551, -479),
(6, 'Hugo', 'Victor', 1802, 1885),
(7, 'Freud', 'Sigmund', 1856, 1939),
(8, 'Hume', 'David', 1711, 1776),
(9, 'Proverbe français', NULL, NULL, NULL),
(10, 'De Vinci', 'Léonard', 1452, 1519),
(11, 'Voltaire', NULL, 1694, 1778),
(12, 'De La Bruyère', 'Jean', 1645, 1696),
(13, 'Bergson', 'Henri', 1859, 1941),
(14, 'Proverbe belge', NULL, NULL, NULL),
(15, 'Kant', 'Emmanuel', 1724, 1804),
(16, 'Sira', 'Ben', NULL, NULL),
(17, 'Zénon d\'Elée', NULL, -490, -430),
(18, 'Wilde', 'Oscar', 1854, 1900),
(19, 'Sartre', 'Jean-Paul', 1905, 1980),
(20, 'Proverbe chinois', NULL, NULL, NULL),
(21, 'Nietzsche', 'Friedrich', 1844, 1900),
(22, 'Sénèque', NULL, -4, 64),
(23, 'Diderot', 'Denis', 1713, 1784),
(24, 'West', 'John', NULL, NULL),
(25, 'Strindberg', 'August', NULL, NULL),
(26, 'Henri IV', NULL, 1553, 1610),
(27, 'Amiel', 'Henri-Frédéric', 1821, 1881),
(28, 'Baudelaire', 'Charles', 1821, 1867),
(29, 'Smith', 'Sydney', 1764, 1840),
(30, 'Daudet', 'Alphonse', 1840, 1897),
(31, 'Joubert', 'Joseph', 1754, 1824),
(32, 'Tolstoï', 'Léon', 1828, 1910),
(33, 'Tseu', 'Lao', NULL, NULL),
(34, 'Proverbe hindou', NULL, NULL, NULL),
(35, 'De Girardin', 'Delphine', 1804, 1855),
(36, 'Calvin Coolidge', 'John', 1872, 1933),
(37, 'Roosevelt', 'Théodore', 1858, 1919),
(38, 'Proverbe irlandais', NULL, NULL, NULL),
(39, 'Poincaré', 'Henri', 1854, 1912),
(40, 'Gandhi', 'Mohandas Karamchand', 1869, 1948),
(41, 'Diogène', NULL, NULL, NULL),
(42, 'de Saint-Exupéry', 'Antoine', 1900, 1944),
(43, 'Chardin', 'Jean', 1643, 1713),
(44, 'Aristote', NULL, -384, -322),
(45, 'Anonyme', NULL, NULL, NULL),
(46, 'Mansoni', 'Alessanndro', 1785, 1873),
(47, 'Taine', 'Hippolyte', 1828, 1893),
(48, 'Allais', 'Alphonse', 1854, 1905),
(49, 'Maïmonide', 'Moïse', 1138, 1204),
(50, 'Thoreau', 'Henry David', 1817, 1862),
(51, 'Camus', 'Albert', 1913, 1960),
(52, 'Browne', 'Thomas', 1605, 1682),
(53, 'Proverbe africain', NULL, NULL, NULL),
(54, 'von Geothe', 'Johann Wolfgang', 1749, 1832);

-- --------------------------------------------------------

--
-- Structure de la table `QUOTES`
--

CREATE TABLE `QUOTES` (
  `ID` int(11) NOT NULL,
  `AUTH_ID` int(11) NOT NULL,
  `QUOTE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `QUOTES`
--

INSERT INTO `QUOTES` (`ID`, `AUTH_ID`, `QUOTE`) VALUES
(1, 12, 'L\'amour qui naît subitement est le plus long à guérir.'),
(2, 7, 'Le bonheur est un rêve d\'enfant réalisé à l\'âge adulte.'),
(3, 17, 'La nature nous a donné une langue et deux oreilles, aifn que nous écoutions le double de ce que nous disons.'),
(4, 18, 'La sagesse, c\'est d\'avoir des rêves suffisamment grands pour ne pas les perdre de vue lorsqu\'on les poursuit.'),
(5, 5, 'On a deux vies. La deuxième commence le jour où on réalise qu\'on en a juste une.'),
(6, 5, 'Choisissez un travail que vous aimez et vous n\'aurez pas à travailler un seul jour de votre vie.'),
(7, 16, 'La joie prolonge la vie.'),
(8, 4, 'C\'est la nuit qu\'il est beau de croire à la lumière.'),
(9, 14, 'L\'expérience est un peigne que la nature nous donne une fois que nous sommes chauves.'),
(10, 15, 'La musique est la langue des émotions.'),
(11, 13, 'L\'homme devrait mettre autant d\'ardeur à simplifier sa vie qu\'il en met à la compliquer.'),
(12, 9, 'Sabot qui brille n\'est pas toujours celui qui chausse le mieux.'),
(13, 10, 'L\'expérience prouve que celui qui n\'a jamais confiance en personne ne sera jamais déçu.'),
(14, 11, 'J\'ai décidé d\'être heureux, c\'est meilleur pour la santé.'),
(15, 8, 'La beauté des choses existe dans l\'esprit de celui qui les contemple.'),
(16, 6, 'Le style est comme le cristal, la pureté fait son éclat.'),
(17, 5, 'Une image vaut mille mots.'),
(18, 1, 'Qui fait rire l\'esprit se rend maître du coeur.'),
(19, 2, 'Toute l\'invention consiste à faire quelque chose de rien.'),
(20, 3, 'Vous ne parviendrez jamais à faire dessages si vons ne faites d\'abord des polissons.'),
(21, 19, 'Dans la vie on ne fait pas ce que l\'on veut mais on est responsable de ce que l\'on est.'),
(22, 30, 'La gourmandise commance quand on n\'a plus faim.'),
(23, 31, 'Les oreilles et les yeux sont les portes et les fenêtres de l\'âme.'),
(24, 26, 'Bonne cuisine et bon vin, c\'est le paradis sur terre.'),
(25, 27, 'Faire aisément ce que d\'autres trouvent difficile à réaliser, c\'est le talent; faire ce qui est impossible au talent, c\'est le génie.'),
(26, 24, 'Le chocolat plonge des êtres par ailleurs normaux dans d\'étranges états extatiques.'),
(27, 25, 'En tentant l\'impossible on peut atteindre le plus haut niveau du possible.'),
(28, 23, 'On avale à pleine gorgée le mensonge qui nous flatte, et l\'on boit goutte à goutte une vérité qui nous est amère.'),
(29, 29, 'Ayez le courage de ne pas savoir un grand nombre dechoses afin d\'éviter la certitude de ne rien savoir.'),
(30, 28, 'Il y a autant de beautés qu\'il y a de manières habituelles de chercher le bonheur.'),
(31, 18, 'C\'est l\'incertitude qui nous charme. Tout devient merveilleux dans la brume.'),
(32, 22, 'e n\'est pas parce que les choses sont difficiles que nous n\'osons pas, mais parce que nous n\'osons pas qu\'elles sont difficiles.'),
(33, 21, 'Sans la musique, la vie serait une erreur.'),
(34, 20, 'On n\'est jamais puni pour avoir fait mourir de rire.'),
(35, 34, 'Si les chats portaient des gants ils n\'attraperaient pas de souris.'),
(36, 33, 'Il n\'y a point de chemin vers le bonheur. Le bonheur, c\'est le chemin.'),
(37, 32, 'En matière de sentiment, le manque de logique est la meilleure preuve de la sincérité.');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `AUTHORS`
--
ALTER TABLE `AUTHORS`
  ADD KEY `ID` (`ID`);

--
-- Index pour la table `QUOTES`
--
ALTER TABLE `QUOTES`
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `AUTHORS`
--
ALTER TABLE `AUTHORS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `QUOTES`
--
ALTER TABLE `QUOTES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
