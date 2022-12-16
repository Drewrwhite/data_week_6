-- Selecting values
-- Select the name and num_parts columns from the parts table. 
-- Show only names that include the substring 'Hair', and order them with the part_num in descending order
SELECT name, num_parts FROM sets WHERE name LIKE '%Hair%' ORDER BY num_parts DESC;

-- From the sets table, select all the sets that included the word 'Showdown' in the name between 1990 and 2015
SELECT * FROM sets WHERE name LIKE '%Showdown%' AND year BETWEEN 1990 AND 2015;

