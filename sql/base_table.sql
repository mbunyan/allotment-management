-- -----------------------------------------------------
-- Table `allotmentdb`.`base_table`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`base_table` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`base_table` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;