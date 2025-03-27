<?php

require '../Models/pdo.php';

$personnage = $_GET['idpersonnage'];

$requete = $dbPDO->prepare('SELECT * FROM personnage WHERE idperso = :personnage');
$requete->bindParam(':personnage', $personnage, PDO::PARAM_INT);
$requete->execute();
$perso = $requete->fetch(PDO::FETCH_ASSOC);

echo '<h1>'.$perso['perso']. '</h1>';
echo '<br>' . $perso['desc'] . '<br>';

echo "<br><a href='../index.php'>Retour vers page d’accueil</a>";