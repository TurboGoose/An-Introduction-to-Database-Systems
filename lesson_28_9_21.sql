-- select * from address where address2 is null;
-- select * from address where phone is null;

-- select * from actor_info;

-- select country, count(*) rentals from rental r join customer_list cl on r.customer_id = cl.id group by country order by rentals desc;

-- select first_name, last_name, sum(amount)
-- from payment p join customer c on p.customer_id = c.customer_id
-- group by c.customer_id order by sum desc;

-- select country, count(*) customers from customer_list group by country order by customers desc;

-- select first_name, last_name, count(*) not_returned from rental r join customer c on r.customer_id = c.customer_id 
-- where return_date is null group by r.customer_id;

-- select title, count(*) rentals from rental r join inventory i on r.inventory_id = i.inventory_id right join film f on i.film_id = f.film_id
-- group by f.film_id order by rentals desc;

-- select count(distinct f.film_id) from rental r join inventory i on r.inventory_id = i.inventory_id right join film f on i.film_id = f.film_id;

-- select count(distinct film_id) from film;

-- select count(distinct film_id) from inventory;