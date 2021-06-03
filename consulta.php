<?php

include_once 'db.php';

class Consulta extends DB{
   
    // Usuario por cédula
    function obtenerUsuarioPorCedula($vusu,$vcla){
        $query = $this->connect()->query("SELECT * FROM usuario WHERE usu_cedula = $vusu AND usu_password = '$vcla' AND usu_esta_conectado <= usu_max_conectado  AND usu_estado = 1");
        return $query;
    }  
    
    // Modificar conectado
    function actualizaConexionUsuario($vced,$vcon){

        $query = $this->connect()->query("UPDATE usuario SET usu_esta_conectado = $vcon WHERE usu_cedula = $vced");
        return $query;
    }
    
    // Módulos
    function obtenerModulos(){
        $query = $this->connect()->query("SELECT * FROM modulo ORDER BY mod_id ASC");
        return $query;
    }

    // Categorías
    function obtenerCategorias(){
        $query = $this->connect()->query("SELECT * FROM categoria WHERE cat_estado = 1 ORDER BY cat_nombre ASC");
        return $query;
    }

    // Películas
    function obtenerPeliculas(){
        $query = $this->connect()->query("SELECT * FROM pelicula WHERE pel_estado = 1");
        return $query;
    }

    // Película por nombre
    function obtenerPeliculaPorNombre($vpel){
        $query = $this->connect()->query("SELECT * FROM pelicula WHERE pel_nombre LIKE '%$vpel%' AND pel_estado = 1");
        return $query;
    } 
    
    // Películas por categoria
    function obtenerPeliculasPorCategoria($vcate){
        $query = $this->connect()->query("SELECT * FROM pelicula WHERE cat_id = $vcate AND pel_estado = 1");
        return $query;
    } 

    // Películas por categoria y módulo
    function obtenerPeliculasPorCategoriaModulo($vcat,$vmod){
        $query = $this->connect()->query("SELECT * FROM pelicula WHERE cat_id = $vcat AND mod_id = $vmod AND pel_estado = 1");
        return $query;
    } 
    
    // Recurso por tipo
    function obtenerRecursoPorTipo($vrec){
        $query = $this->connect()->query("SELECT * FROM recurso WHERE cre_id = $vrec AND rec_estado = 1");
        return $query;
    }
    
    // Recurso por nombre
    function obtenerRecursoPorNombre($vrecn){
        $query = $this->connect()->query("SELECT * FROM recurso WHERE cre_nombre = $vrec AND rec_estado = 1");
        return $query;
    } 
}

?>