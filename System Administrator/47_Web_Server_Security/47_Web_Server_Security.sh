sshpass -p  'BigGr33n' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

sudo su -


ServerTokens Prod
ServerSignature Off

cat /etc/httpd/conf/httpd.conf  |grep ServerTokens
cat /etc/httpd/conf/httpd.conf  |grep ServerSignature

# remove Options Indexes FollowSymLinks
cat /etc/httpd/conf/httpd.conf  |grep Indexes
#   Indexes Includes FollowSymLinks SymLinksifOwnerMatch ExecCGI MultiViews
