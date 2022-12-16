-- Selecting values
-- Select the name and num_parts columns from the parts table. 
-- Show only names that include the substring 'Hair', and order them with the part_num in descending order
SELECT name, num_parts FROM sets WHERE name LIKE '%Hair%' ORDER BY num_parts DESC;

