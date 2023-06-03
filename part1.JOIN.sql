SELECT users.name,
	   users.email,
	   phone_number.phone_number,
	   users.birthdate,
	   users.status
FROM users
JOIN contacts ON contacts.user_id = users.id
JOIN phone_number ON  phone_number.id = contacts.user_id;