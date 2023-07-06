<?php

include 'DBManager.php';

$db = new DBManager();

$fullName = $_POST['name'];
$mail = $_POST['email'];
$telPhone = $_POST['phone'];
$denunced = $_POST['name_Denounced'];
$post = $_POST['post_Denounced'];
$succint = $_POST['succint'];

$titulo = $_POST['titulo'];

$id = $db->signFileInicio($titulo);

$limite_kb = 20000;
if ($_FILES["archivo"]["type"] == "application/pdf" && $_FILES["archivo"]["size"] <= $limite_kb * 1024) {
    $rootCM = '../../pdf/Complains' . '/' . $id . '/' . $_FILES["archivo"]["name"];
    $ruta = '../../pdf/Complains' . '/' . $id;
    if (!file_exists($ruta)) {
        mkdir($ruta);
    }
    if (!file_exists($rootCM)) {
        $resultado = @move_uploaded_file($_FILES["archivo"]["tmp_name"], $rootCM);
        if ($resultado) { // Si la funcion @move_uploaded_file copio exitosamente la imagen procede a guardar la ruta y los datos en la base de datos
            $db -> insertComplaint($fullName, $mail,$telPhone,$denunced,$post,$succint, 1);
            header('location: ../../Buzon-de-atencion.html');
        } else {
            echo "No se guardo archivo";
        }
    }
} else {
    echo "Archivo no permitido o pesado";
}

?>