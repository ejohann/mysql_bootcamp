SELECT COUNT(*) FROM books;

SELECT COUNT(author_fname) FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;

SELECT COUNT(DISTINCT CONCAT(author_fname, author_lname)) FROM books;

SELECT COUNT(title) FROM books WHERE title LIKE '%the%';

SELECT title, author_lname FROM books;

SELECT title, author_lname FROM books GROUP BY author_lname;

SELECT title, author_lname FROM books GROUP BY author_lname, author_fname;

SELECT COUNT(title), author_lname FROM books GROUP BY author_lname;

SELECT COUNT(title), author_lname, author_fname FROM books GROUP BY author_lname, author_fname;

SELECT released_year FROM books;

SELECT released_year, COUNT(released_year) FROM books GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(released_year), ' book(s) released') AS 'year' FROM books GROUP BY released_year;



-- --------------------------------------------------
-- ----------------------------------------------------



SELECT MIN(released_year) FROM books;

SELECT MAX(released_year) FROM books;


SELECT MIN(pages) FROM books;

SELECT MAX(pages) FROM books;

SELECT pages, title FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT pages, title FROM books WHERE pages = (SELECT MIN(pages) FROM books);

SELECT pages, title FROM books ORDER BY pages ASC LIMIT 1;

SELECT pages, title FROM books ORDER BY pages DESC LIMIT 1;

SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author', MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;





-- -----------------------------------------------------
-- ---------------------------------------------------------

SELECT SUM(pages) FROM books;

SELECT SUM(released_year) FROM books;

SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_fname;


-- ------------------------------------------
-- -----------------------------------------

SELECT AVG(released_year) FROM books;

SELECT COUNT(book_id), released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;