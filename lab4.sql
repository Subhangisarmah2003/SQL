use bankingdb;
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

SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;






