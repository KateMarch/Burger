<?php
/** @var PDO $db */
$db = require $_SERVER['DOCUMENT_ROOT'] . '/common/db.php';

$id = $_GET['id'];

$db->query("DELETE FROM menu WHERE id = {$id}");
header('Location: /admin.php');