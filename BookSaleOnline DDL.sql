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
			CHECK(Category IN('Children','Computer','Literature','Business','Science','TEXT')),
	ReleaseYear  VARCHAR(10),
    Publisher VARCHAR(30) NOT NULL,
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
	Inventory_Date  DATE,
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

CREATE TABLE IF NOT EXISTS BookPrice_T
(
	BookID CHAR(6) NOT NULL,
    SalePrice DECIMAL (9,2),
    MemberPrice DECIMAL (9,2),
    SecondHandPrice DECIMAL (9,2),
CONSTRAINT PK_BookPrice PRIMARY KEY(BookID),
CONSTRAINT FK_BookPrice FOREIGN KEY( BookID ) REFERENCES Book_T(BookID)
);
    
# add at least 6 customers, 
# use atleast 3 different cities
/*
INSERT INTO Customer_T VALUES ('C001', 'Min', 'Luo', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa','ON','K2G1V8', 1290.0);
INSERT INTO Customer_T VALUES ('C002', 'Simon', 'Yin', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa','ON','K2G1V8', 2238.2);
INSERT INTO Customer_T VALUES ('C003', 'Shelly', 'Wang', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa','ON','K2G1V8', 456.98);
INSERT INTO Customer_T VALUES ('C004', 'John', 'Skimmer', '613-727-4723', '854 Younge Street', 'Toronto','ON','K2G1V8', 332.08);
INSERT INTO Customer_T VALUES ('C005', 'Sara', 'Jarvis', '613-727-4723', '264 Main Street', 'Kitchener','ON','K2G1V8', 65.64);
INSERT INTO Customer_T VALUES ('C006', 'Windey', 'Swift', '613-727-4723', '357 Rue Catherine ', 'Montreal','ON','K2G1V8',20098.00);


INSERT INTO Invoice_T VALUES ('I23001', 'C001', '2011-02-15');
INSERT INTO Invoice_T VALUES ('I23002', 'C001', '2011-04-25');
INSERT INTO Invoice_T VALUES ('I23003', 'C004', '2011-06-12');
INSERT INTO Invoice_T VALUES ('I23004', 'C002', '2011-07-08');
INSERT INTO Invoice_T VALUES ('I23005', 'C005', '2011-08-24');
INSERT INTO Invoice_T VALUES ('I23006', 'C006', '2011-09-07');
INSERT INTO Invoice_T VALUES ('I23007', 'C006', '2010-12-28');
INSERT INTO Invoice_T VALUES ('I23008', 'C006', '2011-12-15');


INSERT INTO Product_T VALUES ('P2011', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0);
INSERT INTO Product_T VALUES ('P2012', 'HP laptop', '2010-09-25', 40, 5, 529.99, 0);
INSERT INTO Product_T VALUES ('P2013', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0);
INSERT INTO Product_T VALUES ('P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0);
INSERT INTO Product_T VALUES ('P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL);
INSERT INTO Product_T VALUES ('P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0);
INSERT INTO Product_T VALUES ('P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10);


INSERT INTO Invoice_Line_T VALUES ('I23001', 1, 'P2011', 1, 650.75); 
INSERT INTO Invoice_Line_T VALUES ('I23001', 2, 'P2014', 3, 159.99);
INSERT INTO Invoice_Line_T VALUES ('I23002', 1, 'P2012', 1, 529.99);
INSERT INTO Invoice_Line_T VALUES ('I23003', 1, 'P2015', 3, 140.75);
INSERT INTO Invoice_Line_T VALUES ('I23004', 1, 'P2014', 1, 159.99);
INSERT INTO Invoice_Line_T VALUES ('I23005', 1, 'P2016', 1, 798.99);
INSERT INTO Invoice_Line_T VALUES ('I23006', 1, 'P2011', 1, 499.99);
INSERT INTO Invoice_Line_T VALUES ('I23007', 1, 'P2012', 1, 529.99);
INSERT INTO Invoice_Line_T VALUES ('I23008', 1, 'P2016', 3, 689.00);
INSERT INTO Invoice_Line_T VALUES ('I23008', 2, 'P2017', 3, 35.99);

*/
#eof: F14-CreateTables.sql
