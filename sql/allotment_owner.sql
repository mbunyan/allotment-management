
-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_owner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_owner` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_owner` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `public_authority` INT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Check if public or municipal authority',
  `title` VARCHAR(100) NOT NULL,
  `department` VARCHAR(100) NULL DEFAULT NULL,
  `line_1` VARCHAR(100) NOT NULL,
  `line_2` VARCHAR(100) NULL DEFAULT NULL,
  `town_city` VARCHAR(100) NOT NULL,
  `postcode_zip` VARCHAR(15) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(25) NULL DEFAULT NULL COMMENT 'Main contact phone number',
  `email` VARCHAR(150) NULL DEFAULT NULL COMMENT 'Main contact email address',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;
