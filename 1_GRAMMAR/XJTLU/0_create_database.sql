CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

-- CREATE SCHEMA IF NOT EXISTS `cpt103`
-- DEFAULT CHARACTER SET utf8mb4
-- DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

-- show TABLES; -- show the tables inside
-- a schema contains tables, views, domains, assertaions, collctions, translations and chararcter sets

-- create a temporary table
CREATE TEMPORARY TABLE `temp_table` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMART KEY,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- delete the database
DROP DATABASE IF EXISTS `cpt103`;
-- DROP SCHEMA IF EXISTS `cpt103`;

