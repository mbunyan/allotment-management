-- -----------------------------------------------------
-- Table `allotmentdb`.`plot_rent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`plot_rent` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot_rent` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `plot_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `amount_of_payment` DOUBLE(6,2) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Payment received',
  `date_due` DATE NOT NULL COMMENT 'Annual renewal date or start date',
  `date_of_payment` DATE NOT NULL,
  `concession` VARCHAR(60) NULL DEFAULT 'Nil',
  `concession_rate` INT(3) UNSIGNED NULL DEFAULT 0 COMMENT 'Percentage reduction, if any',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_plot_rent_plot`
    FOREIGN KEY (`plot_id`)
    REFERENCES `allotmentdb`.`plot` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_plot_rent_plot` ON `allotmentdb`.`plot_rent` (`plot_id` ASC);

