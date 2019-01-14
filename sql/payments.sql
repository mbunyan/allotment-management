-- -----------------------------------------------------
-- Table `allotmentdb`.`payments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`payments` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`payments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `date_of_payment` DATE NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
