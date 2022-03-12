<?php

function crear_directos($value)
{
    mkdir("../../archivo/usuario/{$value}", 0777);
    mkdir("../../archivo/usuario/{$value}/pdf", 0777);
    mkdir("../../archivo/usuario/{$value}/doc", 0777);
    mkdir("../../archivo/usuario/{$value}/img", 0777);
    mkdir("../../archivo/usuario/{$value}/clave", 0777);

}
