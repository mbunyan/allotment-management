-- -----------------------------------------------------
-- Table `allotmentdb`.`shed_greenhouse_maintenance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`shed_greenhouse_maintenance` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`shed_greenhouse_maintenance` (
  `id` INT UNSIGNED NOT NULL,
  `asset_id` INT UNSIGNED NOT NULL,
  `repair_cost` DECIMAL(6,2) NOT NULL,
  `repair_date` DATE NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_asset_id`
    FOREIGN KEY (`asset_id`)
    REFERENCES `allotmentdb`.`shed_greenhouse_asset` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_asset_id_idx` ON `allotmentdb`.`shed_greenhouse_maintenance` (`asset_id` ASC);

