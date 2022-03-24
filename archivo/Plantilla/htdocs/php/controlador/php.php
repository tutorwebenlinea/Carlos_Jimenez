<?php

function Controlador($var)
{
    // var_dump($var);
    $datos = explode("/", $var);
    var_dump($datos);

    // $url = "";

    if (isset($_GET['url'])) {
        // code...
    }
    include "./pages/settings.php";

    // if ($datos[$i] == "settings" || $datos[$i] == "transactions" || $datos[$i] == "upgrade") {

    //     if ($datos[$i] == "settings") {
    //         // code...
    //         include "./pages/settings.php";
    //     } elseif ($datos[$i] == "transactions") {
    //         // code...
    //         include "./pages/transactions.php";
    //     } elseif ($datos[$i] == "upgrade") {
    //         // code...
    //         include "./pages/upgrade-to-pro.php";
    //     }

    // }
    // for ($i = 0; $i < count($datos); $i++) {
    //     $url .= "/{$datos[$i]}";
    // }

    // echo ".{$url}.php";

    // include_once ".{$url}.php";
    // if ($url[0]=="sing-up") {
    //  include_once "./examples/{$url[0]}.php";
    // }elseif ($url[0]=="dashboard") {
    //   include_once "./pages/{$url[0]}.php";
    // }
    // $url = "";
    // for ($i = 0; $i < count($datos); $i++) {
    //     $url .= "/{$datos[$i]}";
    // }
    // echo "./pages{$url}.php";
    // include_once "./pages{$url}.php";

}
