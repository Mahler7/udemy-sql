#Drop table
DROP TABLE test_two;

#Doesn't throw back error if table doesn't exist
DROP TABLE IF EXISTS test_two;

#Restrict will prevent table from being deleted if another table is dependent on it, appears by default.
DROP TABLE IF EXISTS test_two RESTRICT;

#Removes other dependencies associated with table when you drop
DROP TABLE IF EXISTS test_two CASCADE;


