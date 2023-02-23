Departments
-
dept_no VARCHAR(15) PK
dept_name VARCHAR(30)

Department_Employee
-
emp_no INTEGER PK FK >-< Employees.emp_no
dept_no VARCHAR(15) PK FK >-< Departments.dept_no

Department_Manager
-
dept_no VARCHAR(15) PK FK >-< Departments.dept_no
emp_no INTEGER FK >-< Employees.emp_no

Employees
-
emp_no INTEGER PK
emp_title_id VARCHAR(30)
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR
hire_date DATE

Salaries
-
emp_no INTEGER PK FK - Employees.emp_no
salary INTEGER 

Titles
-
title_id INTEGER PK FK - Employees.emp_title_id
title VARCHAR(60) 

