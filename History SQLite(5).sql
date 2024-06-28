--- 28-06-2024 08:04:35
--- SQLite
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20),
    price DECIMAL(10, 2),
    rating DECIMAL(3, 1),
    stock_count INT
);

--- 28-06-2024 08:05:37
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: table Books already exists
 ----- 
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20),
    price DECIMAL(10, 2),
    rating DECIMAL(3, 1),
    stock_count INT
);
*****/

--- 28-06-2024 08:05:49
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near ",": syntax error
 ----- 
ALTER TABLE Books
ADD publisher VARCHAR(100),
ADD num_pages INT;
*****/

--- 28-06-2024 08:06:09
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near ",": syntax error
 ----- 
ALTER TABLE Books
ADD publisher VARCHAR(100),
ADD num_pages INT;
*****/

--- 28-06-2024 08:06:55
--- SQLite
ALTER TABLE Books ADD publisher VARCHAR(100);
ALTER TABLE Books ADD num_pages INT;

--- 28-06-2024 08:16:30
--- SQLite
INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (1, 'A Journey to the Center', 'Jules Verne', 'Adventure', 1864, '1234567890123', 12.99, 4.5, 10, 'Verne Publishing', 350);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (2, 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, '1234567890124', 14.99, 4.8, 5, 'Tolstoy Prints', 1200);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (3, 'Whispers of the Wind', 'Amelia Blackburn', 'Romance', 1982, '1234567890125', 9.99, 4.2, 20, 'Blackburn House', 275);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (4, 'The Galactic Odyssey', 'Orion Starfield', 'Science Fiction', 2005, '1234567890126', 19.99, 4.9, 15, 'Nebula Press', 450);

--- 28-06-2024 08:16:49
--- SQLite
/***** ERROR ******
SQLITE_CONSTRAINT_PRIMARYKEY: sqlite3 result code 1555: UNIQUE constraint failed: Books.book_id
 ----- 
INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (1, 'A Journey to the Center', 'Jules Verne', 'Adventure', 1864, '1234567890123', 12.99, 4.5, 10, 'Verne Publishing', 350);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (2, 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, '1234567890124', 14.99, 4.8, 5, 'Tolstoy Prints', 1200);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (3, 'Whispers of the Wind', 'Amelia Blackburn', 'Romance', 1982, '1234567890125', 9.99, 4.2, 20, 'Blackburn House', 275);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (4, 'The Galactic Odyssey', 'Orion Starfield', 'Science Fiction', 2005, '1234567890126', 19.99, 4.9, 15, 'Nebula Press', 450);
*****/

--- 28-06-2024 08:16:55
--- SQLite
/***** ERROR ******
SQLITE_CONSTRAINT_PRIMARYKEY: sqlite3 result code 1555: UNIQUE constraint failed: Books.book_id
 ----- 
INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (1, 'A Journey to the Center', 'Jules Verne', 'Adventure', 1864, '1234567890123', 12.99, 4.5, 10, 'Verne Publishing', 350);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (2, 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, '1234567890124', 14.99, 4.8, 5, 'Tolstoy Prints', 1200);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (3, 'Whispers of the Wind', 'Amelia Blackburn', 'Romance', 1982, '1234567890125', 9.99, 4.2, 20, 'Blackburn House', 275);

INSERT INTO Books (book_id, title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES (4, 'The Galactic Odyssey', 'Orion Starfield', 'Science Fiction', 2005, '1234567890126', 19.99, 4.9, 15, 'Nebula Press', 450);
*****/

--- 28-06-2024 08:29:16
--- SQLite
UPDATE Books
SET price = 12.99, stock_count = stock_count - 1
WHERE title = 'War and Peace';

--- 28-06-2024 08:34:21
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "USER": syntax error
 ----- 
CREATE USER 'martin'@'localhost' IDENTIFIED BY 'password';
*****/

--- 28-06-2024 08:34:38
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "FLUSH": syntax error
 ----- 
FLUSH PRIVILEGES;
*****/

--- 28-06-2024 08:34:47
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "GRANT": syntax error
 ----- 
GRANT SELECT, UPDATE ON bookstore.Books TO 'martin'@'localhost';
*****/

--- 28-06-2024 08:35:05
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near "USER": syntax error
 ----- 
CREATE USER 'martin'@'localhost' IDENTIFIED BY 'password';
*****/

--- 28-06-2024 08:40:02
--- SQLite
DELETE FROM Books
WHERE book_id = 101;

--- 28-06-2024 08:40:15
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: cannot commit - no transaction is active
 ----- 
DELETE FROM Books
WHERE book_id = 101;
COMMIT;
*****/

--- 28-06-2024 08:40:24
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: cannot commit - no transaction is active
 ----- 
COMMIT;
*****/

--- 28-06-2024 08:43:23
--- SQLite
BEGIN TRANSACTION;

--- 28-06-2024 08:43:38
--- SQLite
DELETE FROM Books
WHERE book_id = 103;

--- 28-06-2024 08:43:51
--- SQLite
SELECT * FROM Books WHERE book_id = 103;

--- 28-06-2024 08:44:06
--- SQLite
ROLLBACK;

--- 28-06-2024 08:44:20
--- SQLite
SELECT * FROM Books WHERE book_id = 103;

