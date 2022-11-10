sshpass -p  '***' ssh -o StrictHostKeyChecking=no clint@172.16.238.16
sudo su -

ls -l /etc/sysconfig/iptables
cat /etc/sysconfig/iptables

sudo iptables -A INPUT -p tcp --dport 8096  -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8086 -m conntrack --ctstate NEW -j REJECT

yum install iptables-services -y
service iptables save 						# save the current iptables rules in /etc/sysconfig/iptables
service iptables restart

# Verify iptables
iptables -L
iptables -nvL


curl -I 172.16.238.16:8096
# output
# HTTP/1.1 403 Forbidden
# Server: nginx/1.16.1
# Date: Thu, 10 Nov 2022 11:02:35 GMT
# Content-Type: text/html
# Content-Length: 153
# Connection: keep-alive

curl -I 172.16.238.16:8086
# output
# curl: (7) Failed connect to 172.16.238.16:8086; Connection refused
