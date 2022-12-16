# Code Review: SQL

#### By Drew White

#### Code Review - Demonstrating use of SQL to perform various queries that include: Selecting values, Sub-queries, Manipulating values, Aggregation functions, and Joins. 

<br>

## Technologies Used

* SQL
* MySQL
* MariaDB
* Beekeeper
* Docker

</br>

## Description

Selecting Values
- Select the name and `part_num` columns from the `parts` table. Show only names that include the substring 'Hair', and order them with the `part_num` in descending order

- From the `sets` table, select all the sets that included the word 'Showdown' in the name between 1990 and 2015

- Aliasing the `part_categories` table as `p`, show the id and name of the values in that table where the name includes the word 'Bricks'

Sub-queries
- Select all the ids from the `themes` table with 'Pirates' or 'Star Wars' in the name. This is your sub-query. Then show the names of all the `sets` where the `theme_id` matches an id in that sub-query.

- Select the ids of the values in the `inventories` table that have more than one version (i.e. `version > 1`). This is your sub-query. Then select everything from the `inventory_parts` table where the `inventory_id` matches an id in that sub-query. Limit the output to 10 rows.

Manipulate Values in Select
- Aliasing the `sets` table as `s`, select the year and name of the values in that table that include the substring 'Batman'. Concatenate three exclamation marks to the end of each name, and make all the names upper case.

- For every quantity value greater than 1 in the `inventory_parts` table, double the value of the quantity. Limit your output to 20 rows, and order it by quantity.

Aggregation Functions
- Count the total number of transparent colors in the `colors` table (Note: `is_trans` is a binary value, and you want to show how many rows there are where it equals 1).

- Show the sum of all the parts for all the `sets` that came out since the year 2000.

- Show the average number of parts for `sets` that came out since the year 2000.

- Using `GROUP BY`, show the average number of parts for each `theme_id` in sets.

Joins
- Using a free-form join (where the JOIN type isn't specified, equivalent to an inner join), join the`parts` and `part_categories` tables. Filter for values where the `part_categories` id matches the `parts` `part_cat_id`, and where the name of the part contains the word 'Werewolf'.

## Setup/Installation Requirements

* Clone by inputting following into terminal: 
  ```bash
  git clone https://github.com/Drewrwhite/data_week_6.git
  ```
* Navigate to directory:
  ```bash
  cd <directory>
  ```
* Open directory in VSCode:
  ```bash
  code .
  ```
  * Initiate connection to MariaDB:
  ```bash
  ./start_db.sh
  ```
  * Connect to MariaDB:
  ```bash
  ./connect_db.sh
  ```
  * Verify connection with:
  ```bash
  docker ps
  ```
  * When done:
  ```bash
  ./stop_db.sh
  ```
</br>

## Known Bugs

* No known bugs

<br>

## License

MIT License

Copyright (c) 2022 Drew White

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

</br>
