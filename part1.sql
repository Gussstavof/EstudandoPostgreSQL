CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(50),
	birthdate DATE,
	status BOOLEAN
);

SELECT * FROM users
