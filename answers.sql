                               --Table *Person*
--1. Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color. 
--id should be an auto-incrementing id/primary key - Use type: SERIAL
CREATE TABLE person ( 
    person_id SERIAL, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );

--2. Add 5 different people into the person database. 
--* Remember to not include the person_id because it should auto-increment.
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'First Last', 21, 182, 'City', 'Color' );

--3. List all the people in the person table by height from tallest to shortest.
SELECT * FROM person ORDER BY height DESC;

--4. List all the people in the person table by height from shortest to tallest.

SELECT * FROM person ORDER BY height ASC;

--5. List all the people in the person table by age from oldest to youngest.
SELECT * FROM person ORDER BY age DESC;


--6. List all the people in the person table older than age 20.
SELECT * FROM person WHERE age > 20;

--7. List all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age = 18;

--8. List all the people in the person table that are less than 20 and 
--older than 30.
SELECT * FROM person WHERE age < 20 OR age > 30;

--9. List all the people in the person table that are not 27 (Use not
--equals).
SELECT * FROM person WHERE age != 27;

--10. List all the people in the person table where their favorite color
--is not red.

SELECT * FROM person WHERE favorite_color != 'red';

--11. List all the people in the person table where their favorite color
--is not red and is not blue.
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';


--12. List all the people in the person table where their favorite color
--is orange or green.
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';


--13. List all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );


--14. List all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )


                                --Table *Orders*
--1. Create a table called orders that records: person_id, product_name, product_price, quantity.

CREATE TABLE orders ( person_id SERIAL, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER );

--2. Add 5 orders to the orders table.
    --* Make orders for at least two different people.
    --* person_id should be different for different people.
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Product', 12.50, 2 );

--3. Select all the records from the orders table.
SELECT * FROM orders;


--4. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;


--5. Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;


--6. Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;


                       --Table-Artist

--1. Add 3 new artists to the artist table. ( It's already created )
INSERT INTO artist ( name ) VALUES ( 'artist name' );


--2. Select 10 artists in reverse alphabetical order.
SELECT * FROM artist ORDER BY name DESC LIMIT 10;


--3. Select 5 artists in alphabetical order.
SELECT * FROM artist ORDER BY name ASC LIMIT 5;


--4. Select all artists that start with the word 'Black'.
SELECT * FROM artist WHERE name LIKE 'Black%';


--5. Select all artists that contain the word 'Black'.
SELECT * FROM artist WHERE name LIKE '%Black%';

                --Table - employee

--1. List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';


--2. Find the birthdate for the youngest employee.
SELECT MAX(birth_date) from employee;


--3. Find the birthdate for the oldest employee.
SELECT MIN(birth_date) from employee;

--4. Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
  -- * You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM employee WHERE reports_to = 2;


--5. Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


                                 --Table - invoice 


--1. Count how many orders were made from the USA.
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';


--2. Find the largest order total amount.
SELECT MAX(total) FROM invoice;


--3. Find the smallest order total amount.
SELECT MIN(total) FROM invoice;


--4. Find all orders bigger than $5.
SELECT * FROM invoice WHERE total > 5;


--5. Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice WHERE total < 5;


--6. Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');


--7. Get the average total of the orders.
SELECT AVG(total) FROM invoice;


--8. Get the total sum of the orders.
SELECT SUM(total) FROM invoice;






