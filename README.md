# sql-challenge
This repo was created for the module 9 SQL challenge. All reference data, code, and visualizations can be found within the `EmployeeSQL` directory as per the following:

## Reference Data:
Source data for this module are located in the `EmployeeSQL/data` directory. A total of 6 CSV files were used to coplete this challenge

## Data Modeling:
An Entity Relationship Diagram is included along with a table schemas for all tables `EmployeeSQL_ERD.jpg` and `EmployeeSQL_schema_txt.rtf`, respectively

## Data Engineeing

`EmployeeSql/EmployeeSQL_code.sql` contains SQL (postgres) code to create a table schema for each of the six CSV files. 
* Data were importedvia pgAdmin in a specific order, immediately following the creation if each table in the code. 
* The code specifies data types, primary  keys, foreign keys, and other constraints.
* Tables are created in the correct order to handle the foreign keys

## Data Analysis

The following questions were addressed in the second half of the SQL code found here: 

`EmployeeSql/EmployeeSQL_code.sql`

### Questions: 
1. List the employee number, last name, first name, sex, and salary of each employee
2. List the first name, last name, and hire date for the employees who were hired in 1986
3. List the manager of each department along with their department number, department name, employee number, last name, and first name 
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
6. List each employee in the Sales department, including their employee number, last name, and first name 
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)



# Thanks 
-Nicolette 
