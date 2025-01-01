CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;
 
DROP TABLE IF EXISTS stu;
CREATE TABLE IF NOT EXISTS stu(
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  `age` SMALLINT UNSIGNED DEFAULT 0,
  -- you can use certain value to repalce the NULL
  `salary` INT UNSIGNED DEFAULT 0,
  CONSTRAINT `age_check` CHECK(age >= 0 AND age <= 100)
);

INSERT INTO stu (name, age, salary) VALUES
('John', 56, 100),
('Mary', 60, NULL),
('James', NULL, 12000),
("nonsense", NULL, NULL);

-- SELECT * FROM stu
-- WHERE salary > 1;
-- -- because the null is not true, the null row will be deserted
--
-- SELECT * FROM stu
-- WHERE salary > 1
-- OR name = 'Mary';
-- -- because of null or true, the null row wll not be deserted
--
-- SELECT name, salary * 2 FROM stu;
-- -- the null calculation will return null
--
-- SELECT AVG(age) FROM stu WHERE name is not NULL or name = 'Mary';
-- -- the null row will not be counted, unles the name is pointed  to be true

-- -- the null value in the GROUP BY
-- SELECT COUNT(name), salary
-- FROM stu
-- GROUP BY salary;
-- -- the group by will not group the null value together
--

-- -- the null value in teh ORDER BY
-- SELECT name, salary
-- FROM stu
-- ORDER BY salary;
-- -- the null value will put in the first for ASC
-- -- for DESC
-- SELECT name, salary
-- FROM stu
-- ORDER BY salary DESC;
-- -- the null will be in the last
--
-- QUESTIONS
-- SELECT 1 + NULL;
-- NULL
-- SELECT 1 + NULL > 2;
-- NULL
-- SELECT (True AND False) OR NULL;
-- NULL
-- SELECT False AND NULL;
-- 0
-- SELECT (NOT NULL) AND (NOT False)
-- NULL
-- SELECT (False + 2) AND (null = NULL);
-- NULL
-- SELECT 39 <> NULL;
-- NUL
-- SELECT 0 AND NULL;
-- 0
-- SELECT 1 OR NULL;
-- 1
