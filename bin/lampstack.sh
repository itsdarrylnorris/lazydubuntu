# LampStack
# This shell script is going to contain Apache MySQL and PHP5.


# Install LAMP Stack
sudo apt-get update
sudo apt-get install lamp-server^ -y

# During the LAMP Stack instalation MySQL Server is going to ask
# to set up a password for the root user.

# Enable mode_rewrite for clean urls.
sudo a2enmod rewrite

# Modify Apache so it can rewrite.
lineNumber="$( /bin/grep -n "/var/www/" /etc/apache2/apache2.conf | /usr/bin/head -1 | cut -d ":" -f 1 )"
nextLineNumber="$( /usr/bin/tail -n +$lineNumber /etc/apache2/apache2.conf | /bin/grep -n "AllowOverride" | /usr/bin/head -1 | cut -d ":" -f 1 )"
theExactLine="$( expr $lineNumber + $nextLineNumber - 1 )"/bin/sed -i -e "$theExactLine"s/None/All/ /etc/apache2/apache2.conf

# Restart server to after the is enable mod_rewrite and the apache.conf
sudo service apache2 restart
