CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

CREATE TEMPORARY TABLE IF NOT EXISTS `string`
(
`string1` CHAR(6) BINARY NOT NULL,
`string2` CHAR(6) BINARY NOT NULL,
`string3` VARCHAR(6) NOT NULL,
`string4` VARCHAR(6) NOT NULL
);

INSERT INTO `string`
VALUES
("String", "string", "String", "string"),
("String", "String", "string", "string");

-- the varchar will not be case sensitive

SELECT `string1` = `string2`, `string3` = `string4` FROM `string`;
