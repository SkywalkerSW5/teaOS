#!/bin/sh
# Welcome to the teaOS Installer script. The lines below install the code.
clear
echo "Preparing for the install..."
echo "Installing requirements..."
./scripts/requirements.sh
tput setaf 6
clear
echo "============================================================================="
echo "                      Welcome to the teaOS Installer!"
echo ""
echo "              Press enter to continue, press Ctrl-C to stop"
echo
echo
echo
echo "============================================================================="
read -n 1 -s -p ""
echo "Starting the install"



echo
echo "Creating directorys....."
echo "		/teaOS"
mkdir /teaOS
echo "		/teaOS/sys"
mkdir /teaOS/sys
echo "		/teaOS/bin"
mkdir /teaOS/bin
echo "		/teaOS/utils"
mkdir /teaOS/utils
echo "		/teaOS/sys/old"
mkdir /teaOS/sys/old
echo "Done"

 
echo
cp ./scripts/version /teaOS/sys

echo "Exporting executable directories..."
touch ~/.config/fish/config.fish
echo export PATH="/teaOS/bin:$PATH" >> ~/.bashrc
echo "Done"


echo "Copying programs and files..."
cp -r ./utils/* /teaOS/utils
cp -r ./bin/* /teaOS/bin
#cp -r ./sys/* /teaOS/sys
echo "Done"



echo "Linking programs..."
./scripts/link 2> error.log
echo "Done"



echo "Running post-install script"
./scripts/post-install 2> ./error.log



echo "Sourcing .bashrc"
source ~/.config/fish/config.fish


echo "Copying old os-release to /teaOS/sys/old"
cp /etc/os-release /teaOS/sys/old
cp ./scripts/os-release /etc/

echo "Finished installing teaOS!"
echo



# EOF
