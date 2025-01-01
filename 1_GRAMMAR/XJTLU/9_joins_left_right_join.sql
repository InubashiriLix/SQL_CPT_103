CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

DROP table if exists enrol;
DROP table if exists stu;
CREATE TABLE IF NOT EXISTS stu
(
`id` INT NOT NULL,
`name` VARCHAR(50) NOT NULL
);

CREATE TABLE iF NOT EXISTS enrol
(
`id` INT NOT NULL,
`code` VARCHAR(50) NOT NULL,
`mark` INT NOT NULL
);

INSERT INTO stu (id, name) VALUES
(123, "John"),
  (124, "Mary"),
  (125, "Tom"),
  (126, "Jerry");

INSERT INTO enrol (id, COde, mark) VALUES
(123, "DBS", 60),
(124, "DBS", 70),
(125, "DBS", 50),
(128, "DBS", 80);

-- show all the student's name and their marks no matter they have enrolled or not
-- SELECT * FROM stu LEFT JOIN enrol USING (id);

-- show all the enrolment nomatter whether the student exsits or not
-- SELECT * FROM stu RIGHT JOIN enrol USING (id);

-- show all the student's status adn the enrolment status
-- SELECT * FROM stu FULL JOIN enrol USING (id);
-- SELECT * FROM stu FULL JOIN enrol ON stu.id = enrol.id;
-- SELECT * FROM stu INNER JOIN enrol USING (id);
-- NOTE: FUCK!!! FULL JOIN IS NOT SUPPORTTED BY MYSQL
-- if you really want to use the FULL JOIN
-- try UNION
--
-- ( SELECT * FROM stu LEFT JOIN enrol USING (id) )
-- UNION
-- (SELECT * FROM stu RIGHT JOIN enrol USING (id))
-- -- this not correct because of the using
(SELECT * FROM stu LEFT JOIN enrol ON stu.id = enrol.id)
UNION
(SELECT * FROM stu RIGHT JOIN enrol ON stu.id = enrol.id)
