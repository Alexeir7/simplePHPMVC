<?php
  require_once("libs/dao.php");

  function registrarCita($arrDatos){

    $arrDatos["fechaHora"] = date('Y-m-d H:i:s');

    $sqlInsert = "INSERT INTO `citas` (`usuarioId`, `fechaHora`, `idtipoPrograma`) values (%d, '%s', %d);";
    $sqlInsert = sprintf($sqlInsert, intval ($arrDatos["usuarioId"]), $arrDatos["fechaHora"], intval ($arrDatos["idtipoPrograma"]));

    if (ejecutarNonQuery($sqlInsert)) {
      return getLastInserId();
    }

    return 0;

  }


 ?>
