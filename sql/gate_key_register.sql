-- -----------------------------------------------------
-- Table `allotmentdb`.`gate_key_register`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`gate_key_register` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`gate_key_register` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `key_number` VARCHAR(20) NOT NULL,
  `issued_to_tenant` INT UNSIGNED NOT NULL,
  `issued_date` DATE NOT NULL,
  `returned_date` DATE NULL,
  `charge_money` DECIMAL(5,2) UNSIGNED NULL,
  `refund_money` DECIMAL(5,2) UNSIGNED NULL,
  `refund_date` DATE NULL,
  `reason_refund` VARCHAR(250) NULL,
  `reason_no_refund` VARCHAR(250) NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));


