sshpass -p  '****' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

cd /scripts

touch news_backup.sh

chmod +x news_backup.sh

vi news_backup.sh

zip -r /backup/xfusioncorp_news.zip /var/www/html/news
scp   /backup/xfusioncorp_news.zip clint@stbkp01:/backup

# add key for access backup without password
ssh-keygen
ssh-copy-id clint@stbkp01

# test sskey to backup
ssh clint@stbkp01
logout

# run the key
sh news_backup.sh