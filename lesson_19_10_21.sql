/* Кто из сотрудников фирмы обслуживал клиентов с теми же именами, что и у самого сотрудника? */
-- select distinct s.staff_id
-- from rental r join customer c on r.customer_id = c.customer_id join staff s on r.staff_id = s.staff_id
-- where c.first_name = s.first_name;


/* Определить, кто из клиентов брал в прокат все фильмы с участием какого-либо актера */
-- with customer_actor_filmcount as (
-- 	select customer_id, actor_id, count(distinct i.film_id) as filmcount
-- 	from rental r
-- 		join inventory i on r.inventory_id = i.inventory_id
-- 		join film_actor fa on i.film_id = fa.film_id
-- 	group by customer_id, actor_id
-- ), 
-- actor_filmcount as (
-- 	select actor_id, count(*) as filmcount
-- 	from film_actor
-- 	where film_id in (
-- 		select film_id from inventory
-- 	)
-- 	group by actor_id
-- )
-- select customer_id, cafc.actor_id
-- from customer_actor_filmcount cafc join actor_filmcount afc 
-- on cafc.actor_id = afc.actor_id and cafc.filmcount = afc.filmcount;


/* Определить, кто из актеров снимался в фильмах, вышедших в одном и том же году? */
-- select actor_id
-- from film_actor fa join film f on fa.film_id = f.film_id
-- group by actor_id;
-- having count(distinct release_year) < count(release_year);
