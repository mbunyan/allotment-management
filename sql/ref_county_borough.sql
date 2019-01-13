-- -----------------------------------------------------
-- Table `allotmentdb`.`ref_county_borough`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`ref_county_borough` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`ref_county_borough` (
  `id` INT UNSIGNED NOT NULL  AUTO_INCREMENT,
  `county_borough_name` VARCHAR(60) NOT NULL,
  `country_id` INT(10) UNSIGNED NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
  