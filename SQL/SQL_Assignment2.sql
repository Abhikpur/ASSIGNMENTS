--1. Display Details of customer whose country is Germany
     SELECT * FROM Customer
     WHERE Country = 'Germany';

--2. Display Fullname of Customers
      SELECT FirstName + ' ' + LastName AS FullName FROM Customer;

--3. Display the Customer details who has a fax Number
--ANS. Not mentioned about fax Number

--4. Display the Customer details whose name holds second letter as u
 SELECT * FROM Customer
    WHERE FirstName LIKE '_u%';

--5. Select order details where unitprice is greater than 10 and less than 20
     select * 
     from Customer 
     join "Order" on Customer.Id="Order".CustomerId
     join OrderItem on "Order".Id=OrderItem.OrderId 
     join product on OrderItem.ProductId=Product.Id
     where OrderItem.UnitPrice>10 AND OrderItem.UnitPrice<20

--6. Display order details contaning a shipping date & arrange the order by date.
--ANS.  Shipping Date details not found

--7.Print the orders shipped by ship name 'La corne d'abondance' between 2 dates(Choose dates of your choice)
--ANS.  Shipment Details details not found

--8.Print the products supplied by 'Exotic Liquids'
--ANS. Supplier Details is not found

--9. Print Average quantiny ordered for every product
     SELECT
    (SELECT ProductName FROM Product WHERE Product.Id = OrderItem.ProductId) AS Product_Name,
     AVG(Quantity) AS Average_Quantity FROM OrderItem GROUP BY ProductId;

--10. Print all the Shipping company name and the ship names if they are operational
--ANS.  Shipping company details not found

--11. Print all Employees with Manager Name
--ANS.  Employee with Manager Details not  found

--12. Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount
--ANS.  Discount deytails not found

--13.Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name
--ANS.  Detalis not found




