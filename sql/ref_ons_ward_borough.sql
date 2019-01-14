-- -----------------------------------------------------
-- Table `allotmentdb`.`ref_county_borough`
-- Ward to Local Authority District to County to Region to Country
-- (December 2017) Lookup in United Kingdom
-- Source: ONS
-- Last update: 2017-10-09
-- http://geoportal.statistics.gov.uk/datasets/ward-to-local-authority-district-to-county-to-region-to-country-december-2017-lookup-in-united-kingdom/data
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`ref_ons_ward_borough` ;

CREATE TABLE
IF NOT EXISTS `allotmentdb`.`ref_ons_ward_borough` (
	`fid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`wd17cd` VARCHAR (60) NOT NULL,
	`wd17nm` VARCHAR (60) NOT NULL COMMENT 'Ward name',
	`wd17nmw` VARCHAR (60) NOT NULL COMMENT 'Municipal Ward name',
	`lad17cd` VARCHAR (60) NOT NULL,
	`lad17nm` VARCHAR (60) NOT NULL COMMENT 'Local Auth name',
	`cty17cd` VARCHAR (60) NOT NULL,
	`cty17nm` VARCHAR (60) NOT NULL COMMENT 'County',
	`gor10cd` VARCHAR (60) NOT NULL,
	`gor10nm` VARCHAR (60) NOT NULL COMMENT 'GO region',
	`ctry17cd` VARCHAR (60) NOT NULL,
	`ctry17nm` VARCHAR (60) NOT NULL COMMENT 'Country',
	`created_by` VARCHAR (60) NOT NULL DEFAULT 'ONS',
	`updated_by` VARCHAR (60) NOT NULL DEFAULT 'ONS',
	`created_at` INT (11) UNSIGNED NOT NULL DEFAULT 1512086401, -- 1st December 2017
	`updated_at` INT (11) UNSIGNED NOT NULL DEFAULT 1512086401,
	`soft_delete` TINYINT (1) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (`fid`)
);

UPDATE `allotmentdb`.`ref_ons_ward_borough` 
SET  `created_by`='ONS',
 `updated_by`='ONS',
 `created_at`='1512086401', -- 1st December 2017
 `updated_at`='1512086401'
;
