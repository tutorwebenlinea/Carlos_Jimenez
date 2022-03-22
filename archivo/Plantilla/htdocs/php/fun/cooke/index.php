<?php

function cooke($value = '')
{
    $cookie_name  = "inicio";
    $cookie_value = "no";
    setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day

    if (!isset($_COOKIE[$cookie_name])) {
        return false;
    } else {
        return true;
        echo "Cookie '" . $cookie_name . "' is set!<br>";
        echo "Value is: " . $_COOKIE[$cookie_name];
    }
}
