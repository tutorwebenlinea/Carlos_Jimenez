console.log('validacion.js');

function valida_campos_registro(argument) {
  let txt_registro = document.querySelectorAll(".registro .txt");
  let campoVacio = 0;
  for (var i = 0; i < txt_registro.length; i++) {
    // console.log(txt_registro[i].value);
    if (txt_registro[i].value == "" || txt_registro[i].value.length == 0) {
      // console.log('vacio');
      console.log("El campo " + txt_registro[i].getAttribute("name") + " esta vacio");
      campoVacio++;
    } else {
      console.log("El campo " + txt_registro[i].getAttribute("name") + " esta lleno");
    }
    // console.log(txt_registro);
  }
  console.log('===================================');
  if (campoVacio == 0) {
    return true;
  } else {
    return false;
  }
}


function IsEmail(email) {
  var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if (!regex.test(email)) {
    return false;
  } else {
    return true;
  }
}