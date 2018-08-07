-- MySQL Script generated by MySQL Workbench
-- Tue 07 Aug 2018 12:00:24 AM MST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema wdf
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema wdf
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wdf` DEFAULT CHARACTER SET utf8 ;
USE `wdf` ;

-- -----------------------------------------------------
-- Table `wdf`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wdf`.`city` (
  `city_id` INT(20) NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  `city_lon` VARCHAR(45) NOT NULL,
  `city_lat` VARCHAR(45) NOT NULL,
  `city_cod` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE INDEX `city_id_UNIQUE` (`city_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `wdf`.`weather`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wdf`.`weather` (
  `sno` INT(20) NOT NULL AUTO_INCREMENT,
  `runner_time` BIGINT(20) NOT NULL,
  `weather_temp_min` VARCHAR(45) NOT NULL,
  `weather_temp_max` VARCHAR(45) NOT NULL,
  `weather_description` VARCHAR(45) NOT NULL,
  `weather_pressure` VARCHAR(45) NOT NULL,
  `weather_humidity` VARCHAR(45) NOT NULL,
  `weather_wind_speed` VARCHAR(45) NOT NULL,
  `city_city_id` INT(20) NOT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE INDEX `sno_UNIQUE` (`sno` ASC),
  INDEX `fk_weather_city_idx` (`city_city_id` ASC),
  CONSTRAINT `fk_weather_city`
    FOREIGN KEY (`city_city_id`)
    REFERENCES `wdf`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 433
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;