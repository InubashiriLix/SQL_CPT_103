CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;
 

DROP table if EXISTS emp;
CREATE TABLE IF NOT EXISTS `emp`
(
`name` VARCHAR(50) NOT NULL,
`salary` INT NOT NULL
);

INSERT INTO `emp` (`name`, `salary`) VALUES
('John', 1000),
('Mary', 2000),
('Chris', 3000),
('Peter', 4000),
('Jane', 5000);

--
-- -- find the one who has the highest salary
-- SELECT *
-- FROM emp  e1
-- WHERE e1.salary >= ALL (SELECT e2.salary FROM emp e2);
--
-- -- find the lowesst
-- SELECT * 
-- FROM emp e1 
-- WHERE e1.salary <= ALL (SELECt salary from emp);
--
-- find the ones who is not the lowest
SELECT * FROM emp
WHERE salary > ANY (SELECT salary FROM emp);
