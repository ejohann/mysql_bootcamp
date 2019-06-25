 CREATE TABLE people(
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
 );
 
 INSERT INTO people (name, birthdate, birthtime, birthdt)
   VALUES (
      'Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'
   );
   
 INSERT INTO people (name, birthdate, birthtime, birthdt)
   VALUES (
      'Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42'
   );
   
  INSERT INTO people (name, birthdate, birthtime, birthdt)
   VALUES (
      'Kettle', CURDATE(), CURTIME(), NOW()
   );
   
   SELECT birthdate, DAY(birthdate) FROM people;
   
   SELECT birthdate, DAYNAME(birthdate) FROM people;
   
   SELECT birthdate, DAYOFWEEK(birthdate) FROM people;
    
   SELECT birthdate, DAYOFYEAR(birthdate) FROM people;
   
      SELECT birthdt, DAYOFYEAR(birthdt) FROM people;
      
      SELECT birthdt, MONTHNAME(birthdt) FROM people;

      SELECT birthdt, MINUTE(birthdt) FROM people;
      
SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');

SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;


SELECT DATEDIFF(NOW(), birthdate) FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthdate) AS 'days ago' FROM people;

SELECT name, birthdate, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;

SELECT name, birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;

SELECT name, birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;

SELECT name, birthdate, birthdt + INTERVAL 1 MONTH FROM people;

SELECT name, birthdt, birthdt + INTERVAL 1 MONTH + INTERVAL 10 HOUR FROM people;




-- --------------------------------------------------------------------
-- -----------------------------------------------------------------------






CREATE TABLE comments(
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);



INSERT into comments (content) VALUES ('Hahaha, what a funny article');

INSERT into comments (content) VALUES ('Why are you so offensive');

SELECT * FROM comments ORDER BY created_at DESC;


CREATE TABLE comments2(
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT into comments2 (content) VALUES ('Hahaha, wow wow');

INSERT into comments2 (content) VALUES ('Why are you so offensive');

INSERT into comments2 (content) VALUES ('I like dogs');

UPDATE comments2 SET content = 'I like dogs and cats, but I like dogs more' WHERE content = 'I like dogs';


SELECT * FROM comments2 ORDER BY changed_at DESC;
