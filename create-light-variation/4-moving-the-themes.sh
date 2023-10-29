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

choice=$1

if [[ $# -ne 1 ]]; then

	echo
	echo "Let us rename the folders so they are unique."
	echo "Your name will be added after 'Mint-Y'."
	echo "For example if you type Sun you will get:"
	echo "E.g. Mint-Y-Sun"

	read -erp "How should we name this new theme? First letter is a capital letter (no space but '-') : " choice

	echo "Renaming the folders"

fi

# if there is no hidden folder then make one
[[ -d "$HOME/.themes" ]] || mkdir -p "$HOME/.themes"

cp -rf usr/share/themes/Mint-Y "$HOME/.themes"

mv "$HOME/.themes/Mint-Y" "$HOME/.themes/Mint-Y-$choice"

echo "################################################################"
echo "Renaming inside the index.theme"
echo "Mint-Y-$choice"
find "$HOME/.themes/Mint-Y-$choice" -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y'/'Name=Mint-Y-$choice'/g' {} \;
find "$HOME/.themes/Mint-Y-$choice" -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y'/'GtkTheme=Mint-Y-$choice'/g' {} \;
find "$HOME/.themes/Mint-Y-$choice" -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y'/'MetacityTheme=Mint-Y-$choice'/g' {} \;
echo "################################################################"

echo "The themes have been renamed and moved to your home folder"
echo "in the hidden folder .themes"
echo "The folder was created if you did not have one."
echo "If you made a mistake, delete the folders in .themes and run the script again."
echo "Select icon theme with your icon theme manager and enjoy!"
echo
