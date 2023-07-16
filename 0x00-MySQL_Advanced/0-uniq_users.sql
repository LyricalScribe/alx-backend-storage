-- Create table users if it doesn't already exist
CREATE TABLE IF NOT EXISTS users (
    -- User unique id
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    
    -- User email
    email VARCHAR(255) NOT NULL UNIQUE,
    
    -- User name
    name VARCHAR(255)
);

