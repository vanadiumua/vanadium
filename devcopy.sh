#!/bin/bash

# Grab the username
echo "Please enter the username for /var/www/html/: "
read -p "Enter: " FINAL_DIR

# Inform user copying will occur
echo ""
echo "Attempting to copy HTML and PHP files to /var/www/html/"$FINAL_DIR
echo ""

{ # try
  sudo cp -r ~/vanadium/web/. /var/www/html/$FINAL_DIR
  echo "Copy success"
  echo "All done!"
} || { # catch
  echo "Copy failed!"
}
