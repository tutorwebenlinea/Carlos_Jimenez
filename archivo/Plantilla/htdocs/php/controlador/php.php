<?php

function Controlador($var)
{
    // var_dump($var);
    $datos = explode("/", $var);
    // var_dump($datos);

    // $url = "";
    for ($i = 0; $i < count($datos); $i++) {
        $url .= "/{$datos[$i]}";
    }

    // echo ".{$url}.php";
    include "./pages/settings.php";
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
