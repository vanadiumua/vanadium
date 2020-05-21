#!/bin/bash

# Name: install.sh
# Author: S Kim, M Brydon, S Canfield
# Purpose: Menu driven shell script to install the software

## ----------------------------------------------
# Define Variables
## ----------------------------------------------
SERVER=apache
PASSWD=/etc/.htpasswd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
WWW=/var/www/html

## ----------------------------------------------
# Define user functions
## ----------------------------------------------
pause(){
  echo ""
  read -p "Press [ENTER] key to continue..." fackEnterKey
}

wwwredefine(){
  echo ""
  echo "Enter your webserver's www directory: "
  echo "Apache example: /var/www/html"
  echo "Nginx example: /usr/local/nginx/html"
  read -p "Enter: " www
}

apache(){
  echo ""
  echo "Install to Apache2 web server selected."
  echo "Checking compatibility with your system."
  www=/var/www/html
  if [ -d "$www" ]; then
    echo "Installing to /var/www/html"
    # Installation copies go here

    pause
    show_menus
  else
    echo "You might've changed your default Apache2 directory location."
    wwwredefine
    if [ -d "$www" ]; then
      echo "Installing to $www"
      # Installation copies go here

      pause
      show_menus
    else
      echo -e "${RED}Installation failure: Directory not found${STD}" && sleep 1
      echo "Returning to main menu"

      pause
      show_menus
    fi
  fi
}

nginx(){
  echo ""
  echo "Install to Nginx1 web server selected."
  echo "Checking compatibility with your system."
  local www
  www=/usr/local/nginx/html
  if [ -d "$www" ]; then
    echo "Installing to /usr/local/nginx/html"
    # Installation copies go here

    pause
    show_menus
  else
    echo "You might've changed your default Nginx directory location."
    wwwredefine
    if [ -d "$www" ]; then
      echo "Installing to $www"
      # Installation copies go here

      pause
      show_menus
    else
      echo -e "${RED}Installation failure: Directory not found${STD}" && sleep 1
      echo "Returning to main menu"

      pause
      show_menus
    fi
  fi
}

passwd(){
  echo ""
  echo "Configure primary password protection."
  echo "This will add an additional layer of security."
  echo ""
  echo "This workflow hasn't been set up yet. Please check for updates with the developer."

  pause
}

rmpasswd(){
  echo ""
  echo "Remove primary password protection."
  echo "This will remove the additional layer of security created before."
  echo "If you haven't set up primary password protection, this won't work right."
  echo ""
  echo "This workflow hasn't been set up yet. Please check for updates with the developer."

  pause
}

show_menus(){
  clear
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo " M A I N - M E N U"
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo "1. Install to Apache2 web server"
  echo "2. Install to Nginx1 web server"
  echo "3. Configure primary password protection"
  echo "4. Remove primary password protection"
  echo "5. Exit installation wizard"
  echo ""
}

read_options(){
  local choice
  read -p "Enter choice [1-5] " choice
  case $choice in
    1) apache ;;
    2) nginx ;;
    3) passwd ;;
    4) rmpasswd ;;
    5) exit 0;;
    *) echo -e "${RED}Error...${STD}" && sleep 2
  esac
}

## ----------------------------------------------
# Trap CTRL+C, CTRL+Z and quit singles
## ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP

## ----------------------------------------------
# Main logic - deliberate infinite loop
## ----------------------------------------------
while true
do
  show_menus
  read_options
done
