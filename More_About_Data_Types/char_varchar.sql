CREATE DATABASE new_testing_db;

CREATE TABLE dogs
(
    name CHAR(5),
    breed VARCHAR(10)
);

INSERT INTO dogs(name, breed)
VALUES ('Bob', 'Beagle'),
       ('Robby', 'Corgi'),
       ('Jane', 'Retriever');

SELECT * FROM dogs;


-- CHAR is faster for fixed length text
    -- Eg: 
    --     State Abbreviations: CA, NY
    --     Yes/No Flags: Y/N 
    --     Gender: M/F


--    Some Really Boring
--     Explanatory Text
-- The length of a CHAR column is fixed to the 
-- length that you declare when you create the table. 
-- The length can be any value from 0 to 255. 
-- When CHAR values are stored, they are right-padded 
-- with spaces to the specified length. When CHAR 
-- values are retrieved, trailing spaces are removed 
-- unless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.

-------------------------------------------------------------
Value	    Char(4)	    Storage 	Varchar(4)	    Storage
-------------------------------------------------------------
' '	'        '	        4 bytes	    ' '	            1 byte
'ab'	    'ab  '  	4 bytes 	'ab'	        3 bytes
'abcd'	    'abcd'	    4 bytes	    'abcd'	        5 bytes
'abcdefg'	'abcd'	    4 bytes	    'abcdefg'	    5 bytes
---------------------------------------------------------------