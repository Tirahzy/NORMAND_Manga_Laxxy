<?php
require '../Models/pdo.php';

$id = $_GET['id'];

    $requete = $dbPDO->prepare('SELECT * FROM manga,auteur,personnage WHERE idmanga = :id and manga.idmanga = auteur.idauteur and personnage.idperso=:id');
    $requete->bindParam(':id', $id, PDO::PARAM_INT);
    $requete->execute();
    $manga = $requete->fetch(PDO::FETCH_ASSOC);
     echo '<h1>'.$manga['titre']. '</h1>';
        echo '<p>'.$manga['nom']." - ".$manga['année'].'</p>';


        echo '<br>' . $manga['description'] . '<br>';
        echo "<a href='personnage.php?idpersonnage=".$manga['idperso']."'>". $manga['perso'] . '</a><br>';

?>
