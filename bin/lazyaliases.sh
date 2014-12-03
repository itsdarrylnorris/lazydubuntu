#!/bin/bash
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
