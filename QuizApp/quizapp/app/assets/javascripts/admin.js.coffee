# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $("#data").dataTable(  {
          "language": {
              "lengthMenu": "Desplegar _MENU_ ",
              "zeroRecords": "No se encontro nada",
              "info": "Mostrando página _PAGE_ de _PAGES_",
              "infoEmpty": "No hay tuplas disponibles",
              "infoFiltered": "(filtrado de _MAX_ tuplas en total)",
              "search":         "Buscar:",
              "paginate": {
                "first":      "Primero",
                "last":       "Último",
                "next":       "Siguiente",
                "previous":   "Anterior"
                },
              "aria": {
                "sortAscending":  ": activar para ordenar columna de manera ascendiente",
                "sortDescending": ": activar para ordenar columna de manera descendiente"
              }
          }
      })
