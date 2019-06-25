SELECT title, released_year FROM books WHERE released_year != 2017;

SELECT title, released_year FROM books WHERE released_year = 2017;

SELECT title, author_lname FROM books WHERE author_lname ='Harris';

SELECT title, author_lname FROM books WHERE author_lname !='Harris';

-- ---------------------------------------------------------
-- --------------------------------------------------------

SELECT title FROM books WHERE title LIKE '%w%';

SELECT title FROM books WHERE title NOT LIKE '%w%';

SELECT title FROM books WHERE title LIKE 'w%';

SELECT title FROM books WHERE title NOT LIKE 'w%';

-- ---------------------------------------------------------
-- ---------------------------------------------------------

SELECT title, released_year FROM books WHERE released_year > 2000 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year >= 2000 ORDER BY released_year;

SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100 ORDER BY stock_quantity;

SELECT 99 > 1;

SELECT 99 > 100;

SELECT 100 > 5;
SELECT -15 > 15;
SELECT 9 > -10;
SELECT 1 > 1;
SELECT 'a' > 'b';
SELECT 'A' > 'a';

-- ---------------------------------------------------------
-- ---------------------------------------------------------

SELECT title, released_year FROM books WHERE released_year < 2000 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year <= 2000 ORDER BY released_year;

SELECT  3 < -10;
SELECT  -10 < -9;
SELECT  42 <= 42;
SELECT  'h' < 'p';
SELECT  'Q' <= 'q';

-- ---------------------------------------------------
-- --------------------------------------------------

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'eggers' && released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'eggers' AND released_year > 2010;

SELECT 1 < 5 && 7 = 9;

SELECT -10 > -20 && 0 <= 0;
SELECT -40 <= 0 AND 10 > 40;
SELECT 54 <= 54 && 'a' = 'A';

SELECT title, author_lname, released_year FROM books WHERE author_lname= 'eggers' AND released_year > 2010 AND title LIKE '%novel%';

-- -------------------------------------------------------------
-- -------------------------------------------------------------


SELECT title, author_lname, released_year FROM books WHERE author_lname = 'eggers' || released_year > 2010;


SELECT 40 <= 100 || -2 > 0;
SELECT 10 > 5 || 5 = 5 ;
SELECT 'a' = 5 || 3000 > 2000;


SELECT title, author_lname, released_year, stock_quantity FROM books WHERE author_lname= 'eggers' OR released_year > 2010 || title OR stock_quantity > 100;

-- ---------------------------------------------------
-- ---------------------------------------------------

SELECT title, released_year FROM books WHERE released_year >= 2004 AND released_year <= 2015;

SELECT title, released_year FROM books WHERE released_year >= 2004 AND released_year <= 2015 ORDER BY released_year;


SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT CAST('2017-05-02' AS DATETIME);

SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

SELECT name, birthdt FROM people WHERE birthdt BETWEEN 
 CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);
 
 
 
 -- -------------------------------------------------------------------
 -- ---------------------------------------------------------------------

 SELECT title, author_lname FROM books WHERE author_lname = 'carver' OR author_lname = 'lahiri' OR author_lname = 'smith';
 
  SELECT title, author_lname FROM books WHERE author_lname IN ('carver', 'lahiri', 'smith');

 SELECT title, released_year FROM books WHERE released_year IN (2017, 1985);
 
  SELECT title, released_year FROM books WHERE released_year NOT IN (2017, 1985);
  
  SELECT title, released_year FROM books WHERE released_year != 2000 AND released_year != 2002 AND released_year != 2004 AND released_year != 2006 AND released_year != 2008 AND released_year != 2010 AND released_year != 2012 AND released_year != 2014 AND released_year != 2016;
  
    SELECT title, released_year FROM books WHERE released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);
    
     SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);
     
       SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016) ORDER BY released_year;
       

SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 != 0;

-- ----------------------------------------------------------
-- -------------------------------------------------------------

SELECT title, released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS Genre
FROM books;

SELECT title, stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS Stock
FROM books;

SELECT title, 
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS Stock
FROM books;

SELECT title, stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
        ELSE '****'
    END AS Stock
FROM books;

SELECT title, stock_quantity,
    CASE
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        WHEN stock_quantity <= 150 THEN '***'
        ELSE '****'
    END AS Stock
FROM books ORDER BY stock_quantity;



















