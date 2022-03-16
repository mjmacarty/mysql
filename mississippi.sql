-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mississippi
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mississippi
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mississippi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mississippi` ;

-- -----------------------------------------------------
-- Table `mississippi`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mississippi`.`customers` (
  `CID` CHAR(4) NOT NULL,
  `FirstName` TEXT NULL DEFAULT NULL,
  `LastName` TEXT NULL DEFAULT NULL,
  `Address` TEXT NULL DEFAULT NULL,
  `City` TEXT NULL DEFAULT NULL,
  `State` TEXT NULL DEFAULT NULL,
  `Zip` INT NULL DEFAULT NULL,
  `email` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`CID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mississippi`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mississippi`.`orders` (
  `OrderID` INT NULL DEFAULT NULL,
  `OrderDate` TEXT NULL DEFAULT NULL,
  `CID` CHAR(4) NULL DEFAULT NULL,
  `ShippingMethod` TEXT NULL DEFAULT NULL,
  INDEX `CID_idx` (`CID` ASC) VISIBLE,
  CONSTRAINT `CID`
    FOREIGN KEY (`CID`)
    REFERENCES `mississippi`.`customers` (`CID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
