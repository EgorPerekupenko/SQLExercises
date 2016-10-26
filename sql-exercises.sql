/*1.Return all category names with their descriptions from the Categories table.*/
select CategoryName, Description from Categories
/*2.Return the contact name, customer id, and company name of all Customers in London*/
select ContactName, CustomerID, CompanyName from Customers where City='London'
/*3.Return all available columns in the Suppliers tables for the marketing managers and sales representatives that have a FAX number*/
select ContactTitle  from Suppliers where Fax is not null
/*4.Return a list of customer id's from the Orders table with required dates between Jan 1, 1997 and Jan 1, 1998 and with freight under 100 units.*/
select CustomerId from Orders where OrderDate between '01/01/1997' and '01/01/1998'
/*5.Return a list of company names and contact names of all the Owners from the Customer table from Mexico, Sweden and Germany.*/
select CompanyName, ContactName from Customers where Country IN('Mexico','Sweeden','Germany')
/*6.Return a count of the number of discontinued products in the Products table.*/
select count(*) Discontinued from Products
/*7.Return a list of category names and descriptions of all categories beginning with 'Co' from the Categories table.*/
select  CategoryName, Description from Categories where CategoryName like  'Co%'
/*8.Return all the company names, city, country and postal code from the Suppliers table with the word 'rue' in their address. The list should ordered alphabetically by company name.*/
select CompanyName , City , Country , PostalCode 
from Suppliers 
where Address like 'rue%' 
Order BY CompanyName
/*9.Return the product id and the total quantities ordered for each product id in the Order Details table.*/
select ProductID , Quantity from [Order Details]
/*10.Return the customer name and customer address of all customers with orders that shipped using Speedy Express.*/
select CompanyName, Address 
from Customers 
full join Orders 
on Customers.CompanyName=Orders.ShipName 
where ShipVia = 1  
/*11.Return a list of Suppliers containing company name, contact name, contact title and region description.*/
select CompanyName , ContactName, ContactTitle, Region from Suppliers
/*12.Return all product names from the Products table that are condiments.*/
select ProductName, CategoryName 
from Products 
full join Categories 
on Products.CategoryID = Categories.CategoryID 
where CategoryName = 'Condiments'
/*13.Return a list of customer names who have no orders in the Orders table.*/
select ContactName
from Customers
full join Orders
on Orders.CustomerID = Customers.CustomerID
where OrderDate is null
/*14.Add a shipper named 'Amazon' to the Shippers table using SQL.*/
insert into Shippers (CompanyName) values ('Amazon')
/*15.Change the company name from 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL.*/
update Shippers
set CompanyName = 'Amazon Prime Shipping'
where CompanyName = 'Amazon'
/*16.Return a complete list of company names from the Shippers table. Include freight totals rounded to the nearest whole number for each shipper from the Orders table for those shippers with orders*/.

/*17.Return all employee first and last names from the Employees table by combining the 2 columns aliased as 'DisplayName'. The combined format should be 'LastName, FirstName'.*/
select concat(LastName, FirstName) as 'DisplayName'
from Employees
/*18.Add yourself to the Customers table with an order for 'Grandma's Boysenberry Spread'.*/
insert into Customers (ContactName, CustomerID, CompanyName) values ('Egor Perekupenko', 'EP', 'EP Inc')
/*19.Remove yourself and your order from the database.*/
delete from Customers where CustomerID = 'EP'
/*20.Return a list of products from the Products table along with the total units in stock for each product. Include only products with TotalUnits greater than 100.*/