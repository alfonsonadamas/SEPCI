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
  });
});

