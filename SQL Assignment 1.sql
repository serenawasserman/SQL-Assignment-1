--Question #1: How many actors are there with the last name ‘Wahlberg’?
--Answer: 2
select first_name, last_name
from actor
where last_name = 'Wahlberg';

--Question #2: How many payments were made between $3.99 and $5.99?
--Answer: 3,273
select count(amount)
from payment
where amount between 3.99 and 5.99;

--Question #3: What film does the store have the most of? (search in inventory)
--Answer: Curtain Videotape
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

--Question #4: How many customers have the last name ‘William’?
--Answer: 0
select last_name
from customer
where last_name like 'William';

--Question #5: What store employee (get the id) sold the most rentals?
--Answer: Mike (ID #1)
select count(staff_id), staff_id  
from rental
group by staff_id 

--Question #6: How many different district names are there?
--Answer: 378
select COUNT(distinct district)
from address

--Question #7: What film has the most actors in it? (use film_actor table and get film_id)
--Answer: Lambs Cincinatti (Film ID 508)
select count(distinct actor_id), film_id
from film_actor
group by film_id
order by count(distinct actor_id) desc;

--Question #8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--Answer: 13
select count(last_name), last_name, store_id
from customer
where last_name like '%es'
group by last_name, store_id
order by store_id

--Question #9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--Answer: 382
select amount, customer_id 
from payment
where amount > 2.50 and customer_id between 380 and 430
group by amount, customer_id 

--Question #10: Within the film table, how many rating categories are there? And what rating has the most
--movies total?
--Answer: 5 rating categories. PG-13 has the most movies total.
select count(distinct rating) 
from film

select rating, count(rating) 
from film
group by rating 

