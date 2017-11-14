-- -----------------------------------------------------
-- Table `allotmentdb`.`plot_structure`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`plot_structure` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot_structure` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `plot_id` INT UNSIGNED NOT NULL,
  `type` VARCHAR(60) NOT NULL COMMENT 'Shed, greenhouse or something else',
  `installed` DATE NOT NULL,
  `removed` DATE NULL DEFAULT NULL,
  `description` VARCHAR(200) NULL DEFAULT NULL COMMENT 'size and materials',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_plot_structure_plot`
    FOREIGN KEY (`plot_id`)
    REFERENCES `allotmentdb`.`plot` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_plot_structure_plot` ON `allotmentdb`.`plot_structure` (`plot_id` ASC);
