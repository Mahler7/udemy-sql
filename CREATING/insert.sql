#Insert a single row into a table
INSERT INTO link(url, name)
VALUES
('www.google.com','Google');

INSERT INTO link(url,name)
VALUES
('www.yahoo.com', 'Yahoo');

#Insert multiple rows into a table
INSERT INTO link(url,name)
VALUES
('www.bing.com', 'Bing'),
('www.amazon.com', 'Amazon');

#Copy row from one table into another
INSERT INTO link_copy
SELECT * FROM link
WHERE name = 'Bing';

