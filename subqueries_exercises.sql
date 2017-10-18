# 1. Find all the employees with the same hire date as employee 101010 using a sub-query.
#
# 69 Rows

select *
from employees where hire_date = (
  select hire_date from employees where emp_no = 101010
);


# 2. Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

select title
from titles
where emp_no in (
  select emp_no from employees
  where first_name = 'Aamod'
);

# 3. Find all the current department managers that are female.
select *
from departments
where dept_no in (
  select dept_no from dept_manager
  where emp_no in (
    select emp_no from employees where gender = 'F'
  )
);

