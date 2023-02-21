----Welcome To Employee PayRoll Service------

--UseCase1-Create a Pay_RollService Database------
create database Pay_RollService

--UseCase2- Creating a Table
Create Table employee_payroll(
Id int PRIMARY KEY IDENTITY(1,1),
Name varchar(30) NOT NULL,
Salary BIGINT NOT NULL,
Start DATE NOT NULL
);

--UseCase3- create employee_payroll data in the Pay_RollService database
INSERT INTO employee_payroll(Name,Salary,Start)VALUES
('Kairali',15000,'2012-02-23'),
('Moksha',20000,'2010-09-22'),
('Tommy',17500,'2011-08-12');

 
--UseCase-4 retrieve all the employee payroll
select * from employee_payroll;

--UseCase-5 Get Data from particular range
SELECT Salary FROM employee_payroll WHERE Name='Tommy';
SELECT * FROM employee_payroll WHERE Start BETWEEN CAST('2011-08-12' AS DATE) AND GETDATE();

--UseCase-6 Add Gender to Employee Payroll Table
ALTER TABLE employee_payroll ADD Gender varchar(10)
UPDATE employee_payroll SET Gender ='Female' WHERE Name='Kairali'
UPDATE employee_payroll SET Gender='Female' WHERE Name='Moksha'
UPDATE employee_payroll SET Gender='Male' WHERE Name='Tommy'

--UseCase-7 
SELECT SUM(Salary) AS SumOfSalary FROM employee_payroll WHERE Gender='Female' GROUP BY Gender
SELECT AVG(Salary) AS AvgSalary FROM employee_payroll WHERE Gender='Female' GROUP BY Gender
SELECT MAX(Salary) AS MaxSalary FROM employee_payroll WHERE Gender = 'Female' GROUP BY Gender
SELECT MIN(Salary) AS MinSalary FROM employee_payroll WHERE Gender = 'Female' GROUP BY Gender
select COUNT(Gender) AS EmployeeCount,'Female' FROM employee_payroll GROUP BY Gender
