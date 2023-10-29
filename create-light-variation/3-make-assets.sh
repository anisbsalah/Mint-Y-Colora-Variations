#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author  :  anisbsalah
# Github  :  https://github.com/anisbsalah
##################################################################################################################
##################################################################################################################
#
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo
echo "It is time for you to take a coffee."
echo "It will take as long as it takes depending on cpu etc..."

echo "Installing all the needed software to be able to run the scripts."
#sudo apt install -y ruby-sass sassc optipng inkscape python3
#paru -S --needed ruby-sass sassc optipng inkscape python3

echo "Making all the icons"

cd src || exit 1
python3 build-light-themes.py

echo "All assets have been made."
echo "Svg's have been exported from the assets svg files"
echo "and converted to png's"
echo
echo "Next up is installing the icon theme."
echo
echo "Run script number 4 to install the themes."
echo
echo "Your themes will be installed in /usr/share/themes"
echo "Select it with your theme manager."
echo
