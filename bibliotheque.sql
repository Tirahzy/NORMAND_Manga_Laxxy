-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 13:33
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `nom` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `idauteur` int(11) NOT NULL,
  `manga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`nom`, `date`, `idauteur`, `manga`) VALUES
('Miura Kentarou', '11 juillet 1966', 1, 'Berserk'),
('Araki, Hirohiko', 'Jun 7, 1960', 2, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run'),
('Inoue, Takehiko', 'Jan 12, 1967', 3, 'Vagabond'),
('Oda, Eiichiro', 'Jan 1, 1975', 4, 'One Piece'),
('Urasawa, Naoki', 'Jan 2, 1960', 5, 'Monster');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `titre` varchar(100) NOT NULL,
  `année` varchar(100) NOT NULL,
  `note` float NOT NULL,
  `description` varchar(5000) NOT NULL,
  `idmanga` int(11) NOT NULL,
  `idAuteur` int(11) NOT NULL,
  `idperso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`titre`, `année`, `note`, `description`, `idmanga`, `idAuteur`, `idperso`) VALUES
('Berserk', '1989', 9.47, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n\r\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.', 1, 1, 1),
('JoJo no Kimyou na Bouken Part 7: Steel Ball Run', '2004', 9.32, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.\r\nThe youthful Johnny Joestar, a crippled former horse racer, has come to San Diego to watch the start of the race. There he encounters Gyro Zeppeli, a racer with two steel balls at his waist instead of a gun. Johnny witnesses Gyro using one of his steel balls to unleash a fantastical power, compelling a man to fire his gun at himself during a duel. In the midst of the action, Johnny happens to touch the steel ball and feels a power surging through his legs, allowing him to stand up for the first time in two years. Vowing to find the secret of the steel balls, Johnny decides to compete in the race, and so begins his bizarre adventure across America on the Steel Ball Run.', 2, 2, 2),
('Vagabond', '1998', 9.27, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.\r\n\r\nAfter the two are separated, Shinmen returns home on a self-appointed mission to notify the Hon\'iden family of Matahachi\'s survival. He instead finds himself a wanted criminal, framed for his friend\'s supposed murder based on his history of violence. Upon being captured, he is strung up on a tree and left to die. An itinerant monk, the distinguished Takuan Soho, takes pity on the \"devil child,\" secretly freeing Shinmen and christening him with a new name to avoid pursuit by the authorities: Musashi Miyamoto.', 3, 3, 4),
('One Piece', '1997 ', 9.22, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.\r\n\r\nTwenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new King of the Pirates. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.', 4, 4, 5),
('Monster', '1994', 9.16, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.\r\n\r\nAs a consequence of his actions, hospital director Heinemann strips Tenma of his position, and Heinemann\'s daughter Eva breaks off their engagement. Disgraced and shunned by his colleagues, Tenma loses all hope of a successful career—that is, until the mysterious killing of Heinemann gives him another chance.\r\n\r\nNine years later, Tenma is the head of the surgical department and close to becoming the director himself. Although all seems well for him at first, he soon becomes entangled in a chain of gruesome murders that have taken place throughout Germany. The culprit is a monster—the same one that Tenma saved on that fateful day nine years ago.', 5, 5, 6);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `perso` varchar(100) NOT NULL,
  `descripiton` varchar(5000) NOT NULL,
  `idperso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`perso`, `descripiton`, `idperso`) VALUES
('Guts', 'Guts is the protagonist of the story. He is a tall, muscular man with a huge sword called the Dragon Slayer, a prosthetic left forearm that has a magnetic grip which also conceals a cannon. Guts is a tragic hero; he is born as one who may be able to struggle against Causality, but seemingly unable to affect it on a large scale.', 1),
('Johnny \"Joe Kid, JoJo\" Joestar', 'Johnny Joestar, also known as \"Joe Kid\" or \"JoJo\", was a racing prodigy. However, when waiting in line for a play, the girl he was with convinced him to cut to the front of the line and bribe the bouncers to throw out the youth in the front of the line, who had been waiting through the night. The youth shot Johnny, resulting in his being paralyzed from the waist down and sent to a hospital, where he was physically abused. Having lost all the friends and respect he had earned as a jockey, no one visited him during his stay in the hospital.', 2),
('Kojirou \"Ganryuu\" Sasaki', 'The legendary archrival of Miyamoto Musashi. Raised by Kanemaki Jisai, after he is found as a baby in casket, floating on the ocean.\r\n\r\nHe develops an intense attachment to swords and fencing at an early age, possessing an almost preternatural ability to react to his opponents\' moves.\r\n\r\nKojirou is deaf and mute, though still literate. His personality is very playful, almost child-like. Ittousai has also commented on the possibility that Kojirou\'s eyes have become better developed to compensate for his lack of hearing.\r\n\r\nKojirou is renowned for his \"Tsubame Gaeshi\" (Turning Swallow Cut) technique, inspired by the movement of a swallow in flight.', 3),
('Luffy \"Mugiwara, Straw Hat\" Monkey D', 'Luffy is the captain of the Straw Hat Pirates and is best friends with all of them and values them over all else. At first glance, Luffy does not appear to be very intelligent, often seeing things in a childish manner and can easily be amazed by the simplest things. However, because he views the world in a straightforward and simple manner, he is occasionally the only person who can see past the events and see what should be done.\r\n\r\nLuffy seems to have an unstoppable appetite, a characteristic that is common to the Japanese archetype of the (at times simple-minded) young male hero/adventurer with a heart of gold; perhaps the hunger more so in Luffy\'s case due to having an elastic stomach. Luffy is also another one of the several characters given the middle initial \"D.\"\r\n\r\nAlthough Luffy is fairly lightheaded and a funny character, he has an unstoppable sense of determination, optimism, and commitment and will do anything to stand up for his friends and comrades. Along with that, he has great courage to back it up as well as unbelievable strength. Ever since consuming the devil fruit he was shown to be not worried about his inability to swim, much like his brother. Much of these traits are common among D\'s. His only display of true fear is towards his grandfather, to the point that he is intimidated at the mere mention of him.\r\n\r\nLuffy never kills any of his enemies, no matter how cold-hearted they are; instead, he frequently sends the villain flying, knocking them out or beating them to a point that they are almost near death, which results in some of the villains searching for revenge, such as Buggy the Clown and Alvida. Oda explains that it\'s not a question of morality so much as a matter of punishing the villains for their crimes - he feels that killing the villains lets them off too lightly, whereas he considers letting them live to see their dreams be ruined a far more fitting punishment.\r\n\r\nLuffy\'s dream is to find the One Piece and become Pirate King. He knows that to achieve his goal, he will have to defeat many strong opponents, including the World Government and his childhood hero Shanks', 4),
('Johan \"Johan Liebheart, Monster\" Liebert', 'Johan Liebert is the namesake \"monster\" of the story and the mystery of his past is the focus of the plot. He has been called a monster, the next Adolf Hitler and even the devil himself. Johan Liebert was shot in the head at a young age but saved from death by Dr. Tenma. Because of this, he is very grateful to Dr. Tenma. He has spent portions of his life in different places under different aliases and possesses an extraordinary level of charisma and intelligence. He uses his gifts to cruelly manipulate and corrupt others, often with no apparent end other than to cause suffering and destruction. His original goal, as he stated when he was young, is to be the last one standing at the end of the world, although towards the end he decides upon a different fate. One of the themes of Monster is how individuals are capable of transforming into monsters; Johan often acts as both a direct and indirect catalyst for this transformation. Johan also shows strong attachment to his twin sister, Nina Fortner/Anna Liebert and refuses to leave her behind', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`idauteur`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`idmanga`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`idperso`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `idauteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `idmanga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `idperso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
