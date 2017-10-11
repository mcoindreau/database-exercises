use codeup_test_db;

SELECT 'Albums released after 1991' AS '';
DELETE FROM albums WHERE release_date > '1991-01-01';

SELECT 'Albums with the genre ''disco''' AS '';
DELETE FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE id = 18;
