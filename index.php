<?php require 'Models/pdo.php'?>
<?php
$query = $dbPDO->query('SELECT * FROM manga ORDER BY année');
$manga = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <h1>Top manga</h1>
<?php  foreach ($manga as $mangas) { ?>
<li><?= $mangas['titre'] ?></li>
<?= $mangas['année'] ?>

<?php } ?>