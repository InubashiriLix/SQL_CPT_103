CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS Sales;

CREATE TABLE IF NOT EXISTS grades
(
`name` VARCHAR(50) NOT NULL,
`code` VARCHAR(10) NOT NULL,
`mark` SMALLINT UNSIGNED NOT NULL DEFAULT 0
);

INSERT INTO Grades (Name, Code, Mark) VALUES
('John', 'DBS', 56),
('John', 'IAI', 72),
('Mary', 'DBS', 60),
('James', 'PR1', 43),
('James', 'PR2', 35),
('Jane', 'IAI', 54);

CREATE TABLE IF NOT EXISTS Sales (
    Month VARCHAR(10),
    Department VARCHAR(50),
    Value INT
);

-- 插入 Sales 表数据
INSERT INTO Sales (Month, Department, Value) VALUES
('March', 'Fiction', 20),
('March', 'Travel', 30),
('March', 'Technical', 40),
('April', 'Fiction', 10),
('April', 'Fiction', 30),
('April', 'Travel', 25),
('April', 'Fiction', 20),
('May', 'Fiction', 20),
('May', 'Travel', 50);

-- find the average mark that is bigger than 50 for each month and each department
SELECT AVG(Value) as average, department, month
FROM Sales
GROUP BY department, month
HAVING average > 30;

-- find the max value for each month and each department
SELECT AVG(Value) as average, department, month
FROM Sales
GROUP BY department, month;


