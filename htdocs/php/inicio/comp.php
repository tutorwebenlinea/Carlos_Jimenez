<?php

// INSERT INTO `usuario`(`idusuario`, `nombre`, `email`, `pass`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]')

function altaUsuario($nombre, $correo, $pass)
{

    include "../../conn/conexcion.php";
    // $servername = "localhost";
    // $username   = "root";
    // $password   = "";
    // $dbname     = "app_registro_limpieza";
    $token = openssl_random_pseudo_bytes(300);

//Convert the binary data into hexadecimal representation.
    $token = bin2hex($token);
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // prepare sql and bind parameters

        $stmt = $conn->prepare("INSERT INTO usuario (nombre, email, pass, clave)
                VALUES (:nombre , :correo,  :pass, :token)");
        $stmt->bindParam(':nombre', $nombre, PDO::PARAM_STR);
        $stmt->bindParam(':correo', $correo, PDO::PARAM_STR);
        $stmt->bindParam(':pass', $pass, PDO::PARAM_STR);
        $stmt->bindParam(':token', $token, PDO::PARAM_STR);

        $stmt1 = $conn->prepare("SELECT * FROM usuario WHERE idusuario = :idusuario");

        // $conn->exec($sql);
        $stmt->execute();

        $last_id = $conn->lastInsertId();

        $stmt->closeCursor();

        $stmt1->bindParam(':idusuario', $last_id, PDO::PARAM_INT);
        $stmt1->execute();
        $result = $stmt1->fetch(PDO::FETCH_ASSOC);
        // var_dump($result);
        $arr = array(
            'respuesta' => "ok",
            "clave"     => $result["clave"],
        );

        echo json_encode($arr);

    } catch (PDOException $e) {

        // echo $sql . "<br>" . $e->getMessage();
        $arr = array('respuesta' => "error");

        echo json_encode($arr);
    }
    $conn = null;
}

function validaMail($nombre, $correo, $pass)
{
    include "../../conn/conexcion.php";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT * FROM usuario WHERE email ='{$correo}'");
        $stmt->execute();
        $count = $stmt->rowCount();
        if ($count == 0) {

            altaUsuario($nombre, $correo, $pass);

        } else {
            $arr = array('respuesta' => "existe");

            echo json_encode($arr);
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

function generaHash($pass)
{
    return password_hash($pass, PASSWORD_DEFAULT);
}

$nombre = $_POST['nombre'];
$correo = $_POST['correo'];
$pass   = generaHash($_POST['pass']);

validaMail($nombre, $correo, $pass);
