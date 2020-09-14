-- -----------------------------------------------------
-- Table `allotmentdb`.`addressee_title`
-- admin controlled lookup table
-- salutation Mr, Mrs, Miss, Ms, Dr, etc
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`addressee_title` ;
DROP TABLE IF EXISTS `allotmentdb`.`honorific` ;

CREATE TABLE `allotmentdb`.`honorific` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prefix` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT 'Soft delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `allotmentdb`.`honorific`
(`prefix`, `created_by`, `updated_by`, `created_at`, `updated_at`)
VALUES
('Br.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Dr.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Fr.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Lady','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('M.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Master','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Miss','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Mr.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Mrs.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Ms.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Mx.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Pr.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Prof.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Sir','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00'),
('Sr.','admin','admin','2018-07-24T12:34:51+00:00' ,'2018-07-24T12:34:51+00:00');
