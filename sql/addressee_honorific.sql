-- -----------------------------------------------------
-- Table `allotmentdb`.`addressee_title`
-- admin controlled lookup table
-- salutation Mr, Mrs, Miss, Ms, Dr, etc
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`addressee_title` ;
DROP TABLE IF EXISTS `allotmentdb`.`addressee_honorific` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`addressee_honorific` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `honorific` VARCHAR(20) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `allotmentdb`.`addressee_honorific`
(`honorific`, `created_by`, `updated_by`, `created_at`, `updated_at`) 
VALUES 
('Br.','admin','admin',1532435691 ,1532435691),
('Dr.','admin','admin',1532435691 ,1532435691),
('Fr.','admin','admin',1532435691 ,1532435691),
('Lady','admin','admin',1532435691 ,1532435691),
('M.','admin','admin',1532435691 ,1532435691),
('Master','admin','admin',1532435691 ,1532435691),
('Miss','admin','admin',1532435691 ,1532435691),
('Mr.','admin','admin',1532435691 ,1532435691),
('Mrs.','admin','admin',1532435691 ,1532435691),
('Ms.','admin','admin',1532435691 ,1532435691),
('Mx.','admin','admin',1532435691 ,1532435691),
('Pr.','admin','admin',1532435691 ,1532435691),
('Prof.','admin','admin',1532435691 ,1532435691),
('Sir','admin','admin',1532435691 ,1532435691),
('Sr.','admin','admin',1532435691 ,1532435691);