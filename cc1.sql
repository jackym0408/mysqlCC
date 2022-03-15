-- CREATE DATABASE sqlchallenge

USE sqlchallenge;

-- very easy 
-- make, model and year 

-- CREATE TABLE top_cars(
-- make VARCHAR(20),
-- model VARCHAR(20),
-- car_year YEAR(4)
-- );

-- Create a query to add in two more cars
INSERT INTO top_cars (make, model, car_year)
VALUES ('Ford', 'explorer', '2007');

INSERT INTO top_cars (make, model, car_year)
VALUES ('Ford', 'edge', '2014');

-- Create a table with your top five favorite books with Title, Publish Date, and Author First/Last Name 
-- Create a query to add in two new books 
-- Remove the oldest book 
-- Provide an additional query giving the sum of all books

CREATE TABLE fav_books(
book_id INT auto_increment,
PRIMARY KEY(book_id),
title VARCHAR(30),
publish_date YEAR(4), -- changed? 
author_fname VARCHAR(30), 
author_lname VARCHAR(30)
);

INSERT INTO fav_books (title, publish_date, author_fname,author_lname) VALUES 
('thonking','2020','Jacky','mendoza'),
('procrastination','2003', 'Jacky','mendoza');

INSERT INTO fav_books (title, publish_date, author_fname,author_lname) VALUES 
('how to be less stinky', '2019', 'coffee', 'the cat'),
('Percy jackson','2005', 'Rick', 'Riordan'),
('green eggs and ham','1960', 'Dr.','Seuss'),
('harry potter', '1997','JK', 'Rowling'),
('divergent', '2011', 'Veronica', 'Roth');

DELETE FROM fav_books ORDER BY publish_date DESC LIMIT 1;
-- i did this wrong

-- Create a table with your top 10 movies. Include title, release date, and rating 

CREATE TABLE movies (
movie_id INT auto_increment,
PRIMARY KEY(movie_id),
title VARCHAR(60),
release_date YEAR,
rating ENUM('G', 'PG', 'PG-13', 'R')
);

INSERT INTO movies(title, release_date, rating) VALUES
('howls moving castle', '2004', 'PG'),
('encanto','2021', 'PG'),
('megamind','2010', 'PG'),
('lego batman','2017', 'PG'),
('ice age','2002','PG'),
('shrek 2','2004', 'PG'),
('turning red', '2022', 'PG'),
('space jam', '1996', 'PG'),
('ride your wave', '2019', 'PG'),
('coco','2017', 'PG' );

-- Create a query that pulls all movies, in order of release date, 
-- where the title includes the letter “s”
SELECT * FROM movies WHERE title LIKE '%s' ORDER BY release_date DESC;

-- hard 

-- Make a copy of your Medium Challenge 
-- Write out the queries that would add the director’s First Name and Last Name into two separate columns.
ALTER TABLE movies
ADD director_fname VARCHAR(30);

ALTER TABLE movies
ADD director_lname VARCHAR(30);

-- Create a query that puts the names together. 
SELECT  *, CONCAT(director_fname,' ', director_lname) as fullname
FROM movies;

UPDATE movies SET director_fname = 'jacky', 
director_lname = 'mendoza' WHERE title = 'howls moving castle';

UPDATE movies SET director_fname = 'reggie', 
director_lname = 'johnson ' WHERE title = 'shrek 2';

UPDATE movies SET director_fname = 'coffee', 
director_lname = 'the cat' WHERE title = 'coco';

-- Create a query to put the list in alphabetical order by the last name from A-Z 
-- After you order the list, remove the Movies where the Last Name ends with ”R-Z” 
-- Write a query where the first three appear

SELECT * FROM movies ORDER BY director_lname ASC;

DELETE FROM movies WHERE director_lname BETWEEN 'r%' AND 'z%';

SELECT * FROM movies LIMIT 3;

-- hard 

-- Make a copy of your Medium Challenge 
-- Write out the queries that would add the director’s First Name and Last Name into two separate columns.
ALTER TABLE movies
ADD director_fname VARCHAR(30);

ALTER TABLE movies
ADD director_lname VARCHAR(30);

-- Create a query that puts the names together. 
SELECT  *, CONCAT(director_fname,' ', director_lname) as fullname
FROM movies;

UPDATE movies SET director_fname = 'jacky', 
director_lname = 'mendoza' WHERE title = 'howls moving castle';

UPDATE movies SET director_fname = 'reggie', 
director_lname = 'johnson ' WHERE title = 'shrek 2';

UPDATE movies SET director_fname = 'coffee', 
director_lname = 'the cat' WHERE title = 'coco';

-- Create a query to put the list in alphabetical order by the last name from A-Z 
-- After you order the list, remove the Movies where the Last Name ends with ”R-Z” 
-- Write a query where the first three appear

SELECT * FROM movies ORDER BY director_lname ASC;

DELETE FROM movies WHERE director_lname BETWEEN 'r%' AND 'z%';

SELECT * FROM movies LIMIT 3;

-- very hard 

-- Copy the table from your Very Easy Challenge 
-- Write a query to add in three cars at once 

INSERT INTO top_cars (make, model, car_year) VALUES 
('honda', 'civic', '1972'),
('honda', 'jazz', '2001'),
('jeep', 'wrangler', '1987');

-- Write a query to add in prices and colors for each of these cars

ALTER TABLE top_cars ADD price INT;
ALTER TABLE top_cars ADD color VARCHAR(20);

-- Write a query to put the Make and Model together in one column

SELECT  *, CONCAT(make,' ', model) as make_model
FROM top_cars;

-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
SELECT make, COUNT(*) FROM top_cars GROUP BY make;
