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
