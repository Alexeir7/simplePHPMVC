CREATE SCHEMA `turihn` ;

CREATE TABLE `turihn`.`lugares` (
  `lugarId` BIGINT(13) NOT NULL AUTO_INCREMENT,
  `lugartitulo` VARCHAR(45) NULL,
  `lugardesc` VARCHAR(255) NULL,
  `lugarimgurl` VARCHAR(128) NULL,
  `lugardesccrt` VARCHAR(45) NULL,
  PRIMARY KEY (`lugarId`));

  INSERT INTO `turihn`.`lugares` (`lugartitulo`, `lugardesc`, `lugarimgurl`, `lugardesccrt`) VALUES ('Titulo 1', 'Roca en el mar pacífico bonito', 'public/imgs/t1.jpg', 'Roca En Mar');
  INSERT INTO `turihn`.`lugares` (`lugartitulo`, `lugardesc`, `lugarimgurl`, `lugardesccrt`) VALUES ('Titulo 2', 'Playa en Coniferas de la Tundra', 'public/imgs/t2.jpg', 'Playa en Bosque');
  INSERT INTO `turihn`.`lugares` (`lugartitulo`, `lugardesc`, `lugarimgurl`, `lugardesccrt`) VALUES ('Titulo 3', 'Castillo de Omoa', 'public/imgs/t3.jpg', 'Castillo Omoa');
