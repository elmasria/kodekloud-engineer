# Linux Find Command

sshpass -p  '****' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

find /var/www/html/ecommerce -type f -name "*.php"

sudo find /var/www/html/ecommerce -type f -name "*.php" -exec cp "{}" /ecommerce \; # this is a wrong part because it will copy the files without the right parent directories

# remove the copied files
sudo find /ecommerce -type f -exec rm -rf {} \;

sudo find /var/www/html/ecommerce -type f -name "*.php" -exec cp --parents -t /ecommerce/ {} \;