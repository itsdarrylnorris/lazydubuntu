#!/bin/bash
# Setting Up my Drupal Enviroment in Ubuntu
# Requiriment sudo

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Install LAMP Stack
sudo apt-get update
sudo apt-get install lamp-server^ -y

# During the LAMP Stack instalation MySQL Server is going to ask
# to set up a password for the root user.

# Install phpMyAdmin
sudo apt-get install phpmyadmin -y

# During the installation, phpMyAdmin will walk you through a basic
# configuration. Once the process starts up, follow these steps:
#
# 1- Select Apache2 for the server (click Space bar to select Apache.
# click tab to change the button and enter to continue.
# 2- Choose YES when asked about whether to Configure the database for
# phpmyadmin with dbconfig-common
# 3- Enter your MySQL password when prompted
# 4- Enter the password that you want to use to log into phpmyadmin
# 5- After the installation has completed, add phpmyadmin to the
# apache configuration.

# After the installation has completed, add phpmyadmin to the apache
# configuration. sudo nano /etc/apache2/apache2.conf
# Add the phpmyadmin config to the file. Include /etc/phpmyadmin/apache.conf

sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf

# Enable mode_rewrite for clean urls.
sudo a2enmod rewrite

# Modify Apache so it can rewrite.
lineNumber="$( /bin/grep -n "/var/www/" /etc/apache2/apache2.conf | /usr/bin/head -1 | cut -d ":" -f 1 )"
nextLineNumber="$( /usr/bin/tail -n +$lineNumber /etc/apache2/apache2.conf | /bin/grep -n "AllowOverride" | /usr/bin/head -1 | cut -d ":" -f 1 )"
theExactLine="$( expr $lineNumber + $nextLineNumber - 1 )"/bin/sed -i -e "$theExactLine"s/None/All/ /etc/apache2/apache2.conf

# Restart server to after the is enable mod_rewrite and the apache.conf
sudo service apache2 restart

# Install git
sudo apt-get update
sudo apt-get install git

# Install Curl
sudo apt-get update
sudo apt-get install curl

# Install Composer
sudo curl -sS https://getcomposer.org/installer | php​

# Access composer from anywhere on your system:
sudo mv composer.phar /usr/local/bin/composer

# Install Drush
cd /usr/share
sudo git clone --branch master https://github.com/drush-ops/drush.git
cd drush
composer install
cd ~/
# Access drush from anywhere on your system:
ln -s /usr/share/drush/drush /usr/bin/drush

# Install Atom (GUI Text Editor)
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

# Install Nano (Terminal Editor)
sudo apt-get update
sudo apt-get install nano
