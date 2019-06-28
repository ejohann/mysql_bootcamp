CREATE DATABASE trigger_demo;

USE trigger_demo;

CREATE TABLE users(
        username VARCHAR(100),
        age INT
);


/*

CREATE TRIGGER trigger_name
        trigger_time trigger_event ON table_name FOR EACH ROW
        BEGIN
        
        END;
        



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

*/