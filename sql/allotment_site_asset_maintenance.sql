-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_site_asset_maintenance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_site_asset_maintenance` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_site_asset_maintenance` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` INT UNSIGNED NOT NULL,
  `repair_cost` DECIMAL(6,2) NOT NULL,
  `repair_date` DATE NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));



