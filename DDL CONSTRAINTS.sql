CREATE DATABASE Sales;
USE Sales; 

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,  -- Primary Key constraint
    Customer_name VARCHAR(30) NOT NULL,  -- Not Null constraint
    Product_Category VARCHAR(50) NOT NULL,  -- Not Null constraint
    Ordered_item VARCHAR(50) NOT NULL,  -- Not Null constraint
    Contact_No VARCHAR(10) UNIQUE NOT NULL  -- Unique and Not Null constraint
);
SELECT * FROM orders;
-- Add a new column named “order_quantity” to the orders table.
ALTER TABLE Orders
ADD order_quantity int;

-- Rename the orders table to the sales_orders table.
ALTER TABLE Orders
RENAME TO sales_orders;

--  Insert 10 rows into the sales_orders table
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES(1, 'Abin', 'Electronics', 'Phone', '1212121212', 1),
(2, 'Jiji', 'Clothing', 'T-Shirt', '1231231234', 5),
(3, 'Ardra', 'Electronics', 'Laptop', '1122334455', 1),
(4, 'Aurora', 'Stationary', 'Pen', '1230985643', 15),
(5, 'george', 'Home Appliance', 'Refrigerator', '3344556677', 1),
(6, 'Dani', 'Furniture', 'Bookshelf', '4455667788', 2),
(7, 'rahul', 'Sports', 'Football', '5566778899', 4),
(8, 'Freddy', 'Electronics', 'Tablet', '6677889900', 1),
(9, 'Gayathri', 'Cosmetics', 'Perfume', '7788990011', 3),
(10, 'Hari', 'Accessories', 'Bag', '8899001122', 2);

SELECT * FROM sales_orders;

-- sales_ordersRetrieve customer_name and Ordered_Item from the sales_orders table.
SELECT Customer_name, Ordered_item
FROM sales_orders;

-- Use the update command to change the name of the product for any row.( updating the product for Order_Id 8 to smart_watch)
UPDATE sales_orders
SET Ordered_item = 'Smart_watch'
WHERE Order_Id = 8;  

--  Delete the sales_orders table from the database.
DROP TABLE sales_orders;






