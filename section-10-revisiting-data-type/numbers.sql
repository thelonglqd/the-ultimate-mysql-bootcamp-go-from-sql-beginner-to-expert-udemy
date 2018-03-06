USE new_testing_db;

DROP TABLE IF EXISTS items;

-- DECIMAL

CREATE TABLE items (
  price DECIMAL(5,2)
);

INSERT INTO items (price) VALUES (7);
INSERT INTO items (price) VALUES (7987654);
INSERT INTO items (price) VALUES (34.88);
INSERT INTO items (price) VALUES (298.9999);
INSERT INTO items (price) VALUES (1.9999);

SELECT * FROM items;

-- FLOAT and DOUBLE

DROP TABLE IF EXISTS thingies;

CREATE TABLE thingies (
  price FLOAT
);

-- These values are fine
INSERT INTO thingies (price) VALUES (88.45);
INSERT INTO thingies (price) VALUES (8877.45);

-- But, with this value, 8877670000 will be stored instead of it.
-- FLOAT has precision issues with much more than ~ 7 digits
-- DOUBLE has precision issues with much more than ~ 15 digits
INSERT INTO thingies (price) VALUES (8877665544.45);

SELECT * FROM thingies;

