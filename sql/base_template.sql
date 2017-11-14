-- -----------------------------------------------------
-- Table `allotmentdb`.`base_template`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`base_template` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`base_template` (
  `id` INT UNIQUE UNSIGNED NOT NULL AUTO_INCREMENT,
  `some_title` VARCHAR(60) NOT NULL,
  `some_day` DATE NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `change_reason` VARCHAR(200) NOT NULL DEFAULT new,
  PRIMARY KEY (`id`));