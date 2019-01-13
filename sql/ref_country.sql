-- -----------------------------------------------------
-- Table `allotmentdb`.`ref_country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`ref_country` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`ref_country` (
  `id` INT UNSIGNED NOT NULL  AUTO_INCREMENT,
  `ctry17cd` CHAR(10) NOT NULL,
  `country_name` VARCHAR(60) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));

SELECT DISTINCT ctry17cd, ctry17nm FROM `ref_ons_ward_borough`;

INSERT INTO `ref_country` (`ctry17cd`, `country_name`)
SELECT DISTINCT ctry17cd, ctry17nm FROM `ref_ons_ward_borough`;
  