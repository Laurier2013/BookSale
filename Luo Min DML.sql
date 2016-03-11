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


-- Populate Book_T
#TRUNCATE TABLE Book_T;
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B001', 'A001',"Percy Jackson's Greek Heroes" , '1423183657', 'Children','19.66', '2015', 'Disney Hyperion');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B002', 'A002', 'Harry Porter','1408856778', 'Children','78.09', '2015', 'Bloomsbury Press');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B003', 'A003', 'Secret Garden', '1780671067', 'Children','12.99', '2013', 'Laurence King Publishing');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category,Price, ReleaseYear, Publisher)
VALUES('B004', 'A004', 'House of Cards', '1492606618' , 'Literature','24.42', '2013', 'Simon & Schuster UK');
INSERT INTO Book_T(BookID, AuthorID, Title, ISBN, Category, Price, ReleaseYear, Publisher)
VALUES('B005', 'A005','Margaret the First: A Novel','1936787350','Literature','13.50', '2015', 'Catapult');

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





