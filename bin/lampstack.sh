# LampStack
# This shell script is going to contain Apache2 MySQL and PHP5.

# Install LAMP Stack
sudo apt-get update

## Automating the MySQL installation 

MYSQLPassword="password" # Setting up the password to be 'password'.

echo mysql-server-5.5 mysql-server/root_password password $MYSQLPassword | debconf-set-selections
echo mysql-server-5.5 mysql-server/root_password_again password $MYSQLPassword | debconf-set-selections

sudo apt-get install lamp-server^ -y

# During the LAMP Stack instalation MySQL Server is going to ask
# to set up a password for the root user.

# Enable mode_rewrite for clean urls.
sudo a2enmod rewrite

# Modify Apache so it can rewrite.
lineNumber="$( /bin/grep -n "/var/www/" /etc/apache2/apache2.conf | /usr/bin/head -1 | cut -d ":" -f 1 )"
nextLineNumber="$( /usr/bin/tail -n +$lineNumber /etc/apache2/apache2.conf | /bin/grep -n "AllowOverride" | /usr/bin/head -1 | cut -d ":" -f 1 )"
theExactLine="$( expr $lineNumber + $nextLineNumber - 1 )"/bin/sed -i -e "$theExactLine"s/None/All/ /etc/apache2/apache2.conf


# This automate the Phpmyadmin installation. 
echo 'phpmyadmin phpmyadmin/dbconfig-install boolean true' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/app-password-confirm password password' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/mysql/admin-pass password password' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/mysql/app-pass password password' | debconf-set-selections
echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections

sudo apt-get install phpmyadmin -y 

# This will fix the MyScript complain on PhpMyadmin.
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/20-mcrypt.ini
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/apache2/conf.d/20-mcrypt.ini
php5enmod mcrypt

# Restart server to after the is enable mod_rewrite and the apache.conf
sudo service apache2 restart
