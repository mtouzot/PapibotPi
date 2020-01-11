-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Sam 11 Janvier 2020 à 10:19
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
  `NAME` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SURNAME` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BIRTH` int(5) DEFAULT NULL,
  `DEATH` int(5) DEFAULT NULL,
  `OCC` int(11) DEFAULT '0' COMMENT 'Nombre d''apparence de l''auteur'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

--
-- Contenu de la table `AUTHORS`
--

INSERT INTO `AUTHORS` (`ID`, `NAME`, `SURNAME`, `BIRTH`, `DEATH`, `OCC`) VALUES
(1, 'de PIERRE (dit Cardinal de BERNIS)', 'François-Joachim', 1715, 1794, 0),
(2, 'Racine', 'Jean', 1639, 1699, 0),
(3, 'Rousseau', 'Jean-Jacques', 1712, 1778, 0),
(4, 'Rostand', 'Edmond', 1868, 1918, 0),
(5, 'Confucius', NULL, -551, -479, 0),
(6, 'Hugo', 'Victor', 1802, 1885, 0),
(7, 'Freud', 'Sigmund', 1856, 1939, 0),
(8, 'Hume', 'David', 1711, 1776, 0),
(9, 'Proverbe français', NULL, NULL, NULL, 0),
(10, 'De Vinci', 'Léonard', 1452, 1519, 0),
(11, 'Voltaire', NULL, 1694, 1778, 0),
(12, 'De La Bruyère', 'Jean', 1645, 1696, 0),
(13, 'Bergson', 'Henri', 1859, 1941, 0),
(14, 'Proverbe belge', NULL, NULL, NULL, 0),
(15, 'Kant', 'Emmanuel', 1724, 1804, 0),
(16, 'Sira', 'Ben', NULL, NULL, 0),
(17, 'Zénon d\'Elée', NULL, -490, -430, 0),
(18, 'Wilde', 'Oscar', 1854, 1900, 0),
(19, 'Sartre', 'Jean-Paul', 1905, 1980, 0),
(20, 'Proverbe chinois', NULL, NULL, NULL, 0),
(21, 'Nietzsche', 'Friedrich', 1844, 1900, 0),
(22, 'Seneque', NULL, -4, 64, 0),
(23, 'Diderot', 'Denis', 1713, 1784, 0),
(24, 'West', 'John', NULL, NULL, 0),
(25, 'Strindberg', 'August', NULL, NULL, 0),
(26, 'Henri IV', NULL, 1553, 1610, 0),
(27, 'Amiel', 'Henri-Frédéric', 1821, 1881, 0),
(28, 'Baudelaire', 'Charles', 1821, 1867, 0),
(29, 'Smith', 'Sydney', 1764, 1840, 0),
(30, 'Daudet', 'Alphonse', 1840, 1897, 0),
(31, 'Joubert', 'Joseph', 1754, 1824, 0),
(32, 'Tolstoï', 'Léon', 1828, 1910, 0),
(33, 'Tseu', 'Lao', NULL, NULL, 0),
(34, 'Proverbe hindou', NULL, NULL, NULL, 0),
(35, 'De Girardin', 'Delphine', 1804, 1855, 0),
(36, 'Calvin Coolidge', 'John', 1872, 1933, 0),
(37, 'Roosevelt', 'Theodore', 1858, 1919, 0),
(38, 'Proverbe irlandais', NULL, NULL, NULL, 0),
(39, 'Poincare', 'Henri', 1854, 1912, 0),
(40, 'Gandhi', 'Mohandas Karamchand', 1869, 1948, 0),
(41, 'Diogene', NULL, NULL, NULL, 0),
(42, 'de Saint-Exupéry', 'Antoine', 1900, 1944, 0),
(43, 'Chardin', 'Jean', 1643, 1713, 0),
(44, 'Aristote', NULL, -384, -322, 0),
(45, 'Anonyme', NULL, NULL, NULL, 0),
(46, 'Mansoni', 'Alessanndro', 1785, 1873, 0),
(47, 'Taine', 'Hippolyte', 1828, 1893, 0),
(48, 'Allais', 'Alphonse', 1854, 1905, 0),
(49, 'Maïmonide', 'Moïse', 1138, 1204, 0),
(50, 'Thoreau', 'Henry David', 1817, 1862, 0),
(51, 'Camus', 'Albert', 1913, 1960, 0),
(52, 'Browne', 'Thomas', 1605, 1682, 0),
(53, 'Proverbe africain', NULL, NULL, NULL, 0),
(54, 'von Geothe', 'Johann Wolfgang', 1749, 1832, 0),
(55, 'Saint Augustin', NULL, 354, 430, 0),
(56, 'Bouddha', NULL, NULL, NULL, 0),
(57, 'Rabelais', 'François', 1483, 1553, 0),
(58, 'Pasteur', 'Louis', 1822, 1895, 0),
(59, 'Wagner', 'Richard', 1813, 1883, 0),
(60, 'Proverbe arménien', NULL, NULL, NULL, 0),
(61, 'de Chateaubriand', 'François René', 1768, 1848, 0),
(62, 'de la Rochefoucault', 'François', 1747, 1827, 0),
(63, 'Curtis', 'George William', 1824, 1892, 0),
(64, 'Coeur', 'Jacques', 1395, 1456, 0),
(65, 'Proverbe tibétain', NULL, NULL, NULL, 0),
(66, 'Proverbe brésilien', NULL, NULL, NULL, 0),
(67, 'Cowper', 'William', 1731, 1800, 0),
(68, 'Bonaparte', 'Napoléon', 1769, 1821, 0),
(71, 'Proverbe tunisien', NULL, NULL, NULL, 0),
(72, 'Proverbe romain', NULL, NULL, NULL, 0),
(75, 'Whately', 'Richard', NULL, NULL, 0),
(76, 'Valéry', 'Paul', 1871, 1945, 0),
(77, 'de Rivarol', 'Antoine', 1753, 1801, 0),
(78, 'Sand', 'George', 1804, 1876, 0),
(79, 'Shakespeare', 'William', 1564, 1616, 0),
(80, 'James', 'Henry', 1843, 1916, 0),
(81, 'Defoe', 'Daniel', 1660, 1731, 0),
(82, 'Epicure', NULL, -342, -270, 0),
(83, 'Proverbe libanais', NULL, NULL, NULL, 0),
(84, 'Brillat-Savarin', 'Anthelme', 1755, 1826, 0),
(85, 'Proverbe serbe', NULL, NULL, NULL, 0),
(86, 'Pythagore', NULL, -580, -495, 0),
(87, 'Aristophane', NULL, -450, -385, 0),
(88, 'Twain', 'Mark', 1835, 1910, 0),
(89, 'Proverbe juif', NULL, NULL, NULL, 0),
(90, 'Thackeray', 'William', 1811, 1863, 0),
(91, 'de Balzac', 'Honoré', 1799, 1850, 0),
(92, 'Becque', 'Henri', 1837, 1899, 0),
(93, 'Proverbe arabe', NULL, NULL, NULL, 0),
(94, 'Proverbe berbère', NULL, NULL, NULL, 0),
(95, 'Tusser', 'Thomas', 1524, 1580, 0),
(96, 'de Bignicourt', 'Simon', 1709, 1775, 0),
(97, 'Poète inconnu', NULL, NULL, NULL, 0),
(98, 'Degas', 'Edgar', 1834, 1917, 0),
(99, 'Mallarmé', 'Stéphane', 1842, 1898, 0),
(100, 'Proust', 'Marcel', 1870, 1922, 0),
(101, 'France', 'Anatole', 1844, 1924, 0),
(102, 'Toulouse', 'André', NULL, NULL, 0),
(103, 'Karr', 'Alphonse', 1808, 1890, 0),
(104, 'De Maupassant', 'Guy', 1850, 1893, 0),
(105, 'Frankin', 'Benjamin', 1706, 1790, 0),
(106, 'de Chamfort', 'Nicolas', 1741, 1794, 0),
(109, 'LABICHE', 'Eugène', 1815, 1888, 0),
(110, 'de La Fontaine', 'Jean', 1621, 1695, 0),
(111, 'Pascal', 'Blaise', 1623, 1662, 0),
(112, 'Capus', 'Alfred', 1858, 1922, 0),
(113, 'de Bergerac', 'Savinien Cyrano', 1619, 1655, 0),
(114, 'Caron de Beaumarchais', 'Pierre-Augustin', 1732, 1799, 0),
(115, 'Proverbe persan', NULL, NULL, NULL, 0),
(116, 'Bierce', 'Ambrose', 1842, 1914, 0),
(117, 'Proverbe hawaïen', NULL, NULL, NULL, 0),
(118, 'Helps', 'Arthur', 1813, 1875, 0),
(119, 'Talleyrand', NULL, 1754, 1838, 0),
(120, 'Renard', 'Jules', 1864, 1910, 0),
(121, 'Comte', 'Auguste', 1798, 1857, 0),
(122, 'de Maintenon', 'Madame', 1635, 1719, 0),
(123, 'Proverbe russe', NULL, NULL, NULL, 0),
(124, 'Corot', 'Camille', 1796, 1875, 0),
(150, 'Proverbe mexicain', NULL, NULL, NULL, 0),
(151, 'Jacob', '', 0, 0, 0),
(152, 'Scribe', 'Eugène', 1791, 1861, 0),
(153, 'Sagesse chinoise', '', 0, 0, 0),
(154, 'Bazin', 'René', 1853, 1932, 0),
(155, 'Epictète', NULL, 50, 130, 0),
(156, 'Eiffel', 'Gustave', 1832, 1923, 0),
(157, 'Platon', NULL, -428, -348, 0),
(158, 'Sappho', NULL, -630, -580, 0),
(159, 'Jaurès', 'Jean', 1859, 1914, 0),
(160, 'Goldberg', 'Isaac', 1887, 1936, 0),
(161, 'D. Roosevelt', 'Franklin', 1882, 1945, 0),
(162, 'Foch', 'Ferdinand', 1851, 1929, 0),
(163, 'Calderon de la Barca', 'Pedro', 1600, 1681, 0),
(164, 'Blake', 'William', 1757, 1827, 0),
(165, 'Proverbe kurde', NULL, NULL, NULL, 0),
(166, 'Ghandi', 'Mohandas Karamchand', 1869, 1948, 0),
(167, 'Proverbe italien', NULL, NULL, NULL, 0),
(168, 'Ménandre', NULL, -343, -292, 0),
(169, 'Gracian y Morales', 'Baltasar', 1601, 1658, 0),
(170, 'Dostoïevski', 'Fiodor', 1821, 1881, 0),
(171, 'Emerson', 'Ralph Waldo', 1803, 1882, 0),
(172, 'Deval', 'Jacques', 1890, 1972, 0),
(173, 'Swetchine', 'Anne Sophie', 1782, 1857, 0),
(174, 'Monselet', 'Charles', 1825, 1888, 0);

-- --------------------------------------------------------

--
-- Structure de la table `QUOTES`
--

CREATE TABLE `QUOTES` (
  `ID` int(11) NOT NULL,
  `AUTH_ID` int(11) NOT NULL,
  `QUOTE` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(20, 3, 'Vous ne parviendrez jamais à faire des sages si vons ne faites d\'abord des polissons.\r\n'),
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
(32, 22, 'Ce n\'est pas parce que les choses sont difficiles que nous n\'osons pas, mais parce que nous n\'osons pas qu\'elles sont difficiles.'),
(33, 21, 'Sans la musique, la vie serait une erreur.'),
(34, 20, 'On n\'est jamais puni pour avoir fait mourir de rire.'),
(35, 34, 'Si les chats portaient des gants ils n\'attraperaient pas de souris.'),
(36, 33, 'Il n\'y a point de chemin vers le bonheur. Le bonheur, c\'est le chemin.'),
(37, 32, 'En matière de sentiment, le manque de logique est la meilleure preuve de la sincérité.'),
(38, 18, 'Les folies sont les seules choses qu\'on ne regrette jamais.'),
(39, 55, 'Quand l\'amour grandit en toi, la beauté fait de même. Car l\'amour est la beauté de l\'âme.'),
(40, 38, 'Le rire et le sommeil sont les meilleurs remèdes du monde.'),
(41, 12, 'Quelque délicat que l\'on soit en amour, on pardonne plus de fautes que dans l\'amitié.'),
(42, 39, 'La pensée n\'est qu\'un éclair au milieu de la nuit. Mais c\'est un élair qui est tout.'),
(43, 41, 'Nous sommes plus curieux du sens des rêves que des choses que nous voyons éveillés.'),
(44, 35, 'Le bonheur c\'est un regard, un mot, un sourire pour ceux qui s\'aiment.'),
(45, 48, 'La vie est comme on la fait.'),
(46, 42, 'On ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.'),
(47, 43, 'On se sert des couleurs mais on peint avec le sentiment.'),
(48, 54, 'Quoi que tu rêves d\'entreprendre, commence-le. L\'audace a du génie du pouvoir, de la magie.'),
(49, 11, 'Un instant de bonheur vaut mille ans dans l\'hitoire'),
(50, 36, 'Noël n\'est pas un jour ni une saison, c\'est un état d\'esprit.'),
(51, 37, 'Pour retrouver sa jeunesse, il n\'y a qu\'à recommencer ses folies'),
(52, 44, 'Le bonheur est en même temps ce qu\'il y a de meilleur, de plus beau et de plus agréable.'),
(53, 45, 'L\'optimiste rit pour oublier; le pessimiste oublie de rire.'),
(54, 47, 'On voyage pour changer, non de lieu, mais d\'idées.'),
(55, 45, 'Fais ce que tu aimes et fais-le souvent'),
(56, 46, 'Un des bonheurs de l\'amitié c\'est d\'avoir à qui confier un secret.'),
(57, 50, 'L\'important n\'est pas ce que l\'on regarde mais ce que l\'on voit.'),
(58, 52, 'Nous portons en nous des merveilles que nous cherchons en dehors de nous.'),
(59, 75, 'N\'engage pas de débat lors d\'un dîner car celui qui n\'a pas faim aura le dernier mot.'),
(60, 72, 'Le courage croît en osant et la peur en hésitant'),
(61, 71, 'Souris à la vie pour qu\'elle te sourie'),
(62, 68, 'Il faut toujours se réserver le droit de rire le lendemain de ses idées de la veille.'),
(63, 78, 'L\'amour, c\'est la fusion, l\'identification de deux êtres qui s\'admirent et s\'adorent l\'un l\'autre'),
(64, 67, 'La variété est la véritable épice de la vie. Qui lui donne toute sa saveur.'),
(65, 53, 'Si haut que parvienne une chose lancée, c\'est à terre qu\'elle retourne.'),
(66, 66, 'Le bonheur est une chose qui se miltiplie quand il se divise.'),
(67, 21, 'Vivre de telle sortie qu\'il te faille désirer revivre, c\'est là ton devoir.'),
(68, 79, 'L\'espérance d\'une joie est presque égale à la joie qu\'elle donne.'),
(69, 56, 'Le plaisir se ramasse, la joie se  cueille et le bonheur se cultive.'),
(70, 65, 'Apprends comme si tu devais vivre pour toujours et vis omme si tu devais mourir ec soir!'),
(71, 10, 'Sachez vous éloigner car, lorsque vous reviendrez à votre travail, votre jugement sera plus sûr.'),
(72, 62, 'Les passions sont les seuls orateurs qui persuadent toujours.'),
(73, 20, 'Apprends à écrire tes blessures dans le sable et à graver tes joies dans la pierre.'),
(74, 9, 'La table est l\'entremetteuse de l\'amitié.'),
(75, 7, 'Les grandes choses peuvent se manifester par de petits signes.'),
(76, 80, 'Il est temps de vivre la vie que tu t\'es imaginée'),
(77, 81, 'La crainte du danger est mille fois plus terrifiante que le danger présent.'),
(78, 41, 'Nous sommes plus curieux du sens des rêves que des choses que nous voyons éveilles.'),
(79, 20, 'Le rire que tu offres aux autres te sera rendu au centuple.'),
(80, 76, 'Ce qui est le meilleur dans le nouveau est ce qui répond à un désir ancien.'),
(81, 77, 'Les petits esprits triomphent des fautes des grands génies, comme les hiboux se réjouissent d\'un éclipse de soleil.'),
(82, 20, 'Lorsque les hommes travaillent ensemble, les montagnes se changent en or.'),
(83, 32, 'En matière de sentiment, le manque de logique est la meilleure preuve de la sincérité.'),
(84, 60, 'En se posant sur la branche, le papillon craint de la briser.'),
(86, 5, 'La plus grande gloire, ce n’est pas de ne jamais tomber. C’est de se relever à chaque fois qu’on tombe.'),
(87, 58, 'Guérir parfois, soulager souvent,écouter toujours.'),
(88, 57, 'À qui sait attendre, tout vient à point.'),
(90, 82, 'Hâtons-nous de succomber à la tentation avant qu\'elle ne s\'éloigne.'),
(91, 59, 'La joie n\'est pas dans les choses, elle est en nous.'),
(92, 61, 'Plus le visage est sérieux, plus le sourire est beau.'),
(93, 83, 'Les rêves d\'un chat sont peuplés de souris'),
(94, 84, 'La découverte d\'un mets nouveau fait plus pour le bonheur du genre humain que la découverte d\'une étoile. '),
(95, 63, 'L\'imagination vaut bien des voyages et elle coûte moins cher.'),
(96, 64, 'À coeur vaillant rien d\'impossible.'),
(97, 23, 'La découverte d\'un mets nouveau fait plus pour le bonheur du genre humain que la découverte d\'une étoile.'),
(98, 85, 'Il n\'est pas d\'hiver sans neige, de printemps sans soleil, et de joie sans être partagée.'),
(99, 20, 'Chaque coup de colère est un coup de vieux, chaque sourire est un coup de jeune.'),
(100, 5, 'La nature fait les hommes semblables, la vie les rend différents.'),
(101, 42, 'On ne voit bien qu\'avec le coeur. L\'essentiel est invisible pour les yeux.'),
(102, 23, 'On avale à pleine gorgée le mensonge qui nous flatte, et l’on boit goutte à goutte une vérité qui nous est amère.'),
(103, 5, 'Une image vaut mille mots.'),
(104, 86, 'Les amis sont des compagnons de voyage, qui nous aident à avancer sur le chemin d’une vie plus heureuse.'),
(105, 40, 'Vis comme si tu devais mourir demain, apprends comme si tu devais vivre toujours.'),
(106, 87, 'On ne peut apprendre au crabe à marcher droit.'),
(107, 3, 'Qui rougit est déjà coupable, la vraie innocence n\'a honte de rien'),
(108, 20, 'Apprends à écrire tes blessures dans le sable et à graver tes joies dans la pierre'),
(109, 53, 'Là où l\'on s\'aime il ne fait jamais nuit.'),
(110, 17, 'La nature nous a donné une langue et deux oreilles, afin que nous écoutions le double de ce que nous disions.'),
(112, 5, 'Je ne cherche pas à connaître les réponses, je cherche à comprendre les questions.'),
(113, 88, 'Rien ne peut résister à l\'assault du rire.'),
(114, 89, 'Si vous voulez que vos rêves se réalisent, ne dormez pas.'),
(115, 90, 'Un rire sincère est un rayon de soleil dans une maison.'),
(116, 91, 'Il faut toujours bien faire ce qu\'on fait, même une folie.'),
(117, 92, 'Le malheur de l\'égalité, c\'est que nous ne la voulons qu\'avec nos supérieurs.'),
(118, 20, 'Si tu veux être heureux, sois-le.'),
(119, 93, 'Quand tu lances la flêche de la vérité, trempe toujours la pointe dans du miel.'),
(120, 54, 'Veux-tu vivre heureux? Voyage avec deux sacs, l\'un pour donner, l\'autre pour recevoir.'),
(121, 53, 'L\'espérance, c\'est rentrer sous la pluie et rentrer par un beau soleil.'),
(122, 20, 'Maison de paille où l\'on rit vaut mieux qu\'un palais où l\'on pleure.'),
(123, 94, 'Les soucis enlaidissent, c\'est la joie qui fait fleurir.'),
(124, 65, 'Le voyage est un retour vers l\'essentiel.'),
(125, 95, 'À Noël, amusons-nous, profitons-en, car Noël ce n\'est qu\'une fois par an.'),
(126, 95, 'La véritable générosité donne sans espoir de retour.'),
(127, 96, 'Si on ne cultive pas le bonheur comment voulez-vous qu\'il pousse ?'),
(128, 51, 'Le bonheur est la plus grande des conquêtes, celle qu\'on fait contre le destin qui nous est imposé.'),
(129, 42, 'Toutes les grandes personnes ont d\'abord été des enfants, mais peu d\'entre elles s\'en souviennent.'),
(130, 57, 'Rire est le propre de l\'homme.'),
(132, 98, 'Le dessin n\'est pas la forme, il est la manière de voir la forme.'),
(133, 11, 'Fais ton bonheur par le bonheur d\'autrui.'),
(134, 99, 'Un poème est un mystère dont le lecteur doit chercher la clef.'),
(135, 33, 'Il ne faut pas dire oui avec la bouche et non avec le coeur.'),
(136, 22, 'La vie ce n\'est pas d\'attendre que l\'orage passe c\'est d\'apprendre à danser sous la pluie.'),
(137, 100, 'Le véritable voyage de découverte ne consiste pas à chercher de nouveaux paysages, mais à avoir de nouveaux yeux.'),
(138, 45, 'Dans la vie, tu as deux choix le matin : soit tu te recouches pour continuer à rêver, soit tu te lèves pour réaliser tes rêves.'),
(139, 20, 'Pour les habits, rien ne vaut les neufs; pour les amis, rien ne vaut les vieux.'),
(140, 104, 'De toutes les passions, la seule vraiment respectable me paraiît être la gourmandise.'),
(141, 40, 'Le bonheur vous appartient quand, ce que vous pensez, ce que vous dites et ce que vous faites sont en harmonie.'),
(142, 5, 'Notre plus grande gloire n\'est pas de ne jamais tomber, mais de nous relever chaque fois.'),
(143, 101, 'Les plus beaux livres sont ceux qui n\'ont jamais été écrits.'),
(144, 102, 'Les choses ne sont pas bonnes parce qu\'elles sont vieilles, elles sont vieilles parce qu\'elles sont bonnes.'),
(145, 103, 'L\'âge auquel on partage tout est généralement l\'âge où on n\'a rien.'),
(146, 6, 'Les mots manquent aux émotions.'),
(147, 33, 'La puissance, c\'est imposer sa volotoné aux autres. La force, c\'est de se l\'imposer à soi-même.'),
(148, 11, 'Un instant de bonheur vaut mille ans dans l\'histoire.'),
(149, 105, 'À vingt ans, c\'est la volonté qui règne, à trente ans, c\'est l\'esprit et à quarante le jugement.');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `AUTHORS`
--
ALTER TABLE `AUTHORS`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD UNIQUE KEY `NAME` (`NAME`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_3` (`ID`);

--
-- Index pour la table `QUOTES`
--
ALTER TABLE `QUOTES`
  ADD KEY `ID` (`ID`),
  ADD KEY `AUTH_ID` (`AUTH_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `AUTHORS`
--
ALTER TABLE `AUTHORS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT pour la table `QUOTES`
--
ALTER TABLE `QUOTES`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `QUOTES`
--
ALTER TABLE `QUOTES`
  ADD CONSTRAINT `QUOTES_ibfk_1` FOREIGN KEY (`AUTH_ID`) REFERENCES `AUTHORS` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
