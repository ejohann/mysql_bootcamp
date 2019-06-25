SELECT 10 != 10;
SELECT 15 > 14 && 99 - 5 <= 94;
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

SELECT title, released_year FROM books WHERE released_year < 1980 ORDER BY released_year;

SELECT title, author_lname FROM books WHERE author_lname IN ('eggers', 'chabon');

SELECT title, author_lname FROM books WHERE author_lname = 'eggers' || author_lname = 'chabon';

SELECT title, released_year, author_lname FROM books WHERE author_lname = 'lahiri' AND released_year > 2000;

SELECT title, released_year, author_lname FROM books WHERE author_lname = 'lahiri' && released_year > 2000;

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title, pages FROM books WHERE pages >= 100 && pages <= 200;

SELECT title, author_lname FROM books WHERE author_lname LIKE 'c%' || author_lname LIKE 's%';

SELECT title, author_lname FROM books WHERE SUBSTR(author_lname, 1, 1) = 'c' OR SUBSTR(author_lname, 1, 1) = 's';

SELECT title, author_lname FROM books WHERE SUBSTR(author_lname, 1, 1) IN ('c', 's');


SELECT title, author_lname,
    CASE
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title = 'just kids' || title = 'a heartbreaking work of staggering genius' THEN 'Memoir'
    ELSE 'Novel'
    END AS Type
FROM books;

SELECT title, author_lname,
    CASE
    WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), ' ', 'books') 
    ELSE CONCAT(COUNT(*), ' ', 'book') 
    END AS 'COUNT'
FROM books GROUP BY author_lname, author_fname;