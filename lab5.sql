use bankingdb;
select * from customers where firstname like "A%";
select * from customers where Email like "%gmail%";
select * from customers where lastname like "%kar";

-- 1. Display customers whose first name starts with R
select * from customers where firstname like "R%";

-- 2. Find customers whose email contains yahoo
select * from customers where Email like "%yahoo%";

-- 3. Display customers whose last name starts with P
select * from customers where lastname like "P%";

-- 4. Search customers whose phone number ends with 99
select * from customers where phone like "%99";

Select * from Accounts where AccountType in ('Savings', 'Current');

Select * from Transactions where TransactionType in ('Deposit', 'Withdrawal');

update transactions set transactiontype = "withdrawal" where transactiontype = "online";
update transactions set transactiontype = "withdrawal" where transactiontype = "cash";

Select * from Customers where CustomerID in (101,102,105);

-- 5. Display accounts belonging to Salary and Savings account types
select * from Accounts where AccountType in ("savings", "salary");

-- 6. Retrieve transactions for Payment and Deposit categories
select * from transactions where transactiontype in ("payment", "deposite");

-- 7. Display customer records for CustomerID 103 and 104
select * from customers where customerID in (103, 104);

-- 8. Retrieve selected account records using AccountID values
select * from accounts;
select * from accounts where AccountID in (201, 203, 204);

SELECT * FROM Customers ORDER BY LastName ASC;
SELECT * FROM Accounts ORDER BY Balance DESC;
SELECT * FROM Transactions ORDER BY TransactionDate DESC;

-- 9. Display customers sorted by FirstName
select * from customers order by firstname;
-- 10. Display accounts sorted by AccountType
select * from Accounts order by AccountType; 

-- 11. Display transactions sorted by Amount in descending order
select * from transactions order by amount desc;

-- 12. Display customers sorted by DateOfBirth
select * from customers order by dateofbirth;

SELECT * FROM Accounts ORDER BY Balance DESC LIMIT 3;
SELECT * FROM Customers LIMIT 3;
SELECT * FROM Transactions LIMIT 2 OFFSET 1; -- The first 1 transaction records are skipped and the next 2 records are displayed

-- 13. Display top 3 transactions with highest amount
SELECT * from transactions order by amount desc limit 3;

-- 14. Retrieve only 4 customer records
select * from customers limit 4;

-- 15. Skip first 2 account records and display next 3 records
select * from accounts limit 3 offset 2;

-- 16. Display top 5 latest transactions
select * from transactions order by transactiondate desc limit 5;

select * from Accounts where AccountType = 'Savings' order by Balance desc;
select * from Customers where FirstName like 'S%' limit 5;
Select * from Transactions where TransactionType in ('Deposit','Withdrawal') order by TransactionDate desc;
