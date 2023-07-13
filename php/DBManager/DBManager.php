<?php
class DBManager
{

    private function open()
    {
        $link = mysqli_connect("127.0.0.1", "root", null, "sepci") or die('Error connecting to Data Base');
        return $link;
    }

    private function close($link)
    {
        mysqli_close($link);
    }

    //////////////////////    --------> CREATE querys <--------  //////////////////////

    public function signFileInicio($title)
    {
        // Inserta un producto.
        $link = $this->open();

        try {
            $link->set_charset('utf8');
            $titulo = $link->real_escape_string($title);

            $sql = "INSERT INTO files (name, root, page_section, document_type) VALUES ('$titulo', 'tmp', 1, 1)";

            mysqli_query($link, $sql) or die("Error at signing file inicio");
            $id_insert = mysqli_insert_id($link);

            $link->commit();
            $this->close($link);

            return $id_insert;
        } catch (mysqli_sql_exception $exception) {
            $link->rollback();
            throw $exception;
        }
    }

    public function insertComplaint($fullName, $mail, $telNumber, $fullNameA, $positionA, $succint, $status)
    {
        $link = $this->open();

        $query = "INSERT INTO complaints (full_name, mail, tel_number, full_nameA, positionA, succint, status) VALUES (?,?,?,?,?,?,?,?)";

        $sql = mysqli_prepare($link, $query) or die("Error adding complain");
        $sql->bind_param("ssssssss", $fullName, $mail, $telNumber, $fullNameA, $positionA, $succint, $evidence);
        $sql->execute();

        $id = mysqli_insert_id($link);

        $this->close($link);
        return $id;
    }



    //////////////////////    --------> READ querys <--------  //////////////////////
    public function login($name, $password)
    {
        $link = $this->open();

        $sql1 = "SELECT id_user FROM users WHERE mail=? AND password=sha1(?) OR name=? AND password=sha1(?)";

        $query = mysqli_prepare($link, $sql1) or die("Error at login");
        $query->bind_param("ssss", $name, $password, $name, $password);
        $query->execute();
        if (mysqli_num_rows(mysqli_stmt_get_result($query))) {
            $_SESSION['name'] = $name;
            header("location: ../../Admin/Panel/index.php");
        } else {
            header("location: ../../Admin/login.php");
        }
    }
    public function showAboutUs()
    {
        $link = $this->open();

        $sql = "SELECT * FROM about_us_info";

        $result = $link->query($sql);

        return $result;
    }

    public function showMembers()
    {
        $link = $this->open();

        $sql = "SELECT id_members, names, middle_name, last_name, rol, root_image, mail FROM members;";

        $result = $link->query($sql);

        return $result;
    }

    public function showEachMembers($id)
    {
        $link = $this->open();

        $sql = "SELECT names, middle_name, last_name, mail, rol, root_image FROM members WHERE id_members=?";
        $query = mysqli_prepare($link, $sql) or die("Error at login");
        $query->bind_param("s", $id);
        $query->execute();
        $result = mysqli_stmt_get_result($query);

        return $result;
    }

    public function showFileAboutUs()
    {
        $link = $this->open();

        $query = "SELECT root_about_us FROM about_us_info";
        $result = $link->query($query);

        $this->close($link);

        $row = $result->fetch_row();
        return $row[0];
    }

    public function showDocuments()
    {
        $link = $this->open();

        $query = "SELECT id_file,name,root FROM files WHERE page_section=1";
        $result = $link->query($query);

        $this->close($link);

        return $result;
    }

    public function showFileInicio($id_file)
    {
        $link = $this->open();

        $query = "SELECT root FROM files WHERE id_file=?";
        $sql = mysqli_prepare($link, $query) or die("Error at login");
        $sql->bind_param("s", $id_file);
        $sql->execute();
        $result = mysqli_stmt_get_result($sql);

        $this->close($link);

        $row = $result->fetch_row();
        return $row[0];
    }
    //////////////////////    --------> UPDATE querys <--------  //////////////////////
    public function updateAboutUs($id, $info, $root)
    {
        $link = $this->open();

        $sql = "UPDATE about_us_info SET information=?,root_about_us=? WHERE id_aboutus=?";

        $query = mysqli_prepare($link, $sql) or die("Error at update info about us");
        $query->bind_param("sss", $info, $root, $id);
        $query->execute();

        $this->close($link);
    }
    public function updateAboutUsTwo($id, $info)
    {
        $link = $this->open();

        $sql = "UPDATE about_us_info SET information=? WHERE id_aboutus=?";

        $query = mysqli_prepare($link, $sql) or die("Error at update info about us");
        $query->bind_param("ss", $info, $id);
        $query->execute();

        $this->close($link);
    }

    public function updateInicio($id_file, $title, $root)
    {
        $link = $this->open();

        $sql = "UPDATE files SET name=?,root=? WHERE id_file=?";

        $query = mysqli_prepare($link, $sql) or die("Error at update document in index");
        $query->bind_param("sss", $title, $root, $id_file);
        $query->execute();

        $this->close($link);
    }

    public function updateInicioTwo($id_file, $title)
    {
        $link = $this->open();

        $sql = "UPDATE files SET name=? WHERE id_file=?";

        $query = mysqli_prepare($link, $sql) or die("Error at update document in index");
        $query->bind_param("ss", $title, $id_file);
        $query->execute();

        $this->close($link);
    }
    //////////////////////    --------> DELETE querys <--------  //////////////////////

    public function deleteFileInicio($id_file)
    {
        $link = $this->open();

        $query = "DELETE FROM files WHERE id_file=?";

        $sql = mysqli_prepare($link, $query) or die("Error at deleting file");
        $sql->bind_param("s", $id_file);
        $sql->execute();

        $this->close($link);
    }
}
?>