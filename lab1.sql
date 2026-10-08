create database SwiftBank;
use SwiftBank;
show databases;
create table customer(CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
phone varchar(15),
AccountCreationDate date);

describe customer;


create table Accounts(AccountID int primary key,
CustomerID int ,
Accounttype varchar(20),
balance decimal(10, 2),
foreign key(CustomerID) references customer(CustomerID));

desc Accounts;

create table Transactions(TransactionID int primary key,
AccountID int,
TransactionDate Date,
Amount decimal(10, 2), 
TransactionType varchar(20),
foreign key(AccountID) references Accounts(AccountID));

desc Transactions;

create table Branches(BranchID int primary key,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15));

desc Branches;

create table AccountBranches (AccountID int,
BranchID int,
AssignmentDate date,
foreign key(AccountID) references Accounts (AccountID),
foreign key(BranchID) references Branches (BranchID));

desc AccountBranches;

create table Loans(LoanID int primary key,
CustomerID int,
LoanAmount decimal(10,2),
InterestRate decimal(10,2),
StartDate date,
EndDate date,
foreign key(CustomerID) references Customer(CustomerID));

desc Loans;

