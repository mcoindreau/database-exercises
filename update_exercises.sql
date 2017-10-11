use codeup_test_db;

SELECT 'All albums in your table' AS '';
SELECT *  FROM albums;
SELECT '';

UPDATE albums
SET sales = sales * 10;
SELECT 'All albums in your table' AS '';
SELECT *  FROM albums;
SELECT '';

SELECT 'All albums released before 1980' AS '';
SELECT * FROM albums WHERE release_date < '1980-01-01';
SELECT '';

UPDATE albums
SET sales = sales * 10;
SELECT 'All albums released before 1980' AS '';
SELECT * FROM albums WHERE release_date < '1980-01-01';
SELECT '';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT DATE_FORMAT(release_date, '%Y') AS 'Release Year' FROM albums WHERE NAME LIKE 'Sgt.%' ;
SELECT '';

SELECT 'All albums by Michael Jackson' AS '';
SELECT * FROM albums WHERE albums.artist LIKE 'Michael Jackson%';
SELECT '';

UPDATE albums
SET name = 'Peter Jackson';
SELECT 'All albums by Michael Jackson' AS '';
SELECT * FROM albums WHERE albums.artist LIKE 'Michael Jackson%';
SELECT '';


