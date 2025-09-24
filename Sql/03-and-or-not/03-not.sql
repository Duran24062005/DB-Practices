-- Logic operators
    -- And: Search for a record that strictly meets those conditions.
    -- Or: Searches for a record that meets one of the two conditions.
    -- Not: Search for a record that does no meet the condition.

SELECT * FROM sakila.category WHERE NOT name = 'Action';

SELECT * FROM sakila.film WHERE NOT rating = 'PG';

SELECT DISTINCT(rating) FROM sakila.film WHERE NOT rating = 'PG';

SELECT DISTINCT(rating) FROM sakila.film WHERE NOT rating = 'R';

SELECT DISTINCT(rating) FROM sakila.film WHERE NOT rating = 'G';