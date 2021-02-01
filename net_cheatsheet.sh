# show devices in local site
arp -a

# status
netstat -av ; ip addr

# port find available
sudo lsof -i :8000 

# ssh conection
sudo lsof -i -n | egrep '\<ssh\>'