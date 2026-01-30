SHOW DATABASES;
CRWEATE DATABASE Employee;
USE Employee;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    Salary INT,
    City VARCHAR(100),
);
INSERT INTO Employees (EmployeeID, FirstName, DEPARTMENT, Salary, City) VALUES
(1, 'RAVI', 'SALES', 25000, 'DELHI'),
(2, 'MEGHA', 'HR', 35000, 'MUMBAI'),
(3, 'KARAN', 'IT', 60000, 'BANGLORE'),
(4, 'SUMAN', 'DEVLOPER', 45000, 'DELHI'),
(5, 'ANITA', 'SALES', 55000, 'MUMBAI'),
(6, 'RAHUL', 'E-COMMORCE', 30000, 'CHENNAI'),
(7, 'PRIYA', 'IT', 70000, 'BANGLORE'),
(8, 'VIKAS', 'SALES', 40000, 'DELHI'),
(9, 'NEHA', 'HR', 32000, 'MUMBAI'),
(10, 'AMIT', 'DEVLOPER', 80000, 'CHENNAI'),
(11, 'SNEHA', 'SALES', 45000, 'BANGLORE'),
(12, 'RAJ', 'E-COMMORCE', 28000, 'DELHI'),
(13, 'TINA', 'IT', 75000, 'MUMBAI'),
(14, 'KAVITA', 'E-COMMORCE', 50000, 'CHENNAI'),
(15, 'AJAY', 'DEVLOPER', 33000, 'BANGLORE'),
(16, 'PALLAVI', 'IT', 72000, 'DELHI'),
(17, 'MANISH', 'E-COMMORCE', 48000, 'MUMBAI'),
(18, 'RITU', 'HR', 29000, 'CHENNAI'),
(19, 'SANJAY', 'IT', 68000, 'BANGLORE'),
(20, 'LATA', 'DEVLOPER', 52000, 'DELHI');
SELECT * FROM Employees;
-- 1. Retrieve all employees from the 'IT' department.
SELECT * FROM Employees WHERE DEPARTMENT = 'IT';
SELECT * FROM Employees WHERE DEPARTMENT = 'HR';
SELECT * FROM Employees WHERE DEPARTMENT = 'SALES';
SELECT * FROM Employees WHERE DEPARTMENT = 'E-COMMORCE';
SELECT * FROM Employees WHERE DEPARTMENT = 'DEVLOPER';
-- 2. Find employees with a salary greater than 50000.
SELECT * FROM Employees WHERE Salary > 50000;
SELECT * FROM Employees WHERE Salary < 50000;
-- 3. List employees located in 'city'.
SELECT * FROM Employees WHERE City = 'DELHI';
SELECT * FROM Employees WHERE City = 'BANGLORE';
SELECT * FROM Employees WHERE City = 'CHENNAI';
SELECT * FROM Employees WHERE City = 'MUMBAI';


