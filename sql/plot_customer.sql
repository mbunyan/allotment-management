-- -----------------------------------------------------
-- Table `allotmentdb`.`plot_customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`plot_customer` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot_customer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `plot_id` INT NOT NULL,
  `date_rented_from` DATE NOT NULL,
  `date_surrendered` DATE NULL DEFAULT NULL,
  `reason_surrendered` VARCHAR(100) NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_plot_customer_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_plot_customer_plot`
    FOREIGN KEY (`plot_id`)
    REFERENCES `allotmentdb`.`plot` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_plot_customer_customer` ON `allotmentdb`.`plot_customer` (`customer_id` ASC);

CREATE INDEX `fk_plot_customer_plot` ON `allotmentdb`.`plot_customer` (`plot_id` ASC);
