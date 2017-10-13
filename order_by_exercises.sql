# Create a new file called order_by_exercises.sql and copy in the contents of your where_exercises.sql.
# Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
# Now reverse the sort order for both queries.
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.


use employees;

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR  first_name = 'Maya')
      AND gender LIKE 'M'
ORDER BY first_name ASC;
#   ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employees
WHERE last_name LIKE ('E%') AND last_name LIKE ('%E')
ORDER BY emp_no DESC;


SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25%'
ORDER BY birth_date ASC, hire_date DESC;

