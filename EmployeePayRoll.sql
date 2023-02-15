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
select * from employee_payroll;