-- SELECT CONCAT(SUBSTR(title, 1, 10), '...' ) AS 'Short Title' FROM books;

SELECT
  CONCAT(
  SUBSTRING(
  REPLACE(title, 'e', '3'),
  1, 10), '...')
  AS 'Cool Title'
FROM books;
     
SELECT
  CONCAT(author_fname, REVERSE(author_fname))
FROM books;

SELECT
  CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') AS length
FROM books;

