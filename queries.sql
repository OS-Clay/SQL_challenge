

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON 
salaries.emp_no = employees.emp_no

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees WHERE hire_date BETWEEN '12-31-1985' and '01-01-1987'

SELECT dept_manager.dept_no, employees.first_name, employees.last_name, employees.emp_no, d.dept_name
FROM dept_manager
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no
 JOIN departments as D
 ON (d.dept_no = dept_manager.dept_no)
 


SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees 
ON (employees.emp_no = dept_emp.emp_no)
	JOIN departments
	ON (departments.dept_no = dept_emp.dept_emp)
	
	
SELECT employees.first_name, employees.last_name, employees.sex
from employees
where first_name = 'Hercules' 
and last_name LIKE 'B%'




SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees 
ON (employees.emp_no = dept_emp.emp_no)
	JOIN departments
	ON (departments.dept_no = dept_emp.dept_emp)
	WHERE departments.dept_name = 'Sales'

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees 
ON (employees.emp_no = dept_emp.emp_no)
	JOIN departments
	ON (departments.dept_no = dept_emp.dept_emp)
	WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'



SELECT first_name, count(emp_no) as x
from employees
group by first_name
order by x DESC;


