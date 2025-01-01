CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS `class`;
DROP TABLE IF EXISTS `student`;
DROP TABLE IF EXISTS `teacher`;

CREATE TABLE IF NOT EXISTS `student`
(
`student_id` CHAR(6) BINARY NOT NULL DEFAULT "EMPTY",
`name` CHAR(50) BINARY NOT NULL DEFAULT "EMPTY",
`age` SMALLINT UNSIGNED DEFAULT 0,
CONSTRAINT `age_check` CHECK (`age` >= 0 AND `age` <= 100),
CONSTRAINT `primary_id` PRIMARY KEY (`student_id`)
);

-- adding data
INSERT INTO `student` VALUES
("A12345", "John Doe", 20),
("D12345", "Jane Smith", 23);

-- add an new columm
ALTER TABLE `student` 
ADD `gender` ENUM("M", "F", "UNKNOWN") NOT NULL DEFAULT "UNKNOWN";

ALTER TABLE `student`
ADD `testCol` CHAR(10) BINARY NOT NULL DEFAULT "EMPTY";

SELECT * FROM `student`;

-- drep a column
ALTER TABLE `student`
DROP COLUMN `testCol`;

ALTER TABLE `student`
ADD `testCol2` CHAR(10) BINARY NOT NULL DEFAULT "EMPTY";

 ALTER TABLE `student`
 MODIFY COLUMN `testCol2` VARCHAR(10) NOT NULL DEFAULT "EMPTY";

SELECT * FROM `student`;

ALTER TABLE `student`
CHANGE COLUMN `testCol2` `testCol3` VARCHAR(10) NOT NULL DEFAULT "EMPTY";

SELECT * FROM `student`;

