<?php

class Course{
    public function showCourse($id){
        require_once 'DBManager.php';

        $db = new DBMAnager();

        $data = $db->showEachCourse($id);

        return $data;
    }
}

?>