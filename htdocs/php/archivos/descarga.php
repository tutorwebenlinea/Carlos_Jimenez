<?php

header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename=clave.txt"');
readfile("../../archivo/usuario/{$id}/clave/clave.txt");
exit;
// This code will return ANY file as a download without showing where you actually store it.

// You open this php-file via window.location.href = 'scripts/this_php_file.php?f=downloaded_file';
