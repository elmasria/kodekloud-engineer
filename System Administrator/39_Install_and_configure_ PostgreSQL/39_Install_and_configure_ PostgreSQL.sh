sshpass -p  'Sp!dy' ssh -o StrictHostKeyChecking=no peter@172.16.239.10

sudo su -

yum -y install postgresql-server postgresql-contrib

postgresql-setup initdb

systemctl enable postgresql
systemctl start postgresql
systemctl status postgresql

sudo -u postgres psql

CREATE USER kodekloud_top WITH PASSWORD 'LQfKeWWxWD';

CREATE DATABASE kodekloud_db5;

GRANT ALL PRIVILEGES ON DATABASE "kodekloud_db5" to kodekloud_top;

\q


vi /var/lib/pgsql/data/postgresql.conf
cat /var/lib/pgsql/data/postgresql.conf |grep localhost

vi /var/lib/pgsql/data/pg_hba.conf

systemctl restart postgresql
systemctl status postgresql

psql -U kodekloud_top -d kodekloud_db5 -h 127.0.0.1 -W
\q
psql -U kodekloud_top -d kodekloud_db5 -h localhost -W
\q