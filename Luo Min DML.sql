-- populate Customer_T
#TRUNCATE TABLE Customer_T;
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES ('C001', 'Jacky', 'Chen', '8197120988', '125 Nort Dam Street', 'Montreal', 'QC', 'H1A0A1',1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES ('C002', 'Sara', 'Jarvis', '6137028156', '45 Albert Street', 'Ottawa', 'ON', 'K2V3B2',1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES ('C003', 'Harry', 'Lee', '6135268524', '1286 Riverside Dr', 'Ottawa', 'ON', 'K1v2B3',1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES ('C004', 'Edward', 'Ford', '6045562173', '935 Marine Dr', 'Vancouver', 'BC', 'V7P1S0',1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES ('C005', 'Kate', 'White', '6045231892', ' 3292 E 29th Ave', 'Vancouver', 'BC', 'V5R1W4',1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES('C011','Tom', 'Handerson', '6138076624', '73 Carlings Ave', 'Ottawa', 'ON', 'K2V7K9',0);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES('C012','Marry', 'Karry', '8190072356', 'PO BOX 12', 'Quebec', 'QC', 'H2A1B2',0);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES('C013','Alexander','Simons', '4160129564', '100 Young Street', 'Toronto', 'ON', 'R3B2S4', 1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES('C014','Alton', 'John', '4161546584', '68 Grangeway Ave', 'Toronto', 'ON', 'M1H0A1', 1);
INSERT INTO Customer_T  (CustomerID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Membership)
VALUES('C015','Harry', 'Tang', '4167508262', '1470 Midland Ave','Toronto', 'ON','M2H1A3', 1);

-- Populate Author_T
#TRUNCATE TABLE Author_T;
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A001', 'Rick Riordan', 'B001');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A002', 'J K Rowling', 'B002');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A003', 'Johanna Basford', 'B003');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A004', 'Michael Dobbs', 'B004');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A005', 'Danielle Dutton', 'B005');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A011', 'Alan Anderson', 'B011');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A012', 'David Pogue', 'B012');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A013', 'Bruce Elbert', 'B013');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A014', 'Lincoln Peirce', 'B014');
INSERT INTO Author_T (AuthorID, Author_Name, BookID)
VALUES('A015', 'Suzanne Collins', 'B015');


-- Populate Book_T
#TRUNCATE TABLE Book_T;
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, ReleaseYear, Publisher)
VALUES('B001', 'A001',"Percy Jackson's Greek Heroes" , '1423183657', 'Children', '2015', 'Disney Hyperion');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, ReleaseYear, Publisher)
VALUES('B002', 'A002', 'Harry Porter','1408856778', 'Children', '2015', 'Bloomsbury Press');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, ReleaseYear, Publisher)
VALUES('B003', 'A003', 'Secret Garden', '1780671067', 'Children', '2013', 'Laurence King Publishing');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category,ReleaseYear, Publisher)
VALUES('B004', 'A004', 'House of Cards', '1492606618' , 'Literature', '2013', 'Simon & Schuster UK');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, ReleaseYear, Publisher)
VALUES('B005', 'A005','Margaret the First: A Novel','1936787350','Literature', '2015', 'Catapult');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B011', 'A011', 'Exploratory Data Mining and Data Cleaning', '0471268518', 'TextBook', '157.99', '2015', 'Wiley Interscience');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B012', 'A012', 'Windows 10: The Missing Manual', '1491947179', 'TextBook', '33.54', '2015', "O'Reilly Medi");
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B013', 'A013', 'The Satellite Communication and Earth Station Handbook','1608076733', 'TextBook', '234.40', '2015', 'Artech House Publishers');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B014', 'A014', 'Big Nate', '1449462278', 'Children', '8.00', '2015', 'Disney Hyperion');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B015', 'A015', 'The Hunger Games', '0439023483', 'Children', '15.45', '2015', 'Scholastic Press');

-- Populate Inventory_T
#TRUNCATE TABLE Inventory_T;
INSERT INTO Inventory_T(InventoryID, BookID, QuantityInHand, Inventory_Date)
VALUES(1, 'B001', 5500, '2016/1/3');
INSERT INTO Inventory_T(InventoryID, BookID, QuantityInHand, Inventory_Date)
VALUES(2, 'B002', 2500, '2016/1/3');
INSERT INTO Inventory_T(InventoryID, BookID, QuantityInHand, Inventory_Date)
VALUES(3, 'B003', 2436, '2016/1/3');
INSERT INTO Inventory_T(InventoryID, BookID, QuantityInHand, Inventory_Date)
VALUES(4, 'B004', 1240, '2016/1/3');
INSERT INTO Inventory_T(InventoryID, BookID, QuantityInHand, Inventory_Date)
VALUES(5, 'B005', 5687, '2016/1/3');

-- Populate Order_T
#TRUNCATE TABLE Order_T;
INSERT INTO Order_T(OrderID, CustomerID, BookID, Quantity, TotalAmount, OrderDate) 
VALUES(1001, 'C002', 'B002', 2, 156.18, '2016/1/3');
INSERT INTO Order_T(OrderID, CustomerID, BookID, Quantity, TotalAmount, OrderDate) 
VALUES(1002, 'C003', 'B004', 1, 24.42, '2016/1/3');
INSERT INTO Order_T(OrderID, CustomerID, BookID, Quantity, TotalAmount, OrderDate) 
VALUES(1003, 'C002', 'B001', 3, 58.98, '2016/1/6');
INSERT INTO Order_T(OrderID, CustomerID, BookID, Quantity, TotalAmount, OrderDate) 
VALUES(1004, 'C004', 'B001', 1, 19.66, '2016/1/5');
INSERT INTO Order_T(OrderID, CustomerID, BookID, Quantity, TotalAmount, OrderDate) 
VALUES(1005, 'C005', 'B005', 2, 27, '2016/1/3');

-- Populate BookPrice_T
#TRUNCATE TABLE BookPrice_T;
INSERT INTO BookPrice_T(BookID, SalePrice, MemberPrice, SecondHandPrice)
VALUES('B001','23.66','19.66',NULL);
INSERT INTO BookPrice_T(BookID, SalePrice, MemberPrice, SecondHandPrice)
VALUES('B002','87.66','78.09', NULL);
INSERT INTO BookPrice_T(BookID, SalePrice, MemberPrice, SecondHandPrice)
VALUES('B003','15.50','12.99', '8.09');
INSERT INTO BookPrice_T(BookID, SalePrice, MemberPrice, SecondHandPrice)
VALUES('B004','25.05','24.42', '12.00');
INSERT INTO BookPrice_T(BookID, SalePrice, MemberPrice, SecondHandPrice)
VALUES('B005','15.98','13.50',NULL);

use booksale;
select * from author_t;
select * from customer_t;
select * from book_t;
select * from order_t;
select * from inventory_t;
select * from bookprice_t;

#Create View
CREATE VIEW BookTitleAuthor_VW as select b.BookID, b.Title, b.Publisher, a.Author_Name
from Book_T b inner join Author_T a
on b.BookID = a.BookID;
select * from BookTitleAuthor_VW;
CREATE VIEW CustomerBook_VW as select c.CustomerID, o.BookID, o.Quantity, a.Author_Name
from Customer_T c inner join Order_T o on c.CustomerID = o.CustomerID
inner join Author_t a on o.BookID = a.BookID;
select * from CustomerBook_VW;

#Union Querry

#Left Outer Join Querry

#Right Outer Join Querry

#Create Index




