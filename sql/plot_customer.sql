-- -----------------------------------------------------
-- Table `allotmentdb`.`plot_customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `allotmentdb`.`plot_customer` ;

CREATE TABLE IF NOT EXISTS `allotmentdb`.`plot_customer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `plot_id` INT UNSIGNED NOT NULL,
  `date_rented_from` DATE NOT NULL,
  `date_surrendered` DATE NULL DEFAULT NULL,
  `reason_surrendered` VARCHAR(100) NULL DEFAULT NULL,
  `created_by` VARCHAR(60) NOT NULL,
  `updated_by` VARCHAR(60) NOT NULL,
  `created_at` INT(11) UNSIGNED NOT NULL,
  `updated_at` INT(11) UNSIGNED NOT NULL,
  `soft_delete` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_plot_customer_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `allotmentdb`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_plot_customer_plot`
    FOREIGN KEY (`plot_id`)
    REFERENCES `allotmentdb`.`plot` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE INDEX `fk_plot_customer_customer` ON `allotmentdb`.`plot_customer` (`customer_id` ASC);

CREATE INDEX `fk_plot_customer_plot` ON `allotmentdb`.`plot_customer` (`plot_id` ASC);


SELECT
jubileeroad.`plot-record`.Plot_Description,
jubileeroad.`plot-record`.First_Name,
jubileeroad.`plot-record`.Last_Name,
allotmentdb.plot.id,
allotmentdb.plot.description,
allotmentdb.customer.id,
allotmentdb.customer.first_name,
allotmentdb.customer.last_name
FROM
jubileeroad.`plot-record`
INNER JOIN allotmentdb.plot ON jubileeroad.`plot-record`.Plot_Description = allotmentdb.plot.description
INNER JOIN allotmentdb.customer ON jubileeroad.`plot-record`.First_Name = allotmentdb.customer.first_name AND jubileeroad.`plot-record`.Last_Name = allotmentdb.customer.last_name;

SELECT * FROM `allotmentdb`.`plot_customer` ;

INSERT IGNORE INTO allotmentdb.plot_customer (plot_id, customer_id, created_by, updated_by, created_at, updated_at)
SELECT
allotmentdb.plot.id AS `plot_id`,
allotmentdb.customer.id AS `customer_id`,
'import' AS `created_by`,
'import' AS `updated_by`,
CURRENT_TIMESTAMP() AS `created_at`,
CURRENT_TIMESTAMP() AS `updated_at`
FROM
jubileeroad.`plot-record`
INNER JOIN allotmentdb.plot ON jubileeroad.`plot-record`.Plot_Description = allotmentdb.plot.description
INNER JOIN allotmentdb.customer ON jubileeroad.`plot-record`.First_Name = allotmentdb.customer.first_name AND jubileeroad.`plot-record`.Last_Name = allotmentdb.customer.last_name;


/*
customer, plot, address
*/

SELECT
customer.id,
customer.title,
customer.first_name,
customer.last_name,
customer.plot_tenant,
customer.municipal_resident,
plot_customer.date_rented_from,
plot_customer.date_surrendered,
plot.description,
plot.pole_area,
plot.type,
plot.state
FROM
customer
LEFT JOIN plot_customer ON plot_customer.customer_id = customer.id
RIGHT JOIN plot ON plot_customer.plot_id = plot.id;
