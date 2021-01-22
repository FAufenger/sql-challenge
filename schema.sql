-- schema

-- Create Tables (6 Total)
DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE "employees" (
        "emp_no" INT   NOT NULL,
        "emp_title_id" VARCHAR(20)  NOT NULL,
        "birth_date" DATE   NOT NULL,
        "first_name" VARCHAR(255)   NOT NULL,
        "last_name" VARCHAR(255)   NOT NULL,
        "sex" VARCHAR(1)   NOT NULL,
        "hire_date" DATE   NOT NULL,
        PRIMARY KEY ("emp_no"));

CREATE TABLE "departments" (
        "dept_no" VARCHAR(20)   NOT NULL,
        "dept_name" VARCHAR(255)   NOT NULL,
        PRIMARY KEY ("dept_no"));

CREATE TABLE "dept_emp" (
        "emp_no" INT   NOT NULL,
        "dept_no" VARCHAR(20)   NOT NULL);

CREATE TABLE "dept_managers" (
        "dept_no" VARCHAR(20)   NOT NULL,
        "emp_no" INT   NOT NULL);

CREATE TABLE "salaries" (
        "emp_no" INT   NOT NULL,
        "salary" BIGINT   NOT NULL);

CREATE TABLE "titles" (
        "title_id" VARCHAR(20)   NOT NULL,
        "title" VARCHAR(255)   NOT NULL,
        PRIMARY KEY ("title_id"));

-- Check each tabke to make sure it was created and imported properly
SELECT * FROM  employees;
SELECT * FROM  departments;
SELECT * FROM  dept_emp;
SELECT * FROM  dept_managers;
SELECT * FROM  salaries;
SELECT * FROM  titles;

