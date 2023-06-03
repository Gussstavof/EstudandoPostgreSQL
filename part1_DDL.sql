CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(50),
	birthdate DATE,
	status BOOLEAN
);

CREATE TABLE phone_number(
	id SERIAL PRIMARY KEY,
	phone_number CHAR(11)
);

CREATE TABLE contacts(
	id SERIAL PRIMARY KEY,
	
	user_id INTEGER,
	FOREIGN KEY (user_id) 
	REFERENCES users (id),
	
	phone_number_id INTEGER,
	FOREIGN KEY (phone_number_id) 
	REFERENCES phone_number (id)
);


SELECT * FROM users;
SELECT * FROM phone_number;
SELECT * FROM contacts;
