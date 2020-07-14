CREATE TABLE titles
(title_id VARCHAR,
 title VARCHAR,
 PRIMARY KEY (title_id)
);


CREATE TABLE employees
(emp_no VARCHAR,
 emp_title_id VARCHAR,
 birth_date DATE,
 first_name VARCHAR,
 last_name VARCHAR,
 sex VARCHAR,
 hire_date DATE,
 PRIMARY KEY (emp_no),
 FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE departments
(dept_no VARCHAR,
 dept_name VARCHAR,
 PRIMARY KEY (dept_no));
 
CREATE TABLE dept_emp
(emp_no VARCHAR,
 dept_emp VARCHAR,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 FOREIGN KEY (dept_emp) REFERENCES departments(dept_no));
 
CREATE TABLE dept_manager
(dept_no VARCHAR,
 emp_no VARCHAR,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
 
CREATE TABLE salaries
(emp_no VARCHAR,
 salary int,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
 
COPY titles FROM '/tmp/titles.csv' DELIMITER ',' CSV HEADER ; 
 
COPY employees FROM '/tmp/Employees/employees.csv' DELIMITER ',' CSV HEADER ;
 
COPY departments FROM '/tmp/Employees/departments.csv' DELIMITER ',' CSV HEADER ;

COPY dept_emp FROM '/tmp/Employees/dept_emp.csv' DELIMITER ',' CSV HEADER ;

COPY dept_manager FROM '/tmp/Employees/dept_manager.csv' DELIMITER ',' CSV HEADER;

COPY salaries FROM '/tmp/Employees/salaries.csv' DELIMITER ',' CSV HEADER;
