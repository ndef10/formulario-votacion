$('#formulario').submit(function(e) {
  e.preventDefault(); 

  const encuesta_seleccionada = [];
  $('#div_encuesta input[type="checkbox"]:checked').each(function() {
    encuesta_seleccionada.push($(this).val());
  });

  const comuna_seleccionada = $('#comuna option:selected').attr('name');

  const postData = {
      nombre: $('#nombre').val(),
      alias: $('#alias').val(),
      rut: $('#rut').val(),
      email: $('#email').val(),
      region: $('#region').val(),
      comuna_seleccionada: comuna_seleccionada,
      candidato: $('#candidato').val(),
      encuesta: encuesta_seleccionada
  };  

  $.post('validar.php', postData, function(response) {
    console.log(response);
    $('#mensaje_respuesta').html(response);
    $('#formulario').trigger('reset');
  });
});

function buscar() {
    const region = $("#region").val();
    
    if (region === "") {
      $("txtHint").html("");
      return;
}      

$.ajax({
    url: 'comunas.php',
    type: 'POST',
    data: { r: region },        
    success: function(response) {
      $('#div').html(response); 
  
      $('#div').on('change', '#comuna', function() {
        let comuna_seleccionada = $(this).find('option:selected').attr('name');      
      });
    },
    error: function(xhr, status, error) {
      console.log(error);
    }
});
}

    
      


   