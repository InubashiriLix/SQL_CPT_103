CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

CREATE TEMPORARY TABLE IF NOT EXISTS `column_options`
(
`id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `student_id` CHAR(6) NOT NULL UNIQUE,
  `age` SMALLINT UNSIGNED NOT NULL,
  `testnull` INT DEFAULT NULL
) AUTO_INCREMENT = 1000;

ALTER TABLE `column_options` AUTO_INCREMENT = 250;

INSERT INTO `column_options`
(`name`, `student_id`, `age`)
VALUES
('John', 'XJTL01', 20),
('Mary', 'XJTL02', 21);

SELECT * FROM `column_options`;

UPDATE `column_options`
-- SET ( `name` = "nima", `age` = 22 )
SET `name` = "nima", `age` = 22 
WHERE `name` = "John";


UPDATE `column_options`
SET `name` = "nimabi", `age` = `age` + 1
WHERE `name` = "nima";

SELECT * FROM `column_options`;

DELETE FROM `column_options`
WHERE `name` = "nimabi";

SELECT * FROM `column_options`;
