-- -----------------------------------------------------
-- Table `allotmentdb`.`user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`user_role` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`user_role` (
  `id`  NOT NULL,
  `user_id` INT NULL,
  `username` VARCHAR(60) NULL,
  `grant_allotment_site_manager` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site manager can edit specified site',
  `grant_allotment_site_view` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site manager can view, specified site',
  `grant_owner_view` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site owner can view, all sites in domain and admin',
  `grant_owner_edit` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site owner can edit all sites in domain and admin',
  `grant_expires` DATE NOT NULL COMMENT 'date all grants expire',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) NOT NULL DEFAULT 0,
  `updated_at` INT(11) NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
COMMENT = '	';