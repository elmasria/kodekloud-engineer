sshpass -p  'Am3ric@' ssh -o StrictHostKeyChecking=no steve@172.16.238.11

sudo su -
mkdir -p /devops/data
chgrp -R devops /devops/data
chmod o-rwx /devops/data/
chmod g+rwx /devops/data/

ll -lsd /devops/data/