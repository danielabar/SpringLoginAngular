DROP SCHEMA IF EXISTS `arch-app` ;
CREATE SCHEMA IF NOT EXISTS `arch-app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `arch-app` ;

DROP TABLE IF EXISTS `users` ;

CREATE  TABLE IF NOT EXISTS `users` (
  `username` VARCHAR(255) NOT NULL ,
  `password` VARCHAR(255) NOT NULL ,
  `enabled` BOOL NOT NULL ,
  PRIMARY KEY (`username`) )
ENGINE = InnoDB;

DROP TABLE IF EXISTS `authorities` ;

CREATE  TABLE IF NOT EXISTS `authorities` (
  `authority_id` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(255) NOT NULL ,
  `authority` VARCHAR(255) NOT NULL , 
  PRIMARY KEY (`authority_id`) ,
  CONSTRAINT `fk_auth_users`
    FOREIGN KEY (`username` )
    REFERENCES `users` (`username` ) )
ENGINE = InnoDB;