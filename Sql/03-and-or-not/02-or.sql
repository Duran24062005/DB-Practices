-- Logic operators
    -- And: Search for a record that strictly meets those conditions.
    -- Or: Searches for a record that meets one of the two conditions.
    -- Not: Search for a record that does no meet the condition.

SELECT * FROM sakila.country;

SELECT * FROM sakila.country WHERE country = 'Algeria' OR country_id = 12;


SELECT * FROM sakila.language WHERE language_id = 1 OR name = 'German';