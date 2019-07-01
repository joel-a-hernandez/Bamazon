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
VALUES ("", "", 2.50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.10, 120);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.25, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.10, 120);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.25, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 2.50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.10, 120);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.25, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.10, 120);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("", "", 3.25, 75);

SELECT * FROM products;