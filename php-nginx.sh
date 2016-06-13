sudo apt-get upadte
sudo apt-get upgrade

sudo reboot
sudo apt-get install openssh-server
sudo service ssh restart

sudo chmod 777 /var/www/html/

nginx=development
sudo add-apt-repository ppa:nginx/$nginx

sudo apt-get update
sudo apt-get install nginx

sudo apt-get install mysql-server
mysql_secure_installation

mysql -u root -p

apt-get -y install php7.0-fpm

[Optional] chgrp www-data /var/run/php/php7.0-fpm.sock

sudo gedit /etc/nginx/nginx.conf
sudo gedit /etc/nginx/sites-available/default

service nginx reload

sudo gedit /etc/php/7.0/fpm/php.ini
service php7.0-fpm restart

sudo gedit /etc/php/7.0/fpm/pool.d/www.conf

sudo service nginx restart
sudo service php7.0-fpm reload

sudo service php7.0-fpm restart
ps aux | grep php

[Check Nginx Configuration] sudo nginx -t -c /etc/nginx/nginx.conf




