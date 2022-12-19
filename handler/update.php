<?php
/** @var PDO $db */
$db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';

$id = $_POST['id'];

$name = $_POST['name'];
$price = $_POST['price'];
$message = $_POST['message'];
$img = $_POST['img'];

$db->query("UPDATE menu SET name='{$name}', price='{$price}', description='{$message}', img='{$img}' WHERE menu.id={$id}");
header('Location: /admin.php');