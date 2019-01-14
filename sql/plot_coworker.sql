-- -----------------------------------------------------
-- Table `allotmentdb`.plot_coworker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`plot_coworker` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot_coworker` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `plot_id` INT UNSIGNED NOT NULL,
  `date_start` DATE NOT NULL,
  `date_ended` DATE NULL DEFAULT NULL,
  `reason_ended` VARCHAR(100) NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fkplot_coworker_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkplot_coworker_plot`
    FOREIGN KEY (`plot_id`)
    REFERENCES `allotmentdb`.`plot` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fkplot_coworker_customer` ON `allotmentdb`.`plot_coworker` (`customer_id` ASC);

CREATE INDEX `fkplot_coworker_plot` ON `allotmentdb`.`plot_coworker` (`plot_id` ASC);
