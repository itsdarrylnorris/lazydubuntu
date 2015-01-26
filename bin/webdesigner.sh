#!/bin/bash
# Installing Broswer Firefox for Developer & Google Chrome
# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y

# Firefox For Developers
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora -y
sudo apt-get update
sudo apt-get install firefox -y


# Installing NodeJS
sudo apt -qq -y install  software-properties-common -y
sudo apt-add-repository -y ppa:chris-lea/node.js 
sudo apt-get install nodejs -y

#Installing Ruby
sudo apt-get install ruby

# Installing SASS
gem update --system
gem install sass 

# Installing Compass
gem update --system
gem install compass
