SELECT employees.emp_no, employees.last_name AS lastname, employees.first_name AS firstname, employees.gender, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT * FROM employees
where hire_date BETWEEN '1986-12-31' AND '1987-01-01';
