console.log('inicio.js');

function valida_campos_inicio(argument) {

  let input_correo = document.querySelector(".inicio .input_correo");
  let input_pass = document.querySelector(".inicio .input_pass");
  let btn_inicio = document.querySelector(".inicio .btn_inicio");

  console.log(input_correo);
  console.log(input_pass);
  console.log(btn_inicio);

  btn_inicio.addEventListener("click", function(argument) {
    argument.preventDefault();
    let formData = new FormData();

    formData.append("user", input_correo.value);
    formData.append("pass", input_pass.value.trim());

    let datos = formData;

    $.ajax({
        url: './php/inicio/inicio.php',
        type: 'POST',
        data: datos,
        contentType: false,
        cache: false,
        processData: false,
      })
      .done(function() {
        console.log("success");
      })
      .fail(function() {
        console.log("error");
      })
      .always(function(res) {
        console.log("complete");

        console.log(res);
      });

  });



}