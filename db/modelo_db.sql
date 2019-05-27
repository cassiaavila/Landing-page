-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema minhasreceitas_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `minhasreceitas_db` ;

-- -----------------------------------------------------
-- Schema minhasreceitas_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `minhasreceitas_db` DEFAULT CHARACTER SET utf8 ;
USE `minhasreceitas_db` ;

-- -----------------------------------------------------
-- Table `minhasreceitas_db`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `minhasreceitas_db`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `minhasreceitas_db`.`receitas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `minhasreceitas_db`.`receitas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `subtipos` VARCHAR(45) NOT NULL,
  `ingrediente` TEXT(512) NOT NULL,
  `id_usuarios` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_idx` (`id_usuarios` ASC),
  CONSTRAINT `id`
    FOREIGN KEY (`id_usuarios`)
    REFERENCES `minhasreceitas_db`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `minhasreceitas_db`.`pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `minhasreceitas_db`.`pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `whatsapp` VARCHAR(15) NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_usuario_idx` (`id_usuario` ASC),
  CONSTRAINT `id_usuario`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `minhasreceitas_db`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
