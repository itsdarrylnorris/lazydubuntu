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
=======
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

# Reload Aliases
source ~/.bash_aliases
