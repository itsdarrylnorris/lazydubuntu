#!/bin/bash

# Lazy Aliases

cd ~/
sudo touch .bash_aliases
sudo chmod 644 .bash_aliases

BashAliases='.bash_aliases'

# Manage Packages Aliases
sudo echo "# Manage packages" >> $BashAliases
sudo echo " " >> $BashAliases
sudo echo "alias agi='sudo apt-get install'" >> $BashAliases
sudo echo "alias agr='sudo apt-get remove'" >> $BashAliases
sudo echo "alias agu='sudo apt-get update'" >> $BashAliases
sudo echo "alias acs='apt-cache search'" >> $BashAliases
sudo echo " " >> $BashAliases

# Manage files and folders Aliases
sudo echo "# Manage files and folders" >> $BashAliases
sudo echo " " >> $BashAliases
sudo echo "alias cp='cp -iv'" >> $BashAliases
sudo echo "alias mv='mv -iv'" >> $BashAliases
sudo echo "alias rm='rm -i'" >> $BashAliases
sudo echo "alias la='ls -alh'" >> $BashAliases
sudo echo " " >> $BashAliases

# Navigation systems Aliases
sudo echo "# Navigating the system" >> $BashAliases
sudo echo "alias documents='cd ~/Documents'" >> $BashAliases
sudo echo "alias downloads='cd ~/Downloads'" >> $BashAliases
sudo echo "alias desktop='cd ~/Desktop'" >> $BashAliases
sudo echo "alias music='cd ~/Music'" >> $BashAliases
sudo echo "alias videos='cd ~/Videos'" >> $BashAliases
sudo echo "alias ..='cd ..'" >> $BashAliases
sudo echo "alias ...='cd ../..'" >> $BashAliases
sudo echo "alias ....='cd ../../..'" >> $BashAliases
sudo echo " " >> $BashAliases

# Other Linux Useful Aliases
sudo echo "# Other useful aliases" >> $BashAliases
sudo echo "alias e='exit'" >> $BashAliases
sudo echo "alias s='sudo'" >> $BashAliases
sudo echo "alias shutdown='sudo shutdown -h now'" >> $BashAliases
sudo echo "alias restart='sudo shutdown -r now'" >> $BashAliases
sudo echo "alias suspend='sudo pm-suspend'" >> $BashAliases
sudo echo "alias mounted='mount | column -t'" >> $BashAliases
sudo echo " " >> $BashAliases

# Git Aliases
sudo echo "# Git Aliases" >> $BashAliases
sudo echo "alias gs='git status '" >> $BashAliases
sudo echo "alias ga='git add '" >> $BashAliases
sudo echo "alias gb='git branch '" >> $BashAliases
sudo echo "alias gc='git commit'" >> $BashAliases
sudo echo "alias gd='git diff'" >> $BashAliases
sudo echo "alias go='git checkout '" >> $BashAliases
sudo echo "alias gcm='git commit -m'" >> $BashAliases

# Virtual Host Support
sudo echo "alias newsite='sudo new-website'" >> $BashAliases
sudo echo "alias delsite='sudo delete-website'" >> $BashAliases

source ~/.bash_aliases

