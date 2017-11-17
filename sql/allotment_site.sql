-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_site`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_site` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_site` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `allotment_owner_id` INT UNSIGNED NOT NULL,
  `title` VARCHAR(150) NOT NULL,
  `line_1` VARCHAR(100) NOT NULL,
  `line_2` VARCHAR(100) NULL DEFAULT NULL,
  `town_city` VARCHAR(100) NOT NULL,
  `postcode_zip` VARCHAR(15) NOT NULL,
  `county_borough` VARCHAR(100) NOT NULL COMMENT 'Look up list',
  `country` VARCHAR(100) NOT NULL COMMENT 'Look up list',
  `latitude` DOUBLE(10,6) UNSIGNED NULL DEFAULT NULL COMMENT 'Central point or main gate',
  `longitude` DOUBLE(10,6) UNSIGNED NULL DEFAULT NULL COMMENT 'Central point or main gate',
  `self_managed` INT(1) UNSIGNED NOT NULL DEFAULT 0,
  `open_closed` INT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Allotment open for use',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_allotment_allotment_owner`
    FOREIGN KEY (`allotment_owner_id`)
    REFERENCES `allotmentdb`.`allotment_owner` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_allotment_allotment_owner` ON `allotmentdb`.`allotment_site` (`allotment_owner_id` ASC);
