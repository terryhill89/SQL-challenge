-- create Departments table
CREATE TABLE "Departments" (
    "dept_no" VARCHAR(15)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

SELECT * FROM "Departments";

-- create Departments Employee table
CREATE TABLE "Department_Employee" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(15)   NOT NULL,
    CONSTRAINT "pk_Department_Employee" PRIMARY KEY (
     "emp_no","dept_no"
     )
);

SELECT * FROM "Department_Employee";

-- create Department_Manager table
CREATE TABLE "Department_Manager" (
    "dept_no" VARCHAR(15)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    CONSTRAINT "pk_Department_Manager" PRIMARY KEY (
     "emp_no"
     )
);

SELECT * FROM "Department_Manager";

-- create Employees table
CREATE TABLE "Employees" (
    "emp_no" INTEGER   NOT NULL,
	"emp_title" VARCHAR(30)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM "Employees";

-- create Salaries table
CREATE TABLE "Salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
    "emp_no"
     )
);

SELECT * FROM "Salaries"; 

-- create Titles table
CREATE TABLE "Titles" (
    "title_id" VARCHAR(15)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
    "title_id"
     )
);

SELECT * FROM "Titles";

