<?php
include_once 'consulta.php';

class ApiController{

    private $error;

    // Usuario por id
    function getUsuarioPorCedula($vusu,$vcla){
        $usuario = new Consulta();
        $usuarios = array();
        $usuarios["usuario"] = array();
        $usuarios["codigoError"] = 0;
        $usuarios["mensaje"] = "OK";
        $item = array();
        $res = $usuario->obtenerUsuarioPorCedula($vusu,$vcla);

        if($res->rowCount() == 1){
            $row = $res->fetch();
        
            $item=array(
                "cedula" => $row['usu_cedula'],
                "nombre" => $row['usu_nombre'],
                "apellido" => $row['usu_apellido'],
                "email" => $row['usu_email'],
                "login" => $row['usu_login'],
                "password" => $row['usu_password'],
                "conectado" => $row['usu_esta_conectado'],
                "maximo" => $row['usu_max_conectado']
            );
            array_push($usuarios["usuario"], $item);
            $this->printJSON($usuarios);
        }else{
            $item=array(
                "cedula" => "",
                "nombre" => "",
                "apellido" => "",
                "email" => "",
                "login" => "",
                "password" => "",
                "conectado" => "",
                "maximo" => ""
            );
            $usuarios["codigoError"] = 1;
            $usuarios["mensaje"] = "Combinación usuario, clave incorrecta o alcanzó máximo de conexiones.";
            array_push($usuarios["usuario"], $item);
            $this->printJSON($usuarios);
        }
    }

    // Actualiza esta_conectado de Usuario
    function getActualizaConexionUsuario($vced,$vcon){
        $usuario = new Consulta();
        $usuarios = array();
        $usuarios["usuario"] = array();
        $usuarios["codigoError"] = 0;
        $usuarios["mensaje"] = "Campo Actualizado";
        $item = array();
        $res = $usuario->actualizaConexionUsuario($vced,$vcon);  
        //if( $res == true){
        //    array_push($usuarios["usuario"], $item);
        //    $this->printJSON($usuarios);
        //}else{
        //    $usuarios["codigoError"] = 1;
        //    $usuarios["mensaje"] = "No se pudo actualizar el campo";
        //    array_push($usuarios["usuario"], $item);
        //    $this->printJSON($usuarios);  
        //}
    }

    // Módulos
    function getModulos(){
        $modulo = new Consulta();
        $modulos = array();
        $modulos["modulo"] = array();
        $modulos["codigoError"] = 0;
        $modulos["mensaje"] = "OK";
        $res = $modulo->obtenerModulos();

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){
    
                $item=array(
                    "id" => $row['mod_id'],
                    "nombre" => $row['mod_nombre'],
                    "imagen" => $row['mod_imagen'],
                    "estado" => $row['mod_estado']
                );
                array_push($modulos["modulo"], $item);
            }
            $this->printJSON($modulos);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "estado" => ""
            );
            $modulos["codigoError"] = 1;
            $modulos["mensaje"] = "No existen módulos";
            array_push($modulos["usuario"], $item);
            $this->printJSON($modulos);
        } 
    }
   
    // Categorías
    function getCategorias(){
        $categoria = new Consulta();
        $categorias = array();
        $categorias["categoria"] = array();
        $categorias["codigoError"] = 0;
        $categorias["mensaje"] = "OK";
        $res = $categoria->obtenerCategorias();

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){
    
                $item=array(
                    "id" => $row['cat_id'],
                    "nombre" => $row['cat_nombre'],
                    "imagen" => $row['cat_imagen'],
                    "estado" => $row['cat_estado']
                );
                array_push($categorias["categoria"], $item);
            }
            $this->printJSON($categorias);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "estado" => ""
            );
            $categorias["codigoError"] = 1;
            $categorias["mensaje"] = "No existe categorías";
            array_push($categorias["categoria"], $item);
            $this->printJSON($categorias);
        }
    }

    // Peliculas
    function getPeliculas(){
        $pelicula = new Consulta();
        $peliculas = array();
        $peliculas["pelicula"] = array();
        $peliculas["codigoError"] = 0;
        $peliculas["mensaje"] = "OK";
        $res = $pelicula->obtenerPeliculas();

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){    
                $item=array(
                    "id" => $row['pel_id'],
                    "nombre" => $row['pel_nombre'],
                    "imagen" => $row['pel_imagen'],
                    "descripcion" => $row['pel_descripcion'],
                    "duracion" => $row['pel_duracion'],
                    "anio" => $row['pel_anio'],
                    "censura" => $row['pel_censura'],
                    "reparto" => $row['pel_reparto'],
                    "genero" => $row['pel_genero'],
                    "destacado" => $row['pel_destacado'],
                    "modulo" => $row['mod_id'],
                    "categoria" => $row['cat_id'],
                    "estado" => $row['pel_estado'],
                    "url" => $row['pel_url']
                );
                array_push($peliculas["pelicula"], $item);
            }
            $this->printJSON($peliculas);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "descripcion" => "",
                "duracion" => "",
                "anio" => "",
                "censura" => "",
                "reparto" => "",
                "genero" => "",
                "destacado" => "",
                "modulo" => "",
                "categoria" => "",
                "estado" => "",
                "url" => ""
            );
            $peliculas["codigoError"] = 1;
            $peliculas["mensaje"] = "No existen películas";
            array_push($peliculas["pelicula"], $item);
            $this->printJSON($peliculas);
        }
    }

    //Películas por categoria y modulo
    function getPeliculaPorCategoriaModulo($vcat,$vmod){
        $pelicula = new Consulta();
        $peliculas = array();
        $peliculas["pelicula"] = array();
        $peliculas["codigoError"] = 0;
        $peliculas["mensaje"] = "OK";
        $res = $pelicula->obtenerPeliculasPorCategoriaModulo($vcat,$vmod);

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){    
                $item=array(
                    "id" => $row['pel_id'],
                    "nombre" => $row['pel_nombre'],
                    "imagen" => $row['pel_imagen'],
                    "descripcion" => $row['pel_descripcion'],
                    "duracion" => $row['pel_duracion'],
                    "anio" => $row['pel_anio'],
                    "censura" => $row['pel_censura'],
                    "reparto" => $row['pel_reparto'],
                    "genero" => $row['pel_genero'],
                    "destacado" => $row['pel_destacado'],
                    "modulo" => $row['mod_id'],
                    "categoria" => $row['cat_id'],
                    "estado" => $row['pel_estado'],
                    "url" => $row['pel_url']
                );
                array_push($peliculas["pelicula"], $item);
            }
            $this->printJSON($peliculas);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "descripcion" => "",
                "duracion" => "",
                "anio" => "",
                "censura" => "",
                "reparto" => "",
                "genero" => "",
                "destacado" => "",
                "modulo" => "",
                "categoria" => "",
                "estado" => "",
                "url" => ""
            );
            $peliculas["codigoError"] = 1;
            $peliculas["mensaje"] = "No existen películas";
            array_push($peliculas["pelicula"], $item);
            $this->printJSON($peliculas);
        }
    } 

    //Películas por categoría
    function getPeliculaPorCategoria($vcate){
        $pelicula = new Consulta();
        $peliculas = array();
        $peliculas["pelicula"] = array();
        $peliculas["codigoError"] = 0;
        $peliculas["mensaje"] = "OK";
        $res = $pelicula->obtenerPeliculasPorCategoria($vcate);

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){    
                $item=array(
                    "id" => $row['pel_id'],
                    "nombre" => $row['pel_nombre'],
                    "imagen" => $row['pel_imagen'],
                    "descripcion" => $row['pel_descripcion'],
                    "duracion" => $row['pel_duracion'],
                    "anio" => $row['pel_anio'],
                    "censura" => $row['pel_censura'],
                    "reparto" => $row['pel_reparto'],
                    "genero" => $row['pel_genero'],
                    "destacado" => $row['pel_destacado'],
                    "modulo" => $row['mod_id'],
                    "categoria" => $row['cat_id'],
                    "estado" => $row['pel_estado'],
                    "url" => $row['pel_url']
                );
                array_push($peliculas["pelicula"], $item);
            }
            $this->printJSON($peliculas);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "descripcion" => "",
                "duracion" => "",
                "anio" => "",
                "censura" => "",
                "reparto" => "",
                "genero" => "",
                "destacado" => "",
                "modulo" => "",
                "categoria" => "",
                "estado" => "",
                "url" => ""
            );
            $peliculas["codigoError"] = 1;
            $peliculas["mensaje"] = "No existen películas";
            array_push($peliculas["pelicula"], $item);
            $this->printJSON($peliculas);
        }
    }

    //Películas por nombre
    function getPeliculaPorNombre($vpel){
        $pelicula = new Consulta();
        $peliculas = array();
        $peliculas["pelicula"] = array();
        $peliculas["codigoError"] = 0;
        $peliculas["mensaje"] = "OK";
        $res = $pelicula->obtenerPeliculaPorNombre($vpel);

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){    
                $item=array(
                    "id" => $row['pel_id'],
                    "nombre" => $row['pel_nombre'],
                    "imagen" => $row['pel_imagen'],
                    "descripcion" => $row['pel_descripcion'],
                    "duracion" => $row['pel_duracion'],
                    "anio" => $row['pel_anio'],
                    "censura" => $row['pel_censura'],
                    "reparto" => $row['pel_reparto'],
                    "genero" => $row['pel_genero'],
                    "destacado" => $row['pel_destacado'],
                    "modulo" => $row['mod_id'],
                    "categoria" => $row['cat_id'],
                    "estado" => $row['pel_estado'],
                    "url" => $row['pel_url']
                );
                array_push($peliculas["pelicula"], $item);
            }
            $this->printJSON($peliculas);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "descripcion" => "",
                "duracion" => "",
                "anio" => "",
                "censura" => "",
                "reparto" => "",
                "genero" => "",
                "destacado" => "",
                "modulo" => "",
                "categoria" => "",
                "estado" => "",
                "url" => ""
            );
            $peliculas["codigoError"] = 1;
            $peliculas["mensaje"] = "Intenta buscar otra pelicula, serie, video o dibujo";
            array_push($peliculas["pelicula"], $item);
            $this->printJSON($peliculas);
        }
    }
    
    //Películas por codigo
    function getPeliculaPorCodigo($vpcod){
        $pelicula = new Consulta();
        $peliculas = array();
        $peliculas["pelicula"] = array();
        $peliculas["codigoError"] = 0;
        $peliculas["mensaje"] = "OK";
        $res = $pelicula->obtenerPeliculaPorCodigo($vpcod);

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){    
                $item=array(
                    "id" => $row['pel_id'],
                    "nombre" => $row['pel_nombre'],
                    "imagen" => $row['pel_imagen'],
                    "descripcion" => $row['pel_descripcion'],
                    "duracion" => $row['pel_duracion'],
                    "anio" => $row['pel_anio'],
                    "censura" => $row['pel_censura'],
                    "reparto" => $row['pel_reparto'],
                    "genero" => $row['pel_genero'],
                    "destacado" => $row['pel_destacado'],
                    "modulo" => $row['mod_id'],
                    "categoria" => $row['cat_id'],
                    "estado" => $row['pel_estado'],
                    "url" => $row['pel_url']
                );
                array_push($peliculas["pelicula"], $item);
            }
            $this->printJSON($peliculas);
        }else{
            $item=array(
                "id" => "",
                "nombre" => "",
                "imagen" => "",
                "descripcion" => "",
                "duracion" => "",
                "anio" => "",
                "censura" => "",
                "reparto" => "",
                "genero" => "",
                "destacado" => "",
                "modulo" => "",
                "categoria" => "",
                "estado" => "",
                "url" => ""
            );
            $peliculas["codigoError"] = 1;
            $peliculas["mensaje"] = "No existen películas";
            array_push($peliculas["pelicula"], $item);
            $this->printJSON($peliculas);
        }
    }
    
    //Recursos por Tipo
    function getRecursoPorTipo($vrec){
        $recurso = new Consulta();
        $recursos = array();
        $recursos["recurso"] = array();
        $recursos["codigoError"] = 0;
        $recursos["mensaje"] = "OK";
        $res = $recurso->obtenerRecursoPorTipo($vrec);

        if($res->rowCount()){
            while ($row = $res->fetch(PDO::FETCH_ASSOC)){
       
                $item=array(
                    "id" => $row['rec_id'],
                    "campo" => $row['rec_campo'],
                    "valor" => $row['rec_valor'],
                    "tipo" => $row['cre_id'],
                    "estado" => $row['rec_estado']
                );
                array_push($recursos["recurso"], $item);
            }
            $this->printJSON($recursos);            
        }else{
            $item=array(
                "id" => "",
                "campo" => "",
                "valor" => "",
                "tipo" => "",
                "estado" => ""
            );
            $recursos["codigoError"] = 1;
            $recursos["mensaje"] = "No existen recursos";
            array_push($recursos["recurso"], $item);
            $this->printJSON($recursos);
        }
    }

    //Utilitarios comunes    
    function printJSON($array){
        echo json_encode($array);
    }        
}

?>