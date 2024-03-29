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

# sockets all
ss -a

# sockets udp
ss -u -a
cat /proc/net/udp

# sockets tcp
ss -t -a
cat /proc/net/tcp

# sockets raw
cat /proc/net/raw

# sockets summary
ss -s

# show my ip
curl ipecho.net/plain ; echo
