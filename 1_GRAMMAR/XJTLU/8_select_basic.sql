SOURCE E:/CPT_103/1_GRAMMAR/XJTLU/8_select_example_table1.sql

-- SELECT * FROM employees;
--
-- SELECT DISTINCT first_name FROM employees;
-- no more 2 "john2"

-- SELECT first_name, last_name, salary, active, position
-- FROM employees
-- WHERE active = 1
-- -- GROUP BY ( position )
-- ORDER BY salary DESC;
--

-- WHERE clause
-- word search
-- normally it is not case sensitive
-- SELECT DISTINCT first_name  from employees
-- WHERE first_name like "%john%";
-- -- the % can stand for any number of characters
--
-- SELECT DISTINCT first_name from employees
-- WHERE first_name like "john_";
--
-- SELECT DISTINCT first_name from employees
-- WHERE first_name = "john2";
--
-- SELECT DISTINCT first_name from employees
-- WHERE BINARY first_name = "John2";

-- SELECT DISTINCT first_name from employees
-- WHERE BINARY first_name <> "John2";
-- WHERE BINARY first_name != "John2";
--
--
-- number comparinog
-- SELECT first_name, last_name, salary from employees
-- WHERE salary between 60000 and 80000;
--
-- SELECT first_name, last_name, salary from employees
-- WHERE salary >= 60000 and salary <= 80000;
--
-- functino
-- SELECT SUM(salary) from employees
-- WHERE salary IS NOT NULL and salary >= 60000 and salary <= 80000;
--
-- dealing with time stamp or the date
-- SELECT DISTINCT first_name, last_name, hire_date from employees
-- WHERE hire_date between "2019-01-01" and "2020-01-01";
--
-- dealing with timestamp 
-- SELECT DISTINCT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date LIKE "2019-%-%";
--
SELECT DISTINCT first_name, last_name, hire_date
 FROM employees
WHERE hire_date < "2019-01-01";


