-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_manager_contact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_manager_contact` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_manager_contact` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `allotment_manager_id` INT UNSIGNED NOT NULL,
  `contact_type` VARCHAR(50) NOT NULL,
  `detail` VARCHAR(150) NOT NULL,
  `date_contact_from` DATE NOT NULL,
  `date_contact_to` DATE NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_allotment_manager_contact`
    FOREIGN KEY (`allotment_manager_id`)
    REFERENCES `allotmentdb`.`allotment_manager` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_allotment_manager_contact_contact_type`
    FOREIGN KEY (`contact_type`)
    REFERENCES `allotmentdb`.`contact_type` (`contact_type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_allotment_manager_contact` ON `allotmentdb`.`allotment_manager_contact` (`allotment_manager_id` ASC);

CREATE INDEX `fk_allotment_manager_contact_contact_type` ON `allotmentdb`.`allotment_manager_contact` (`contact_type` ASC);