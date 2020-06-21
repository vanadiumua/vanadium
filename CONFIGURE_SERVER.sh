#!/bin/bash

echo "Beginning installation"

sudo apt update
sudo apt install apache2
sudo apt install mysql-server
sudo apt install php libapache2-mod-php
sudo apt install php-mbstring php-gettext
sudo systemctl restart apache2
sudo phpenmod mbstring
sudo phpenmod gettext
sudo apt install phpmyadmin
sudo systemctl restart apache2
sudo apt install dos2unix

echo "All done installing software!"
echo "Please manually run:
echo "sudo mysql_secure_installation"
