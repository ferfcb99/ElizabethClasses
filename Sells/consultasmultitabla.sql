create database store_advanced_queries;

use store_advanced_queries;


CREATE TABLE Category (
    category_id INT PRIMARY KEY IDENTITY(1,1), -- autoincrementable
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);

CREATE TABLE CustomerType (
    customer_type_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(150) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL DEFAULT 0,
    sku VARCHAR(50),
    created_at TIMESTAMP,
    category_id INT not null,
    foreign key(category_id) references Category(category_id)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(30),
    address VARCHAR(255),
    created_at TIMESTAMP,
    customer_type_id INT not null,
    foreign key(customer_type_id) references CustomerType(customer_type_id)
);


CREATE TABLE Purchase(
    purchase_id INT PRIMARY KEY IDENTITY(1,1),
    purchased_at TIMESTAMP,
    product_id int not null,
    customer_id int not null,
    foreign key(product_id) references Product(product_id),
    foreign key(customer_id) references Customer(customer_id)
);

CREATE TABLE paymentMethod(
    id_payment_method varchar(10) not null,
    name_payment_method varchar(30) not null,
    created_at datetime, -- null
    primary key(id_payment_method) -- contraints
);

-- 1. Insert Customer Types (IDs 1 to 5)
INSERT INTO CustomerType (name, description) 
VALUES 
('Regular', 'Standard customer account'),
('VIP', 'Premium customer with early access'),
('Corporate', 'B2B enterprise clients'),
('Employee', 'Staff members with employee discount'),
('Student', 'Verified student accounts with active university email');

-- 2. Insert Categories (IDs 1 to 7)
INSERT INTO Category (name, description) 
VALUES 
('Electronics', 'Gadgets and devices'),
('Books', 'Printed and digital material'),
('Clothing', 'Apparel and accessories'),
('Home & Kitchen', 'Appliances, cookware, and home decor'),
('Sports', 'Athletic gear, apparel, and equipment'),
('Toys', 'Games, puzzles, and toys for all ages'),
('Beauty', 'Cosmetics, skincare, and grooming products');


-- 3. Insert Products (IDs 1 to 15)
INSERT INTO Product (name, description, price, stock_quantity, sku, category_id) 
VALUES 
('Gaming Laptop', '15-inch high performance', 1200.00, 10, 'LAP-001', 1),
('Smartphone', 'Latest model', 800.00, 25, 'PHO-002', 1),
('SQL Mastery', 'Advanced database book', 45.00, 100, 'BOK-001', 2),
('Cotton T-Shirt', 'Basic white tee', 15.00, 50, 'TSH-001', 3),
('Wireless Mouse', 'Ergonomic bluetooth mouse', 25.50, 150, 'LAP-002', 1),
('4K Monitor', '32 inch ultra HD display', 350.00, 30, 'DIS-001', 1),
('Python Crash Course', 'Beginner programming guide', 35.00, 80, 'BOK-002', 2),
('Denim Jeans', 'Classic blue straight leg', 49.99, 60, 'CLO-002', 3),
('Coffee Maker', 'Programmable drip coffee machine', 89.99, 45, 'HOM-001', 4), 
('Blender', 'High speed smoothie maker', 120.00, 20, 'HOM-002', 4), 
('Yoga Mat', 'Non-slip exercise mat with alignment lines', 29.99, 100, 'SPO-001', 5), 
('Tennis Racket', 'Professional grade carbon fiber', 150.00, 15, 'SPO-002', 5), 
('Lego Star Wars', 'Millennium Falcon collector set', 160.00, 25, 'TOY-001', 6), 
('Board Game: Catan', 'Strategy trading game', 45.00, 40, 'TOY-002', 6), 
('Face Serum', 'Hydrating daily skincare serum', 35.00, 200, 'BEA-001', 7); 

-- 4. Insert Customers (IDs 1 to 10)
INSERT INTO Customer (first_name, last_name, email, phone, address, customer_type_id) 
VALUES 
('Alice', 'Smith', 'alice@example.com', '555-0100', '123 Main St', 2),
('Bob', 'Jones', 'bob@example.com', '555-0200', '456 Oak Ave', 1),
('Charlie', 'Brown', 'charlie@example.com', '555-0300', '789 Pine Rd', 1),
('Diana', 'Prince', 'diana@enterprise.com', '555-0400', '100 Corporate Way', 3),
('Evan', 'Wright', 'evan@store-staff.com', '555-0500', '12 Employee Blvd', 4),
('Fiona', 'Gallagher', 'fiona@university.edu', '555-0600', 'South Side Dorms', 5),
('George', 'Costanza', 'george@example.com', '555-0700', '1344 Queens Blvd', 1),
('Hannah', 'Abbott', 'hannah@example.com', '555-0800', 'Leaky Cauldron Ave', 2),
('Ian', 'Malcolm', 'ian@chaostheory.com', '555-0900', 'Jurassic Park Dr', 3),
('Julia', 'Roberts', 'julia@example.com', '555-1000', 'Hollywood Blvd', 1);

-- 5. Insert Purchases (Total 18 records)
INSERT INTO Purchase (product_id, customer_id) 
VALUES 
(1, 1),  -- Alice bought a Gaming Laptop
(3, 1),  -- Alice bought SQL Mastery
(2, 2),  -- Bob bought a Smartphone
(4, 2),  -- Bob bought a Cotton T-Shirt
(5, 4),  -- Diana bought Wireless Mouse
(6, 4),  -- Diana bought 4K Monitor
(13, 4), -- Diana bought Lego Star Wars
(7, 5),  -- Evan bought Python Crash Course
(11, 5), -- Evan bought Yoga Mat
(15, 6), -- Fiona bought Face Serum
(14, 6), -- Fiona bought Board Game: Catan
(9, 7),  -- George bought Coffee Maker
(10, 7), -- George bought Blender
(1, 8),  -- Hannah bought Gaming laptop
(8, 8),  -- Hannah bought Denim Jeans
(12, 9), -- Ian bought Tennis Racket
(2, 10), -- Julia bought Smartphone 
(4, 10); -- Julia bought Cotton T-Shirt


select ct.name, pr.name
    from CustomerType ct INNER JOIN Customer c ON ct.customer_type_id = c.customer_type_id
                         INNER JOIN Purchase p ON p.customer_id = c.customer_id
                         INNER JOIN Product pr ON pr.product_id = p.product_id;


/*
1. Product Categories
Goal: Show all products and the name of their category.
Columns: Product Name, Category Name
*/

select pr.name, ct.name
    from Product pr INNER JOIN Category ct ON pr.category_id = ct.category_id;


/*
   2. Customer Status
Goal: List all customers and their account type.
Columns: First Name, Last Name, Customer Type 
*/

select cl.first_name, cl.last_name, clt.name
    from Customer cl INNER JOIN CustomerType clt ON cl.customer_type_id = clt.customer_type_id;

/*
   3. Purchase Log (Customers)
Goal: Show every purchase ID alongside the email address of the customer who made it.
Columns: Purchase ID, Customer Email
*/

select pr.purchase_id,cl.first_name, cl.email
from Purchase pr INNER JOIN Customer cl ON pr.customer_id = cl.customer_id;



/*
    4. Purchase Log (Products)
Goal: Show every purchase ID alongside the SKU and name of the product bought.
Columns: Purchase ID, SKU, Product Name
*/

select pr.purchase_id, p.sku, p.name
from Purchase pr INNER JOIN Product p ON pr.product_id =  p.product_id;


/*
    5. Priciest Items
Goal: List products and their categories, ordered from most expensive to least expensive.
Columns: Product Name, Price, Category Name
*/

select p.name, p.price, ct.name
from Product p INNER JOIN Category ct ON p.category_id = ct.category_id
ORDER BY p.price DESC;

/*
    6. Electronics Catalog
Goal: Show products that belong ONLY to the 'Electronics' category.
Columns: Product Name, Price, Category Name
*/

select p.name, p.price, c.name
from Product p INNER JOIN Category c ON p.category_id = c.category_id
where c.name = 'Electronics';

/*
    7. Corporate Directory
Goal: Find the names and phone numbers of all 'Corporate' customers.
Columns: First Name, Last Name, Phone, Customer Type
*/

select c.first_name, c.last_name, c.phone, ct.name 
from Customer c INNER JOIN CustomerType ct ON c.customer_type_id = ct.customer_type_id
where ct.name = 'Corporate';


/*
  8. Budget Shopping
Goal: List all products that cost less than $50.00 and include their category description.
Columns: Product Name, Price, Category Description  
*/

select p.name, p.price, c.description
from Product p INNER JOIN Category c ON p.category_id = c.category_id
where p.price < 50.00;