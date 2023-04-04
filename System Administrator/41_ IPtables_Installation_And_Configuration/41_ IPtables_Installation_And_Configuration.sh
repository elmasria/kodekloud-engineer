sshpass -p  '***' ssh -o StrictHostKeyChecking=no tony@172.16.238.10
sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11
sshpass -p  '***' ssh -o StrictHostKeyChecking=no banner@172.16.238.12


sudo su -

yum install -y iptables-services

systemctl start iptables && systemctl enable iptables

iptables -A INPUT -p tcp --destination-port 3002 -s 172.16.238.14 -j ACCEPT
iptables -A INPUT -p tcp --destination-port 3002 -j DROP
iptables -L --line-numbers
iptables -R INPUT 5 -p icmp -j REJECT

service iptables save

systemctl restart iptables && systemctl status iptables


sshpass -p  '***' ssh -o StrictHostKeyChecking=no loki@172.16.238.14

curl http://stapp01:3002
curl http://stapp02:3002
curl http://stapp03:3002

