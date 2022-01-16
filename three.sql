DROP SCHEMA three CASCADE;
CREATE SCHEMA three;
SET search_path TO three;

CREATE TABLE three.products(
  id SERIAL,
  name VARCHAR(50),
  category VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE three.product_history(
  id SERIAL,
  product_id INTEGER,
  price NUMERIC(6,2),
  start_date DATE,
  end_date DATE NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) REFERENCES three.products
);

-- I do have a personal vendetta against HP Wireless printers
INSERT INTO products(name, category) VALUES ('Banana', 'Produce');
INSERT INTO products(name, category) VALUES ('Apple', 'Produce');
INSERT INTO products(name, category) VALUES ('Pear', 'Produce');
INSERT INTO products(name, category) VALUES ('HP Envy 5055', 'Junk');

INSERT INTO product_history(product_id, price, start_date, end_date)
VALUES (1, 5.00, '2020-01-01', '2020-01-02');

INSERT INTO product_history(product_id, price, start_date, end_date)
VALUES (1, 5.41, '2020-01-02', '2020-01-03');

INSERT INTO product_history(product_id, price, start_date, end_date)
VALUES (1, 5.82, '2020-01-03', NULL);

INSERT INTO product_history(product_id, price, start_date, end_date)
VALUES (2, 3.00, '2020-01-01', NULL);

INSERT INTO product_history(product_id, price, start_date, end_date)
VALUES (3, 4.45, '2020-01-01', NULL);

INSERT INTO product_history(product_id, price, start_date, end_date)
VALUES (4, 259.99, '2011-12-25', NULL);


SELECT products.name,
       products.category,
       product_history.price,
       product_history.start_date,
       product_history.end_date
FROM   products
       LEFT OUTER JOIN product_history
                    ON products.id = product_history.product_id; 
