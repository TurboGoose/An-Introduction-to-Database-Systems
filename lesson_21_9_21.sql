-- select city.last_update as city_last_update, country.last_update as country_last_update from city join country on city.country_id = country.country_id;

-- select count (*) from ( -- have to be 600
-- 	select * from city, country where city.country_id = country.country_id
-- 	intersect
-- 	select * from city join country on city.country_id = country.country_id
-- ) as t1;

-- select customer.first_name, customer.last_name, country.country from 
-- customer join address on customer.address_id = address.address_id
-- join city on address.city_id = city.city_id
-- join country on city.country_id = country.country_id;

select first_name, last_name, country from customer, address, city, country
where customer.address_id = address.address_id 
and address.city_id = city.city_id 
and city.country_id = country.country_id;





