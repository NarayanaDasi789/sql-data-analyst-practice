Basic SQL Queries for Data Analyst Practice

# 1). Select all employees
SELECT *
FROM Employees;

# 2). Employees with salary greater than 40000
SELECT emp_id, emp_name, salary
FROM Employees
WHERE salary > 40000;

# 3). Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

# 4). Employees without email
SELECT emp_name
FROM Employees
WHERE email IS NULL;

# 5). Total order amount per employee
SELECT 
    E.emp_id,
    E.emp_name,
    COALESCE(SUM(O.amount), 0) AS total_order_amount
FROM Employees E
LEFT JOIN Orders O
ON E.emp_id = O.emp_id
GROUP BY E.emp_id, E.emp_name;
