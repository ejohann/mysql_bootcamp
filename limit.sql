
 -- SELECT title FROM books LIMIT 3;

-- SELECT title FROM books LIMIT 1;



-- SELECT * FROM books LIMIT 1;


-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 3;



-- SELECT title FROM books LIMIT 5, 334534654654;

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da';

SELECT title FROM books WHERE title LIKE '%the%';

SELECT title FROM books WHERE title LIKE '%the';

SELECT title FROM books WHERE title LIKE 'the%';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';

SELECT title FROM books WHERE title LIKE '%\%%';

SELECT title FROM books WHERE title LIKE '%\_%';