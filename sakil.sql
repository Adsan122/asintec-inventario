use sakila;

select *from actor;
select * from address; -- id de city
select * from city; -- country
select * from category;
select * from customer; -- id de store, address
#1. Mostrar todos los campos de 5 tablas de la base de datos sakila.
 SELECT * from customer inner join store
on customer.store_id= store.store_id
inner join address
on customer.address_id=address.address_id
inner join rental
on customer.customer_id=rental.customer_id;
#2. Ahora los quiero mostrar algunos campos en específico como actor_id; first_name, last_name, last_update
select actor_id, first_name, last_name, last_update from actor;
#3. Realizar una consulta de la misma tabla actor con los primeros tres campos de la consulta anterior 
select actor_id, first_name Nombre, last_name Apellido, last_update from actor;	-- y renombrar dos columnas, para darle presentación al resultado
#4. Consulte los datos de la tabla customer
select * from customer;
#5. Después de la consulta anterior encontramos valores repetidos en el campo store_id,
select * from customer order by store_id;
#realice una consulta donde muestre valores únicos.
	select * from customer group by store_id;
	select distinct * from customer;
#6. Consultemos la tabla payment con los valores distintos del campo customer_id
select distinct* from payment group by customer_id;
#7. Realice una consulta de la tabla country y ordene el resultado de forma descendente con el campo del mismo nombre de la tabla.
select * from country order by country desc;
#8. De la tabla customer muestre resultados de forma ascendente el nombre
select * from customer order by first_name;
#9. Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
select store_id, first_name, last_name, last_update from sakila.customer;
#10. Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
select store_id id_tienda, first_name Nombre, last_name Apellido, last_update ultima_modificacion from customer;
#11. Ordena de manera descendente la columna Apellido.
select store_id, first_name, last_name, last_update from customer order by last_name;
#12. Realice una consulta de la tabla actor donde el nombre es DAN
select * from actor where first_name like 'DAN';
#13. Realice una consulta de la tabla city donde el nombre es London
select *  from city where city like 'London';
#14. Realice una consulta de la tabla country donde el id es 102
select *  from country where country_id=102;
#15. Consultamos la tabla customer, luego solo los que se hallan registrado en la tienda 1
select * from customer where store_id=1;
#16. Consultamos la tabla inventory y queremos los film_id mayores a 50
select * from inventory where film_id > 50;
#17. Consultamos la tabla de payment y queremos que el campo amount muestre resultados menores a 3
select * from payment where amount <3;
#18. Vamos a comprobar si el resultado anterior es cierto con sentencia
select * from payment;
#19. Consultamos la tabla language y queremos los registros diferentes German
select * from language where name <> 'German';
#20. Consulta description, release_year de la tabla film de la base de datos sakila.
describe sakila.film; 
#21. Filtra la información donde title sea IMPACT ALADDIN
select * from film where title= 'IMPACT ALADDIN';
#22. Consulta la tabla payment de la base de datos sakila.
select * from sakila.payment;
#23. Filtra la información donde amount sea mayor a 0.99.
select * from payment where amount >0.99;
#24. Realice una consulta de la tabla country donde los registros sean Algeria y id = 2
select * from country where country like 'Algeria' and country_id=2;
#25. Realice una consulta de la tabla country donde los registros sean Algeria o id =12
select * from country where country like 'Algeria' or country_id=12;
#26. Realice una consulta de la tabla language donde los registros sean id =1 o German
select * from language where name like 'German' or language_id=1;
#27. Muestre todos los registros de la tabla category donde el nombre es action y luego no action
select * from category where name='Action';
select * from category where name!='Action';
#28. Muestre todos los registros de la tabla film donde rating es PG y luego los que no son PG
select * from film where rating ='PG';
select * from film where rating !='PG';
#29. Compruben la consulta anterior con la instrucción distinct
select distinct rating from film;
#30. Consulta la tabla payment de la base de datos sakila.
select * from sakila.payment;
#31. Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
select * from payment where customer_id=36 and amount >0.99 and staff_id=1;
#32. Consulta la tabla rental de la base de datos sakila. 
select * from sakila.rental;
		##Actividad 9
	#2
#33. Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.
select* from rental where customer_id> 250 and staff_id<>1 and inventory_id <100;
#34. Muestre de la tabla customer el nombre de Mary y Patricia con el operador IN
select * from customer where first_name in('Mary','Patricia');
#35. Arrójame todas las películas donde las características especiales sea trailers y trailers, deleted scenes.
select * from film where special_features in('Trailers','Deleted Scenes');
#36. A la consulta anterior le agregamos el rating de G, NC-17. Con esta consulta vamos segmentando cada vez más la información.
select title,description,rating,special_features from film where special_features
	in('Trailers','Deleted Scenes') and rating in('G','NC-17');
#37. Seguimos segmentando más la información con la duración de la película mayor a 50
select title,description,rating,length,special_features from film where special_features
	in('Trailers','Deleted Scenes') and rating in('G','NC-17')and length>50;
#38. Consulta la tabla film_text de la base de datos sakila.
select * from film_text;
#39. Filtra la información donde title sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT
select * from film_text where title in('ZORRO ARK', 'VIRGIN DAISY', 'UNITED PILOT');
#40. Consulta la tabla city de la base de datos sakila.
select * from sakila.city;
#41. Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.
select * from sakila.city where city in('Chiayi','Dongying','Fukuyama','Kilis');
#42. Consulta la tabla rental
select * from rental;
#43. Consultemos si tenemos registros en el campo customer_id esta entre 300 y 350
select * from rental where customer_id between 300 and 350;
#44. Ahora podemos juntarlos con otros operadores: y staff_id = 1
select * from rental where customer_id between 300 and 350 and staff_id=1;
#45. Consultamos la tabla payment y muestre toda la información del amount entre 3 a 5
select * from payment where amount between 3 and 5;
#46. La misma consulta con el operador not,
select * from payment where not amount between 3 and 5;
#47. Consulta la tabla payment de la base de datos sakila.
select * from sakila.payment;
#48. Filtra la información donde amount esté entre 2.99 y 4.99, staff_id sea igual a 2 y customer_id sea 1 y 2.
select * from payment where  customer_id in(1,2) and amount between 2.99 and 4.99;
#49. Consulta la tabla address de la base de datos sakila.
select * from sakila.address;
#50. Filtra la información donde city_id esté entre 300 y 350.
select * from address where city_id between 300 and 350;
