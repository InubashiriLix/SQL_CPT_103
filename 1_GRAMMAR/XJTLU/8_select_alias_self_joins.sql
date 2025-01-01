CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS `emp`;

CREATE TABLE IF NOT EXISTS `emp`
(
  `name` VARCHAR(20) NOT NULL,
  `dept` VARCHAR(20) NOT NULL
);

INSERT INTO `emp`
VALUES
("John", "Marketing"),
("Mary", "Sales"),
("Peter", "Sales"),
("Andy", "Marketing"),
("Anny", "Making"),
("Anne", "Marketing");

-- find the employees who have the same job as Anne
-- SELECT e1.name, e1.dept, e2.name, e2.dept
-- FROM emp e1, emp e2
-- WHERE e1.name = "Anne" AND e1.dept = e2.dept AND e1.name != e2.name;
--

-- Uset the subquery to find the employees who have the same job as Anne
-- SELECT name, dept
-- FROM emp
-- WHERE dept =
-- (
--   SELECT dept FROM emp Where name = "Anne"
-- ) AND name != "Anne";
--
--
-- Use the optionss forr handling sets to deal  with the return value of thte subquries
-- SELECT name, dept 
-- FROM emp
-- Where
-- dept IN (SELECT dept FROM emp Where name = "Anne") AND (name != "Anne")
--
-- the IN adn = behave the same action when we want to check wether data is in the queryreult that do not has the second dimension

-- SELECT e1.name, e1.dept
-- FROM emp e1
-- WHERE EXISTS
-- (SELECT 1 FROM emp e2 WHERE e2.name = "Anne" AND e1.dept = e2.dept)
-- AND e1.name !=  "Anne"
--
--
-- seeking someone do not has the same dept with ANNoy
SELECT name, dept 
FROM emp
WHERE dept NOT IN (SELECT dept from emp where name = "Anne");

SELECT name, dept 
FROM emp
Where dept = "sales" OR dept = "Makkng";
