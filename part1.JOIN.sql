SELECT users.name,
	   users.email,
	   phone_number.phone_number,
	   users.birthdate,
	   users.status
FROM users
JOIN contacts 	  ON contacts.user_id = users.id  
JOIN phone_number ON contacts.user_id = phone_number.id;

INSERT INTO 
	users (name, email, birthdate, status)
VALUES
	('Alves', 'alves@gmail.com', '2000-12-12', true);
	
INSERT INTO 
	phone_number (phone_number)
VALUES
	('11123456798');
	
SELECT users.name,
	   users.email,
	   phone_number.phone_number,
	   users.birthdate,
	   users.status
FROM users
LEFT JOIN contacts 	  ON contacts.user_id = users.id  
LEFT JOIN phone_number ON contacts.user_id = phone_number.id;

SELECT users.name,
	   users.email,
	   phone_number.phone_number,
	   users.birthdate,
	   users.status
FROM users
RIGHT JOIN contacts 	  ON contacts.user_id = users.id  
RIGHT JOIN phone_number ON contacts.user_id = phone_number.id;

SELECT users.name,
	   phone_number.phone_number
FROM users
CROSS JOIN phone_number; 
	
	
	

	