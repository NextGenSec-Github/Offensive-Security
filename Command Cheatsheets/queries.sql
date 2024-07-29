SELECT * FROM users; -- Selecting All Columns
SELECT username, password FROM users; -- Selecting Specific Columns
SELECT * FROM users LIMIT 1; -- This query retrieves only the first row of data from the users table.
SELECT * FROM users WHERE username = 'admin'; -- This query retrieves rows where the username is 'admin'.
SELECT * FROM users WHERE username != 'admin'; -- This query retrieves rows where the username is not 'admin'.
SELECT * FROM users WHERE username = 'admin' OR username = 'jon'; -- This query retrieves rows where the username is either 'admin' or 'jon'.
SELECT * FROM users WHERE username = 'admin' AND password = 'p4ssword'; -- This query retrieves rows where both username and password match the specified values.
SELECT * FROM users WHERE username LIKE 'a%'; -- Retrieves rows where the username starts with 'a'.
SELECT * FROM users WHERE username LIKE '%a'; -- Retrieves rows where the username ends with 'a'.
SELECT * FROM users WHERE username LIKE '%a%'; -- Retrieves rows where the username contains 'a'.
SELECT name, address, city, postcode FROM customers UNION SELECT company, address, city, postcode FROM suppliers; -- The UNION statement combines the results of two or more SELECT statements into a single result set. 
INSERT INTO users (username, password) VALUES ('bob', 'p4ssword'); -- The INSERT statement adds new rows of data to a table.
UPDATE users SET username = 'admin2', password = 'newp4ssword' WHERE username = 'admin'; -- The UPDATE statement modifies existing rows in a table.
DELETE FROM users WHERE username = 'admin2'; -- The DELETE statement removes rows from a table.

