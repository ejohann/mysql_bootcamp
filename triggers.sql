/*
CREATE DATABASE trigger_demo;

USE trigger_demo;

CREATE TABLE users(
        username VARCHAR(100),
        age INT
);


INSERT INTO users(username, age) VALUES ('bobby', 23), ('Robbert', 21), ('Jackie', 33), ('Susan', 36), ('Sally', 19);    
*/



DELIMITER $$

CREATE TRIGGER must_be_adult
    BEFORE INSERT ON people FOR EACH ROW
    BEGIN
        IF NEW.age 18
        THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Must be an adult';
        END IF;
    END;
$$

DELIMITER;
