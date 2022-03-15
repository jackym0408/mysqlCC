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

