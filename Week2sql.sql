use employees;

-- query 1
select t.title, count(e.emp_no) as "Employee Counts" from titles t inner join employees e on e.emp_no =t.emp_no where e.birth_date > "1965-01-01" group by t.title; 

-- query 2 
select t.title, avg(s.salary) from salaries s inner join titles t on t.emp_no = s.emp_no group by t.title;

-- query 3
select d.dept_name, sum(s.salary) from salaries s inner join dept_emp de on s.emp_no =de.emp_no inner join departments d on de.dept_no =d.dept_no where d.dept_name = "Marketing" 
and s.from_date <= "1992-12-31" and s.to_date >= "1990-01-01";

