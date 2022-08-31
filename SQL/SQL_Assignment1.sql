--Q1.  Desgin the above database with following table by applying Primary key and Foreign key

create table Customer
(
Id int primary key,
FirstName nvarchar(40) NOT NULL,
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40)
INDEX IndexCustomerName(FirstName,LastName)
);
create table "Order"
(
Id int primary key,
OrderDate datetime NOT NULL ,
OrderNumber nvarchar(10),
CustomerId int FOREIGN KEY REFERENCES Customer(Id),
TotalAmount decimal(12,2),
INDEX IndexOrderCustomerId(Id,CustomerId),
INDEX IndexOrderOrderDate(Id,OrderDate)
);

create table Product
(
Id int primary key,
ProductName nvarchar(50),
UnitPrice Decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit,
INDEX IndexProductName(Id,ProductName)
);
create table OrderItem
(
Id int primary key,
OrderId int FOREIGN KEY REFERENCES "Order"(Id),
ProductId int FOREIGN KEY REFERENCES Product(Id),
UnitPrice decimal(12,2),
Quantity int 
INDEX IndexOrderItemOrderId(Id,OrderId),
INDEX IndexOrderItemProductId(Id,ProductId)
);
--   Insert Records in all tables 

insert into Customer values(1,'ABHIK','MANDAL','KOLKATA','INDIA','42542');
insert into Customer values(2,'ANURAG','SARKAR','PUNE','GERMANY','34265');
insert into Customer values(3,'SWARNAVA','CHACK','SHIMLA','ARGENTINA','42455');
insert into Customer values(4,'DUBE','GHOSH','MUMBAI','ENGLAND','12345');
insert into Customer values(5,'IMONA','KAR','KOCHI','AUSTRALIA','23456');
insert into Customer values(6,'SMIRAN','PAIL','GOA','POLAND','030-0074321');

insert into "Order" values(1,26/10/2021,'1234',1,1200.67);
insert into "Order" values(2,22/09/2019,'2345',6,1226.89);
insert into "Order" values(3,16/10/2019,'3456',4,3459.88);
insert into "Order" values(4,19/01/2020,'4567',3,1222.99);
insert into "Order" values(5,25/16/2020,'5678',5,1278.55);
insert into "Order" values(6,29/03/2022,'6789',2,1299.69);

insert into Product values(1,'TV',12000.66,'12345',1);
insert into Product values(2,'TSHIRT',1256.88,'23456',0);
insert into Product values(3,'PHONE',2340.78,'34567',1);
insert into Product values(4,'ALLOUT',120.69,'45678',0);
insert into Product values(5,'MOUSE',200.69,'56789',0);
insert into Product values(6,'KEYBOARD',120.99,'67898',1);

insert into OrderItem values(1,2,3,1278.99,4);
insert into OrderItem values(2,5,2,333.67,5);
insert into OrderItem values(3,1,1,678.67,8);
insert into OrderItem values(4,3,5,15.66,9);
insert into OrderItem values(5,6,4,3345.78,5);
insert into OrderItem values(6,3,6,1288.79,8);

--3.  In Customer table FirstName Attribute should not accept null value

--   That I have done during creating the table.

--4.  In Order table OrderDate should not accept null value

--ANS.  That I have done during creating the table. 


--5.  Display all customer details

  select * from Customer; 

--6.  write a query to display Country whose name starts with A or I

   select Country from Customer where FirstName LIKE 'A%' OR FirstName LIKE 'I%'; 

--7 .  write a query to display whose name of customer whose third character is i

 select FirstName,LastName from Customer where FirstName LIKE '__I%';









