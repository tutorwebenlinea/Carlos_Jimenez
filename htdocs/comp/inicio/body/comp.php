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
      <input class="nombre" name="nombre" placeholder="Name" type="text"/>
      <input class="correo" name="correo" placeholder="Email" type="email"/>
      <input class="pass" name="pass" placeholder="Password" type="password"/>
      <input class="btn_registro" type="submit" value=" Sign Up"/>
    </form>
  </div>
  <div class="form-container sign-in-container">
    <form action="#">
      <h1>
        Sign in
      </h1>
      <input placeholder="Email" type="email"/>
      <input placeholder="Password" type="password"/>
      <a href="#">
        ¿Olvidaste tu contraseña?
      </a>
      <button>
        Sign In
      </button>
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
