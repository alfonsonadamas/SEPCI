<?php

require 'DBManager.php';

$db = new DBMAnager();

$id_members = $_REQUEST['id'];
$name = $_POST['name'];
$middle_name = $_POST['middle'];
$last_name = $_POST['last'];
$mail = $_POST['mail'];


$data = $db->updateEditMembers($id_members, $name, $middle_name, $last_name, $mail);
header('location: ../../Admin/Panel/Miembros.php');
?>