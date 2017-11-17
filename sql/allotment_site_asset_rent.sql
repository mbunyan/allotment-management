-- -----------------------------------------------------
-- Table `allotmentdb`.`allotment_site_asset_rent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`allotment_site_asset_rent` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`allotment_site_asset_rent` (
  `id` INT UNSIGNED NOT NULL,
  `asset_id` INT UNSIGNED NOT NULL,
  `tenant_id` INT UNSIGNED NOT NULL,
  `rental_start_date` DATE NULL,
  `rental_end_date` DATE NULL,
  `rental_money` DECIMAL(5,2) NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_asset_id`
    FOREIGN KEY (`asset_id`)
    REFERENCES `allotmentdb`.`allotment_site_asset` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_contact_customer`
    FOREIGN KEY (`tenant_id`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_customer_contact_customer_idx` ON `allotmentdb`.`allotment_site_asset_rent` (`tenant_id` ASC);

CREATE INDEX `fk_asset_id_idx` ON `allotmentdb`.`allotment_site_asset_rent` (`asset_id` ASC);

