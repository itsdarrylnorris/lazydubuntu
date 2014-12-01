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

# Installing NodeJs
sudo apt-get update -y
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install nodejs -y

# Building Essential
sudo apt-get install build-essential

# Grunt CLI Globally 
sudo npm install -g grunt-cli -y

# Installing Grunt 
sudo npm install grunt -y

# Installing Yeoman
sudo npm install -g yo -y
