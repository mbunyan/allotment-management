﻿-- -----------------------------------------------------
-- Table `allotmentdb`.`ref_address_title`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`ref_address_title` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`ref_address_title` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `address_title` VARCHAR(60) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
