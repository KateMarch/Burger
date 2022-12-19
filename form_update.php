<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="handler/update.php" method="post">
    <?php
    /** @var PDO $db */
    $db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';

    $id = $_GET['id'];

    $menu = $db->query("SELECT * FROM menu WHERE id = {$id}")->fetch( PDO::FETCH_ASSOC);
    ?>
    <input type="hidden" name="id" value="<?= $menu['id']?>">
    <input type="text" name="name" placeholder= "Название" value="<?= $menu['name']?>">
    <input name="price" type="number" placeholder="Цена" value="<?= $menu['price']?>">
    <input name="message" placeholder="Описание" value="<?= $menu['description']?>">
    <input name="img" type="url" placeholder="ссылка на картинку" value="<?= $menu['img']?>">
    <button type="submit">Изменить</button>
</form>
</body>
</html>
