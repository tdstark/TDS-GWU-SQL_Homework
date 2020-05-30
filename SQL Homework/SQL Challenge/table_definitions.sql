CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE titles (
	title_id VARCHAR(50) PRIMARY KEY,
	title VARCHAR(50)
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(50) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(10),
	hire_date DATE
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50) REFERENCES departments(dept_no),
	emp_no INTEGER REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INTEGER REFERENCES employees(emp_no),
	salary INTEGER
);

CREATE TABLE dept_emp (
	emp_no INTEGER REFERENCES employees(emp_no),
	dept_no VARCHAR(50) REFERENCES departments(dept_no)
);