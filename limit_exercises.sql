# List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT e.last_name
FROM employees e
ORDER BY e.last_name desc
LIMIT 10;
#
# Zykh
# Zyda
# Zwicker
# Zweizig
# Zumaque
# Zultner
# Zucker
# Zuberek
# Zschoche
# Zongker

# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees. Their names should be:
#### FIX #####
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

# Khun Bernini
# Pohua Sudkamp
# Xiaopeng Uehara
# Irene Isaak
# Dulce Wrigley

# Try to think of your results as batches, or sets. The first five results are your first batch. The five after that would be your second batch, etc. Update the query to find the tenth batch of results. The employee names should be:
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

# Piyawadee Bultermann
# Heng Luft
# Yuqun Kandlur
# Basil Senzako
# Mabo Zobel


