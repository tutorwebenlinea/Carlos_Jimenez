<!-- partial:index.partial.html -->
<h2>
  Inicie sesión o regístrese
</h2>
<div class="container" id="container">
  <div class="form-container sign-up-container registro">
    <form>
      <h1>
        Crear una cuenta
      </h1>
      <input autocomplete="of" class="nombre_txt txt" name="nombre" placeholder="Nombre" type="text"/>
      <input autocomplete="of" class="usuario_txt txt" name="usuario" placeholder="Usuario" type="text"/>
      <input autocomplete="of" class="correo_txt txt" name="correo" placeholder="Correo" type="email"/>
      <input autocomplete="of" class="pass_txt txt" name="pass" placeholder="Contraseña" type="password"/>
      <input autocomplete="of" class="conf_pass txt" name="conf_pass" placeholder="Confirma la contraseña" type="password"/>
      <input class="btn_registro" type="submit" value="Sign Up"/>
    </form>
  </div>
  <div class="form-container sign-in-container inicio">
    <form action="#">
      <h1>
        Sign in
      </h1>
      <input autocomplete="of" placeholder="Correo" type="text"class="input_correo"/>
      <input autocomplete="of" placeholder="Contraseña" type="password"class="input_pass"/>
      <a href="#">
        ¿Olvidaste tu contraseña?
      </a>
      <input class="btn_inicio" type="submit" value="Sign In"/>
    </form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>
          ¡Bienvenido de nuevo!
        </h1>
        <p>
          Para mantenerse conectado con nosotros, inicie sesión con su información personal
        </p>
        <button class="ghost" id="signIn">
          Sign In
        </button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>
          ¡Hola amigo!
        </h1>
        <p>
          Ingresa tus datos personales y comienza tu viaje con nosotros
        </p>
        <button class="ghost" id="signUp">
          Sign Up
        </button>
      </div>
    </div>
  </div>
</div>
<footer>
</footer>
