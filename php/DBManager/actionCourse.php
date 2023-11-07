<?php

require 'DBManager.php';

$db = new DBMAnager();
srand(time());
$info = $_POST['descripcion'];
$titulo = $_POST['titulo'];
$id = $_REQUEST['id_curso'];
$numero_aleatorio = rand(1,100);

if (isset($_FILES['archivo']) && !empty($_FILES['archivo']['tmp_name'])) {
    if (is_uploaded_file($_FILES['archivo']['tmp_name']) && $_FILES['archivo']["error"] === 0) {
        $limite_kb = 20000;
        $rutaArchivo = $db->showFileCourse($id);
        $ruta = '../../pdf/Courses/1'.'/'.$_FILES['archivo']['name'];
         
        if ($_FILES["archivo"]["type"]=="image/x-icon" && $_FILES["archivo"]["size"] <= $limite_kb * 1024) { //se verifica que el archivo ingresado sea el permitido y que no exceda el limite de peso
             
                 unlink('../../pdf/Courses'.'/'.$rutaArchivo);
             
            
            
            if (!file_exists($ruta)) { // se copia la imagen a la ruta si esta imagen no existe, si ya hay una imagen repetida no deja volver a sunbirla
                echo $ruta;
                $resultado = @move_uploaded_file($_FILES["archivo"]["tmp_name"], $ruta);
                if ($resultado) { // Si la funcion @move_uploaded_file copio exitosamente el archivo procede a guardar la ruta y los datos en la base de datos
                    $db->updateCourse($id, $info, $titulo,'1'.'/'.$_FILES['archivo']['name']);
                    header('location: ../../Admin/Panel/Cursos.php');
                } else {
                    echo "No se guardo imagen1";
                }
            } else {
                 echo $ruta;
                $resultado = @move_uploaded_file($_FILES["archivo"]["tmp_name"], '../../pdf/Courses/1'.'/'.$numero_aleatorio.$_FILES['archivo']['name']);
                if ($resultado) { // Si la funcion @move_uploaded_file copio exitosamente el archivo procede a guardar la ruta y los datos en la base de datos
                    $db->updateCourse($id, $info, $titulo,'1'.'/'.$numero_aleatorio.$_FILES['archivo']['name']);
                    header('location: ../../Admin/Panel/Cursos.php');
                } else {
                    echo "No se guardo imagen";
                }
            }
        } else {
            echo "Imagen no permitida o pesada";
        }
    }
} else {
    $db->updateCourseTwo($id,$info, $titulo);
    header('location: ../../Admin/Panel/Cursos.php');
}

?>