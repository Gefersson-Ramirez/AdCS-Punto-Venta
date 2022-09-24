-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CLientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CLientes` (
  `idCLientes` INT NOT NULL AUTO_INCREMENT,
  `Direccion_Envio` VARCHAR(60) NOT NULL,
  `Saldo` DECIMAL NOT NULL,
  `Limite_Credito` DECIMAL NOT NULL,
  `Descuento` DECIMAL NOT NULL,
  `Pedidos_idPedidos` INT NOT NULL,
  PRIMARY KEY (`idCLientes`, `Pedidos_idPedidos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fabrica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fabrica` (
  `idFabrica` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(150) NULL,
  PRIMARY KEY (`idFabrica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Articulos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Articulos` (
  `idArticulos` INT NOT NULL AUTO_INCREMENT,
  `Fabrica_Distribucion` VARCHAR(45) NOT NULL,
  `Existencias` INT(4) NOT NULL,
  `Descripcion` VARCHAR(150) NULL,
  `Fabrica_idFabrica` INT NOT NULL,
  PRIMARY KEY (`idArticulos`, `Fabrica_idFabrica`),
  INDEX `fk_Articulos_Fabrica1_idx` (`Fabrica_idFabrica` ASC) VISIBLE,
  CONSTRAINT `fk_Articulos_Fabrica1`
    FOREIGN KEY (`Fabrica_idFabrica`)
    REFERENCES `mydb`.`Fabrica` (`idFabrica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedidos` (
  `idPedidos` INT NOT NULL AUTO_INCREMENT,
  `Cabecera` VARCHAR(150) NOT NULL,
  `Cuerpo_Pedido` VARCHAR(150) NULL,
  `CLientes_idCLientes` INT NOT NULL,
  `CLientes_Pedidos_idPedidos` INT NOT NULL,
  PRIMARY KEY (`idPedidos`, `CLientes_idCLientes`, `CLientes_Pedidos_idPedidos`),
  INDEX `fk_Pedidos_CLientes1_idx` (`CLientes_idCLientes` ASC, `CLientes_Pedidos_idPedidos` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_CLientes1`
    FOREIGN KEY (`CLientes_idCLientes` , `CLientes_Pedidos_idPedidos`)
    REFERENCES `mydb`.`CLientes` (`idCLientes` , `Pedidos_idPedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuairos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuairos` (
  `idUsuairos` INT NOT NULL AUTO_INCREMENT,
  `Cargo` VARCHAR(45) NOT NULL,
  `Nombre_Usuario` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  `Contrasenia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuairos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ventas` (
  `idVentas` INT NOT NULL AUTO_INCREMENT,
  `Producto` VARCHAR(45) NOT NULL,
  `Cantidad` VARCHAR(45) NOT NULL,
  `Total` DECIMAL NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `Cliente` VARCHAR(45) NOT NULL,
  `CLientes_idCLientes` INT NOT NULL,
  `CLientes_Pedidos_idPedidos` INT NOT NULL,
  PRIMARY KEY (`idVentas`, `CLientes_idCLientes`, `CLientes_Pedidos_idPedidos`),
  INDEX `fk_Ventas_CLientes1_idx` (`CLientes_idCLientes` ASC, `CLientes_Pedidos_idPedidos` ASC) VISIBLE,
  CONSTRAINT `fk_Ventas_CLientes1`
    FOREIGN KEY (`CLientes_idCLientes` , `CLientes_Pedidos_idPedidos`)
    REFERENCES `mydb`.`CLientes` (`idCLientes` , `Pedidos_idPedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
