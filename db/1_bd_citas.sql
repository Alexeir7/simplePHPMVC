-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dbnegocios
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbnegocios
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbnegocios` DEFAULT CHARACTER SET utf8 ;
USE `dbnegocios` ;

-- -----------------------------------------------------
-- Table `dbnegocios`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbnegocios`.`roles` (
  `codigoRol` BIGINT(11) NOT NULL,
  `descripcion` VARCHAR(100) CHARACTER SET 'latin1' NULL DEFAULT NULL,
  PRIMARY KEY (`codigoRol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbnegocios`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbnegocios`.`usuarios` (
  `usuarioId` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `usuarioCorreo` VARCHAR(100) CHARACTER SET 'latin1' NOT NULL,
  `usuarioNombre` VARCHAR(45) NOT NULL,
  `usuarioApellido` VARCHAR(45) NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `usuarioClave` VARCHAR(45) CHARACTER SET 'latin1' NOT NULL,
  `usuarioEstado` CHAR(3) CHARACTER SET 'latin1' NOT NULL DEFAULT 'ACT',
  `usuarioFechaIngreso` DATETIME NOT NULL,
  `usuarioUltimoLogin` DATETIME NOT NULL,
  `intentos` INT(11) NULL DEFAULT '0',
  `codigoRol` BIGINT(11) NULL,
  PRIMARY KEY (`usuarioId`),
  UNIQUE INDEX `usuarioCorreo_UNIQUE` (`usuarioCorreo` ASC),
  INDEX `fk_usuarios_roles1_idx` (`codigoRol` ASC),
  CONSTRAINT `fk_usuarios_roles1`
    FOREIGN KEY (`codigoRol`)
    REFERENCES `dbnegocios`.`roles` (`codigoRol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbnegocios`.`tipoprograma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbnegocios`.`tipoprograma` (
  `idtipoPrograma` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) CHARACTER SET 'utf8mb4' NOT NULL,
  PRIMARY KEY (`idtipoPrograma`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbnegocios`.`citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbnegocios`.`citas` (
  `codigoCita` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `usuarioId` BIGINT(11) NOT NULL,
  `fechaHora` DATETIME NOT NULL,
  `idtipoPrograma` BIGINT(11) NOT NULL,
  PRIMARY KEY (`codigoCita`),
  UNIQUE INDEX `fechaHora_UNIQUE` (`fechaHora` ASC),
  INDEX `fk_citas_usuarios_idx` (`usuarioId` ASC),
  INDEX `fk_citas_tipoprograma1_idx` (`idtipoPrograma` ASC),
  CONSTRAINT `fk_citas_usuarios`
    FOREIGN KEY (`usuarioId`)
    REFERENCES `dbnegocios`.`usuarios` (`usuarioId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_citas_tipoprograma1`
    FOREIGN KEY (`idtipoPrograma`)
    REFERENCES `dbnegocios`.`tipoprograma` (`idtipoPrograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

