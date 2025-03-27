<?php
require '../Models/pdo.php';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un auteur</title>
</head>
<body>
<h1>Ajouter un auteur</h1>
<form action="../Controllers/addAuthor.php" method="POST">
    <label for="nom">Nom de l'auteur</label>
    <input type="text" name="nom" id="nom" required>
    <label for="naissance">année de naissance</label>
    <input type="varchar" name="naissance" id="naissance" required>
    <button type="submit">Ajouter</button>
