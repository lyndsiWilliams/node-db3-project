-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT Product.ProductName, Category.CategoryName
FROM Product, Category
WHERE Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [Order].Id, Shipper.CompanyName
FROM [Order], Shipper
WHERE [Order].ShipVia = Shipper.Id AND [Order].OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

Select Product.ProductName , OrderDetail.Quantity
From Product, OrderDetail
WHERE Product.Id = OrderDetail.ProductId AND  OrderDetail.OrderId = '10251'
ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [Order].Id AS 'Order Id', Customer.CompanyName AS 'Customer Company Name', Employee.LastName AS 'Employee Last Name'
FROM [Order], Customer, Employee
WHERE [Order].CustomerId = Customer.Id AND [Order].EmployeeId = Employee.Id;