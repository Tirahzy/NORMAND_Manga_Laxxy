<?php
require '../Models/pdo.php';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un personnage</title>
</head>
<body>
<h1>Ajouter un personnage</h1>
<form action="../Controllers/addCharacter.php" method="POST">
    <label for="perso">Nom du personnage</label>
    <input type="text" name="perso" id="perso" required>
    <label for="desc">Description</label>
    <input type="text" name="desc" id="desc" required>
    <button type="submit">Ajouter</button>
</form>

