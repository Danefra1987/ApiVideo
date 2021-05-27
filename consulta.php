<?php

include_once 'db.php';

class Consulta extends DB{
   
    // Usuario por cédula
    function obtenerUsuarioPorCedula($vusu){
        $query = $this->connect()->query("SELECT * FROM usuario WHERE usu_cedula = $vusu AND usu_estado = 1");
        return $query;
    }   
    
    // Módulos
    function obtenerModulos(){
        $query = $this->connect()->query("SELECT * FROM modulo WHERE mod_estado = 1");
        return $query;
    }

    // Categorías
    function obtenerCategorias(){
        $query = $this->connect()->query("SELECT * FROM categoria WHERE cat_estado = 1");
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
        $query = $this->connect()->query("SELECT * FROM recurso WHERE rec_clave = $vrec AND rec_estado = 1");
        return $query;
    } 
}

?>