<?php
include_once 'ApiController.php';
header("Content-Type: application/json");
$api = new ApiController();

//Recibir peticiones
switch($_SERVER['REQUEST_METHOD']){
    case 'POST':
        header('HTTP/1.1 404 Not Found');
        break;
    case 'GET':
        $api->getModulos();
        break;
    default:
        header('HTTP/1.1 404 Not Found');
} 
?>