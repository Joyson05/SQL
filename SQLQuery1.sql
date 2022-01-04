CREATE DATABASE PRACTISE;
CREATE TABLE Authors(
Id INT NOT NULL IDENTITY(1,1), Name VARCHAR(70) NOT NULL,
Country VARCHAR(100) NOT NULL,
PRIMARY KEY (Id));
DROP TABLE Authors;
INSERT INTO Authors
( Name, Country)
VALUES

('J.D. Salinger', 'US'),

('F. Scott. Fitzgerald', 'USA'),

('Jane Austen', 'UK'),

('Scott Hanselman', 'USA'),

('Jason N. Gaylord', 'USA'),

('Pranav Rastogi', 'India'),

('Todd Miranda', 'USA'),

('Christian Wenz', 'USA');
SELECT * FROM AUTHORS;



CREATE TABLE Books (

Id INT NOT NULL,

Title VARCHAR (50) NOT NULL, PRIMARY KEY (Id) 

);
SELECT * FROM Books;
INSERT INTO Books

(Id, Title)

VALUES

(1, 'The Catcher in the Rye'),

(2, 'Nine Stories'),

(3, 'Franny and Zooey'),

(4, 'The Great Gatsby'),

(5, 'Tender id the Night'),

(6, 'Pride and Prejudice'),

(7, 'Professional ASP.NET 4.5 in C# and VB');


CREATE TABLE BooksAuthors (

AuthorId INT NOT NULL,

BookId INT NOT NULL,

FOREIGN KEY (AuthorId) REFERENCES Authors(Id), FOREIGN KEY (BookId) REFERENCES Books (Id)

);
SELECT * FROM BooksAuthors;

INSERT INTO BooksAuthors

(BookId,AuthorId)

VALUES

(1, 1),

(2, 1),

(3, 1),

(4, 2),

(5, 2),

(6, 3),

(7, 4),

(7, 5),

(7, 6),

(7, 7),

(7, 8);

select all authors who wrote more than one book...................
SELECT
a. Id,
a. Name,COUNT(*) BooksAuthors
FROM Authors a
INNER JOIN BooksAuthors ba ON a.id = ba.authorid
GROUP BY a. Id,a. Name
HAVING COUNT(*) > 1;

SELECT * FROM Books;select * from BooksAuthors;SELECT* FROM AUTHORS
select COUNT(*) from BooksAuthors;

,COUNT(*) BooksAuthors
INNER JOIN BooksAuthors ba ON a.id = ba.authorid WITH CUBE