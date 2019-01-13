-- -----------------------------------------------------
-- Table `allotmentdb`.`user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`user_role` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`user_role` (
  `id` INT UNSIGNED NOT NULL  AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL DEFAULT 0,
	`role_id` INT UNSIGNED NOT NULL DEFAULT 0,
  `username` VARCHAR(60) NOT NULL DEFAULT 'errunknownname',
  `grant_allotment_site_manager` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site manager can edit specified site',
  `grant_allotment_site_view` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site manager can view, specified site',
  `grant_owner_view` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site owner can view, all sites in domain and admin',
  `grant_owner_edit` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'allotment site owner can edit all sites in domain and admin',
  `grant_expires` DATE NOT NULL COMMENT 'date all grants expire',
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
COMMENT = '	';