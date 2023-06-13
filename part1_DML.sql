INSERT INTO users
	(name, email, birthdate, status)
VALUES
	('Gustavo', 'Gustavo@gmail.com', '2003-11-12', true),
	('Ferreira', 'ferreira@gmail.com', '2003-11-12', true);

SELECT * FROM users WHERE id = 1;

UPDATE users SET email = 'Gustavof@gmail.com' WHERE  name = 'GustavoF';

SELECT * FROM users WHERE id = 1;

DELETE FROM users WHERE name LIKE 'Ferreira';

INSERT INTO users
	(name, email, birthdate, status)
VALUES
	('GustavoF', 'Gustavo@gmail.com', '2003-11-12', true),
	('Ferreira', 'ferreira@gmail.com', '2005-11-12', true);

INSERT INTO phone_number 
	(phone_number)
VALUES
	(11123456789),
	(11987654321);

INSERT INTO contacts 
	(user_id, phone_number_id)
VALUES
	(1, 1),
	(2, 2);
	
UPDATE phone_number SET phone_number=11987654327 WHERE id = 2;

SELECT * FROM phone_number;
SELECT * FROM users;
SELECT * FROM contacts;



