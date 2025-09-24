SELECT * FROM sakila.actor;

-- Selecciona todos los registros que cumplan la condición de llamarse 'PENELOPE'
SELECT * FROM sakila.actor WHERE first_name = 'PENELOPE';

-- Selecciona todos los registros que cumplan la condición de llamarse 'DAN'
SELECT * FROM sakila.actor WHERE first_name = 'DAN';



SELECT * FROM sakila.city;

-- Selecciona todos los registros que cumplan la condición de llamarse 'Brockton'
SELECT * FROM sakila.city WHERE city = 'Brockton';

-- Selecciona todos los registros que cumplan la condición de llamarse 'Abu Dhabi'
SELECT * FROM sakila.city WHERE city = 'Abu Dhabi';

-- Selecciona todos los registros que cumplan la condición de llamarse 'London'
SELECT * FROM sakila.city WHERE city = 'London';


-- Selecciona todos los registros que cumplan la condición de tener el id 18
SELECT * FROM sakila.city WHERE city_id = 18;



-- Selecionar todos los clientes
SELECT * FROM sakila.customer;