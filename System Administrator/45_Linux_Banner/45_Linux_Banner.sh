sshpass -p  '***' ssh -o StrictHostKeyChecking=no tony@172.16.238.10
sshpass -p  ''***'' ssh -o StrictHostKeyChecking=no steve@172.16.238.11
sshpass -p  ''***'' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

scp -r /home/thor/nautilus_banner tony@stapp01:/tmp
scp -r /home/thor/nautilus_banner steve@stapp02:/tmp
scp -r /home/thor/nautilus_banner banner@stapp03:/tmp


sshpass -p  ''***'' ssh -o StrictHostKeyChecking=no peter@172.16.239.10
sudo yum -y install openssh-clients
scp -r /home/thor/nautilus_banner peter@stdb01:/tmp

sudo mv /tmp/nautilus_banner /etc/motd
sudo systemctl restart sshd