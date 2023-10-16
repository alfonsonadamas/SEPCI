<?php
    class DBManager{

        private function open(){
            $link = mysqli_connect("127.0.0.1", "root", null, "sepci") or die('Error connecting to Data Base');
            return $link;
        }

        private function close($link){
            mysqli_close($link);
        }

        //////////////////////    --------> CREATE querys <--------  //////////////////////

        public function addCourse($nombre, $desc, $root, $tipo, $contenido){
            $link = $this->open();
            $sql = "INSERT INTO courses (course_name, course_descrip, root_course, tipo, contenido) VALUES ( ?, ?, ?, ?, ?);";
            $query = mysqli_prepare($link, $sql) or die("Error at login");
            $query -> bind_param("sssss", $nombre, $desc, $root, $tipo, $contenido);
            $query -> execute();

            $this->close($link);
        
        
        }

        //////////////////////    --------> READ querys <--------  //////////////////////
        public function login($name, $password){
            $link = $this->open();

            $sql1 = "SELECT id_user FROM users WHERE mail=? AND password=sha1(?) OR name=? AND password=sha1(?)";
            
            $query = mysqli_prepare($link, $sql1) or die("Error at login");
            $query -> bind_param("ssss", $name, $password, $name, $password);
            $query -> execute();
            if(mysqli_num_rows(mysqli_stmt_get_result($query))){
                $_SESSION['name'] = $name;
                header("location: ../../Admin/Panel/index.php");
            }
            else{
                header("location: ../../Admin/login.php");
            }
        }
        public function showAboutUs(){
            $link = $this->open();

            $sql = "SELECT * FROM about_us_info";

            $result = $link->query($sql);

            return $result;
        }

        public function showCourses(){
            $link = $this->open();

            $sql = "SELECT * FROM courses";

            $result = $link->query($sql);

            return $result;
        }

        public function showMembers(){
            $link = $this->open();

            $sql = "SELECT id_members, names, middle_name, last_name, rol FROM members;";
            
            $result = $link->query($sql);

            return $result;
        }

        public function showEachMembers($id){
            $link = $this->open();

            $sql = "SELECT names, middle_name, last_name, mail, rol, root_image FROM members WHERE id_members=?";
            $query = mysqli_prepare($link, $sql) or die("Error at login");
            $query -> bind_param("s", $id);
            $query -> execute();
            $result = mysqli_stmt_get_result($query);

            return $result;
        }

        public function showEachCourse($id){
            $link = $this->open();

            $sql = "SELECT * FROM courses WHERE id_course=?";
            $query = mysqli_prepare($link, $sql) or die("Error at login");
            $query -> bind_param("s", $id);
            $query -> execute();
            $result = mysqli_stmt_get_result($query);

            return $result;
        }
        public function showFileAboutUs(){
            $link = $this -> open();

            $query="SELECT root_about_us FROM about_us_info";
            $result = $link -> query($query);

            $this -> close($link);

            $row = $result->fetch_row();
            return $row[0];
        }

        public function showFileCourse($id){
            $link = $this -> open();

            $query="SELECT root_course FROM courses WHERE id_course = $id";
            $result = $link -> query($query);

            $this -> close($link);

            $row = $result->fetch_row();
            return $row[0];
        }
        //////////////////////    --------> UPDATE querys <--------  //////////////////////
        public function updateAboutUs($id, $info, $root){
            $link = $this->open();

            $sql = "UPDATE about_us_info SET information=?,root_about_us=? WHERE id_aboutus=?";
            
            $query = mysqli_prepare($link, $sql) or die("Error at update info about us");
            $query -> bind_param("sss", $info, $root, $id);
            $query -> execute();

            $this->close($link);
        }
        public function updateAboutUsTwo($id, $info){
            $link = $this->open();

            $sql = "UPDATE about_us_info SET information=? WHERE id_aboutus=?";
            
            $query = mysqli_prepare($link, $sql) or die("Error at update info about us");
            $query -> bind_param("ss", $info, $id);
            $query -> execute();

            $this->close($link);
        }

        public function updateCourse($id, $desc, $titulo, $root){
            $link = $this->open();

            $sql = "UPDATE courses SET course_name=?, course_descrip=?, root_course=? WHERE id_course=?";
            
            $query = mysqli_prepare($link, $sql) or die("Error at update course");
            $query -> bind_param("ssss", $titulo, $desc, $root, $id);
            $query -> execute();

            $this->close($link);
        }

        public function updateCourseTwo($id, $desc, $titulo){
            $link = $this->open();

            $sql = "UPDATE courses SET course_name=?, course_descrip=? WHERE id_course=?";
            
            $query = mysqli_prepare($link, $sql) or die("Error at update course");
            $query -> bind_param("sss", $titulo, $desc, $id);
            $query -> execute();

            $this->close($link);
        }
        //////////////////////    --------> DELETE querys <--------  //////////////////////
        public function deleteCourse($id){
            $link = $this->open();

            $sql = "DELETE FROM courses WHERE id_course=?";
            
            $query = mysqli_prepare($link, $sql) or die("Error at update course");
            $query -> bind_param("s", $id);
            $query -> execute();

            $this->close($link);
        }
    }
?>