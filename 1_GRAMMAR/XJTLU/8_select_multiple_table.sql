CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;


-- 创建员工表
CREATE TEMPORARY TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- 创建部门表
CREATE TEMPORARY TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- 创建项目表
CREATE TEMPORARY TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL
);

-- 插入一些数据到员工表
INSERT INTO employees (first_name, last_name, department_id, salary) VALUES
('Alice', 'Smith', 1, 55000),
('Bob', 'Johnson', 1, 60000),
('Charlie', 'Brown', 2, 45000),
('David', 'Wilson', 3, 70000),
('Eva', 'Davis', 2, 52000);

-- 插入一些数据到部门表
INSERT INTO departments (department_name) VALUES
('HR'),
('Engineering'),
('Sales');

-- 插入一些数据到项目表
INSERT INTO projects (project_name, department_id) VALUES
('Project A', 1),
('Project B', 2),
('Project C', 3);
--
-- SELECT employees.employee_id, employees.first_name, employees.last_name, departments.department_id, projects.project_name
-- FROM employees, departments, projects
-- Where employees.department_id = departments.department_id AND departments.department_id = projects.department_id;
--
-- use the alias
-- SELECT e.employee_id, e.first_name, e.last_name, d.department_id, p.project_name as proj_name
-- FROM employees AS e, departments AS d, projects AS p
-- Where e.department_id = d.department_id AND d.department_id = p.department_id
-- HAVING proj_name LIKE "%A";
--
-- We can use the alias without using AS instead of just append the alisas after the name
SELECT e.employee_id, e.first_name, e.last_name, d.department_id, p.project_name proj_name
FROM employees  e, departments  d, projects  p
Where e.department_id = d.department_id AND d.department_id = p.department_id
HAVING proj_name LIKE "%A";

