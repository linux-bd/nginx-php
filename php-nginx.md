### PHP 7 With Nginx

```sh
sudo apt-get upadte
sudo apt-get upgrade

sudo reboot
sudo apt-get install openssh-server
sudo service ssh restart

sudo chmod 777 /var/www/html/


sudo add-apt-repository ppa:nginx/stable
OR
sudo add-apt-repository ppa:nginx/development
sudo apt-get update
sudo apt-get install nginx


sudo add-apt-repository -y ppa:ondrej/mysql-5.7
sudo apt-get install mysql-server
mysql_secure_installation


sudo add-apt-repository ppa:ondrej/php
sudo apt-get install php7.1 php7.1-fpm php7.1-cgi php7.1-mysql php7.1-mbstring php7.1-curl


sudo apt-get install vim



sudo vim /etc/php/7.1/fpm/php.ini
=================================

; cgi.fix_pathinfo provides *real* PATH_INFO/PATH_TRANSLATED support for CGI.  PHP's
; previous behaviour was to set PATH_TRANSLATED to SCRIPT_FILENAME, and to not grok
; what PATH_INFO is.  For more information on PATH_INFO, see the cgi specs.  Setting
; this to 1 will cause PHP CGI to fix its paths to conform to the spec.  A setting
; of zero causes PHP to behave as before.  Default is 1.  You should fix your scripts
; to use SCRIPT_FILENAME rather than PATH_TRANSLATED.
; http://php.net/cgi.fix-pathinfo
cgi.fix_pathinfo=0




sudo vim /etc/nginx/sites-available/default
===========================================

	# Add index.php to the list if you are using PHP
	index index.php index.html index.htm index.nginx-debian.html;


 	# pass PHP scripts to FastCGI server
        #
        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
        #
        #       # With php-fpm (or other unix sockets):
        #       fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;
        #       # With php-cgi (or other tcp sockets):
                fastcgi_pass 127.0.0.1:9000;
        }

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        #
        location ~ /\.ht {
                deny all;
        }

service nginx reload
sudo service nginx restart


sudo vim /etc/php/7.1/fpm/pool.d/www.conf
=========================================
; listen = /run/php/php7.1-fpm.sock
listen = 127.0.0.1:9000

sudo service php7.1-fpm restart

ps aux | grep php
[Check Nginx Configuration] sudo nginx -t -c /etc/nginx/nginx.conf
