<?php

// $servername  = "localhost";
// $username    = "root";
// $password    = "";
// $dbname      = "app_registro_limpieza";

$valor_de_id = 2;
// $valor_de_id = $_POST["valor"];
function FunctionName($value)
{

  include "../../conn/conexcion.php";
  try {
    // $conn = new PDO("mysql:host=$servername;", $username, $password);
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare(
      "SELECT edificio.nombre_edicicio
    FROM edificio
    INNER JOIN piso
    ON piso.id_edificio = edificio.id_edificio
    INNER JOIN cubiculo
    ON cubiculo.id_piso = piso.id_piso
    WHERE cubiculo.id_cubiculo= :id_cubiculo"
    );

    $stmt->bindParam(':id_cubiculo', $value, PDO::PARAM_INT);

    $stmt->execute();
    $count = $stmt->rowCount();

    if ($count == 0) {
      return "No se encontró el cubículo";
    } elseif ($count == 1) {
      $result = $stmt->fetch(PDO::FETCH_ASSOC);
      return $result;
    }

    // echo "Connected successfully";
  } catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }

}

$text = FunctionName($valor_de_id);
echo "<h1> {$text}</h1>";
