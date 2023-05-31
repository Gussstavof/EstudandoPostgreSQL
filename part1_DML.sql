INSERT INTO users
	(name, email, birthdate, status)
VALUES
	('Gustavo', 'Gustavo@gmail.com', '2003-11-12', true),
	('Ferreira', 'ferreira@gmail.com', '2003-11-12', true);

SELECT * FROM users WHERE id = 1;

UPDATE users SET name = 'GustavoF' WHERE id=1;

SELECT * FROM users WHERE id = 1;

DELETE FROM users WHERE id != 0;

INSERT INTO users
	(name, email, birthdate, status)
VALUES
	('GustavoF', 'Gustavo@gmail.com', '2003-11-12', true),
	('Ferreira', 'ferreira@gmail.com', '2005-11-12', true);

SELECT * FROM users;



