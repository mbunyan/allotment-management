-- -----------------------------------------------------
-- Table `allotmentdb`.`base_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`base_history` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`base_history` (
  `id` INT UNIQUE UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` VARCHAR(10) NOT NULL,
  `action_at` INT(11) UNSIGNED NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `change_reason` VARCHAR(200) NOT NULL DEFAULT new,
  `origin_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`));