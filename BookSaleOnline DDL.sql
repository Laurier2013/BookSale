# script to create production database, TABLEs and INSERT rows
# CST 8282
# Year: 2016
# Editor: Min Luo, Jiawei Guo

DROP SCHEMA IF EXISTS booksale;
CREATE SCHEMA booksale;

USE booksale;

DROP TABLE IF EXISTS Customer_T;
DROP TABLE IF EXISTS Book_T;
DROP TABLE IF EXISTS Inventory_T;
DROP TABLE IF EXISTS Order_T;
DROP TABLE IF EXISTS Author_T;

CREATE TABLE IF NOT EXISTS Customer_T
(
	CustomerID CHAR(4) NOT NULL,
	Cust_Fname VARCHAR(30) NOT NULL,
	Cust_Lname VARCHAR(30) NOT NULL,
	Cust_Phone VARCHAR(15) NOT NULL,
	Cust_Address VARCHAR(30) NOT NULL,
	Cust_City VARCHAR(20) ,
	Cust_Prov CHAR(2) ,
	Cust_PostCode VARCHAR(6) NOT NULL,
    Cust_Membership CHAR(1)
			CHECK(Cust_Membership in (0, 1)),
CONSTRAINT PK_Customer PRIMARY KEY( CustomerID )
);

CREATE TABLE IF NOT EXISTS Book_T
(
	BookID CHAR(6) NOT NULL,
    AuthorID VARCHAR(30) NOT NULL,
	Title VARCHAR(60) NOT NULL,
	ISBN  VARCHAR(45) NOT NULL,	
	Category CHAR(10) 
			CHECK(Category IN('Children','Computer','Literature','Business','Science','TextBook')),
	Price DECIMAL (9,2),
	ReleaseYear  VARCHAR(10),
    Publisher VARCHAR(30),
CONSTRAINT PK_Book PRIMARY KEY( BookID )
);

CREATE TABLE IF NOT EXISTS Author_T
(
	AuthorID CHAR(6) NOT NULL,
	Author_Name VARCHAR(45) NOT NULL,
    BookID CHAR(6) NOT NULL,
CONSTRAINT PK_Author PRIMARY KEY( AuthorID ),
CONSTRAINT FK_Author FOREIGN KEY( BookID ) REFERENCES Book_T(BookID)
);

CREATE TABLE IF NOT EXISTS Inventory_T
(
	InventoryID CHAR(6) NOT NULL,
	BookID  CHAR(6),
    QuantityInHand INTEGER,
	Inventory_Date  TIMESTAMP,
CONSTRAINT PK_Inventory PRIMARY KEY( InventoryID ),
CONSTRAINT FK_Inventory FOREIGN KEY( BookID ) REFERENCES Book_T(BookID)
);

CREATE TABLE IF NOT EXISTS Order_T
(
	OrderID INT(10) NOT NULL,
	CustomerID CHAR(4) NOT NULL,
	BookID CHAR(6) NOT NULL,
	Quantity INTEGER,
    TotalAmount DECIMAL (9,2),
	OrderDate DATE,
CONSTRAINT PK_Order  PRIMARY KEY( OrderID),
CONSTRAINT FK1_Order FOREIGN KEY( CustomerID ) REFERENCES Customer_T(CustomerID ),
CONSTRAINT FK2_Order FOREIGN KEY( BookID ) REFERENCES Book_T(BookID)
);

    
