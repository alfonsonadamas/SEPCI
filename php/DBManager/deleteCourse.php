<?php

    require 'DBManager.php';
    $id = $_REQUEST['id_curso'];

    $db = new DBMAnager();

    $rutaArchivo = $db->showFileCourse($id);
    unlink('../../pdf/Courses'.'/'.$rutaArchivo);

    $db->deleteCourse($id);
    

    header('location: ../../Admin/Panel/Cursos.php');

?>