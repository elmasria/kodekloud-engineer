# Linux Find Command

sshpass -p  '****' ssh -o StrictHostKeyChecking=no steve@172.16.238.11

sudo yum install epel-release -y
sudo yum install nginx


sudo vi /etc/nginx/nginx.conf

# make sure to change the server_name  _; to the target server on both 80 and 443 configurations
# remove the commented section on the 443 section

# either mobve the certs to a new location (make sure update the config file)
sudo mv /tmp/nautilus.crt /etc/pki/tls/certs/
sudo mv /tmp/nautilus.key /etc/pki/tls/certs/

# or use the same location provided by default section
sudo cp -r /etc/pki/tls/certs/nautilus.crt /etc/pki/nginx/server.crt && sudo cp -r /etc/pki/tls/certs/nautilus.key /etc/pki/nginx/private/server.key

ls -l /etc/pki/tls/certs/
ls -l /tmp

sudo systemctl enable nginx && sudo systemctl start nginx && sudo systemctl status nginx

# verify nginx.vonf
nginx -t

# output:
# nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
# nginx: configuration file /etc/nginx/nginx.conf test is successful


sudo rm /usr/share/nginx/html/index.html

sudo vi /usr/share/nginx/html/index.html

cat /usr/share/nginx/html/index.html

sudo systemctl enable nginx && sudo systemctl start nginx && sudo systemctl restart nginx && sudo systemctl status nginx


curl -Ik https://172.16.238.11

curl --insecure https://172.16.238.11