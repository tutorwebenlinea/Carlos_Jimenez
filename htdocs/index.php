<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
    </script>
  </head>
  <title>
    Document
  </title>
  <body>
    <div class="w3-container">
      <h4>
        Crear Empresa
      </h4>
      <button class="w3-button w3-circle w3-green crear_empresa" type="submit">
        <a href="./crear_empresa.php">
          +
        </a>
      </button>
    </div>
    <div class="w3-container">
      <h4>
        Crear Empresa
      </h4>
      <button class="w3-button w3-circle w3-green" type="submit">
        +
      </button>
    </div>
    <div class="w3-container">
      <h4>
        Crear campaña
      </h4>
      <button class="w3-button w3-circle w3-green">
        +
      </button>
    </div>
    <div class="w3-container">
      <h4>
        Criterios de avaluacion
      </h4>
      <button class="w3-button w3-circle w3-green">
        +
      </button>
    </div>
    <!-- The Modal -->
    <div class="w3-modal" id="crear_emporesa">
      <div class="w3-modal-content">
        <div class="w3-container">
          <span class="w3-button w3-display-topright" onclick="document.getElementById('crear_emporesa').style.display='none'">
            ×
          </span>
          <div class="w3-container w3-green">
            <h2>
              Header
            </h2>
          </div>
          <form class="w3-container">
            <label>
              Nombrer de la empresa
            </label>
            <input class="w3-input" type="text"/>
          </form>
        </div>
      </div>
    </div>
    <script src="./js/crear_empresa/js.js" type="text/javascript">
    </script>
  </body>
</html>
