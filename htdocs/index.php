<?php
include "./php/controlador/php.php";
if ((isset($_REQUEST['url']))) {
    // Controlador($_GET['var']);
    $url = explode("/", $_REQUEST['url']);
} else {

$url="dashboard";

// var_dump($_REQUEST['url']);
// echo "<br>";
// for ($i = 0; $i < count($url); $i++) {
//     echo $url[$i];
//     echo "<br>";
}


$arrFiles = glob("./pages/*", GLOB_ONLYDIR);

$directorios = array();

for ($i=0; $i < count($arrFiles); $i++) { 

    $directorios[$i] = explode("./pages/", $arrFiles[$i]);
}

// var_dump($directorios);


if ($url[0] == "settings") {

    include_once "./pages/settings/settings.php";

} elseif ($url[0] == "transactions") {

    include_once "./pages/transactions/transactions.php";

} elseif ($url[0] == "upgrade") {

    include_once "./pages/upgrade-to-pro/upgrade-to-pro.php";

} elseif ($url[0] == "dashboard") {

    include_once "./pages/dashboard/dashboard.php";

} else {

    include_once "./pages/examples/404.html";
}



// //////////////////////////////////////////////////////////////////
// Regresa la pagina correspondiente 
// a la petición usando el directorio como referencia 
 
// if (isset($_REQUEST['pag'])) {

//     $parametros=explode("/", $_REQUEST["pag"]);
//     $param = array("vista"=>$parametros[0]);

//     // var_dump($param);
//     // var_dump($_SERVER);
//     // $url=SERVERURL;
    
//     $paguina ="./src/pag/inicio/pag.php";
    
//     //  Solo si existe la pagina la mostrara 
//     if (file_exists("./src/pag/{$param["vista"]}/pag.php")) {

//     $paguina = "./src/pag/{$param["vista"]}/pag.php";

//     }elseif ($param["vista"]=="") {

//     $paguina = "./src/pag/inicio/pag.php";

//     }else{

//     $paguina = "./src/pag/error/pag.php";
//     }

//     include $paguina;
//     // echo "./src/pag/{$param["vista"]}/pag.php";
// }else{

// include "./src/pag/inicio/pag.php";

// }



