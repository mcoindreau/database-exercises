# INSERT INTO join_test_db.users (name, email, role_id)
#     VALUES ('Travis', 'travis@thebomb.com', 2),
#       ('Tomas', 'tomas@hecooks.com', 2),
#       ('Terrell', 'terrell@hestall.com', 2),
#       ('Brandon', 'brandon@iscool.com', NULL );

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#   JOIN dept_emp as de
#     ON de.emp_no = e.emp_no
#   JOIN departments as d
#     ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# SELECT users.name as user_name, roles.name as role_name
# FROM users
#   JOIN roles ON users.role_id = roles.id;

# Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.
SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

# SELECT
#   count(*),
#   first_name,
#   last_name
# FROM employees as e
#   JOIN users as u
# WHERE role LIKE NOT NULL
#       AND last_name NOT LIKE '%qu%'
# GROUP BY  first_name, last_name
# ORDER BY count(*) DESC;

# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
  JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
  JOIN departments as d
    ON dm.dept_no = d.dept_no
  WHERE dm.to_date LIKE '9999%'
  ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Dept Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name'
FROM employees as e
  JOIN dept_manager as dm ON dm.emp_no = e.emp_no
  JOIN departments as d ON d.dept_no = dm.dept_no
WHERE e.gender LIKE 'F' and dm.to_date >= curdate()
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, count(e.emp_no)
FROM titles t
  JOIN employees e ON dm.emp_no = e.emp_no
  JOIN d.emp de ON d.emp_no = dm.dept_no
  JOIN departments d ON d.dept_no = dm.dept_no
WHERE t.to_date >= curdate() AND d.dept_name = 'Customer Service' AND de.to_date >= curdate()
GROUP BY t.title;
