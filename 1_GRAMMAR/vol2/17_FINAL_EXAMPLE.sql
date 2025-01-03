CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP TABLE IF EXISTS `students`;
DROP TABLE IF EXISTS `grades`;
DROP TABLE IF EXISTS `modules`;

-- 创建学生表
CREATE TABLE IF NOT EXISTS `students` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `year` TINYINT UNSIGNED NOT NULL COMMENT '1 = First year, 2 = Second year, 3 = Final year'
);

-- 创建成绩表
CREATE TABLE IF NOT EXISTS `grades` (
    `student_id` INT UNSIGNED NOT NULL,
    `module_code` VARCHAR(10) NOT NULL,
    `mark` SMALLINT UNSIGNED NOT NULL COMMENT 'Marks range: 0-100',
    `year_taken` TINYINT UNSIGNED NOT NULL COMMENT '1 = First year, 2 = Second year, 3 = Final year',
    FOREIGN KEY (`student_id`) REFERENCES `students`(`id`)
);

-- 创建模块表
CREATE TABLE IF NOT EXISTS `modules` (
    `module_code` VARCHAR(10) NOT NULL PRIMARY KEY,
    `module_name` VARCHAR(100) NOT NULL,
    `credits` TINYINT UNSIGNED NOT NULL COMMENT 'Credits for the module'
);

-- 插入学生数据
INSERT INTO `students` (`first_name`, `last_name`, `year`) VALUES
('John', 'Doe', 1),
('Mary', 'Smith', 2),
('James', 'Brown', 3),
('Jane', 'White', 3);

-- 插入模块数据
INSERT INTO `modules` (`module_code`, `module_name`, `credits`) VALUES
('MATH101', 'Mathematics 101', 20),
('CS102', 'Computer Science 102', 40),
('PHYS103', 'Physics 103', 60);

-- 插入成绩数据
INSERT INTO `grades` (`student_id`, `module_code`, `mark`, `year_taken`) VALUES
(1, 'MATH101', 85, 1),
(1, 'CS102', 78, 2),
(2, 'CS102', 88, 2),
(2, 'PHYS103', 92, 2),
(3, 'MATH101', 75, 3),
(3, 'CS102', 80, 3),
(3, 'PHYS103', 70, 3),
(4, 'MATH101', 90, 3),
(4, 'PHYS103', 85, 3);

select first_name, last_name, ID
FROM students
WHERE
students.id IN
( 
SELECT AVG(mark) as average, student_id
FROM students LEFT JOIN grades ON students.id = grades.student_id
WHERE students.year < 3
GROUP BY student_id

UNION

SELECT (AVG(mark) * )
  
 )
ORDER BY average

ORDER BY year DESC;


