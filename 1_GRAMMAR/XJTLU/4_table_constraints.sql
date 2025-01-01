CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

-- MySQL provides following constraint types
--  • PRIMARY KEY 
-- • UNIQUE 
-- • FOREIGN KEY
--  • CHECK
--  • INDEX

CREATE TEMPORARY TABLE IF NOT EXISTS `constraints1`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `student_id` CHAR(6) NOT NULL,
  `age` SMALLINT UNSIGNED NOT NULL,
  `testnull` INT DEFAULT NULL,
  CONSTRAINT `age_positive` CHECK (`age` > 0),
  -- CONSTRAINT `primary_id` PRIMARY KEY (`id`),
  CONSTRAINT `unique_student_id` UNIQUE (`student_id`),
  CONSTRAINT `unique__id_name` UNIQUE (`id`, `name`),
  CONSTRAINT `primary_id_name` PRIMARY KEY (`id`, `name`)
);

INSERT INTO `constraints1`
(`name`, `student_id`, `age`)
VALUES 
('John', 'XJTL01', 20),
('Mary', 'XJTL02', 21);

SELECT * FROM `constraints1`;


