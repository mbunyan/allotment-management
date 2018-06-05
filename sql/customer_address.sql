-- -----------------------------------------------------
-- Table `allotmentdb`.`customer_address`
-- Expected UK format for address
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`customer_address` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`customer_address` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `primary_address` TINYINT(1) UNSIGNED NULL DEFAULT 0,
  `address_type_code` VARCHAR(45) NULL,
  `line_1` VARCHAR(100) NOT NULL,
  `line_2` VARCHAR(100) NULL DEFAULT NULL,
  `town_city` VARCHAR(100) NOT NULL,
  `county` VARCHAR(60) NULL,
  `country` VARCHAR(100) NOT NULL,
  `postcode_zip` VARCHAR(15) NOT NULL,
  `date_address_from` DATE NOT NULL,
  `date_address_to` DATE NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `change_reason` VARCHAR(200) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_customer_address_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_customer_address_customer` ON `allotmentdb`.`customer_address` (`customer_id` ASC);

