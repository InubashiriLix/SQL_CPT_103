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
`COde` VARCHAR(50) NOT NULL
);

INSERT INTO stu (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eva');

INSERT INTO enrol (id, COde) VALUES
(1, 'CPT103'),
(2, 'CPT104'),
(3, 'CPT105'),
(4, 'CPT106'),
(5, 'CPT107');
--
SELECT *
FROM stu INNER JOIN enrol
ON stu.id = enrol.id;

-- it is equal to 
SELECT * from stu, enrol
WHERE stu.id = enrol.id;

-- the nature join can automaticallly join the table with the same column name
SELECT * FROM stu NATURAL JOIN enrol;
--
-- and it is equal to 
SELECT * FROM stu INNER JOIN enrol USING (id);
