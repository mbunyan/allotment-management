-- -----------------------------------------------------
-- Table `allotmentdb`.`ref_country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`ref_country` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`ref_country` (
  `id`  NOT NULL,
  `county_name` VARCHAR(60) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
  