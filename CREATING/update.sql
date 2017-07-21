#update every value in description column
UPDATE link
SET description = 'Empty Description';

#conditional statement to update specific rows in table
UPDATE link
SET description = 'Name Starts with an A'
WHERE name LIKE 'A%';

#copy one columns values into another, work only with same datatypes
UPDATE link
SET description = name;

#Use keyword RETURNING to see updated results
UPDATE link
SET description = 'New Description'
WHERE id = 1
RETURNING id, url, name, description;