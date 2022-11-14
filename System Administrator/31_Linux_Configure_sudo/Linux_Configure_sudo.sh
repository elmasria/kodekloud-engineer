

sshpass -p  '***' ssh -o StrictHostKeyChecking=no tony@172.16.238.10
sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11
sshpass -p  '***' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

sudo su -

visudo

# add
# yousuf    ALL=(ALL)   NOPASSWD:ALL

cat /etc/sudoers |grep yousuf