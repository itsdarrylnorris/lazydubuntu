#!/bin/bash
# Setting Up my Drupal Enviroment in Ubuntu
# Requiriment sudo

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# LampStack
echo "Lamp Stack Installation"
sudo bash bin/lampstack.sh

# Basic Web Development Tools
echo "Basic Web Development Tools"
sudo bash bin/basictools.sh

# Lazy Aliases
echo "Lazy Aliases"
sudo bash bin/lazyaliases.sh

# Web Designers
echo "Web Front-end Development Tools"
sudo bash bin/webdesigner.sh

# Web Developers
echo "Web Back-end Development Tools"
sudo bash bin/webdeveloper.sh
