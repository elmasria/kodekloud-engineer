sshpass -p  'Bl@kW' ssh -o StrictHostKeyChecking=no natasha@172.16.238.15

sudo su -

yum install -y git

rpm -qa |grep git

ll /opt
cd /opt

git init  --bare news.git

git status