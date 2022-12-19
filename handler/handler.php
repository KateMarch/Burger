<?php
/** @var PDO $db */
$db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';

$name = $_POST['name'];
$price = $_POST['price'];
$message = $_POST['message'];
$img = $_POST['img'];

$db->query("INSERT INTO menu (name, price, description, img) VALUES ('{$name}', '{$price}', '{$message}', '{$img}')");
header('Location: /admin.php');
