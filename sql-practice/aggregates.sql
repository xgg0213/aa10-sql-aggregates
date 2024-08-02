-- Step 1: COUNT determine the number of cats stored in the database
-- SELECT COUNT(*) FROM cats;

SELECT name, birth_year FROM cats
WHERE birth_year = (SELECT MAX(birth_year) FROM cats) 
OR birth_year = (SELECT MIN(birth_year) FROM cats) 