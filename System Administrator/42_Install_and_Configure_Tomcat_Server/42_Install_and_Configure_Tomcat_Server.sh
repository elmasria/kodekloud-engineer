sshpass -p  '***' ssh -o StrictHostKeyChecking=no steve@172.16.238.11

sudo su -

yum install -y tomcat

vi /usr/share/tomcat/conf/server.xml
cat /usr/share/tomcat/conf/server.xml |grep port

# ```
# <Server port="8005" shutdown="SHUTDOWN">

#          Define a non-SSL HTTP/1.1 Connector on port 8080

#     <Connector port="6100" protocol="HTTP/1.1"

#                port="6100" protocol="HTTP/1.1"

#     <!-- Define a SSL HTTP/1.1 Connector on port 8443

#     <Connector port="8443" protocol="org.apache.coyote.http11.Http11Protocol"

#     <!-- Define an AJP 1.3 Connector on port 8009 -->

#     <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" />

#     <!-- You should set jvmRoute to support load-balancing via AJP ie :

# ```

scp /tmp/ROOT.war steve@172.16.238.11:/home/steve/

mv /home/steve/ROOT.war /usr/share/tomcat/webapps

ls -lai /usr/share/tomcat/webapps/

systemctl start tomcat && systemctl status tomcat

curl -i http://stapp02:6100