#!/bin/bash

# Define final directory variable
FINAL_DIR=brydon1

# Inform user copying will occur
echo ""
echo "Attempting to copy HTML and PHP files to /var/www/html/"$FINAL_DIR
echo ""

sudo cp -r ~/vanadium/web/. /var/www/html/$FINAL_DIR

