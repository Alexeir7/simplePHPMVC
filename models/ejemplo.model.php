<?php
    require_once("libs/dao.php");

    function obtenerUsuarios(){
      $usuarios = array();
      $sqlSelect = "select * from usuarios;";
      $usuarios = obtenerRegistros($sqlSelect);

      return $usuarios;
    }
 ?>
