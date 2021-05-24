-- Create 3 tables for later use: employees, titles, dept_emp

CREATE TABLE employees (
	emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

SELECT * FROM employees;

CREATE TABLE titles (
	 emp_no INT NOT NULL,
	 title VARCHAR NOT NULL,
     from_date DATE NOT NULL,
	 to_date DATE NOT NULL,
	 FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM titles;

CREATE TABLE dept_emp (
	 emp_no INT NOT NULL,
	 dept_no  VARCHAR(4) NOT NULL,
     from_date DATE NOT NULL,
	 to_date DATE NOT NULL,
	 FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_emp;

-- DELIVERABLE 1

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Create a new table using the INTO clause.
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retirement_info;

-- Retrieve the title, from_date, and to_date columns from the Titles table.
-- join both tables on the primary key
SELECT retirement_info.emp_no, retirement_info.first_name, retirement_info.last_name, 
titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM titles
INNER JOIN retirement_info
ON titles.emp_no = retirement_info.emp_no
ORDER BY titles.emp_no;

SELECT * FROM retirement_titles;

-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause
-- Create a Unique Titles table using the INTO clause
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, from_date DESC;

SELECT * FROM unique_titles;

-- retrieve the number of employees by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.
SELECT COUNT(title) as cnt, title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY cnt DESC;

-- DELIVERABLE 2

SELECT DISTINCT ON (employees.emp_no) employees.emp_no, employees.first_name, employees.last_name, employees.birth_date,
dept_emp.from_date, dept_emp.to_date,
titles.title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN titles ON titles.emp_no = employees.emp_no
WHERE dept_emp.to_date = '9999-01-01'
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no;

SELECT * FROM mentorship_eligibilty;


