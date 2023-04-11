sshpass -p  '***' ssh -o StrictHostKeyChecking=no tony@172.16.238.10
sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11
sshpass -p  '***' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

yum install -y cups

systemctl  start  cups && systemctl  enable cups && systemctl status cups