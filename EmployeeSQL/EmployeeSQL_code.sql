/* Start: Data Engineering */
/* Note: Primary Keys are automatically not null */
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(20)
);
SELECT* FROM titles;

CREATE TABLE employees_all (  
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date DATE,
 FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees_all;

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees_all(emp_no)
);
SELECT * FROM salaries;

CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(20)
);
SELECT * FROM departments;

CREATE TABLE dept_manager (
	dept_no VARCHAR(5),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees_all(emp_no)
);
ALTER TABLE dept_manager ADD COLUMN id SERIAL PRIMARY KEY;
SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
	emp_no INT ,
	dept_no VARCHAR(5),
	FOREIGN KEY (emp_no) REFERENCES employees_all(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
ALTER TABLE dept_emp ADD COLUMN id SERIAL PRIMARY KEY;
SELECT * FROM dept_emp;

/* End: Data Engineering */