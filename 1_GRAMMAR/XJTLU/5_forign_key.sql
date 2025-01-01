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
`student_id` CHAR(6)  PRIMARY KEY,
`name` VARCHAR(255) NOT NULL,
`age` SMALLINT UNSIGNED NOT NULL,
CONSTRAINT `student_age_positive` CHECK (`age` > 0),
CONSTRAINT `unique_all` UNIQUE (`student_id`, `name`, `age`)
);

CREATE TABLE IF NOT EXISTS `teacher`
(
`teacher_id` CHAR(6) PRIMARY KEY,
`name` VARCHAR(255) NOT NULL,
`age` SMALLINT  UNSIGNED NOT NULL,
CONSTRAINT `teacher_age_check` CHECK (`age` > 0)
);


CREATE TABLE IF NOT EXISTS `class`
(
`student_id` CHAR(6) PRIMARY KEY,
`name` VARCHAR(255) NOT NULL,
`age` SMALLINT UNSIGNED NOT NULL,
`teacher_id` CHAR(6) NOT NULL,
CONSTRAINT `fk_student`
  FOREIGN KEY
  (`student_id`, `name`,`age`)
  REFERENCES student
  (`student_id`, `name`, `age`)
  ON UPDATE CASCADE
  ON DELETE CASCADE,
CONSTRAINT `fk_teacher`
  FOREIGN KEY
  (`teacher_id`)
  REFERENCES `teacher`
  (`teacher_id`)
  ON UPDATE CASCADE
  ON DELETE CASCADE
);
