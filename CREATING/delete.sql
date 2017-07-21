#Delete specific row from table
DELETE FROM link_copy
WHERE name LIKE 'B%';

#Delete with RETURNING statement
DELETE FROM link
WHERE name = 'A'
RETURNING *;