-- -----------------------------------------------------
-- Table `allotmentdb`.`customer`
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `allotmentdb`.`customer` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`customer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `middle_name` VARCHAR(50) NULL DEFAULT NULL COMMENT 'Initials or name',
  `last_name` VARCHAR(60) NOT NULL,
  `salutation` VARCHAR(100) NOT NULL COMMENT 'Correspondence salutation',
  `plot_tenant` INT(1) UNSIGNED NOT NULL DEFAULT 0,
  `municipal_resident` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `birthday` DATE NULL DEFAULT NULL,
  `registered_date` DATETIME NULL COMMENT 'Date added to service',
  `created_by` VARCHAR(60) NOT NULL,
  `update_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NULL DEFAULT 0 COMMENT 'inActive',
  `change_reason` VARCHAR(200) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS=1;


INSERT IGNORE INTO `allotmentdb`.`customer` (first_name, middle_name, last_name)
SELECT First_Name, Middle_Name, Last_Name FROM `jubileeroad`.`plot-record`;

DELETE FROM `allotmentdb`.`customer`
WHERE first_name = 'Vacant';

SELECT CURRENT_TIMESTAMP();

UPDATE `customer` SET
`created_by`='import',
`update_by`='import',
`created_at`= CURRENT_TIMESTAMP(),
`updated_at`= CURRENT_TIMESTAMP(),
`change_reason`='import';
