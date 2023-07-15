--create user table if it doesn't exist
CREATE TABLE IF NOT EXISTS userS (
	--user unique id
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	
	--user email with char limit
       	email VARCHAR(255) NOT NULL UNIQUE,

	--user name with char limit
       	name VARCHAR(255)
);

