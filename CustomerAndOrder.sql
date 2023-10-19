CREATE DATABASE MyStore;

USE MyStore;

CREATE TABLE Customer (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(50),
    Phone NVARCHAR(15),
    Address NVARCHAR(100)
);


INSERT INTO Customer (CustomerName, Phone, Address)
VALUES
    ('priyanka', '8179664954', '376 stvnagar'),
    ('prasanya ', '91277635262', '372 tilak road'),
    ('pujita', '9012667899', '375 vvmahal road');

	ALTER TABLE Customer
ADD Country NVARCHAR(50),
    Salary DECIMAL(10, 2),
    Pincode NVARCHAR(10);

	select *from Customer;

 
UPDATE Customer
SET Country = 'India',
    Salary = 600000.00,
    Pincode = '517501'
WHERE CustomerName = 'priyanka';



UPDATE Customer
SET Salary = 200000.00
WHERE CustomerName = 'priyanka';

SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customer
GROUP BY Country;

SELECT
    MAX(Salary) AS MaxSalary,
    MIN(Salary) AS MinSalary,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AvgSalary
FROM Customer;

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(50),
    Quantity INT,
    Rating INT
);

INSERT INTO Orders (ProductName, Quantity, Rating)
VALUES
    ('thing1 A', 8, 4),
    ('thing2 B', 25, 4),
    ('thing3 C', 10, 3);

SELECT * FROM Customer;
SELECT * FROM Orders;

