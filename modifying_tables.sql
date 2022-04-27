USE Sales;
SHOW TABLES;

-- 1. renaming tables
RENAME TABLE customers TO clients;
ALTER TABLE clients RENAME customers;


-- 2. copying tables
CREATE TABLE leads LIKE customers;
describe leads;
describe customers;

CREATE TABLE clients AS SELECT * FROM customers;
SELECT * FROM clients;

-- 3. rename columns
DESCRIBE customers;
ALTER TABLE customers RENAME COLUMN firstname to F_NAME;


-- 4. Changing data types
ALTER TABLE customers MODIFY Address varchar(25);
ALTER TABLE customers CHANGE F_NAME FirstName varchar(15);


-- 5. Adding columns
ALTER TABLE customers ADD COLUMN phone varchar(13) AFTER email;
DESCRIBE customers;


-- 6. Data Validiation
ALTER TABLE customers ADD CONSTRAINT CHECK(phone regexp '^[0-9]*$');
SELECT * FROM customers;
UPDATE customers SET phone = "123" WHERE CID = "AB98";

CREATE TABLE test ( ID int not null auto_increment primary key,
price int CHECK(price >20),
note varchar(10) NOT NULL DEFAULT "eeny" CONSTRAINT CHECK(note in("eeny","meeny","miny","mo"))
);
DESCRIBE test;

INSERT INTO test (price) VALUES (21);
SELECT * FROM test;

ALTER TABLE test ADD column stooge ENUM("moe", "larry", "curly");

INSERT INTO test (stooge) VALUES ("Moe");


-- 7. Removing Constraints
ALTER TABLE customers DROP CHECK customers_chk_1;
SHOW CREATE TABLE customers;


-- 8. Removing columns

ALTER TABLE test DROP stooge;
DESCRIBE test;
ALTER TABLE test MODIFY ID int;
ALTER TABLE test DROP PRIMARY KEY;


-- 9. Delete tables
DROP TABLE test; 







