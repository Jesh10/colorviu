-- MySQL Script generated by MySQL Workbench
-- Thu Nov 17 14:34:08 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema colorviu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema colorviu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `colorviu` DEFAULT CHARACTER SET utf8 ;
USE `colorviu` ;

-- -----------------------------------------------------
-- Table `colorviu`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `colorviu`.`Users` (
  `UserId` INT NOT NULL AUTO_INCREMENT,
  `FullName` VARCHAR(45) NOT NULL,
  `Email` LONGTEXT NOT NULL,
  `Password` VARCHAR(455) NOT NULL,
  `Gender` ENUM('Male', 'Female') NOT NULL,
  `DateOfBirth` DATE NOT NULL,
  `FileName` VARCHAR(455) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `colorviu`.`Results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `colorviu`.`Results` (
  `ResultsId` INT NOT NULL AUTO_INCREMENT,
  `UserId` INT NOT NULL,
  `TestName` VARCHAR(45) NOT NULL,
  `Result` VARCHAR(45) NOT NULL,
  `Severity` VARCHAR(455) NOT NULL,
  `DateTime` VARCHAR(455) NOT NULL,
  `Date` DATE NOT NULL,
  PRIMARY KEY (`ResultsId`),
  INDEX `fk_results_idx` (`UserId` ASC),
  CONSTRAINT `fk_results`
    FOREIGN KEY (`UserId`)
    REFERENCES `colorviu`.`Users` (`UserId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `colorviu`.`otp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `colorviu`.`otp` (
  `OtpId` INT NOT NULL,
  `otp` INT NOT NULL,
  PRIMARY KEY (`OtpId`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=0;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;