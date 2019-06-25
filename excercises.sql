SELECT
  REVERSE(UPPER('Why does my cat look at me with such hatred?'));

SELECT
  REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '-');

SELECT
  REPLACE(title, ' ', '->') AS title
FROM books;

SELECT
  author_lname AS forwards,
  REVERSE(author_lname) AS backwards
FROM books;

SELECT
  UPPER(CONCAT(author_fname, ' ', author_lname)) AS "full name in caps"
FROM books;

SELECT
  CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;

SELECT
  title,
  CHAR_LENGTH(title) AS 'character count'
FROM books;


SELECT
  book_id AS id,
  CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
  CONCAT(author_lname, ',', author_fname) AS author,
  CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;

-- ---------------------------------------------------
-- ----------------------------------------------------
SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT released_year FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS 'authors' FROM books;

SELECT DISTINCT author_fname AS 'first name', author_lname AS 'last name' FROM books;

SELECT author_lname FROM books ORDER BY author_lname;

SELECT title FROM books ORDER BY title;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT title FROM books ORDER BY title DESC;

SELECT released_year FROM books ORDER BY released_year DESC;

SELECT released_year FROM books ORDER BY released_year;

SELECT title, released_year, pages FROM books ORDER BY released_year;

SELECT title, pages FROM books ORDER BY released_year;

SELECT title, author_fname, author_lname FROM books ORDER BY 2;

SELECT title, author_fname, author_lname FROM books ORDER BY 3;

SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;












-- ---------------------------------------------------------------

-- ---------------------------------------------------------------




