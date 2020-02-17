SELECT employees.emp_no, employees.last_name AS lastname, employees.first_name AS firstname, employees.gender, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no;

 
SELECT * FROM employees
where hire_date BETWEEN '1986-12-31' AND '1987-01-01';


SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date AS startdate, dept_manager.to_date AS enddate 
FROM dept_manager JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;


SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM dept_emp JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no;


SELECT * FROM employees
where first_name = 'Hercules' AND last_name LIKE'B%';


SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM dept_emp JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';


SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM dept_emp JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name desc;

