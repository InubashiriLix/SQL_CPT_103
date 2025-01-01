DROP DATABASE IF EXISTS `cpt103`;

CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS `class`;
DROP TABLE IF EXISTS `student`;
DROP TABLE IF EXISTS `teacher`;

CREATE TABLE IF NOT EXISTS `student`
(
`student_id` CHAR(6),
`name` VARCHAR(20) NOT NULL,
`age` SMALLINT UNSIGNED  NOT NULL,
  CONSTRAINT `age_positive` CHECK (`age` > 0),
  CONSTRAINT `primary` PRIMARY KEY (`student_id`)
);

CREATE TABLE IF NOT EXISTS `class`
(
`student_id` CHAR(6) DEFAULT 'EMPTY' ,
  `note` BLOB,
  CONSTRAINT `fk_student_id`
  FOREIGN KEY (`student_id`)
  REFERENCES `student` (`student_id`)
  ON UPDATE CASCADE
  ON DELETE SET NULL
  -- SET NULL require you to set the attribute to be nullable
);

INSERT INTO `student` VALUES ('S00001', 'Alice', 20);
INSERT INTO `class` VALUES ('S00001', 'Good student');

SELECT * FROM `student`;
SELECT * FROM `class`;

UPDATE `student` SET `student_id` = 'S00002' WHERE `student_id` = 'S00001';

SELECT * FROM `student`;
SELECT * FROM `class`;

SELECT "DELETING";

DELETE FROM `student` WHERE `student_id` = 'S00002';

SELECT * FROM `student`;
SELECT * FROM `class`;

SELECT "DONE"
