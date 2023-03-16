sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11

sudo yum install httpd

sudo vi /etc/httpd/conf/httpd.conf

cat /etc/httpd/conf/httpd.conf |grep Listen


sudo systemctl start httpd