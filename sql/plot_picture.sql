-- -----------------------------------------------------
-- Table `allotmentdb`.`plot_picture`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`plot_picture` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot_picture` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `plot_id` INT UNSIGNED NOT NULL,
  `image_path` VARCHAR(250) NOT NULL,
  `exif_date` DATETIME NULL COMMENT 'Extracted from EXIF image data, if available',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_plot_picture_plot`
    FOREIGN KEY (`plot_id`)
    REFERENCES `allotmentdb`.`plot` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_plot_picture_plot` ON `allotmentdb`.`plot_picture` (`plot_id` ASC);