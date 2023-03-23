telnet stapp01 6200
telnet stapp02 6200
telnet stapp03 6200

sshpass -p  '***' ssh -o StrictHostKeyChecking=no tony@172.16.238.10

cat /etc/httpd/conf/httpd.conf |grep Listen
vi /etc/httpd/conf/httpd.conf

systemctl status httpd
systemctl start httpd

sudo netstat -ltnp | grep 6200
netstat -tulnp
ps -ef  |grep sendmail

sudo kill 505

systemctl start httpd
systemctl status httpd

exit
exit

telnet stapp01 6200
