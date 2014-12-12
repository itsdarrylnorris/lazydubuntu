#!/bin/bash

# Lazy Dubuntu
# Setting Up my Drupal Enviroment in Ubuntu
# Requiriment sudo

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

# Git Configuration
# To learn more about git configuration:
# http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration

EmailValidation="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*@([a-z0-9]([a-z0-9-]*[a-z0-9])?\.)+[a-z0-9]([a-z0-9-]*[a-z0-9])?\$"
echo
echo ---------------------------------------------------------------------------
echo "Git required to add your full-name and e-mail."
echo "This will set-up the  --global user.name and --global user.email"
echo ---------------------------------------------------------------------------
echo
# Asking for a full name
read -p "Enter Your Full Name: " GitFullName

# Making the full name avaible across all the scripts
export GitFullName

# Asking for the e-mail and validate that is an e-mail.
while true
do
  read -p "Enter Email : " GitEmail
  echo

  if [[ $GitEmail =~ $EmailValidation ]] ; then
	export GitEmail
        break
  else
    echo "Invalid e-mail, Please enter a valid e-mail"
  fi

done

# MySQL & phpMyadmin Password.
echo
echo ---------------------------------------------------------------------------
echo MySQL '&' phpMyAdmin
echo This is going to be the root password.
echo ---------------------------------------------------------------------------

# Asking for password and a confirmation.
while true
do
  read -s -p "Password: " MYSQLPassword
  echo
  read -s -p "Confirm Password: " MYSQLPassword2
  echo
  [ "$MYSQLPassword" = "$MYSQLPassword2" ] && break
  echo "Password does not match, Please try again."
done

# Making the MySql Password avaible across all the scripts
export MYSQLPassword

echo
echo ---------------------------------------------------------------------------
echo Setting Up SSMTP to send emails from Ubuntu
echo You would need an Gmail account.
echo ---------------------------------------------------------------------------
echo


# Asking for the e-mail and validate that is an e-mail.
while true
do
  echo -------------------------------------------------------------------------
  echo "Pro Tip: You need make sure that you are typing your information"
  echo "correctly. If this credentials are wrong Drupal will not be able to send"
  echo "e-mails from you local envrironment."
  echo -------------------------------------------------------------------------
  echo
  read -p "Enter Your Gmail To Configure SSMTP: " PostMaster
  echo

  if [[ $PostMaster =~ $EmailValidation ]] ; then
    export PostMaster
    break
  else
    echo "Invalid e-mail, Please enter a valid e-mail"
  fi

done

echo ---------------------------------------------------------------------------
echo 'Pro Tip: Usually Gmail Username can be found by deteling @gmail.com from'
echo 'your gmail.com. For instance if your gmail is drupal@gmail.com, your'
echo 'username will be drupal. Password should be the same as your gmail.'
echo ---------------------------------------------------------------------------
echo
read -p "Enter Your Gmail Username: " GmailUser

# Asking for password and a confirmation.
while true
do
  read -s -p "Password: " GmailPassword
  echo
  read -s -p "Confirm Password: " GmailPassword2
  echo
  [ "$GmailPassword" = "$GmailPassword2" ] && break
  echo "Password does not match, Please try again."
done

# Making the Gmail Password avaible across all the scripts
export GmailPassword

# LampStack
echo "Lamp Stack Installation"
sudo -E bash bin/lampstack.sh

# Basic Web Development Tools
echo "Basic Web Development Tools"
sudo -E bash bin/basictools.sh

# Lazy Aliases
echo "Lazy Aliases"
sudo bash bin/lazyaliases.sh

# Web Designers
echo "Web Front-end Development Tools"
sudo bash bin/webdesigner.sh

# Web Developers
echo "Web Back-end Development Tools"
sudo bash bin/webdeveloper.sh
