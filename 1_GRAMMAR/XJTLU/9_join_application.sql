CREATE DATABASE IF NOT EXISTS `cpt103`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE `cpt103`;         

DROP TABLE IF EXISTS `class`;
DROP TABLE IF EXISTS `student`;
DROP TABLE IF EXISTS `teacher`;

DROP TABLE IF EXISTS `phone`;
DROP TABLE IF EXISTS `degree`;
DROP TABLE IF EXISTS `address`;


-- 创建 Student 表
CREATE TABLE Student (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    aID INT,
    pID INT,
    Grad CHAR(1)
);

-- 插入 Student 表数据
INSERT INTO Student (ID, Name, aID, pID, Grad) VALUES
(123, 'John', 12, 22, 'C'),
(124, 'Mary', 23, 90, 'A'),
(125, 'Mark', 19, NULL, 'A'),
(126, 'Jane', 14, 17, 'C'),
(127, 'Sam', NULL, 101, 'A');

-- 创建 Phone 表
CREATE TABLE Phone (
    pID INT PRIMARY KEY,
    pNumber VARCHAR(10),
    pMobile VARCHAR(15)
);

-- 插入 Phone 表数据
INSERT INTO Phone (pID, pNumber, pMobile) VALUES
(17, '1111111', '07856232411'),
(22, '2222222', '07843223421'),
(90, '3333333', '07155338654'),
(101, '4444444', '07213559864');

-- 创建 Degree 表
CREATE TABLE Degree (
    ID INT PRIMARY KEY,
    Classification VARCHAR(10)
);

-- 插入 Degree 表数据
INSERT INTO Degree (ID, Classification) VALUES
(123, '1'),
(124, '2:1'),
(125, '2:2'),
(126, '2:1'),
(127, '3');

-- 创建 Address 表
CREATE TABLE Address (
    aID INT PRIMARY KEY,
    aStreet VARCHAR(100),
    aTown VARCHAR(50),
    aPostcode VARCHAR(10)
);

-- 插入 Address 表数据
INSERT INTO Address (aID, aStreet, aTown, aPostcode) VALUES
(12, '5 Arnold Close', 'Nottingham', 'NG12 1DD'),
(14, '17 Derby Road', 'Nottingham', 'NG7 4FG'),
(19, '1 Main Street', 'Derby', 'DE1 5FS'),
(23, '7 Holly Avenue', 'Nottingham', 'NG6 7AR');

-- For students graduating in absentia, find a list of all student 
-- IDs, names, addresses, phone numbers and their final 
-- degree classifications.
--
SELECT student.id, student.name, address.aStreet, address.aTown, address.aPostcode, phone.pNumber, phone.pMobile, degree.Classification
FROM 
Student LEFT JOIN Address ON student.aID = Address.aID 
LEFT JOIN Phone on student.pID = Phone.pID
LEFT JOIN Degree on student.ID = Degree.ID
WHERE Grad = 'A';

