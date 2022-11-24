
sshpass -p  '***' ssh -o StrictHostKeyChecking=no natasha@172.16.238.15

cat /home/encrypt_me.txt
cat /home/decrypt_me.asc

cd /home/

sudo gpg --import public_key.asc
sudo gpg --import private_key.asc

gpg --list-keys
sudo gpg --list-secret-keys


sudo su -

cd /home

gpg --encrypt -r kodekloud@kodekloud.com --armor < encrypt_me.txt  -o encrypted_me.asc

cat encrypted_me.asc

gpg --decrypt decrypt_me.asc > decrypted_me.txt

cat decrypted_me.txt
