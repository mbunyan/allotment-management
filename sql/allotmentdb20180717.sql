/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : allotmentdb

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-07-17 21:13:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addressee_title
-- ----------------------------
DROP TABLE IF EXISTS `addressee_title`;
CREATE TABLE `addressee_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_manager_contact
-- ----------------------------
DROP TABLE IF EXISTS `allotment_manager_contact`;
CREATE TABLE `allotment_manager_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allotment_manager_id` int(10) unsigned NOT NULL,
  `contact_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_contact_from` date NOT NULL,
  `date_contact_to` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_owner
-- ----------------------------
DROP TABLE IF EXISTS `allotment_owner`;
CREATE TABLE `allotment_owner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `public_authority` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Check if public or municipal authority',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode_zip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county_borough` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Look up list',
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Look up list',
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Main contact phone number',
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Main contact email address',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_owner_contact
-- ----------------------------
DROP TABLE IF EXISTS `allotment_owner_contact`;
CREATE TABLE `allotment_owner_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allotment_owner_person_id` int(10) unsigned NOT NULL,
  `contact_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_contact_from` date NOT NULL,
  `date_contact_to` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_owner_person
-- ----------------------------
DROP TABLE IF EXISTS `allotment_owner_person`;
CREATE TABLE `allotment_owner_person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allotment_owner_id` int(10) unsigned NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_allotment_contact_allotment_owner` (`allotment_owner_id`),
  CONSTRAINT `fk_allotment_contact_allotment_owner` FOREIGN KEY (`allotment_owner_id`) REFERENCES `allotment_owner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_site
-- ----------------------------
DROP TABLE IF EXISTS `allotment_site`;
CREATE TABLE `allotment_site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allotment_owner_id` int(10) unsigned NOT NULL COMMENT 'Site Owner',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site title',
  `line_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Town/City',
  `postcode_zip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post Code',
  `county_borough` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'County/Borough',
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Country',
  `ward` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ward',
  `latitude` double(10,6) unsigned DEFAULT NULL COMMENT 'Central point or main gate',
  `longitude` double(10,6) unsigned DEFAULT NULL COMMENT 'Central point or main gate',
  `self_managed` int(1) unsigned NOT NULL DEFAULT '0',
  `open_closed` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Allotment open or closed',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_allotment_allotment_owner` (`allotment_owner_id`),
  CONSTRAINT `fk_allotment_allotment_owner` FOREIGN KEY (`allotment_owner_id`) REFERENCES `allotment_owner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_site_asset
-- ----------------------------
DROP TABLE IF EXISTS `allotment_site_asset`;
CREATE TABLE `allotment_site_asset` (
  `id` int(10) unsigned NOT NULL,
  `allotment_id` int(10) unsigned NOT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `asset_cost` decimal(6,2) NOT NULL DEFAULT '0.00',
  `rateable_value` decimal(5,2) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition_review_date` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_allotment_id_idx` (`allotment_id`),
  CONSTRAINT `fk_allotment_id` FOREIGN KEY (`allotment_id`) REFERENCES `allotment_site` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_site_asset_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `allotment_site_asset_maintenance`;
CREATE TABLE `allotment_site_asset_maintenance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL,
  `repair_cost` decimal(6,2) NOT NULL,
  `repair_date` date NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for allotment_site_asset_rent
-- ----------------------------
DROP TABLE IF EXISTS `allotment_site_asset_rent`;
CREATE TABLE `allotment_site_asset_rent` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL,
  `tenant_id` int(10) unsigned NOT NULL,
  `rental_start_date` date DEFAULT NULL,
  `rental_end_date` date DEFAULT NULL,
  `rental_money` decimal(5,2) DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_customer_contact_customer_idx` (`tenant_id`),
  KEY `fk_asset_id_idx` (`asset_id`),
  CONSTRAINT `fk_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `allotment_site_asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_contact_customer` FOREIGN KEY (`tenant_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for base_history
-- ----------------------------
DROP TABLE IF EXISTS `base_history`;
CREATE TABLE `base_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_at` int(11) unsigned NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `origin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for base_table
-- ----------------------------
DROP TABLE IF EXISTS `base_table`;
CREATE TABLE `base_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for base_template
-- ----------------------------
DROP TABLE IF EXISTS `base_template`;
CREATE TABLE `base_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `some_title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `some_day` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for contact_type
-- ----------------------------
DROP TABLE IF EXISTS `contact_type`;
CREATE TABLE `contact_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Initials or name',
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Correspondence salutation',
  `municipal_resident` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `registered_date` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned DEFAULT '0' COMMENT 'hides data = 1, retains data in table',
  `change_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for customer_address
-- ----------------------------
DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE `customer_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `primary_address` tinyint(1) unsigned DEFAULT '0',
  `address_type_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode_zip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_address_from` date NOT NULL,
  `date_address_to` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`),
  KEY `fk_customer_address_customer` (`customer_id`),
  CONSTRAINT `fk_customer_address_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `customer_contact`;
CREATE TABLE `customer_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `contact_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_contact_from` date NOT NULL,
  `date_contact_to` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  PRIMARY KEY (`id`),
  KEY `fk_customer_contact_customer` (`customer_id`),
  KEY `fk_customer_contact_contact_type` (`contact_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for gate_key_register
-- ----------------------------
DROP TABLE IF EXISTS `gate_key_register`;
CREATE TABLE `gate_key_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_to_tenant` int(10) unsigned NOT NULL,
  `issued_date` date NOT NULL,
  `returned_date` date DEFAULT NULL,
  `charge_money` decimal(5,2) unsigned DEFAULT NULL,
  `refund_money` decimal(5,2) unsigned DEFAULT NULL,
  `refund_date` date DEFAULT NULL,
  `reason_refund` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_no_refund` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `date_of_payment` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for plot
-- ----------------------------
DROP TABLE IF EXISTS `plot`;
CREATE TABLE `plot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for plot_coworker
-- ----------------------------
DROP TABLE IF EXISTS `plot_coworker`;
CREATE TABLE `plot_coworker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `plot_id` int(10) unsigned NOT NULL,
  `date_start` date NOT NULL,
  `date_ended` date DEFAULT NULL,
  `reason_ended` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fkplot_coworker_customer` (`customer_id`),
  KEY `fkplot_coworker_plot` (`plot_id`),
  CONSTRAINT `fkplot_coworker_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkplot_coworker_plot` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for plot_customer
-- ----------------------------
DROP TABLE IF EXISTS `plot_customer`;
CREATE TABLE `plot_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `plot_id` int(10) unsigned NOT NULL,
  `date_rented_from` date NOT NULL,
  `date_surrendered` date DEFAULT NULL,
  `reason_surrendered` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_plot_customer_customer` (`customer_id`),
  KEY `fk_plot_customer_plot` (`plot_id`),
  CONSTRAINT `fk_plot_customer_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_plot_customer_plot` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for plot_picture
-- ----------------------------
DROP TABLE IF EXISTS `plot_picture`;
CREATE TABLE `plot_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plot_id` int(10) unsigned NOT NULL,
  `image_path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exif_date` datetime DEFAULT NULL COMMENT 'Extracted from EXIF image data, if available',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_plot_picture_plot` (`plot_id`),
  CONSTRAINT `fk_plot_picture_plot` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for plot_rent
-- ----------------------------
DROP TABLE IF EXISTS `plot_rent`;
CREATE TABLE `plot_rent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plot_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `amount_of_payment` double(6,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Payment received',
  `date_due` date NOT NULL COMMENT 'Annual renewal date or start date',
  `date_of_payment` date NOT NULL,
  `concession` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'Nil',
  `concession_rate` int(3) unsigned DEFAULT '0' COMMENT 'Percentage reduction, if any',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_plot_rent_plot` (`plot_id`),
  CONSTRAINT `fk_plot_rent_plot` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for plot_structure
-- ----------------------------
DROP TABLE IF EXISTS `plot_structure`;
CREATE TABLE `plot_structure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plot_id` int(10) unsigned NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Shed, greenhouse or something else',
  `installed` date NOT NULL,
  `removed` date DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'size and materials',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_plot_structure_plot` (`plot_id`),
  CONSTRAINT `fk_plot_structure_plot` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for reference_table
-- ----------------------------
DROP TABLE IF EXISTS `reference_table`;
CREATE TABLE `reference_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `some_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `some_date` date DEFAULT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned DEFAULT '0' COMMENT 'hides data = 1, retains data in table',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ref_address_title
-- ----------------------------
DROP TABLE IF EXISTS `ref_address_title`;
CREATE TABLE `ref_address_title` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ref_address_type
-- ----------------------------
DROP TABLE IF EXISTS `ref_address_type`;
CREATE TABLE `ref_address_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_type_code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ref_country
-- ----------------------------
DROP TABLE IF EXISTS `ref_country`;
CREATE TABLE `ref_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `county_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ref_county_borough
-- ----------------------------
DROP TABLE IF EXISTS `ref_county_borough`;
CREATE TABLE `ref_county_borough` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `county_borough_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` smallint(6) unsigned NOT NULL DEFAULT '10',
  `status` smallint(6) unsigned NOT NULL DEFAULT '10',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'db admin',
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'db admin',
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'errunknownname',
  `grant_allotment_site_manager` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'allotment site manager can edit specified site',
  `grant_allotment_site_view` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'allotment site manager can view, specified site',
  `grant_owner_view` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'allotment site owner can view, all sites in domain and admin',
  `grant_owner_edit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'allotment site owner can edit all sites in domain and admin',
  `grant_expires` date NOT NULL COMMENT 'date all grants expire',
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='	';

-- ----------------------------
-- Table structure for waiting_list
-- ----------------------------
DROP TABLE IF EXISTS `waiting_list`;
CREATE TABLE `waiting_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `allotment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `application_recd` int(11) unsigned NOT NULL,
  `created_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) unsigned NOT NULL,
  `updated_at` int(11) unsigned NOT NULL,
  `soft_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
SET FOREIGN_KEY_CHECKS=1;
