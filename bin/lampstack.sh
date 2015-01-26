#!/bin/bash

# LampStack
# This shell script is going to contain Apache2 MySQL and PHP5.

# Install LAMP Stack
sudo apt-get update

echo mysql-server-5.5 mysql-server/root_password password $MYSQLPassword | debconf-set-selections
echo mysql-server-5.5 mysql-server/root_password_again password $MYSQLPassword | debconf-set-selections

sudo apt-get install lamp-server^ -y

# Apache Persmission For Virtual Host
sudo chmod -R 755 /var/www

# Enable mode_rewrite for clean urls.
sudo a2enmod rewrite

# This automate the phpMyAdmin installation.
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $MYSQLPassword" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-pass password $MYSQLPassword" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $MYSQLPassword" | debconf-set-selections
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | debconf-set-selections

# Install phpMyAdmin
sudo apt-get install phpmyadmin -y

# This will fix the MyScript complain on PhpMyadmin.
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/20-mcrypt.ini
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/apache2/conf.d/20-mcrypt.ini
php5enmod mcrypt

# Restart server to after the is enable mod_rewrite and the apache.conf
sudo service apache2 restart

# Installing Xdebug
sudo apt-get install php5-xdebug

# Configure Xdebug
sudo echo '' >> /etc/php5/apache2/php.ini 
sudo echo '; Added for xdebug' >> /etc/php5/apache2/php.ini 
sudo echo 'zend_extension="/usr/lib/php5/20121212/xdebug.so"' >> /etc/php5/apache2/php.ini 
sudo echo 'xdebug.remote_enable=1' >> /etc/php5/apache2/php.ini 
sudo echo 'xdebug.remote_handler=dbgp xdebug.remote_mode=req' >> /etc/php5/apache2/php.ini 
sudo echo 'xdebug.remote_host=127.0.0.1 xdebug.remote_port=9000' >> /etc/php5/apache2/php.ini 
sudo service apache2 restart

# Virtual Host Support - Adding new virtual host file.
sudo cp bin/includes/new-website /usr/local/bin/new-website
sudo chmod +x /usr/local/bin/new-website

# Virtual Host Support - Deleting virtual host.
sudo cp bin/includes/delete-website /usr/local/bin/delete-website
sudo chmod +x /usr/local/bin/delete-website

# Adding Skeleton
sudo cp bin/includes/skeleton /etc/apache2/sites-available
