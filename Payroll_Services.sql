-----------------UC1-----------------------

Create Database payroll_Service_Example;

Use Payroll_Service_Example;

------------------------UC2----------------------

Create Table Employee_Payroll(
Id int Primary Key Identity (1,1),
Name VarChar (150),
Salary int,
StartDate date,
);

---------------------UC3---------------------------

Insert into Employee_Payroll Values ('Harshal',25000,'2021-03-20'),
('Girish',30000,'2020-04-12'),
('Rohit',60000,'2023-06-20'),
('Harshali',20000,'2024-03-01'),
('Neha',15000,'2021-06-07');

-----------------------UC4--------------------------

Select * from Employee_Payroll;

----------------------UC5---------------------------

select Salary from Employee_Payroll where Name like 'Har%';

Select * from Employee_Payroll where StartDate between CAST('1-2-2021' As date) And GETDATE();

------------------------UC6-------------------------

Alter table Employee_Payroll Add Gender varchar(1);

Update Employee_Payroll set Gender='M' where id in (1,2,4);

Update Employee_Payroll set Gender='F' where id in (1,3,5);

-------------------------UC7-------------------------

Select SUM(Salary) from Employee_Payroll;

select COUNT(*) from Employee_Payroll group by Gender;

Select MIN(Salary) from Employee_Payroll;

Select MAX(Salary) from Employee_Payroll;

Select AVG(Salary) from Employee_Payroll;

select count(*),Gender from Employee_Payroll group by Gender;

-------------------------UC8----------------------------

Alter table Employee_Payroll Add PhoneNumber varchar(10);

Update Employee_Payroll Set PhoneNumber='9109786747' where Id=5;

ALTER TABLE Employee_Payroll ADD Address varchar(200) not null default 'Dhule';

ALTER TABLE Employee_Payroll ADD Department varchar(100);

Update Employee_Payroll Set Department='CIVIL' where Name='Rohit';

---------------------------UC9---------------------------

ALTER TABLE Employee_Payroll ADD Deduction int not null default 0 ;

ALTER TABLE Employee_Payroll ADD Taxable_Pay int not null default 0 ;

ALTER TABLE Employee_Payroll ADD Net_Pay int not null default 0 ;

---------------------------UC10--------------------------

Insert into Employee_Payroll
(Name,Salary,StartDate,Gender,PhoneNumber,Department,Deduction,Taxable_Pay,Net_Pay) Values
('Terisa',45000,'2015.04.28','F','8274862678','Banking',1000,500,300000);

select * from Employee_Payroll;


