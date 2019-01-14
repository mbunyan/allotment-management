SELECT DISTINCT lad17cd, lad17nm FROM `ref_ons_ward_borough`;


CREATE TABLE `ref_borough` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lad17cd` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `borough_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ref_borough` (`lad17cd`, `borough_name`)
SELECT DISTINCT lad17cd, lad17nm FROM `ref_ons_ward_borough`;
