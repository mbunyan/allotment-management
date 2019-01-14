-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_owner_contact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_owner_contact` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_owner_contact` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `allotment_owner_person_id` INT UNSIGNED NOT NULL,
  `contact_type` VARCHAR(50) NOT NULL,
  `detail` VARCHAR(150) NOT NULL,
  `date_contact_from` DATE NOT NULL,
  `date_contact_to` DATE NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

