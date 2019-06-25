SELECT COUNT(book_id) FROM books;

SELECT released_year, COUNT(book_id) FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, released_year, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author full name', pages AS 'Longest book' FROM books ORDER BY pages DESC LIMIT 1;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author full name', pages AS 'Longest book' FROM books WHERE pages = (SELECT MAX(pages)FROM books);

SELECT released_year AS 'year', COUNT(book_id) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year; 