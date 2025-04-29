-- 3. CREATE INDEX (for Question 1)
CREATE INDEX  IdxPhone ON customers(phone);

-- 4. ASSIGNMENT SOLUTIONS

-- Question 1: Drop an index named IdxPhone from customers table
DROP INDEX IdxPhone ON customers;

-- Question 2: Create a user named bob with password '_S$cu3r3!', restricted to localhost
CREATE USER IF NOT EXISTS 'bob'@'localhost' IDENTIFIED BY '_S$cu3r3!';

-- Question 3: Grant INSERT privilege to user bob on salesDB database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Question 4: Change password for user bob to '_P$55/23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY '_P$55/23';

-- 5. VERIFICATION QUERIES (optional)
-- Show indexes on customers table (to verify drop)
SHOW INDEX FROM customers;

-- Show users (to verify bob was created)
SELECT user, host FROM mysql.user WHERE user = 'bob';

-- Show grants for bob (to verify privileges)
SHOW GRANTS FOR 'bob'@'localhost';