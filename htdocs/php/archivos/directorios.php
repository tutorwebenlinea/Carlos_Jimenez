<?php

function usuarios()
{
    $servername = "localhost";
    $username   = "root";
    $password   = "";
    $dbname     = "app_registro_limpieza";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT idusuario FROM usuario");
        $stmt->execute();

        // set the resulting array to associative
        $result     = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $directorio = [];

        for ($i = 0; $i < count($result); $i++) {

            array_push($directorio, $result[$i]["idusuario"]);
        }

        return $directorio;
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
// $nombres_dir = usuarios();
$directorio = '../../archivo/usuario';
$ficheros1  = scandir($directorio);
// $ficheros2  = scandir($directorio, 1);

print_r($ficheros1);
echo "</br>";
// print_r($ficheros2);
echo "</br>";
$usuarios = usuarios();
echo "</br>";
print_r($usuarios);
echo "</br>";
$dir_existente = [];
for ($i = 0; $i < count($ficheros1); $i++) {

    if ($ficheros1[$i] == "." || $ficheros1[$i] == ".." || str_contains($ficheros1[$i], '.')) {
        // code...
    } else {
        array_push($dir_existente, $ficheros1[$i]);

    }
}

print_r($dir_existente);
chmod("../archivos", 07777);

for ($i = 0; $i < count($dir_existente); $i++) {

    if (in_array($dir_existente[$i], $usuarios) == false) {

        echo "</br>";
        echo "{$directorio}/{$dir_existente[$i]}";
        echo "</br>";
        mkdir("{$directorio}/{$dir_existente[$i]}");
    }

}
