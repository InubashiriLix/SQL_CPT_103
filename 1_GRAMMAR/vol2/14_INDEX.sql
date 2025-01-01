CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;
 
DROP TABLE IF EXISTS stu;
CREATE TABLE IF NOT EXISTS stu(
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
`age` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  CONSTRAINT `age_check` CHECK(age >= 0 AND age <= 100)
);

INSERT INTO stu (name, age) VALUES
('John', 56),
('Mary', 60),
('James', 43),
('Jane', 54);

CREATE INDEX `idx_name` ON stu(name);
CREATE INDEX `idx_age` ON stu(age);
CREATE INDEX `idx_name_age` ON stu(name, age);

-- 无索引查询
EXPLAIN SELECT * FROM stu WHERE name = 'John';
EXPLAIN SELECT * FROM stu WHERE age = 56;

-- 查询基于 name 索引的表
EXPLAIN SELECT * FROM stu WHERE name = 'John';

-- 查询基于 age 索引的表
EXPLAIN SELECT * FROM stu WHERE age = 56;

-- 查询基于 name 和 age 的组合索引
EXPLAIN SELECT * FROM stu WHERE name = 'John' AND age = 56;
