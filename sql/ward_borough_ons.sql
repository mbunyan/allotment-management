-- -----------------------------------------------------
-- Table `allotmentdb`.`ref_county_borough`
-- Ward to Local Authority District to County to Region to Country
-- (December 2017) Lookup in United Kingdom
-- Source: ONS
-- Last update: 2017-10-09
-- https://geoportal.statistics.gov.uk/
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`ward_borough_ons` ;

CREATE TABLE `ward_borough_ons` (
  `fid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `wd17cd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wd17nm` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ward name',
  `wd17nmw` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Municipal Ward name',
  `lad17cd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lad17nm` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Local Auth name',
  `cty17cd` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty17nm` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'County',
  `gor10cd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gor10nm` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GO region',
  `ctry17cd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctry17nm` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Country',
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ONS',
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ONS',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete',
  PRIMARY KEY (`fid`),
  KEY `idx_names` (`lad17nm`,`cty17nm`,`ctry17nm`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


