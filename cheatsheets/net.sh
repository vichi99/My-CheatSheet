# show devices in local site
arp -a

# status
netstat -av ; ip addr

# port find available
sudo lsof -i :8000 

# port kill by pid
kill -9 port

# ssh conection
sudo lsof -i -n | egrep '\<ssh\>'

# ssh tunnel check if connected
nc -z localhost 6000 || echo "no tunnel open"
