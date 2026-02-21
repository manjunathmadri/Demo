create database bank_db;  -- creates the database  

use bank_db;   -- using the created database 


-- creating table called customers 
CREATE TABLE Customers ( 
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    phone VARCHAR(15),
    city VARCHAR(50),
    created_at DATE
);

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Accounts (
    account_number BIGINT PRIMARY KEY,  -- bigint is for the bigger integer like account number 
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(20),   -- saving / current  
    balance DECIMAL(12,2),
    status VARCHAR(20),         -- active / closed 

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);


CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_number BIGINT,
    transaction_type VARCHAR(20),    -- deposit / withdrawal / transfer
    amount DECIMAL(10,2),
    transaction_date DATETIME,

    FOREIGN KEY (account_number) REFERENCES Accounts(account_number)
);


-- shows the created table
select * from customers;
select * from branch;
select * from accounts;
select * from transactions;

-- to insert the data into table branch  
INSERT INTO Branch VALUES
(101,'Bidar Main Branch','Bidar'),
(102,'Kalaburagi Super Market Branch','Kalaburagi'),
(103,'Yadgir Bus Stand Branch','Yadgir'),
(104,'Raichur Station Road Branch','Raichur'),
(105,'Vijayapura MG Road Branch','Vijayapura');


-- to insert the data into table Customers
INSERT INTO Customers VALUES
(1,'Shivappa','Patil','1995-06-12','9886012345','Bidar','2024-01-10'),
(2,'Basavaraj','Biradar','1992-09-18','9876547890','Kalaburagi','2024-02-12'),
(3,'Mallikarjun','Katti','1998-03-25','9845012345','Yadgir','2024-01-20'),
(4,'Sharanappa','Halli','1994-11-05','9901234567','Raichur','2024-03-01'),
(5,'Ramesh','Pujari','1997-08-30','9911122233','Vijayapura','2024-02-15'),
(6,'Sangeeta','Patil','1999-12-10','9966012345','Bidar','2024-01-18'),
(7,'Laxmi','Biradar','2001-05-14','9988776655','Kalaburagi','2024-03-05'),
(8,'Mahantesh','Kamble','1993-04-19','9876501234','Raichur','2024-02-28'),
(9,'Savita','Hugar','2000-07-21','9898989898','Yadgir','2024-01-22'),
(10,'Praveen','Chincholi','1996-10-17','9845123456','Bidar','2024-02-10'),
(11,'Sunil','Pattar','1991-01-09','9834012345','Vijayapura','2024-03-12'),
(12,'Geeta','Katti','2002-02-28','9812345678','Kalaburagi','2024-02-25'),
(13,'Hanumanth','Reddy','1990-06-15','9823456789','Raichur','2024-01-30'),
(14,'Renuka','Patil','1998-09-11','9867012345','Bidar','2024-02-05'),
(15,'Shivakumar','Biradar','1994-12-03','9870012345','Kalaburagi','2024-03-15');


-- to insert the data into table Accounts
INSERT INTO Accounts VALUES
(400101000001,1,101,'Savings',85000,'Active'),
(400101000002,2,102,'Current',150000,'Active'),
(400101000003,3,103,'Savings',62000,'Active'),
(400101000004,4,104,'Savings',47000,'Active'),
(400101000005,5,105,'Current',210000,'Active'),
(400101000006,6,101,'Savings',98000,'Active'),
(400101000007,7,102,'Savings',73000,'Active'),
(400101000008,8,104,'Current',125000,'Active'),
(400101000009,9,103,'Savings',56000,'Active'),
(400101000010,10,101,'Savings',88000,'Active'),
(400101000011,11,105,'Current',300000,'Active'),
(400101000012,12,102,'Savings',69000,'Active'),
(400101000013,13,104,'Savings',52000,'Active'),
(400101000014,14,101,'Current',175000,'Active'),
(400101000015,15,102,'Savings',91000,'Active');



-- to insert the data into table Transactions
INSERT INTO Transactions (account_number,transaction_type,amount,transaction_date) VALUES
(400101000001,'Deposit',20000,'2025-02-01 10:30:00'),
(400101000001,'Withdrawal',5000,'2025-02-03 14:10:00'),
(400101000002,'Deposit',50000,'2025-02-05 09:00:00'),
(400101000003,'Withdrawal',7000,'2025-02-06 12:45:00'),
(400101000004,'Deposit',10000,'2025-02-07 16:20:00'),
(400101000005,'Withdrawal',25000,'2025-02-08 11:10:00'),
(400101000006,'Deposit',15000,'2025-02-09 15:40:00'),
(400101000007,'Withdrawal',8000,'2025-02-10 17:25:00'),
(400101000008,'Deposit',40000,'2025-02-11 13:00:00'),
(400101000009,'Deposit',12000,'2025-02-12 10:15:00'),
(400101000010,'Withdrawal',6000,'2025-02-13 18:30:00'),
(400101000011,'Deposit',75000,'2025-02-14 09:50:00'),
(400101000012,'Withdrawal',9000,'2025-02-15 14:00:00'),
(400101000013,'Deposit',11000,'2025-02-16 12:10:00'),
(400101000014,'Withdrawal',20000,'2025-02-17 16:45:00'),
(400101000015,'Deposit',18000,'2025-02-18 11:30:00');



-- shows the data of the perticular table 
select * from customers;
select * from branch;
select * from accounts;
select * from transactions;
