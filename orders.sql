-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  person_name VARCHAR(15),
  product_price NUMERIC(6, 2), 
  quantity INT
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
INSERT INTO orders (person_id, person_name, product_price, quantity)
VALUES (1, 'Jones', 20.42, 2);
INSERT INTO orders (person_id, person_name, product_price, quantity)
VALUES (1, 'Jones', 2.99, 1);
INSERT INTO orders (person_id, person_name, product_price, quantity)
VALUES (1, 'Jones', 12.92, 1);
INSERT INTO orders (person_id, person_name, product_price, quantity)
VALUES (2, 'Ryan', 42.99, 1);
INSERT INTO orders (person_id, person_name, product_price, quantity)
VALUES (2, 'Ryan', 12.92, 1);
-- person_id should be different for different people.

-- Select all the records from the orders table.
SELECT * FROM orders;
-- Calculate the total number of products ordered.
SELECT COUNT(quantity) FROM orders;
-- Calculate the total order price.
SELECT SUM(product_price)
FROM orders

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price)
FROM orders
WHERE person_id = 1;
