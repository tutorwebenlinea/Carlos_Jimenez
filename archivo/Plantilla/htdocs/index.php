<?php
include "./php/controlador/php.php";
// if ((isset($_GET['var']))) {
//     Controlador($_GET['var']);
// } else {

$url = explode("/", $_REQUEST['url']);
// var_dump($_REQUEST['url']);
// echo "<br>";
// for ($i = 0; $i < count($url); $i++) {
//     echo $url[$i];
//     echo "<br>";
// }

if ($url[0] == "settings") {

    include_once "./pages/settings.php";

} elseif ($url[0] == "transactions") {

    include_once "./pages/transactions.php";

} elseif ($url[0] == "upgrade") {

    include_once "./pages/upgrade-to-pro.php";

} elseif ($url[0] == "dashboard") {

    include_once "./pages/dashboard/dashboard.php";

} else {

    include_once "./pages/examples/404.html";
}
