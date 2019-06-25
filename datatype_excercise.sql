CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

SELECT NOW();

SELECT CURTIME();

SELECT DATE_FORMAT(CURDATE(), '%w') + 1;
SELECT DAYOFWEEK(NOW());

SELECT DATE_FORMAT(CURDATE(), '%W');
SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO tweets (content, username) VALUES ('I love #horseracing', 'lewisJohanne' );

INSERT INTO tweets (content, username) VALUES ('I still love #horseracing', 'lewisJohanne' );