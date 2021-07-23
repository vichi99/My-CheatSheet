# source: 
# https://blog.timescale.com/tutorials/how-to-install-psql-on-mac-ubuntu-debian-windows/

# install psql...
sudo apt-get install postgresql-client

# login
psql -h [HOSTNAME] -p [PORT] -U [USERNAME] -W -d [DATABASENAME]

