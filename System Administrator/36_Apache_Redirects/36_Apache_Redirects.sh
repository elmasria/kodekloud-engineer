sshpass -p  '*****' ssh -o StrictHostKeyChecking=no tony@172.16.238.10

sudo su -


cat /etc/httpd/conf/httpd.conf |grep Listen
cat /etc/httpd/conf/httpd.conf |grep redirect


vi  /etc/httpd/conf.d/main.conf

Add

###

<VirtualHost *:5004>

ServerName stapp01.stratos.xfusioncorp.com

Redirect 301 / http://www.stapp01.stratos.xfusioncorp.com:5004/

</VirtualHost>



<VirtualHost *:5004>

ServerName www.stapp01.stratos.xfusioncorp.com:5004/blog/

Redirect 302 /blog/ http://www.stapp01.stratos.xfusioncorp.com:5004/news/

</VirtualHost>

###

systemctl restart httpd
systemctl status httpd


curl http://stapp01.stratos.xfusioncorp.com:5004/