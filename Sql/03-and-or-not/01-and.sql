-- Logic operators
    -- And: Search for a record that strictly meets those conditions.
    -- Or: Searches for a record that meets one of the two conditions.
    -- Not: Search for a record that does no meet the condition.


-- Select all register in country table
SELECT * FROM sakila.country;  -- I use this sentence so i can see all register and can select my preferred column

-- Está consulta busca en country la inserción que sea igual a 'Algeria'
-- y que tenga un id igual a 2, como si existe esté registro lo devuelve
SELECT * FROM sakila.country WHERE country = 'Algeria' AND country_id = 2;

-- Está consulta busca en country la inserción que sea igual a 'Algeria'
-- y que tenga un id igual a 12, como no existe esté registro no devuelve nada
SELECT * FROM sakila.country WHERE country = 'Algeria' AND country_id = 12;