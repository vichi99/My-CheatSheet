# source: 
# https://www.inmotionhosting.com/support/website/mariadb-view-databases/

# login
mysql -u username -p

# this will show list of databases
show databases;

# select your database
use databasename;

# this will show a list of the tables from the database
show tables;

# ahow all the records in a specific table
select * from databasetablename;

# show all of the database table field names, type, and configuration of a certain table.
describe databasetablename;

# replace table value
UPDATE table_name SET col_name = REPLACE(col_name, 'target', 'result');

# example join
select spl.date, spectrum.* from spl join spectrum on spectrum.id = spl.id where spl.record_id = 11 order by spl.date desc;