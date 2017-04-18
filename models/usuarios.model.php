<?php
    require_once("libs/dao.php");

    function obtenerUsuario($usuarioCorreo){
      $usuario = array();
      $sqlSelect = "select usuarioId, usuarioCorreo, usuarioClave from usuarios where usuarioCorreo='%s';";
      sprintf($sqlSelect,$usuarioCorreo);
      $usuario = obtenerUnRegistro($sqlSelect);

      return $usuario;
    }
 ?>
