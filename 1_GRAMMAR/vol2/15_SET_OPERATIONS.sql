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
('Jane', 54),
('shit', 52),
("nonsense", 49),
("nimore", 31);

-- THE UNION can add the select result into a big result
-- and it require the select result be the same
-- SELECT name, age from stu WHERE age between 50 AND 60
-- UNION
-- SELECT name, age from stu WHERE age between 30 AND 40;

-- the intersection can get the intersection of two select result
-- NOTE: the MYSQL do not support teh intersetion and except
-- SELECT name, age FROM stu WHERE age > 40
-- AND name in (SELECT name FROM stu WHERE age < 50);

-- the EXCEPT
SELECT name, age FROM stu WHERE age > 20
AND name NOT IN (SELECT name from stu where age < 40);
