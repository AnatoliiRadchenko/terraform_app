#!/bin/bach
yum -y
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h2>webserver with ip: $myip</h2><br>build with terraform!">/var/www/html/index.html
sudo service httpd start
chkconfig httpd on