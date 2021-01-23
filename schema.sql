-- Schema for EMployee SQL


-- CREATE TABLES and assign primary keys 
--(some composite keys found in junction tables)

--DROP TABLE IF EXISTS employees CASCADE;
CREATE TABLE employees (
        emp_no INT   NOT NULL,
        emp_title_id VARCHAR(255)   NOT NULL,
        birth_date DATE   NOT NULL,
        first_name VARCHAR(255)   NOT NULL,
        last_name VARCHAR(255)   NOT NULL,
        sex VARCHAR(2)   NOT NULL,
        hire_date DATE   NOT NULL,
        CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

--DROP TABLE IF EXISTS departments CASCADE;
CREATE TABLE departments (
        dept_no VARCHAR(255)   NOT NULL,
        dept_name VARCHAR(255)   NOT NULL,
        CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

--DROP TABLE IF EXISTS dept_emp CASCADE;
CREATE TABLE dept_emp (
        emp_no INT   NOT NULL,
        dept_no VARCHAR(255)   NOT NULL,
        CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
);

--DROP TABLE IF EXISTS dept_managers CASCADE;
CREATE TABLE dept_managers (
        dept_no VARCHAR(255)   NOT NULL,
        emp_no INT   NOT NULL,
        CONSTRAINT pk_dept_managers PRIMARY KEY (dept_no, emp_no)
);

--DROP TABLE IF EXISTS salaries CASCADE;
CREATE TABLE salaries (
        emp_no INT   NOT NULL,
        salary BIGINT   NOT NULL,
        CONSTRAINT pk_salaries PRIMARY KEY (emp_no)
);

--DROP TABLE IF EXISTS titles CASCADE;
CREATE TABLE titles (
        title_id VARCHAR(255)   NOT NULL,
        title VARCHAR(255)   NOT NULL,
        CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

-- Import DATA into tables
-- Check each tabe to make sure it was created and imported properly
SELECT * FROM  employees;
SELECT * FROM  departments;
SELECT * FROM  dept_emp;
SELECT * FROM  dept_managers;
SELECT * FROM  salaries;
SELECT * FROM  titles;


-- Add FOREIGN KEY
ALTER TABLE employees ADD CONSTRAINT fk_employees_title_id 
FOREIGN KEY(emp_title_id) REFERENCES titles (title_id);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no 
FOREIGN KEY(emp_no) REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT k_dept_emp_dept_no
FOREIGN KEY(dept_no) REFERENCES departments (dept_no);

ALTER TABLE dept_managers ADD CONSTRAINT fk_dept_managers_dept_no 
FOREIGN KEY(dept_no) REFERENCES departments (dept_no);

ALTER TABLE dept_managers ADD CONSTRAINT fk_dept_managers_emp_no 
FOREIGN KEY(emp_no) REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no 
FOREIGN KEY(emp_no) REFERENCES employees (emp_no);

