create database store;

use store;

CREATE TABLE Category (
    category_id INT PRIMARY KEY IDENTITY(1,1),
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