<?php

function ValidaSesion($usuario, $pass)
{
    include "../../conn/conexcion.php";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT * FROM usuario WHERE usuario = '{$usuario}'");
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $count  = $stmt->rowCount();
        $arr    = array(
            'count'  => $count,
            'result' => $result,
        );

        echo json_encode($arr);
        // if ($count == 0) {
        //     $arr = array('respuesta' => "no");

        //     echo json_encode($arr);
        // } else {

        $hash = $result[0]["pass"];
        echo $result[0]["pass"];
        echo "\n";
        if (password_verify($pass, $hash)) {
            echo "si";
        } else {
            echo "no";
        }

        // }

    } catch (PDOException $e) {

        echo "Error: " . $e->getMessage();
    }
    $conn = null;

}

$usuario = $_POST['user'];
$pass    = $_POST['pass'];

// echo "{$usuario}\n {$pass}\n";

ValidaSesion($usuario, $pass);
