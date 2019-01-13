-- -----------------------------------------------------
-- Table `allotmentdb`.`base_table`
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `allotmentdb`.`plot` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ref_borough_id` INT(11) UNSIGNED NOT NULL,
  `description`  varchar(10) NOT NULL,
  `pole_area`  double(5,3) UNSIGNED NOT NULL,
  `type`  char(1) NOT NULL,
  `state`  varchar(10) NOT NULL DEFAULT 'original',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS=1;

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE `plot`;

INSERT IGNORE INTO `plot` (ref_borough_id, description, pole_area, type, `created_by`, `updated_by`, `created_at`, `updated_at`)
SELECT
'302' AS `ref_borough_id`,
`plot-record`.Plot_Description,
`plot-record`.Pole_Size,
'B' AS `type`,
'import' AS `created_by`,
'import' AS `updated_by`,
CURRENT_TIMESTAMP() AS `created_at`,
CURRENT_TIMESTAMP() AS `updated_at`
FROM `jubileeroad`.`plot-record`
ORDER BY `plot-record`.`Plot_Description` ASC;

SET FOREIGN_KEY_CHECKS=1;

SELECT * FROM `plot`;