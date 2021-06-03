<?php
include_once 'ApiController.php';
header("Content-Type: application/json");
$api = new ApiController();

//echo 'Información: ' . file_get_contents('php:/input'):
//Recibir peticiones
switch($_SERVER['REQUEST_METHOD']){
    case 'POST':
        header('HTTP/1.1 404 Not Found');
        break;
    case 'GET':        
        if(isset($_GET['vusu'],$_GET['vcla']))
        {
            $api->getUsuarioPorCedula($_GET['vusu'],$_GET['vcla']);    
        }
        elseif(isset($_GET['vced'],$_GET['vcon']))
        {
            $api->getActualizaConexionUsuario($_GET['vced'],$_GET['vcon']); 
        }
        break;
    default:
        header('HTTP/1.1 404 Not Found');
} 
?>