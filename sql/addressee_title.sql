-- -----------------------------------------------------
-- Table `allotmentdb`.`addressee_title`
-- admin controlled lookup table
-- salutation Mr, Mrs, Miss, Ms, Dr, etc
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`addressee_title` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`addressee_title` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(20) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;
