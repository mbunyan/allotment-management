-- -----------------------------------------------------
-- Table `allotmentdb`.`contact_type`
-- admin controlled lookup table
-- postal address, landline phone, mobile phone, email
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`contact_type` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`contact_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_type` VARCHAR(60) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;
