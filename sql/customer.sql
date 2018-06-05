-- -----------------------------------------------------
-- Table `allotmentdb`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`customer` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`customer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `middle_name` VARCHAR(50) NULL DEFAULT NULL COMMENT 'Initials or name',
  `last_name` VARCHAR(60) NOT NULL,
  `suffix` VARCHAR(20) NULL DEFAULT NULL,
  `salutation` VARCHAR(100) NOT NULL COMMENT 'Correspondence salutation',
  `plot_tenant` INT(1) UNSIGNED NOT NULL DEFAULT 0,
  `municipal_resident` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `birthday` DATE NULL DEFAULT NULL,
  `registered_date` DATE NULL COMMENT 'Date added to service',
  `created_by` VARCHAR(60) NOT NULL,
  `update_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NULL DEFAULT 0 COMMENT 'hides data = 1, retains data in table',
  `change_reason` VARCHAR(200) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

