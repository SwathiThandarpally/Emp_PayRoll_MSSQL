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

--UseCase-7 Sum, Average, Maximum, Minimum salary--
SELECT SUM(Salary) AS SumOfSalary FROM employee_payroll WHERE Gender='Female' GROUP BY Gender
SELECT AVG(Salary) AS AvgSalary FROM employee_payroll WHERE Gender='Female' GROUP BY Gender
SELECT MAX(Salary) AS MaxSalary FROM employee_payroll WHERE Gender = 'Female' GROUP BY Gender
SELECT MIN(Salary) AS MinSalary FROM employee_payroll WHERE Gender = 'Female' GROUP BY Gender
SELECT gender, COUNT(name) FROM employee_payroll GROUP BY gender;

--UseCase-8 extend store employee information like employee phone, address and department--
ALTER TABlE employee_payroll ADD Department varchar(90) NOT NULL DEFAULT 'Developer';
ALTER TABLE employee_payroll ADD PhoneNumber BIGINT;
ALTER TABLE employee_payroll ADD Address varchar(350) NOT NULL DEFAULT 'INDIA';
update employee_payroll set PhoneNumber = 9876543210, Address =' Hyderabad' where Id=1;
update employee_payroll set PhoneNumber = 9876512345, Address = 'Delhi'  where Id=2;
update employee_payroll set PhoneNumber = 9123456789, Address = 'Mumbai'  where ID IN (3); 
select * from employee_payroll 

--UC9 Employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay
ALTER TABLE employee_payroll ADD Basic_Pay FLOAT NOT NULL DEFAULT 20000;
ALTER TABLE employee_payroll ADD Deductions FLOAT NOT NULL DEFAULT 2000;
ALTER TABLE employee_payroll ADD Taxable_Pay FLOAT NOT NULL DEFAULT 1000;
ALTER TABLE employee_payroll ADD Income_Tax FLOAT NOT NULL DEFAULT 100;
ALTER TABLE employee_payroll ADD Net_Pay FLOAT NOT NULL DEFAULT 20000;
update employee_payroll set Net_Pay = 18900;
SELECT * FROM employee_payroll;