<?php

function generafile($id, $text)
{
    $fichero = fopen("../../archivo/usuario/{$id}/clave/clave.txt", "w") or die("Unable to open file!");

    fwrite($fichero, $text);

    fclose($fichero);

}
