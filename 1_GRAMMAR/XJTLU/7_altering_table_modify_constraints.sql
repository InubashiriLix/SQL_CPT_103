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
CONSTRAINT `primary_id` PRIMARY KEY (`student_id`)
);

CREATE TABLE IF NOT EXISTS `teacher`
(
  `teacher_id` CHAR(6) BINARY NOT NULL PRIMARY KEY,
  `name` CHAR(50) BINARY NOT NULL DEFAULT "EMPTY"
);

-- adding data
INSERT INTO `student` VALUES
("A12345", "John Doe", 20),
("D12345", "Jane Smith", 23);

-- add an new columm
ALTER TABLE `student` 
ADD `gender` ENUM("M", "F", "UNKNOWN") NOT NULL DEFAULT "UNKNOWN";

-- add a new constraint
ALTER TABLE `student`
ADD CONSTRAINT `age_check` CHECK (`age` >= 0 AND `age` <= 100);

-- add a new column for the student
ALTER TABLE `student` 
ADD `teacher_id` CHAR(6) BINARY  NULL;

-- add the foreign key constraint
ALTER TABLE `student`
ADD 
CONSTRAINT `fk_teacher_id`
FOREIGN KEY (`teacher_id`)
REFERENCES `teacher` (`teacher_id`)
ON DELETE CASCADE
ON UPDATE CASCADE;

SELECT * FROM student;

-- remove constraint
ALTER TABLE `student`
DROP FOREIGN KEY `fk_teacher_id`;

SELECT * FROM student;

