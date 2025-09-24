-- Sirve para organizar los datos desordenados
use sakila;

-- Seleccionar todos los elementos de las columnas de la tabla country de la base de datos Sakila
SELECT * FROM sakila.country;

-- Ordenar datos de la columna country de la misma tabla de manera descendente
SELECT * FROM sakila.country ORDER BY country DESC;

-- Ordenar datos de la columna country de la misma tabla de manera ascendente
SELECT * FROM sakila.country ORDER BY country ASC;


-- Seleccionar todos los elementos de las columnas de la tabla actor de la base de datos Sakila
SELECT * FROM sakila.actor;

-- Ordenar datos de la columna first_name de la tabla actor de manera descendente
SELECT * FROM sakila.actor ORDER BY first_name DESC;

-- Ordenar datos de la columna first_name de la tabla actor de manera ascendente
SELECT * FROM sakila.actor ORDER BY first_name ASC;