<?php
require '../Models/pdo.php';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un manga</title>
</head>
<body>
<h1>Ajouter un manga</h1>
<form action="../Controllers/addManga.php" method="POST">
    <label for="titre">Titre du manga</label>
    <input type="text" name="titre" id="titre" required>
    <label for="année">Année de sortie</label>
    <input type="varchar" name="année" id="année" required>
    <label for="description">Description</label>
    <textarea name="description" rows="8" cols="30"></textarea>
    <button type="submit">Ajouter</button>
</form>
</body>
