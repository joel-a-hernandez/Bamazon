DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NOT NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPad", "tablet", 250.99, 400);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPad Mini", "tablet", 300.10, 600);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Macbook Pro", "laptop", 1700.25, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Macbook Air", "laptop", 1300.10, 650);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPhone X", "phone", 1000.99, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPhone 7", "phone", 400.50, 300);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Apple Watch", "watches", 345.49, 750);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("fitbit", "watches", 130.25, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ipod", "music", 150.10, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ipod nano", "music", 250.25, 75);

SELECT * FROM products;