-- MySQL Script generated by MySQL Workbench
-- Mon Jul  3 15:47:40 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema id20946012_mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema id20946012_mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `id20946012_mydb` DEFAULT CHARACTER SET utf8 ;
USE `id20946012_mydb` ;

-- -----------------------------------------------------
-- Table `id20946012_mydb`.`Comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id20946012_mydb`.`Comentario` (
  `id_comentario` INT NOT NULL,
  `id_publicacion` INT NOT NULL,
  `id_user` INT NOT NULL,
  `imagenes` VARCHAR(45) NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`id_comentario`),
  INDEX `fk_id_publicacion_idx` (`id_publicacion` ASC) VISIBLE,
  INDEX `fk_id_user_idx` (`id_user` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id20946012_mydb`.`Likes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id20946012_mydb`.`Likes` (
  `id_like` INT NULL,
  `id_publicacion` INT NULL,
  INDEX `fk_id_like_idx` (`id_like` ASC) VISIBLE,
  INDEX `fk_id_publicacionn_idx` (`id_publicacion` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id20946012_mydb`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id20946012_mydb`.`Login` (
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre_usuario`, `email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id20946012_mydb`.`Publicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id20946012_mydb`.`Publicacion` (
  `id_publicacion` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `imagenes` VARCHAR(45) NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`id_publicacion`),
  INDEX `fk_id_user_idx` (`id_user` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id20946012_mydb`.`SeguidorSeguido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id20946012_mydb`.`SeguidorSeguido` (
  `id_seguidor` INT NULL,
  `id_seguido` INT NULL,
  INDEX `fk_id_seguidor_idx` (`id_seguidor` ASC) INVISIBLE,
  INDEX `fk_id_seguido_idx` (`id_seguido` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id20946012_mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id20946012_mydb`.`Usuario` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `foto_perfil` VARCHAR(45) NULL,
  PRIMARY KEY (`id_user`),
  INDEX `fk_nombre_usuario_idx` (`nombre_usuario` ASC) VISIBLE,
  INDEX `fk_email_idx` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
