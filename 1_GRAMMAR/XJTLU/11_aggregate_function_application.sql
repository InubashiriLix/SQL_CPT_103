CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS modules;

CREATE TABLE IF NOT EXISTS grades
(
name VARCHAR(50) NOT NULL,
CODE VARCHAR(10) NOT NULL,
MARK SMALLINT UNSIGNED NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS modules
(
  code VARCHAR(10) NOT NULL,
  Title VARCHAR(50) NOT NULL,
  credit SMALLINT UNSIGNED NOT NULL DEFAULT 0
);

INSERT INTO grades (name, code, mark)
VALUES
("John", "DBS", 56),
("John", "IAI", 72),
("Mary", "DBS", 68);

INSERT INTO modules (code, title, credit)
VALUES
("DBS", "Database Systems", 10),
("IAI", "Introduction to Artificial Intelligence", 20),
("CPT103", "Introduction to Programming", 10);

-- SELECT 
--
SELECT SUM(mark * credit) / SUM(credit) AS "Final Mark" 
FROM modules, grades
WHERE modules.code = grades.code AND grades.name = "John";
