<?php

require 'DBManager.php';

$db = new DBMAnager();

$data = $db->showComplaints();

?>