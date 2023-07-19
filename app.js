let comuna_seleccionada;

function buscar() {
  let region = document.getElementById("region").value;

  if (region === "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  }

  fetch("comunas.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded"
    },
    body: "region=" + encodeURIComponent(region)
  })
  .then(response => response.text())
  .then(data => {
    document.getElementById("div").innerHTML = data;

    document.getElementById("div").addEventListener("change", function() {
      comuna_seleccionada = this.querySelector("option:checked").getAttribute("name");      
    });
  })
  .catch(error => console.log('error', error));
}


let formulario = document.getElementById('datos_formulario');
 
formulario.addEventListener('submit', e => {
  e.preventDefault();

  let remover_clase = document.querySelectorAll('.remover')

  if (remover_clase.length > 0) {
    for(let i = 0; i < remover_clase.length; i++) {
      remover_clase[i].parentNode.removeChild(remover_clase[i])
    }
  }

  if (typeof comuna_seleccionada === 'undefined') {
    const comuna_error = document.getElementById('comuna-error');
    if (comuna_error) {
      comuna_error.textContent = 'La comuna no ha sido seleccionada';
      comuna_error.style.display = 'block';
      comuna_error.classList.add('text-danger');
      comuna_error.classList.add('remover');

      const comuna_input = document.getElementById('comuna');
      comuna_input.setAttribute('aria-describedby', 'comuna-error');
    }    
    return;
  }  

  let datos = new FormData(formulario);
   
  datos.append('comuna_seleccionada', comuna_seleccionada);

  let peticion = {
    method: 'POST',
    body: datos,
  }   
  
  fetch('validar.php',peticion)
  .then(respuesta => respuesta.json())
  .then(respuesta => {
      if (respuesta.error) {      
        const mensaje_error = document.getElementById('mensaje');
        mensaje_error.textContent = respuesta.error;
        mensaje_error.classList.add('mensaje-centrado');
        mensaje_error.classList.add('text-danger');
        mensaje_error.classList.add('remover');
        mensaje_error.style.display = 'block';  
        
        formulario.reset();
         
        setTimeout(() => {
          mensaje_error.style.display = 'none';
        }, 3000);        

      } else if (respuesta.exito) {      
        const mensaje_exito = document.getElementById('mensaje');
        mensaje_exito.textContent = respuesta.exito;
        mensaje_exito.classList.add('mensaje-centrado');
        mensaje_exito.classList.add('text-success');
        mensaje_exito.classList.add('remover');
        mensaje_exito.style.display = 'block';
    
        formulario.reset();
        
        setTimeout(() => {
          mensaje_exito.style.display = 'none';
        }, 3000);

      }else {      
        for(const resultado in respuesta) {
        let padre = document.querySelector('#'+resultado);
        padre.classList.add('resaltar');
        let txt = document.createElement('p');
        txt.classList.add('text-danger');
        txt.classList.add('remover');
        txt.innerHTML = respuesta[resultado];
        document.querySelector('#'+resultado).insertAdjacentElement('afterend', txt);                
      }
    }
  }).catch(error =>console.log('error', error));
});
 
