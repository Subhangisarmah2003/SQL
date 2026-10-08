use bankingdb;

insert into customers values(102, "priya", "patil", "priya@gmail.com", "9274682892", "2025-05-03", "2000-09-20");
INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)VALUES(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20');

select * from customers;

insert into accounts value(202, 102, "savings", 40000); 

insert into customers values(101, "sakshi", "patil", "sakshi@gmail.com", "9274682892", "2025-05-03", "2000-09-20");
insert into accounts value(201, 101, "savings", 80000); 

select * from customers;
select * from accounts;

insert into customers values(103, "ram", "pandey", "ram@gmail.com", "8829882822", "2025-09-06", "2000-08-03");

select * from customers;

insert into customers values(104, "simran", "dey", "simran@gmail.com", "8823458282", "2025-04-06", "2001-08-03"), (105, "raj", "khatri", "raj@gmail.com", "9923458282", "2026-04-06", "2011-08-03");

select * from customers;

insert into accounts value(203, 103, "savings", 4000); 
insert into accounts value(204, 104, "savings", 32000), (205, 105, "savings", 36000);
select * from accounts;

insert into  Transactions values(301, 201, "2025-2-12", 1990.90, "upi"), (302, 202, "2024-2-12", 1920.90, "upi"), (303, 203, "2023-2-22", 1220.90, "cash"), (304, 204, "2012-3-22", 1320.90, "cash"), (305, 205, "2022-3-12", 1340.90, "cash");
select * from transactions;

insert into branches values(401, "katraj", "pune", "9739739489"), (402, "katraj", "mumbai", "9739734489"), (403, "katraj", "nagpur", "9732344489"), (404, "katraj", "nagpur", "9723344489"), (405, "katraj", "delhi", "9723343389");
select * from branches;
select * from AccountBranches;
insert into AccountBranches values(201, 401, "2023-8-23"), (203, 403, "2022-9-22"), (204, 404, "2024-9-21"), (205, 405, "2014-9-21");

insert into loans values(501, 101, 20032.89, 234.23, "2025-3-24", "2036-4-5");
insert into loans values(502, 102, 20332.89, 254.23, "2024-3-24", "2034-4-5"), (503, 103, 20332.78, 254.00, "2024-6-24", "2034-9-5"), (504, 104, 30332.78, 354.00, "2014-6-24", "2024-9-5"), (505, 105, 40332.78, 254.00, "2014-6-24", "2024-9-5");

select * from loans;

select * from customers;
update customers set phone = "9999999999" where customerid = 101;
select * from Customers;
update customers set email = "priyapatil@gmail.com" where customerid = 102;

update accounts set balance = "30000" where accountid = 201;

select * from accounts;

select * from accounts where accountid = 201;

delete from transactions where transactionid = 301;
insert into  Transactions values(301, 201, "2025-2-12", 1990.90, "upi");
delete from transactions where transactionid = 302;
drop table accountbranches;
delete from accounts where accountid = 202;

SELECT * FROM Customers;
SELECT FirstName, LastName, Email, Phone FROM Customers;

SELECT * FROM Accounts WHERE AccountType = 'Savings';
SELECT * FROM Accounts WHERE Balance > 25000;
SELECT * FROM Transactions WHERE Amount BETWEEN 5000 AND 20000;
SELECT * FROM Customers WHERE CustomerID IN (101,102,103);

SELECT * FROM Customers WHERE FirstName LIKE 'R%';

SELECT *
FROM Customers
ORDER BY FirstName ASC;

SELECT * FROM Accounts ORDER BY Balance DESC;

SELECT DISTINCT AccountType FROM Accounts;

SELECT * FROM Accounts ORDER BY Balance DESC LIMIT 3;

SELECT * FROM Customers WHERE Phone IS NULL;
SELECT * FROM Customers WHERE Email IS NOT NULL;

SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;



