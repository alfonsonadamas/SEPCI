$(document).ready(function () {
  $('#myModal').on('show.bs.modal', function (event) {
    var enlace = $(event.relatedTarget); // Enlace que activó la ventana modal
    var nombre = enlace.data('nombre');
    var cargo = enlace.data('cargo');
    var correo = enlace.data('correo');

    var modal = $(this);
    modal.find('#nombre').text(nombre);
    modal.find('#cargo').text(cargo);
    modal.find('#correo').text(correo);

    // Agrega un manejador de eventos para el botón de redirección // FuncionAsesora
    modal.find('#redireccionarBtn').on('click', function () {
      // Redirigir según el rol
      if (cargo === "Presidencia" || cargo === "Presidencia (Suplente)") {
        window.location.href = "FuncionPresidente.php";
      } else if (cargo === "Miembro Propietario" || cargo === "Miembro (Suplente)") {
        window.location.href = "FuncionMiembro.php";
      } else if (cargo === "Secretaría Ejecutiva" || cargo === "Secretaría Ejecutiva (Suplente)") {
        window.location.href = "FuncionSecretariaEjecutiva.php";
      } else if (cargo === "Secretaría Técnica" || cargo === "Secretaría Técnica (Suplente)") {
        window.location.href = "FuncionSecretariaTecnica.php";
      } else if (cargo === "Persona Asesora") {
        window.location.href = "FuncionAsesora.php";
      } else if (cargo === "Persona Consejera") {
        window.location.href = "FuncionConsejera.php";
      } else {
        window.location.href = "index.php";
      }
    });
  });
});
