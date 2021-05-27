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
        if(isset($_GET['vcat']) && isset($_GET['vmod'])){
            $api->getPeliculaPorCategoriaModulo($_GET['vcat'], $_GET['vmod']);
        }elseif(isset($_GET['vcate'])){
            $api->getPeliculaPorCategoria($_GET['vcate']);
        }elseif(isset($_GET['vpel'])){
            $api->getPeliculaPorNombre($_GET['vpel']);
        }else{
            $api->getPeliculas();
        }            
        break;
    default:
        header('HTTP/1.1 404 Not Found');
} 
?>