-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_site_asset`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_site_asset` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_site_asset` (
  `id` INT UNSIGNED NOT NULL,
  `allotment_id` INT UNSIGNED NOT NULL,
  `location` VARCHAR(250) NOT NULL,
  `purchase_date` DATE NULL,
  `asset_cost` DECIMAL(6,2) NOT NULL DEFAULT 0,
  `rateable_value` DECIMAL(5,2) NULL,
  `description` VARCHAR(250) NULL,
  `condition` VARCHAR(250) NULL,
  `condition_review_date` DATE NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_allotment_id`
    FOREIGN KEY (`allotment_id`)
    REFERENCES `allotmentdb`.`allotment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_allotment_id_idx` ON `allotmentdb`.`allotment_site_asset` (`allotment_id` ASC);

