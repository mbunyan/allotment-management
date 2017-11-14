-- -----------------------------------------------------
-- Table `allotmentdb`.`gate_key_register`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`gate_key_register` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`gate_key_register` (
  `id` INT UNSIGNED NOT NULL,
  `key_number` VARCHAR(20) NOT NULL,
  `issued_to_tenant` INT UNSIGNED NOT NULL,
  `issued_date` DATE NOT NULL,
  `returned_date` DATE NULL,
  `charge_money` DECIMAL(5,2) NULL,
  `refund_money` DECIMAL(5,2) NULL,
  `refund_date` DATE NULL,
  `reason_refund` VARCHAR(250) NULL,
  `reason_no_refund` VARCHAR(250) NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_customer_contact_customer`
    FOREIGN KEY (`issued_to_tenant`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_customer_contact_customer_idx` ON `allotmentdb`.`gate_key_register` (`issued_to_tenant` ASC);

