CREATE TABLE clean_customers AS 
SELECT DISTINCT
       id,
       TRIM(upper(name)) AS clean_name,
       TRIM(lower(email))AS clean_email,
       age,
       Trim(city) AS clean_city
FROM messy_customers
WHERE name IS NOT NULL
 AND email IS NOT NULL
 AND age IS NOT NULL;

