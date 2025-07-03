
-- Create table
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert sample data
INSERT INTO employees VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 70000),
(3, 'Charlie', 'HR', 55000),
(4, 'David', 'IT', 75000),
(5, 'Eva', 'Finance', 60000);

-- Create a view for IT department employees
CREATE VIEW it_employees AS
SELECT emp_id, name, salary
FROM employees
WHERE department = 'IT';

-- Create a view to show only employee name and salary
CREATE VIEW employee_salaries AS
SELECT name, salary
FROM employees;

-- Example usage of views
SELECT * FROM it_employees;
SELECT * FROM employee_salaries;
