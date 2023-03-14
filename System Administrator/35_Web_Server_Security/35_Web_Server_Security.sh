sshpass -p  '*****' ssh -o StrictHostKeyChecking=no tony@172.16.238.10

sudo su -

vi /etc/httpd/conf/httpd.conf

# remove Options Indexes FollowSymLinks

ServerTokens Prod
ServerSignature Off


cat /etc/httpd/conf/httpd.conf  |grep ServerTokens
cat /etc/httpd/conf/httpd.conf  |grep ServerSignature
cat /etc/httpd/conf/httpd.conf  |grep Indexes

systemctl start httpd

systemctl status httpd