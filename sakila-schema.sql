use sakila;
show tables from sakila

-- Retrieve all the data from the table
select * from actor ;
select	* from film ;
select	* from customer;
select * from actor ;

-- Titles of all films from the film table
select all titles films from film ;
-- List of languages used in films, with the column aliased as language from the language table
Select name as language from language_id ;
select languages from title ;
-- List of first names of all employees from the staff table
select firt_names from staff;

-- Retrieve unique release years.
select distinct release_years from film ;

-- Determine the number of stores that the company has
select count(*) as number_of_stores from store ;
-- Determine the number of employees that the company has
select count(distinct staff_id) as number_of_staff from staff ;
-- Determine how many films are available for rent and how many have been rented
select count(*) as number_of_films_are_available from film ;
select count(*) as number_of_rent_film from rental ;

-- Determine the number of distinct last names of the actors in the database
select count(distinct last_name) as distinct_number_last_names_count from actor ;
-- Retrieve the 10 longest films
select title longest from film limit 10 ;

-- Retrieve all actors with the first name "SCARLETT"

select actor_id, first_name, last_name
from actor
where first_name = 'SCARLETT';

-- Determine the number of films that include Behind the Scenes content
select count(*) AS num_behind_the_scenes_films
from film
where special_features like '%Behind the Scenes%';

--  Data Aggregation and Transformation Challenge1
-- Determine the shortest and longest movie durations and name the values as max_duration and min_duration

select MIN(length) as min_duration, MAX(length) as max_duration
from film;

-- Express the average movie duration in hours and minutes. Don't use decimals
select FLOOR(AVG(length / 60)) as avg_hours,
       mod(AVG(length), 60) as avg_minutes from film;

-- Calculate the number of days that the company has been operating
select datediff(MAX(rental_date), MIN(rental_date)) as num_days_operating from rental;
