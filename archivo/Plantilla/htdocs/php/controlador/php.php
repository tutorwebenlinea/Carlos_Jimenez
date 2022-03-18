<?php

function Controlador($var)
{
    $url = explode("/", $var);

    include_once "./pages/{$url[0]}.php";
}
