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

  if (campoVacio == 0) {
    return true;
  } else {
    return false;
  }
}