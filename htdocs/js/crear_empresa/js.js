let crear_emporesa = document.getElementById("crear_emporesa");

let btn_crear_emporesa = document.querySelector(".crear_empresa");

btn_crear_emporesa.addEventListener("click", function(argument) {
  argument.preventDefault();
  crear_emporesa.style.display = "block";
});