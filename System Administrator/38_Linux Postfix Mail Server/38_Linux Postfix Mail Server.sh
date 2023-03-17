sshpass -p  '***' ssh -o StrictHostKeyChecking=no groot@172.16.238.17

sudo su -

rpm -qa | grep postfix
yum install postfix -y

vi /etc/postfix/main.cf

systemctl start postfix
systemctl status postfix

useradd kirsty
passwd kirsty


rpm -qa | grep dovecot
yum install dovecot -y

vi /etc/dovecot/dovecot.conf

vi vi /etc/dovecot/conf.d/10-mail.conf

vi /etc/dovecot/conf.d/10-auth.conf

vi /etc/dovecot/conf.d/10-master.conf

systemctl start dovecot
systemctl status dovecot

telnet stmail01 110

ss -tulnp
