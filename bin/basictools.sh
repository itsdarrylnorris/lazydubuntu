#!/bin/bash

# Variables

SsmtpGmail="smtp.gmail.com:587"
SsmtpConfig="/etc/ssmtp/ssmtp.conf"

# Install SSMTP
sudo apt-get update
sudo apt-get install ssmtp -y

# Configure SSMTP http://www.nixtutor.com/linux/send-mail-with-gmail-and-ssmtp/
sudo sed -i -e "s/root=postmaster/root=$PostMaster/g" $SsmtpConfig
sudo sed -i -e "s/mailhub=mail/mailhub=$SsmtpGmail/g" $SsmtpConfig
sudo sed -i -e "s/hostname=username@gmail.com/$PostMaster/g" $SsmtpConfig
sudo sed -i -e "s/#FromLineOverride=YES/FromLineOverride=YES/g" $SsmtpConfig

# TODO AuthUser Not working variable
sudo echo "AuthUser=$GmailUser" >> $SsmtpConfig
sudo echo "AuthPass=$GmailPassword" >> $SsmtpConfig
sudo echo "UseSTARTTLS=YES" >> $SsmtpConfig

# Then add each account that you want to be able to send mail from by editing,
# ‘/etc/ssmtp/revaliases‘:
sudo echo "root:$PostMaster:$SsmtpGmail" >> /etc/ssmtp/revaliases
sudo echo "localusername:$PostMaster:$SsmtpGmail" >> /etc/ssmtp/revaliases

# Install git
sudo apt-get update
sudo apt-get install git -y

# Setting Up Git
git config --global user.name "$GitFullName"
git config --global user.email $GitEmail


# Install Git Cola
sudo apt-get install git-cola -y

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

# Install Nano (Terminal Editor)
sudo apt-get update
sudo apt-get install nano

# Installing Filezilla
sudo apt-get update
sudo apt-get install filezilla -y

# Installing OpenSSH Client
sudo apt-get update
sudo apt-get install openssh-client -y

# Installing OpenSSH Server
sudo apt-get update
sudo apt-get install openssh-server -y

# Installing PHP cURL
sudo apt-get install php5-curl -y

