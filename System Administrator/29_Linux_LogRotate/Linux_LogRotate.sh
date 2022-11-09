
sshpass -p  '***' ssh -o StrictHostKeyChecking=no tony@172.16.238.10

sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11

sshpass -p  '***' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

sudo yum install httpd

logrotate --version

sudo vi /etc/logrotate.d/httpd

## update the text to add the below
#    rotate 3
#    monthly

cat /etc/logrotate.d/httpd

sudo systemctl start httpd
systemctl status httpd