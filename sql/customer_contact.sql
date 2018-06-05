-- -----------------------------------------------------
-- Table `allotmentdb`.`customer_contact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`customer_contact` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`customer_contact` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `contact_type` VARCHAR(60) NOT NULL,
  `detail` VARCHAR(150) NOT NULL,
  `date_contact_from` DATE NOT NULL,
  `date_contact_to` DATE NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `change_reason` VARCHAR(200) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_customer_contact_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_contact_contact_type`
    FOREIGN KEY (`contact_type`)
    REFERENCES `allotmentdb`.`contact_type` (`contact_type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_customer_contact_customer` ON `allotmentdb`.`customer_contact` (`customer_id` ASC);

CREATE INDEX `fk_customer_contact_contact_type` ON `allotmentdb`.`customer_contact` (`contact_type` ASC);
