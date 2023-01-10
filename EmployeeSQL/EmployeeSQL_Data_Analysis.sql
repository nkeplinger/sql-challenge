/* Start: Data Analysis */

/* Question 1: List the employee number, last name, first name, sex, and salary of each employee */
SELECT emp.emp_no, emp.last_name, 
	emp.first_name, emp.sex, 
	sal.salary 
FROM 
	employees_all emp
	JOIN salaries sal
	ON emp.emp_no = sal.emp_no;

/* Question 2:List the first name, last name, and hire date for the employees who were hired in 1986 */

SELECT first_name, last_name, hire_date
FROM employees_all
WHERE hire_date >= date '01/01/86' 
AND hire_date <= date '12/31/86' ;
	
/* Question 3:  List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)*/

SELECT d.dept_name, d.dept_no,
	dm.dept_no, dm.emp_no,
	emp.emp_no, emp.last_name, emp.first_name
FROM
	departments d
	JOIN dept_manager dm
	ON d.dept_no = dm.dept_no
	JOIN employees_all emp
	ON dm.emp_no = emp.emp_no;
	
/* Question 4:List the department number for each employee along with that employee’s employee number, last name, first name, and department name  */
SELECT d.dept_name, d.dept_no,
	de.dept_no, de.emp_no,
	emp.emp_no, emp.last_name, emp.first_name
FROM
	departments d
	JOIN dept_emp de
	ON d.dept_no = de.dept_no
	JOIN employees_all emp
	ON de.emp_no = emp.emp_no;

/* Question 5:List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B */
SELECT first_name, last_name, sex
FROM employees_all
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
/* Question 6: List each employee in the Sales department, including their employee number, last name, and first name */
SELECT d.dept_name, d.dept_no,
	de.dept_no, de.emp_no,
	emp.emp_no, emp.last_name, emp.first_name
FROM
	departments d
	JOIN dept_emp de
	ON d.dept_no = de.dept_no
	JOIN employees_all emp
	ON de.emp_no = emp.emp_no
	WHERE d.dept_name = 'Sales';
	
/* Question 7:List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name */
SELECT d.dept_name, d.dept_no,
	de.dept_no, de.emp_no,
	emp.emp_no, emp.last_name, emp.first_name
FROM
	departments d
	JOIN dept_emp de
	ON d.dept_no = de.dept_no
	JOIN employees_all emp
	ON de.emp_no = emp.emp_no
	WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development';
	
/* Question 8:  List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)*/
SELECT last_name, COUNT(*)
FROM employees_all
GROUP BY last_name
ORDER BY count DESC;

/* END: Data Analysis */