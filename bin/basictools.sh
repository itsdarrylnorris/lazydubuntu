#!/bin/bash

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
php -r "readfile('https://getcomposer.org/installer');" | php

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
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt-get update
sudo apt-get install atom -y

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

# linter Validates your code using lintersatom-beautify
sudo apm install linter

# atom-html-preview A live preview tool for Atom Editor.
sudo apm install atom-html-preview

# bootstrap-3-snippetset A 'Twitter Bootstrap 3' snippetset.
sudo apm install bootstrap-3-snippetset

# atom-beautifier Beautifier for Atom
# sudo apm install atom-beautifier

# Install Nano (Terminal Editor)
sudo apt-get update
sudo apt-get install nano

# Installing Fizella 

sudo apt-get update
sudo apt-get install filezilla -y

# Installing OpenSSH Client 
sudo apt-get update
sudo apt-get install openssh-client -y


# Installing OpenSSH Server
sudo apt-get update
sudo apt-get install openssh-server -y



