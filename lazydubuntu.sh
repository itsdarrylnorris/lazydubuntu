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
sudo apt-get update
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

sudo mkdir ~/LazyDubuntu/originals/
sudo cp /etc/phpmyadmin/apache.conf ~/LazyDubuntu/originals/

sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf

# Enable mode_rewrite for clean urls.
sudo a2enmod rewrite

#  TODO For single server configuration you want to do this.
# Find <Directory /var/www/html> and replace it with <Directory /var/www/>
# In file apache2.conf and 000-default.conf

# Modify Apache so it can rewrite.
lineNumber="$( /bin/grep -n "/var/www/" /etc/apache2/apache2.conf | /usr/bin/head -1 | cut -d ":" -f 1 )"
nextLineNumber="$( /usr/bin/tail -n +$lineNumber /etc/apache2/apache2.conf | /bin/grep -n "AllowOverride" | /usr/bin/head -1 | cut -d ":" -f 1 )"
theExactLine="$( expr $lineNumber + $nextLineNumber - 1 )"/bin/sed -i -e "$theExactLine"s/None/All/ /etc/apache2/apache2.conf

# Restart server to after the is enable mod_rewrite and the apache.conf
sudo service apache2 restart

# Install git
sudo apt-get update
sudo apt-get install git -y

# Git Configuration
# To learn more about git configuration:
# http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
echo
echo ---------------------------------------------
echo Git required to add your full-name and e-mail.
echo This will set-up the  --global user.name and --global user.email
echo ---------------------------------------------
echo
read -p "Enter Your Full Name: " FullName
read -p "Enter Your E-mail: " Email

# Setting Up Git
git config --global user.name "$FullName"
git config --global user.email $Email

# SmartGit
# Downloading a GUI git client
sudo wget http://www.syntevo.com/download/smartgithg/smartgithg-generic-6_0_7.tar.gz

# Extracting
sudo tar -zxvf smartgithg-generic-6_0_7.tar.gz
sudo rm smartgithg-generic-6_0_7.tar.gz
# Moving to /opt directory
sudo mv smartgithg-6_0_7 /opt/
# Creating a simbolic link so we an run this from the terminal
sudo ln -s /opt/smartgithg-6_0_7/bin/smartgithg.sh /usr/bin/smartgit

sudo touch /usr/share/applications/smartgit.desktop

sudo echo "Name=SmartGit" >> /usr/share/applications/smartgit.desktop
sudo echo "Comment=GUI git client" >> /usr/share/applications/smartgit.desktop
sudo echo "Exec=/opt/smartgithg-6_0_7/bin/smartgithg.sh" >> /usr/share/applications/smartgit.desktop
sudo echo "Icon=/opt/smartgithg-6_0_7/bin/smartgithg-128.png" >> /usr/share/applications/smartgit.desktop
sudo echo "Type=Application" >> /usr/share/applications/smartgit.desktop
sudo echo "StartupNotify=true" >> /usr/share/applications/smartgit.desktop
sudo echo "Categories=GIT;Development;Utility;" >> /usr/share/applications/smartgit.desktop

# Install Curl
sudo apt-get update
sudo apt-get install curl -y

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

# Installing Packages for Atom .
# Drupal Packages:

# language-drupal (http://drupal.org) syntax highlighting and snippets for Atom.
sudo apm install language-drupal
# drupal Drupal snippets, filetypes and hotkeys
sudo apm install drupal
# drupal-info-file Drupal info file syntax
sudo apm install drupal-info-file

# Atom Web Development
# color-picker A Color Picker for the Atom Editor.
sudo apm install color-picker

#emmet The essential tool for web developers
sudo apm install emmet

#fancy-new-file Create files and directories by typing a relative path
sudo apm install fancy-new-file

# jshint Validate JavaScript with JSHint. In realtime or on save. Supports JSX
sudo apm install jshint

# atom-alignment A simple key-binding for aligning multi-line and multiple
# selections in Atom (Based on the sublime text plugin)
sudo apm install atom-alignment

# change-case Change the case of selected text using node-change-case
sudo apm install change-case

# linter Validates your code using linters
sudo apm install linter

# atom-html-preview A live preview tool for Atom Editor.
sudo apm install atom-html-preview

# bootstrap-3-snippetset A 'Twitter Bootstrap 3' snippetset.
sudo apm install bootstrap-3-snippetset

# atom-beautifier Beautifier for Atom
sudo apm install atom-beautifier

# Install Nano (Terminal Editor)
sudo apt-get update
sudo apt-get install nano


# Lazy Aliases

cd ~/
touch .bash_aliases
chmod 644 .bash_aliases

sudo echo "# Manage packages" >> ~/.bash_aliases
sudo echo " " >> ~/.bash_aliases
sudo echo "alias agi='sudo apt-get install'" >> ~/.bash_aliases
sudo echo "alias agr='sudo apt-get remove'" >> ~/.bash_aliases
sudo echo "alias agu='sudo apt-get update'" >> ~/.bash_aliases
sudo echo "alias acs='apt-cache search'" >> ~/.bash_aliases
sudo echo " " >> ~/.bash_aliases
sudo echo "# Manage files and folders" >> ~/.bash_aliases
sudo echo " " >> ~/.bash_aliases
sudo echo "alias cp='cp -iv'" >> ~/.bash_aliases
sudo echo "alias mv='mv -iv'" >> ~/.bash_aliases
sudo echo "alias rm='rm -i'" >> ~/.bash_aliases
sudo echo "alias la='ls -alh'" >> ~/.bash_aliases
sudo echo " " >> ~/.bash_aliases
sudo echo "# Navigating the system" >> ~/.bash_aliases
sudo echo "alias documents='cd ~/Documents'" >> ~/.bash_aliases
sudo echo "alias downloads='cd ~/Downloads'" >> ~/.bash_aliases
sudo echo "alias desktop='cd ~/Desktop'" >> ~/.bash_aliases
sudo echo "alias music='cd ~/Music'" >> ~/.bash_aliases
sudo echo "alias videos='cd ~/Videos'" >> ~/.bash_aliases
sudo echo "alias ..='cd ..'" >> ~/.bash_aliases
sudo echo "alias ...='cd ../..'" >> ~/.bash_aliases
sudo echo "alias ....='cd ../../..'" >> ~/.bash_aliases
sudo echo " " >> ~/.bash_aliases
sudo echo "# Other useful aliases" >> ~/.bash_aliases
sudo echo "alias e='exit'" >> ~/.bash_aliases
sudo echo "alias s='sudo'" >> ~/.bash_aliases
sudo echo "alias shutdown='sudo shutdown -h now'" >> ~/.bash_aliases
sudo echo "alias restart='sudo shutdown -r now'" >> ~/.bash_aliases
sudo echo "alias suspend='sudo pm-suspend'" >> ~/.bash_aliases
sudo echo "alias mounted='mount | column -t'" >> ~/.bash_aliases
sudo echo "# Git Aliases" >> ~/.bash_aliases
sudo echo " " >> ~/.bash_aliases
sudo echo "alias gs='git status '" >> ~/.bash_aliases
sudo echo "alias ga='git add '" >> ~/.bash_aliases
sudo echo "alias gb='git branch '" >> ~/.bash_aliases
sudo echo "alias gc='git commit'" >> ~/.bash_aliases
sudo echo "alias gd='git diff'" >> ~/.bash_aliases
sudo echo "alias go='git checkout '" >> ~/.bash_aliases
sudo echo "alias gcm='git commit -m'" >> ~/.bash_aliases
