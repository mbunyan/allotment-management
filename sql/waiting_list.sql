-- -----------------------------------------------------
-- Table `allotmentdb`.`waiting_list`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`waiting_list` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`waiting_list` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `allotment_id` INT UNSIGNED NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
  