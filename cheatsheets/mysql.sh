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