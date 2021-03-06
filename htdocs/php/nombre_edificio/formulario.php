<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet"/>
    <title>
      Document
    </title>
  </head>
  <body>
    <form action="/action_page.php" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
      <h2 class="w3-center">
        Crear empresa
      </h2>
      <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px">
          <i class="w3-xxlarge fa fa-user">
          </i>
        </div>
        <div class="w3-rest">
          <input class="w3-input w3-border" name="first" placeholder="First Name" type="text"/>
        </div>
      </div>
      <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px">
          <i class="w3-xxlarge fa fa-user">
          </i>
        </div>
        <div class="w3-rest">
          <input class="w3-input w3-border" name="last" placeholder="Last Name" type="text"/>
        </div>
      </div>
      <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px">
          <i class="w3-xxlarge fa fa-envelope-o">
          </i>
        </div>
        <div class="w3-rest">
          <input class="w3-input w3-border" name="email" placeholder="Email" type="text"/>
        </div>
      </div>
      <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px">
          <i class="w3-xxlarge fa fa-phone">
          </i>
        </div>
        <div class="w3-rest">
          <input class="w3-input w3-border" name="phone" placeholder="Phone" type="text">
          </input>
        </div>
      </div>
      <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px">
          <i class="w3-xxlarge fa fa-pencil">
          </i>
        </div>
        <div class="w3-rest">
          <input class="w3-input w3-border" name="message" placeholder="Message" type="text"/>
        </div>
      </div>
      <button class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">
        Send
      </button>
    </form>
    <form action="nombreedificio.php" method="post">
      <input name="valor" type="number"/>
      <br/>
      <input type="submit" value="Enviar"/>
    </form>
  </body>
</html>
