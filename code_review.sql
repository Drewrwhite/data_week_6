-- Selecting values
-- Select the name and part_num columns from the parts table. 
-- Show only names that include the substring 'Hair', and order them with the part_num in descending order
SELECT name, part_num FROM parts WHERE name LIKE '%Hair%' ORDER BY part_num DESC;

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
SELECT * FROM inventory_parts WHERE inventory_id IN (SELECT id FROM inventories WHERE version > 1) LIMIT 10;

-- Manipulate values in SELECT
-- Aliasing the sets table as 's', select the year and name of the values in that table that include the substring 'Batman'. 
-- Concatenate three exclamation marks to the end of each name, and make all the names upper case.
SELECT CONCAT(UPPER(name), '!!!'), year FROM sets AS s WHERE name LIKE '%Batman%';

-- For every quantity value greater than 1 in the inventory_parts table, double the value of the quantity. Limit your output to 20 rows, and order it by quantity.
SELECT quantity * 2 FROM inventory_parts WHERE quantity > 1 ORDER BY quantity DESC LIMIT 20;

-- Aggregation functions
-- Count the total number of transparent colors in the colors table (Note: is_trans is a binary value, and you want to show how many rows there are where it equals 1).
SELECT COUNT(is_trans) FROM colors WHERE is_trans = 1;

-- Show the sum of all the parts for all the sets that came out since the year 2000.
SELECT SUM(num_parts) FROM sets WHERE year >= 2000;

-- Show the average number of parts for sets that came out since the year 2000.
SELECT AVG(num_parts) FROM sets WHERE year >= 2000;

-- Using GROUP BY, show the average number of parts for each theme_id in sets.
SELECT AVG(num_parts), theme_id FROM sets GROUP BY theme_id;

-- Joins
-- Using a free-form join (where the JOIN type isn't specified, equivalent to an inner join), join the parts and part_categories tables. 
-- Filter for values where the part_categories id matches the parts part_cat_id, and where the name of the part contains the word 'Werewolf'.
SELECT * FROM parts
JOIN part_categories
ON part_cat_id = id
WHERE parts.name LIKE '%Werewolf%';
