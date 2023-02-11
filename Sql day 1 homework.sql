--Question 1 How many actors are there with the last name 'Wahlberg'?
select count(last_name)
from actor 
where last_name like 'Wahlberg';
--Answer 2

--Question 2 How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount > 3.99 and amount < 5.99;
-- Answer 3,2303

-- Question 3 What film does the store have the most of? (search in inventory)
select count(film_id), film_id 
from inventory 
group by film_id 
order by count desc 
-- Answer There are around 40 films with the count of 8

-- Question 4 How many customers have the last name 'William'
select count(last_name)
from customer 
where last_name like 'William'
--Answer 0

-- Question 5 What store employee (get the id) sold the most rentals?
select count(payment_id), staff_id
from payment 
group by staff_id order by count desc;
--Answer Jon has 7304

--Question 6 How many different district names are there?
select count(district), district
from address 
group by district order by count desc;
--Answer there are 378 districts

--Question 7 What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id), film_id
from film_actor 
group by film_id order by count desc;
-- Answer film_id 508, Lambs Cincinatti

--Question 8 from store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select last_name
from customer 
where last_name like '%es'
-- Answer is 21

--Question 9 How many payment amounts (4.99, 5.99 etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select count(amount), amount
from payment 
where customer_id > 380 and customer_id < 430 group by amount; 
--Answer 3 2.99, 4.99, 6.99

--Question 10 Within the film table, how many rating catagories are there? and what rating has the most movies total?
select count(rating), rating 
from film 
group by rating 
order by rating desc;
-- Answer there are 5 catagories, PG-13 has 223 counts



