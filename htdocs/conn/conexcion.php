<?php

$servername  = "localhost";
$username    = "root";
$password    = "";
$dbname      = "app_registro_limpieza";
$valor_de_id = 2;
function FunctionName($value)
{

  $servername = "localhost";
  $username   = "root";
  $password   = "";
  $dbname     = "app_registro_limpieza";
  try {
    // $conn = new PDO("mysql:host=$servername;", $username, $password);
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("SELECT edificio.nombre_edicicio
  FROM edificio
      INNER JOIN piso
          ON piso.id_edificio = edificio.id_edificio
      INNER JOIN cubiculo
          ON cubiculo.id_piso = piso.id_piso
  WHERE cubiculo.id_cubiculo= :id_cubiculo");

    $stmt->bindParam(':id_cubiculo', $value, PDO::PARAM_INT);

    $stmt->execute();

    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return $result["nombre_edicicio"];
    // echo "Connected successfully";
  } catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }

}

$text = FunctionName($valor_de_id);
echo "<h1> {$text}</h1>";
