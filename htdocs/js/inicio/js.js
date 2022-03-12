function inicio(argument) {

  function input_clear(argument) {
    let input = document.querySelectorAll("input");

    console.log('xxxxxxxxxxxxxxxxxxxxxxxxxxx');
    for (var i = 0; i < input.length; i++) {
      console.log(input[i].getAttribute("type"));
      if (!(input[i].getAttribute("type") == "submit")) {
        input[i].value = "";
      }

    }
  }
  input_clear();
  // ========================================================
  //  Plantilla 
  const signUpButton = document.getElementById('signUp');
  const signInButton = document.getElementById('signIn');
  const container = document.getElementById('container');

  signUpButton.addEventListener('click', () => {
    container.classList.add("right-panel-active");
  });

  signInButton.addEventListener('click', () => {
    container.classList.remove("right-panel-active");
  });

  // ========================================================

  let btn_nombre = document.querySelector(".registro .nombre");
  let btn_correo = document.querySelector(".registro .correo");
  let btn_pass = document.querySelector(".registro .pass");
  let btn_registro = document.querySelector(".registro .btn_registro");

  console.log(btn_nombre);
  console.log(btn_correo);
  console.log(btn_pass);

  btn_registro.addEventListener("click", function(argument) {
    argument.preventDefault();
    if (valida_campos_registro()) {
      altaUsuario(btn_nombre, btn_correo, btn_pass);
    } else {
      console.log('Tienes campos cvacios ')
    }

  });

  function altaUsuario(btn_nombre, btn_correo, btn_pass) {
    console.log(btn_nombre);
    console.log(btn_correo);
    console.log(btn_pass);
    let modal_inicio = document.getElementById("modal_inicio");
    let modal_mensaje = document.querySelector("#modal_inicio .modal_mensaje");
    let formData = new FormData();

    formData.append("nombre", btn_nombre.value);
    formData.append("correo", btn_correo.value);
    formData.append("pass", btn_pass.value);
    let datos = formData;
    $.ajax({
      url: './php/inicio/comp.php',
      type: 'POST',
      data: datos,
      contentType: false,
      cache: false,
      processData: false,
    }).done(function() {

      console.log("success");

    }).fail(function(error) {

      console.log(error);

    }).always(function(resultado) {

      console.log(resultado);

      let mensaje = JSON.parse(resultado);

      if (mensaje['respuesta'] == "existe") {
        modal_mensaje.innerHTML = " el coreo electronico ya exuiste ";
        modal_inicio.style.display = "block";
        modal_inicio.style.zIndex = "100";

        //  
      } else if (mensaje['respuesta'] == "error") {

      } else if (mensaje['respuesta'] == "ok") {

        // modal_inicio.style.display = "block";
        // modal_inicio.style.zIndex = "100";
        // modal_mensaje.innerHTML = mensaje['clave'];

        // const download = (path, filename) => {
        //   // Create a new link
        //   const anchor = document.createElement('a');
        //   anchor.href = path;
        //   anchor.download = filename;

        //   // Append to the DOM
        //   document.body.appendChild(anchor);

        //   // Trigger `click` event
        //   anchor.click();

        //   // Remove element from DOM
        //   document.body.removeChild(anchor);
        // };

        // // Example download
        // download('./archivo/usuario/' + mensaje['clave'] + '/clave/clave.txt', 'clave.txt');

      }

    });
  }



}

inicio();