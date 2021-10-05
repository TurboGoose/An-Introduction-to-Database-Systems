/* актеры, которые снимались больше, чем в трех фильмах */
-- select first_name, last_name, count(fa.film) 
-- from film_actor fa join film f on fa.film_id = f.film_id join actor a on fa.actor_id = a.actor_id
-- group by fa.actor_id, a.first_name, a.last_name having count(fa.film_id) > 3;

/* клиенты, которые расплачивались за один прокат несколькими платежами */
-- select r.customer_id, count(payment_id) p_count
-- from payment p join rental r on (p.rental_id = r.rental_id and p.customer_id = r.customer_id)
-- group by r.rental_id, r.customer_id
-- having count(p.payment_id) > 1;

/* клиенты, которые брали одни и те же фильмы в прокат повторно */
-- select distinct(customer_id), count(*)
-- from rental r join inventory i on r.inventory_id = i.inventory_id
-- group by customer_id, film_id
-- having count(*) > 1
-- order by customer_id;

/* клиенты, которые не менее двух раз брали фильмы в прокат и не возвращали (2 похода) */
-- select distinct(customer_id)
-- from rental r join inventory i on r.inventory_id = i.inventory_id
-- where return_date is null
-- group by customer_id, film_id
-- having count(*) > 1;

/* клиенты, которые повторно взяли тот же фильм, но еще не вернули */
-- select distinct(customer_id)
-- from rental r join inventory i on r.inventory_id = i.inventory_id
-- group by customer_id, film_id
-- having count(*) > 1 and bool_or(return_date is null);              -- попробовать без bool_or
