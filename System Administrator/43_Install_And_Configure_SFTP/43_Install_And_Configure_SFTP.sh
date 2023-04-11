sshpass -p  '***' ssh -o StrictHostKeyChecking=no banner@172.16.238.12

sudo su -

adduser jim

passwd jim

# Rc5C9EyvbU

mkdir -p /var/www/nfsdata

ls -laisd /var/www/nfsdata

chown root:root  /var/www
chmod -R 755 /var/www

ls -laisd /var/www

vi /etc/ssh/sshd_config

cat /etc/ssh/sshd_config  |grep sftp -A 10

# ```
# Subsystem       sftp    internal-sftp
# Match User jim
# ForceCommand internal-sftp
# PasswordAuthentication yes
# ChrootDirectory /var/www/nfsdata
# PermitTunnel no
# AllowTcpForwarding no
# X11Forwarding no
# AllowAgentForwarding no
# ```

systemctl restart sshd && systemctl status sshd

sftp jim@stapp03
sftp jim@localhost
