-- -----------------------------------------------------
-- Table `allotmentdb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`user` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(60) NOT NULL,
  `last_name` VARCHAR(60) NOT NULL,
  `username` VARCHAR(60) NOT NULL,
  `password_hash` VARCHAR(100) NOT NULL,
  `password_reset_token` VARCHAR(200) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `status` INT(3) UNSIGNED NOT NULL DEFAULT 0,
  `auth_key` VARCHAR(100) NOT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;
