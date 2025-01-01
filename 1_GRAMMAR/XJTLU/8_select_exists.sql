CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;
        
DROP table IF EXISTS emp;
CREATE TABLE IF NOT EXISTS emp
( name VARCHAR(50),
dept VARCHAR(50),
manager VARCHAR(50) );

INSERT INTO emp (name, dept, manager) VALUES
('John', 'Marketing', 'Chris'),
('Mary', 'Marketing', 'Chris'),
('Chris', 'Marketing', 'Jane'),
('Peter', 'Sales', 'Jane'),
('Jane', 'Management', NULL);

-- retrieve all the info for those employees who are also managers
-- USE EXISTS
SELECT *
FROM emp as e1
WHERE (EXISTS 
(SELECT * FROM emp as e2
WHERE e1.name = e2.manager
)
);

-- use the IN 
SELECT * 
FROM emp as e1
WHERE 
e1.name IN (SELECT e2.manager FROM emp as e2 );
