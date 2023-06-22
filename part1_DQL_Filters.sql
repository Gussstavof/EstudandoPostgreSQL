SELECT name, email 
FROM users 
WHERE name LIKE '%F';

SELECT name, email 
FROM users 
WHERE name = 'GustavoF';

SELECT name, email 
FROM users 
WHERE name != 'GustavoF';

SELECT name, email 
FROM users 
WHERE name LIKE 'F%';

SELECT name, birthdate 
FROM users 
WHERE birthdate BETWEEN '2000-01-01' AND '2004-01-01';

INSERT INTO users(name)
VALUES('ALVES');

SELECT name, birthdate 
FROM users 
WHERE birthdate IS null;

SELECT name, birthdate 
FROM users 
WHERE birthdate IS NOT null 
AND name LIKE 'F%a%';

SELECT name, birthdate 
FROM users 
WHERE birthdate IS NOT null 
OR name LIKE 'F%a%';

SELECT * FROM users
ORDER BY users.name DESC;

SELECT * FROM users
ORDER BY users.birthdate
OFFSET 3;

SELECT COUNT(*) FROM users;
SELECT MAX(birthdate) FROM users;
SELECT MIN(birthdate) FROM users;
SELECT ROUND(AVG(id), 0) FROM users;

SELECT DISTINCT name FROM users;

SELECT name, COUNT(name) FROM users
GROUP BY(name);

SELECT name FROM users
GROUP BY(name)
HAVING COUNT(name) > 1;




	