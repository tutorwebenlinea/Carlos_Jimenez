
<?php

// INSERT INTO `empresa`(`id_empresa`, `ubicacion`, `nombre_empresa`, `descripcion`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')
// /home/code/Escritorio/Proyectos/TUTORWEBENLINEA/Carlos_Jimenez/htdocs/conn/conexcion.php

function crear_empresa($ubicacion, $nombre_empresa, $descripcion)
{
    include "./conn/conexcion.php";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO `empresa`(`ubicacion`, `nombre_empresa`, `descripcion`) VALUES ('{$ubicacion}','{$nombre_empresa}','{$descripcion}')";
        // use exec() because no results are returned
        $conn->exec($sql);
        // return true;
        echo "si";
    } catch (PDOException $e) {
        // return false;
        echo $sql . "<br>" . $e->getMessage();
    }

    $conn = null;

}

// $respuesta = crear_empresa($_POST['ubicacion'], $_POST['nombre_empresa'], $_POST['descripcion']);
crear_empresa($_POST['ubicacion'], $_POST['nombre_empresa'], $_POST['descripcion']);

// if ($respuesta) {
//   echo "si";
// } else {
//   echo "no";
// }
