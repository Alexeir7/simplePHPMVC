<?php
  require_once("libs/dao.php");

  function registrarCita($arrDatos){

    $nuevaFecha = "";

    $sqlInsert = "INSERT INTO `citas` (`usuarioId`, `fechaHora` ,`fechaDia`, `idtipoPrograma`) values (%d, '%s', '%s', %d);";
    $sqlInsert = sprintf($sqlInsert, intval ($arrDatos["usuarioId"]), $arrDatos["hora"], date("d-m-Y", strtotime($arrDatos["fecha"])) , intval ($arrDatos["idtipoPrograma"]));

    if (ejecutarNonQuery($sqlInsert)) {
      return getLastInserId();
    }

    return 0;

  }

  function obtenerCitas(){
    $usuarios = array();
    $sqlstr = "select citas.codigoCita, usuarios.usuarioNombre, usuarios.usuarioApellido,
usuarios.telefono,usuarios.usuarioCorreo,citas.fechaHora,citas.fechaDia,tipoprograma.descripcion
from usuarios inner join citas on usuarios.usuarioId=citas.idtipoPrograma inner join
tipoprograma on citas.idtipoPrograma=tipoprograma.idtipoPrograma;";
    $usuarios = obtenerRegistros($sqlstr);
    return $usuarios;
  }

 ?>
