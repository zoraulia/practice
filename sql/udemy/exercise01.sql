# SELECT DISTINCT title FROM books WHERE title LIKE '%stories%';

# SELECT title, pages FROM books ORDER BY CHAR_LENGTH(title) DESC LIMIT 1;

# SELECT DISTINCT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

# SELECT DISTINCT title, author_lname FROM books WHERE author_lname LIKE '% %';

# SELECT DISTINCT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

# SELECT DISTINCT title, author_lname FROM books ORDER BY author_lname, title;

# SELECT DISTINCT UPPER(CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname, '!')) AS yell FROM books ORDER BY author_lname;