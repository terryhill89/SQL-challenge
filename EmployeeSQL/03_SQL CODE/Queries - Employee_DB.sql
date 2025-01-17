-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
  FROM "Employees" as e
  JOIN "Salaries" as s
	ON e.emp_no = s.emp_no;
	
-- List the first name, last name, and hire date for the employees who were hired in 1986.	SELECT e.emp_no, 
SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name, 
 	   e.hire_date
  FROM "Employees" as e
 WHERE e.hire_date between '1986-01-01' and '1986-12-31'
 ORDER BY e.hire_date ASC;	
 
 -- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_no,
	   d.dept_name,
	   dm.emp_no,
	   e.last_name,
	   e.first_name
  FROM "Departments" as d
  JOIN "Department_Manager" as dm
    ON d.dept_no = dm.dept_no
  JOIN "Employees" as e
	ON dm.emp_no = e.emp_no;
	
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no,
       e.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
   FROM "Employees" as e
   JOIN "Department_Employee" as de
     ON e.emp_no = de.emp_no
   JOIN "Departments" as d
	 ON de.dept_no = d.dept_no;
	 
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.	 
SELECT *
   FROM "Employees" as e
  WHERE first_name = 'Hercules'
    AND last_name LIKE 'B%';	 
	
-- 	List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
   FROM "Employees" as e
   JOIN "Department_Employee" as de
     ON e.emp_no = de.emp_no
   JOIN "Departments" as d
	 ON de.dept_no = d.dept_no
  WHERE d.dept_name = 'Sales';
  
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
   FROM "Employees" as e
   JOIN "Department_Employee" as de
     ON e.emp_no = de.emp_no
   JOIN "Departments" as d
	 ON de.dept_no = d.dept_no
  WHERE d.dept_name = 'Sales' or d.dept_name = 'Development'; 
  
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).  
SELECT last_name, COUNT(last_name) as "last_name_frequency"
  FROM "Employees" as e
 GROUP BY last_name
 ORDER BY "last_name_frequency" DESC;	