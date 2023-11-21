<?php
include("../../php/DBManager/open.php");
if ($sesion) {
    ?>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>SEPCI</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.php">SEPCI</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                    class="fas fa-bars"></i></button>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-8 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="../../php/DBManager/close.php">Cerrar sesión</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Denuncias</div>
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"></div>
                                Buzón de denuncias
                            </a>
                            <div class="sb-sidenav-menu-heading">Inicio</div>
                            <a class="nav-link" href="SliderCRUD.php">
                                <div class="sb-nav-link-icon"></div>
                                Carrusel
                            </a>
                            <a class="nav-link" href="QuienesSomos.php">
                                <div class="sb-nav-link-icon"></div>
                                Editar ¿Quiénes somos?
                            </a>
                            <a class="nav-link" href="Miembros.php">
                                <div class="sb-nav-link-icon"></div>
                                Editar Miembros
                            </a>
                            <a class="nav-link" href="EditarDocumentos.php">
                                <div class="sb-nav-link-icon"></div>
                                Editar Documentos
                            </a>

                            <div class="sb-sidenav-menu-heading">Cursos</div>
                            <a class="nav-link" href="Cursos.php">
                                <div class="sb-nav-link-icon"></div>
                                Editar Cursos
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Sesión inicada como:</div>
                        <?php echo $_SESSION['name']; ?>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Buzón de denuncias</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Denuncias/Buzón de denuncias</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Denuncias
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple" style="text-align:center">
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Correo</th>
                                            <th>Telefono</th>
                                            <th>Nombre del acusado</th>
                                            <th>Cargo del acusado</th>
                                            <th>Sucinto</th>
                                            <th>Evidencia</th>
                                            <th>Fecha de la denuncia</th>
                                            <th>Dar seguimiento</th>
                                            <th>Rechazar</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Correo</th>
                                            <th>Telefono</th>
                                            <th>Nombre del acusado</th>
                                            <th>Cargo del acusado</th>
                                            <th>Sucinto</th>
                                            <th>Evidencia</th>
                                            <th>Fecha de la denuncia</th>
                                            <th>Dar seguimiento</th>
                                            <th>Rechazar</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Anita Ape1 Ape2</td>
                                            <td>Anita@gmail.com</td>
                                            <td>4598653487</td>
                                            <td>Pedro Ape1 Ape2</td>
                                            <td>Maestro</td>
                                            <td>Incinua cosas</td>
                                            <td>
                                                <a target="_blank" href="">
                                                    <img src="../../img/pdf.png" width="48px" height="48px">
                                                </a>
                                            </td>
                                            <td>11/05/2023</td>
                                            <td>
                                                <a style="cursor: pointer" href="">
                                                    <img src="../../img/aceptar.png">
                                                </a>
                                            </td>
                                            <td>
                                                <a style="cursor: pointer" href="">
                                                    <img src="../../img/cancelar.png">
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
            crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>

    </html>
    <?php
} else {
    header('Location: ../login.php');
}
?>