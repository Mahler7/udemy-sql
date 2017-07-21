#Add boolean column to table
ALTER TABLE link_copy ADD COLUMN active boolean;

#Drop column from table
ALTER TABLE link_copy DROP COLUMN active;

#Rename column from table
ALTER TABLE link_copy RENAME COLUMN title TO new_title_name;

#Rename entire table
ALTER TABLE link RENAME TO url_copy;    