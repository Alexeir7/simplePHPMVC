
var isEmpty = /^\s*$/;

var miFormulario = document.getElementById("formulario1");

miFormulario.addEventListener("submit", formulario1_onsubmit,false);

function formulario1_onsubmit(e){

  var nombre, apellido, domicilio, email;
  nombre = document.getElementById("nombre").value;
  apellido = document.getElementById("apellido").value;
  domicilio = document.getElementById("domicilio").value;
  email = document.getElementById("email").value;

  if(nombre.match(isEmpty) && apellido.match(isEmpty) && domicilio.match(isEmpty) && email.match(isEmpty)){
    alert("Uno o mas campos se encuentran vacios!");
  }

  console.log(nombre);
  console.log(apellido);
  console.log(domicilio);
  console.log(email);

  e.preventDefault();
  return false;
}
