--creates a stored procedure that takes 3 inputs

DELIMITER //

CREATE PROCCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score DECIMAL(10,2)
)
BEGIN
    --creates project if it does not exist_name
    IF NOT EXIST (SELECT 1 FROM projects WHERE name = project) THEN
	INSERT INTO projects (name) VALUES (project_name);
    END IF;

    --insert correction
    INSERT INTO correction (user_id, project_id, score)
    VALUES (user_id, (SELECT id FROM projects WHERE name = project_name), score);
END //
DELIMITER ;

