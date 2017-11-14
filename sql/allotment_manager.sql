-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_manager`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_manager` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_manager` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `allotment_id` INT UNSIGNED NOT NULL,
  `title` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(60) NOT NULL,
  `last_name` VARCHAR(60) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_allotment_manager_allotment`
    FOREIGN KEY (`allotment_id`)
    REFERENCES `allotmentdb`.`allotment_site` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_allotment_manager_allotment` ON `allotmentdb`.`allotment_manager` (`allotment_id` ASC);
