CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;

CREATE TEMPORARY TABLE IF NOT EXISTS `tool`
(
  `id` SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `tool_name` CHAR(50) BINARY NOT NULL DEFAULT "EMPTY",
  `tool_box_id` SMALLINT UNSIGNED NOT NULL
);

CREATE TEMPORARY TABLE IF NOT EXISTS `box`
(
`box_id` SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
`box_name` CHAR(50) BINARY NOT NULL DEFAULT "EMPTY",
`box_volumn` SMALLINT UNSIGNED NOT NULL DEFAULT 5
);

INSERT INTO `box` (`box_name`, `box_volumn`) VALUES
("Hammer", 10),
("Screwdriver", 20),
("Wrench", 30),
("Pliers", 40),
("Saw", 50);

INSERT INTO `tool` (`tool_name`, `tool_box_id`) VALUES
("Hammer", 1),
("Screwdriver", 2),
("Wrench", 3),
("Pliers", 4),
("Saw", 5);


-- SELECT tool.tool_name, tool.tool_box_id, box.box_id, box.box_name
-- FROM tool, box
-- WHERE tool.tool_box_id = box.box_id;
--
-- SELECT tool.tool_name, tool.tool_box_id, box.box_id, box.box_name
-- FROM tool CROSS JOIN box
-- WHERE tool.tool_box_id = box.box_id;
-- they are the same
