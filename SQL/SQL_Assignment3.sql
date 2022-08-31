--1. Write a query to display the orders placed by customer with phone number 1094567890
       SELECT * FROM [Order]
       WHERE CustomerId = (SELECT Id FROM Customer WHERE Phone = '030-0074321');

--2. Fetching all the products which are available under Category �Seafood�.
--ANS. Details not found.

--3. Display the orders placed by customers not in London
     SELECT * FROM [Order]
     WHERE CustomerId IN
    (SELECT Id FROM Customer WHERE City NOT IN ('London'));

--4. Selects all the order which are placed for the product Chai.
      SELECT * FROM [Order]
      WHERE Id IN
      (SELECT OrderId FROM OrderItem
      WHERE ProductId IN
      (SELECT Id FROM Product
      WHERE ProductName='Chai'));

--5. Write a query to display the name, department name and rating  of any given employee.
--ANS. Details not found.