-- create the database first 
CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

CREATE TEMPORARY TABLE `temp_table1`
(
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL DEFAULT "SHIT",
  `number` INT NOT NULL UNIQUE,
  `class` VARCHAR(255) NOT NULL,
  `shortcut_test` VARCHAR(4)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- INSERT INTO `temp_table1` VALUES 
-- (  1, "testname", 1, "testclass", "not the end"),
-- (  2, "testname2", 2, "testclass2", "not the end");
-- this will mind you that the datais too long
INSERT INTO `temp_table1` VALUES 
(  1, "testname", 1, "testclass", "not"),
(  2, "testname2", 2, "testclass2", "not");


SELECT * FROM temp_table1;

