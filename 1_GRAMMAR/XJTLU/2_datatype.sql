CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

CREATE TEMPORARY TABLE IF NOT EXISTS `datatype_test`
(
  `tinyint` TINYINT,
  `smallint` SMALLINT,
  `mediumint` MEDIUMINT,
  -- `int` INTEGER,
  `int` INT,
  `bigint` BIGINT,
  -- `decimal` DECIMAL(10, 2),
  `decimal` DECIMAL(10),
  `numeric` NUMERIC(10),
  `name` VARCHAR(10),
  `age` INT,
  `salary` INT
);

INSERT INTO `datatype_test` 
(`tinyint`, `smallint`, `mediumint`, `int`, `bigint`, `decimal`, `numeric`, `name`, `age`, `salary`)
VALUES
(1, 32767, 8388607, 2147483647, 9223372036854775807, 10, 10, 'John', 20, 10000),
(1, 1, 1, 1, 1, 1, 1, "te""t", 20, 1000);

-- SELECT * FROM `datatype_test`;

CREATE TEMPORARY TABLE IF NOT EXISTS `date`
(
  `date` DATE, 
  `datetime` DATETIME,
  `timestamp` TIMESTAMP
);

INSERT INTO `date` 
(`date`, `datetime`, `timestamp`)
VALUES
("2025-01-01", "2025-01-01 00:00:00", "2025-01-01 00:00:00");

-- SELECT * FROM `date`;
DROP TABLE IF EXISTS `nullvalue`;

CREATE TABLE IF NOT EXISTS `nullvalue`
(
`int1` INT AUTO_INCREMENT PRIMARY KEY,
  `int2` INT NOT NULL UNIQUE,
  `int3` INT DEFAULT 0
);

INSERT INTO `nullvalue`
(`int2`, `int3`)
VALUES
(1, NULL),
(2, NULL);

SELECT * FROM `nullvalue`;
