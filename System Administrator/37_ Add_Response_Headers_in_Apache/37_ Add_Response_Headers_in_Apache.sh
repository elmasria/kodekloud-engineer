sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11

sudo yum install httpd

sudo vi /etc/httpd/conf/httpd.conf

cat /etc/httpd/conf/httpd.conf |grep Listen

##
<IfModule mod_headers.c>
  Header always set X-XSS-Protection "1; mode=block"
  Header always set X-Frame-Options "SAMEORIGIN"
  Header always set X-Content-Type-Options "nosniff"
</IfModule>
##

cat /etc/httpd/conf/httpd.conf  |grep X

sudo systemctl start httpd