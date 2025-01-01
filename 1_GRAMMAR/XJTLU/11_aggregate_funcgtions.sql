CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS grades ;
-- DROP TABLE IF EXISTS 
--
CREATE TABLE IF NOT EXISTS grades
(
`name` VARCHAR(50) NOT NULL,
`Code` VARCHAR(10) NOT NULL,
`Mark` SMALLINT UNSIGNED NOT NULL DEFAULT 0
);

INSERT INTO grades (name, code, mark)
VALUES
('Alice', 'CPT103', 80),
('Bob', 'CPT103', 90),
('Charlie', 'CPT103', 70),
('David', 'CPT103', 60),
('SHIT', 'CPT107', 60),
('Eva', 'CPT103', 50);

-- this count how many lines are there
SELECT COUNT(*) FROM grades;
SELECT COUNT(*) FROM grades WHERE code != "CPT107";
-- alias
SELECT COUNT(code) as COUNT FROM grades;
-- count the distincted code
SELECT COUNT(DISTINCT code) AS DISTINCTIVE FROM grades;


-- this colculate the sum of a column
SELECT SUM(mark) FROM grades;

-- this calculate the maximum of a column
SELECT MAX(mark) FROM grades;

-- the average of a column
SELECT AVG(mark) FROM grades;

-- the minimum of a column
SELECT MIN(mark) FROM grades;

-- conbine the aggregate functions
SELECT MAX(Mark) - MIN(mark) FROM grades;
