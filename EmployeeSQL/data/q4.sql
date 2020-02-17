SELECT dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM dept_emp JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no;
