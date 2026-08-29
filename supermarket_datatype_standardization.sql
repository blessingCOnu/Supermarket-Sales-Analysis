#Standardizing the 'date' column
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE supermarket_sales 
ADD COLUMN new_date DATE;

UPDATE supermarket_sales 
SET new_date = str_to_date(date, '%m/%d/%y');

SELECT new_date FROM supermarket_sales; 

ALTER TABLE supermarket_sales DROP COLUMN date;

ALTER TABLE supermarket_sales
CHANGE `new_date` `time` time;

SET SQL_SAFE_UPDATES = 1;
