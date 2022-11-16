sudo yum install vsftpd

sshpass -p  'Ir0nM@n' ssh -o StrictHostKeyChecking=no tony@172.16.238.10
sshpass -p  'Am3ric@' ssh -o StrictHostKeyChecking=no steve@172.16.238.11
sshpass -p  'BigGr33n' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

sudo yum update && sudo yum install vsftpd -y

sudo systemctl start vsftpd &&  sudo systemctl enable vsftpd && sudo systemctl status vsftpd

sudo yum install firewalld -y

sudo systemctl start firewalld && sudo systemctl enable firewalld && sudo systemctl status firewalld


sudo firewall-cmd --zone=public --permanent --add-port=21/tcp

sudo firewall-cmd --zone=public --permanent --add-service=ftp

firewall-cmd -h | grep load

# sudo firewall-cmd –-reload
firewall-cmd -h | grep load
sudo firewall-cmd --reload

sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default

sudo vi /etc/vsftpd/vsftpd.conf

sudo systemctl restart vsftpd && sudo systemctl status vsftpd


### NEW
sudo yum install wget -y