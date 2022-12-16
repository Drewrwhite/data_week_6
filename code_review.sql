-- Selecting values
-- Select the name and num_parts columns from the parts table. 
-- Show only names that include the substring 'Hair', and order them with the part_num in descending order
SELECT name, num_parts FROM sets WHERE name LIKE '%Hair%' ORDER BY num_parts DESC;

-- From the sets table, select all the sets that included the word 'Showdown' in the name between 1990 and 2015
SELECT * FROM sets WHERE name LIKE '%Showdown%' AND year BETWEEN 1990 AND 2015;

-- Aliasing the part_categories table as p, show the id and name of the values in that table where the name includes the word 'Bricks'
SELECT id, name FROM part_categories AS p WHERE name LIKE '%Bricks%';

-- Subqueries
-- Select all the ids from the themes table with 'Pirates' or 'Star Wars' in the name. This is your subquery. 
-- Then show the names of all the sets where the theme_id matches an id in that subquery.
SELECT name FROM sets WHERE theme_id IN (SELECT id FROM themes WHERE name LIKE '%Pirates%' OR name LIKE '%Star Wars%');

-- select the ids of the values in the inventories table that have more than one version (i.e. version > 1). This is your subquery.
-- Then select everything from the inventory_parts table where the inventory_id matches an id in that subquery. Limit the output to 10 rows.
SELECT * FROM inventory_parts WHERE inventory_id IN (SELECT id FROM inventories WHERE version > 1);

-- Manipulate values in SELECT
-- Aliasing the sets table as 's', select the year and name of the values in that table that include the substring 'Batman'. 
-- Concatenate three exclamation marks to the end of each name, and make all the names upper case.
SELECT CONCAT(UPPER(name), '!!!'), year FROM sets AS s WHERE name LIKE '%Batman%';
