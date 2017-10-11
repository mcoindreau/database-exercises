use codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS '';
SELECT *  FROM albums WHERE ARTIST LIKE 'PINK FLOYD';
SELECT '';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT DATE_FORMAT(release_date, '%Y') AS 'Release Year' FROM albums WHERE NAME LIKE 'Sgt.%' ;
SELECT '';

SELECT 'The genre for Nevermind is' AS '';
SELECT genre as 'Genre' FROM albums WHERE NAME = 'Nevermind';
SELECT '';

SELECT 'Which albums were released in the 1990s' AS '';
SELECT * FROM albums WHERE release_date BETWEEN '1990-01-01' AND '1999-12-31';
SELECT '';

SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT * FROM albums WHERE SALES < 20;
SELECT '';

SELECT 'All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' AS '';
SELECT * FROM albums WHERE genre LIKE 'Rock';
SELECT '';

