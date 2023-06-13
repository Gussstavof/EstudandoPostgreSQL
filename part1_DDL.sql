CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(50),
	birthdate DATE,
	status BOOLEAN
);

DROP TABLE users;
DROP TABLE phone_number;
DROP TABLE contacts;

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

ALTER TABLE contacts
DROP CONSTRAINT contacts_user_id_fkey;

ALTER TABLE contacts
ADD CONSTRAINT contacts_user_id_fkey
FOREIGN KEY (user_id)
REFERENCES users (id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE contacts
DROP CONSTRAINT contacts_phone_number_id_fkey;

ALTER TABLE contacts
ADD CONSTRAINT contacts_phone_number_id_fkey
FOREIGN KEY (phone_number_id)
REFERENCES phone_number (id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE contacts(
	id SERIAL PRIMARY KEY,
	
	user_id INTEGER,
	FOREIGN KEY (user_id) 
	REFERENCES users (id)
	ON DELETE CASCADE,
	ON UPDATE CASCADE,
	
	phone_number_id INTEGER,
	FOREIGN KEY (phone_number_id) 
	REFERENCES phone_number (id)
	ON DELETE CASCADE,
	ON UPDATE CASCADE
)


SELECT * FROM users;
SELECT * FROM phone_number;
SELECT * FROM contacts;
