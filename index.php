<?php require 'Models/pdo.php'; ?>

<?php
$query = $dbPDO->query('SELECT * FROM manga ORDER BY année');
$manga = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Top Manga</title>
</head>
<body>
<h1>Top Manga</h1>
<ul>
    <?php foreach ($manga as $mangas) { ?>
        <li>
            <a href='manga/manga.php?id=<?= $mangas['idmanga'] ?>'>
                <?= $mangas['titre'] ?>
            </a>
            <?= $mangas['année'] ?>
        </li>
    <?php } ?>
</ul>
</body>
</html>