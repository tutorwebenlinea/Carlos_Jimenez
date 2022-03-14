<?php

function deleteDirectory($dir)
{
    if (!$dh = @opendir($dir)) {
        return;
    }

    while (false !== ($current = readdir($dh))) {
        if ($current != '.' && $current != '..') {
            echo 'Se ha borrado el archivo ' . $dir . '/' . $current . '<br/>';
            if (!@unlink($dir . '/' . $current)) {
                deleteDirectory($dir . '/' . $current);
            }

        }
    }
    closedir($dh);
    echo 'Se ha borrado el directorio ' . $dir . '<br/>';
    @rmdir($dir);
}

// $arrFiles = scandir('../../php');

$filelist = glob("../../archivo/usuario/*", GLOB_ONLYDIR);

var_dump($filelist);

echo count($filelist);

for ($i = 0; $i < count($filelist); $i++) {
    deleteDirectory($filelist[$i]);
}

// echo $arrFiles;
