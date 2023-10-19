--UC1--
create database Services;

--UC2-
use Services;
create table Customer(Customer_Id int Identity(1,1),Customer_Name varchar(50),Phone bigint,Address varchar(200));
select * from Customer;

--UC3--
insert into Customer values('Madhur Verma',8295475016,'16th old OHBC Colony'),('Karan Depale',9872346737,'house no 17 TDI City'),('Sahil Arora',9562387127,'Bloch No 9 Ansal City');

--UC4--
alter table Customer add Country varchar(50),Salary bigint,Pincode bigint;
update Customer set Country='India',Salary=25000,Pincode=132103;

--UC5--
update Customer set Salary=60000,Pincode=203567 Where Customer_Name='Madhur Verma';
update Customer set Salary=55000,Pincode=267845 Where Customer_Name='Karan Depale';

--UC6--
select COUNT(Customer_Id) as Number_Of_Customers from Customer Where Country='India';

--UC7--
select MAX(Salary) from Customer;
select MIN(Salary) from Customer;
select SUM(Salary) from Customer;
select AVG(Salary) from Customer;

--UC8--
use Services;
create table Orders(Order_Id int ,Product_Name varchar(20),Quantity bigint,Rating int);

--UC9--
select * from Customer;
select * from Orders;
