----------------------------ANI_RETAIL: Sales Analytics System--------------------------------

--Create Raw Table and import data from CSV file
CREATE TABLE retail_sales_raw (
    order_id TEXT,
    customer_name TEXT,
    employee_id TEXT,
    employee_name TEXT,
    department TEXT,
    employee_region TEXT,
    salary TEXT,
    product_id TEXT,
    product_name TEXT,
    category TEXT,
    product_price TEXT,
    quantity TEXT,
    sales TEXT,
    order_date TEXT
);

SELECT * FROM retail_sales_raw;

--Creating Retail Sales Clean Table and importing raw data from Retail Sales raw table
CREATE TABLE retail_sales_clean AS
SELECT * FROM retail_sales_raw;

SELECT * FROM retail_sales_clean;

------------------------------DATA CLEANING-----------------------------
--TYPE 1: DUPLICATE ROWS

--FIND DUPLICATES
SELECT order_id , 
   COUNT(*) FROM retail_sales_clean GROUP BY order_id
   HAVING COUNT(*)>1;

--REMOVING DUPLICATES
DELETE FROM retail_sales_clean first_table
USING retail_sales_clean second_table
WHERE first_table.ctid < second_table.ctid
AND first_table.order_id = second_table.order_id;

--TYPE 2: REMOVE EXTRA SPACES 
UPDATE retail_sales_clean
SET 
customer_name = TRIM(customer_name),
employee_name = TRIM(employee_name),
department = TRIM(department),
employee_region = TRIM(employee_region),
product_name = TRIM(product_name),
category = TRIM(category);

--TYPE 3: STANDARDIZE TEXT CASE 
UPDATE retail_sales_clean
SET 
employee_region = INITCAP(LOWER(employee_region)),
product_name = INITCAP(LOWER(product_name)),
department = INITCAP(LOWER(department)),
customer_name = INITCAP(LOWER(customer_name));

--TYPE 4: FIX INCONSISTENT VALUES (SAME CATEGORY WRITTEN DIFFERENTLY

--Cleaning category column
SELECT DISTINCT category
FROM retail_sales_clean
ORDER BY category;

UPDATE retail_sales_clean
SET category='Smartphone'
WHERE category IN ('Smartphone', 'smart-phone', 'Smart phone');

UPDATE retail_sales_clean
SET category='Accessories'
WHERE category IN ('Accessory','accessory', 'accessories');

UPDATE retail_sales_clean
SET category = 'Smartwatch'
WHERE category IN ('smartwatch', 'Smart watch', 'Smart Watch');

--Cleaning Department column
SELECT DISTINCT department
FROM retail_sales_clean
ORDER BY department;

--Cleaning employee region column (this we alredy cleaned in type 2 and 3 cleaning)
SELECT DISTINCT employee_region
FROM retail_sales_clean
ORDER BY employee_region;

--Cleaning product names column
SELECT DISTINCT product_name
FROM retail_sales_clean
ORDER BY product_name;

UPDATE retail_sales_clean
SET product_name = 'Iphone15'
WHERE product_name IN ('Iphone15', 'Iphone 15');

--TYPE 5: HANDLE MISSING VALUES 
SELECT * FROM retail_sales_clean
WHERE department = NULL;

--Replace missing values
UPDATE retail_sales_clean
SET department = 'Unknown'
WHERE department = NULL;

--TYPE 6: INCONSISTENT DATE FORMATS
SELECT DISTINCT order_date 
FROM retail_sales_clean;

----ADD new date column
ALTER TABLE retail_sales_clean
ADD COLUMN new_order_date DATE;

----Convert differet date formats
UPDATE retail_sales_clean
SET new_order_date =
CASE
    -- Handles dates like 3/5/2024 or 03/05/2024
    WHEN order_date ~ '^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$'
    THEN TO_DATE(order_date,'DD/MM/YYYY')

    -- Handles dates like 2024-3-9 or 2024-03-09
    WHEN order_date ~ '^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$'
    THEN TO_DATE(order_date,'YYYY-MM-DD')

    -- Handles dates like 7-2-2024 or 07-02-2024
    WHEN order_date ~ '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$'
    THEN TO_DATE(order_date,'DD-MM-YYYY')
	
    -- Handles dates like 2024/3/9
    WHEN order_date ~ '^[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}$'
    THEN TO_DATE(order_date,'YYYY/MM/DD')
    ELSE NULL
END;

--Drop old date column (optional)
ALTER TABLE retail_sales_clean
DROP COLUMN order_date;

--TYPE 7: FIX WRONG DATATYPES (currently all columns have Text datatype)

ALTER TABLE retail_sales_clean
ALTER COLUMN salary TYPE NUMERIC(10,2)
USING salary::NUMERIC(10,2);

ALTER TABLE retail_sales_clean
ALTER COLUMN order_id TYPE INT
USING order_id::INT;

ALTER TABLE retail_sales_clean
ALTER COLUMN product_id TYPE INT
USING product_id::INT;

ALTER TABLE retail_sales_clean
ALTER COLUMN quantity TYPE INT
USING quantity::INT;

ALTER TABLE retail_sales_clean
ALTER COLUMN product_price TYPE NUMERIC(10,2)
USING product_price::NUMERIC(10,2);

SELECT * FROM retail_sales_clean;

ALTER TABLE retail_sales_clean
ALTER COLUMN sales TYPE NUMERIC(10,2)
USING sales::NUMERIC(10,2);

ALTER TABLE retail_sales_clean
ALTER COLUMN employee_id TYPE INT
USING employee_id::INT;

--TYPE 8: CHECK NEGATIVE VALUES
UPDATE retail_sales_clean
SET sales=product_price*quantity;

UPDATE retail_sales_clean
SET sales=NULL
WHERE sales<0;

--DATA CLEANING COMPLETED
SELECT * FROM retail_sales_clean;

-------------------------------DATA NORMALISATION--------------------------------------

----Creating tables employee, product and sales
CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  employee_name TEXT,
  employee_region TEXT,
  salary NUMERIC(10,2),
  department TEXT);

CREATE TABLE product (
  product_id INT PRIMARY KEY,
  product_name TEXT,
  product_price NUMERIC(10,2),
  category TEXT);

CREATE TABLE sales (
  order_id INT PRIMARY KEY,
  sales NUMERIC(10,2),
  quantity INT,
  order_date DATE,
  customer_name TEXT,
  employee_id INT,
  product_id INT,

  FOREIGN KEY(employee_id)
  REFERENCES employee(employee_id),

  FOREIGN KEY(product_id)
  REFERENCES product(product_id));

SELECT * FROM sales;

----Insert data into tables from retail_sales_clean table
INSERT INTO employee (employee_id, employee_name, employee_region, salary, department)
SELECT DISTINCT employee_id, employee_name, employee_region, salary, department
FROM retail_sales_clean;

INSERT INTO product (product_id, product_name, product_price, category)
SELECT DISTINCT product_id, product_name, product_price, category
FROM retail_sales_clean;

INSERT INTO sales (order_id, sales, quantity, order_date, customer_name, employee_id, product_id)
SELECT DISTINCT order_id, sales, quantity, new_order_date, customer_name, employee_id, product_id
FROM retail_sales_clean;

----ER DIAGRAM STRUCTURE
--employees (1) -------- (M) sales (M) -------- (1) products

------------------------BUSINESS ANALYSIS---------------------------

--Q1 Find total sales generated by each employee
SELECT e.employee_name, SUM(s.sales) AS total_sales
FROM sales s
JOIN employee e
ON e.employee_id = s.employee_id
GROUP BY e.employee_name
ORDER BY total_sales DESC;

--Q2 Find top-performing employee
SELECT e.employee_name, Sum(s.sales) AS total_sales
FROM employee e
JOIN sales s
ON e.employee_id=s.employee_id
GROUP BY e.employee_name
ORDER BY total_sales DESC LIMIT 1;


--Q3 Find employee-wise order count
SELECT e.employee_name, COUNT(s.order_id) AS total_orders
FROM sales s
JOIN employee e
ON e.employee_id = s.employee_id
GROUP BY e.employee_name
ORDER BY total_orders DESC;

--Q4 Find region-wise sales
SELECT e.employee_region, SUM(s.sales) AS total_sales
FROM sales s
JOIN employee e
ON e.employee_id = s.employee_id
GROUP BY e.employee_region
ORDER BY total_sales DESC;

--Q5 Find best-selling products
SELECT p.product_name, SUM(s.quantity) AS total_quantity
FROM product p
JOIN sales s
ON p.product_id=s.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;

--Q6 Find highest revenue generating products
SELECT p.product_name, SUM(s.sales) AS total_revenue
FROM product p
JOIN sales s
ON p.product_id=s.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC LIMIT 1;

--Q7 Find category-wise sales
SELECT p.category, SUM(s.sales) AS total_sales
FROM product p
JOIN sales s
ON p.product_id=s.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

--Q8 Find average product price by category
SELECT category, AVG(product_price) AS average_price
FROM product GROUP BY category;

--Q9 Find total company revenue
SELECT SUM(sales) AS total_revenue FROM sales;

--Q10 Find monthly sales trend
SELECT DATE_TRUNC('month',order_date) AS month, SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

--Q11 Find highest sales day
SELECT order_date, SUM(sales) AS total_sales
FROM sales
GROUP BY order_date
ORDER BY total_sales DESC LIMIT 1;

--Q12 Find average order value
--Average revenue earned per product unit sold
SELECT SUM(sales)/SUM(quantity) AS average_order_value
FROM sales;

--Average revenue per order
SELECT AVG(sales) AS average_order_value
FROM sales;

--Q13 Find top 5 highest sales orders
SELECT order_id, sales AS top_five_sales
FROM sales
ORDER BY top_five_sales DESC LIMIT 5;

--Q14 Find total quantity sold by category
SELECT p.category, SUM(s.quantity) AS total_quantity
FROM product p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY category
ORDER BY total_quantity DESC;

--Q15 Find employees who sold the most products
SELECT e.employee_name, SUM(s.quantity) AS no_of_products_sold
FROM employee e
JOIN sales s
ON e.employee_id = s.employee_id
GROUP BY e.employee_id
ORDER BY no_of_products_sold DESC LIMIT 1;

--Q16 Find the contribution percentage of each category.
--OR What percentage of total company revenue comes from each product category?

----Contribution% = (category sales/Total sales) * 100
SELECT p.category,
    ROUND(SUM(s.sales) * 100.0 / (SELECT SUM(sales) FROM sales),2)
	AS contribution_percentage
FROM sales s
JOIN product p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY contribution_percentage DESC;


--Q17 Find running total of sales
SELECT order_date, sales, SUM(sales) OVER(ORDER BY order_date) AS running_total
FROM sales;

--Q18 Rank employees based on sales
SELECT e.employee_name, SUM(s.sales) AS total_sales,
  RANK() OVER(ORDER BY SUM(s.sales) DESC)
FROM sales s
JOIN employee e
ON e.employee_id = s.employee_id
GROUP BY e.employee_name;

--Q19 Find most profitable category
SELECT p.category, SUM(s.sales) AS total_sales
FROM sales s
JOIN product p
ON p.product_id = s.product_id
GROUP BY p.category 
ORDER BY total_sales DESC LIMIT 1;
 
--Q20 Find products never sold
SELECT p.product_name
FROM product p
LEFT JOIN sales s
ON p.product_id = s.product_id
WHERE s.quantity <1;


-------------------------------END-------------------------------------
