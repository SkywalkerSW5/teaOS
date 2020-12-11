#!/usr/bin/env fish
tput setaf 1
clear
echo "Welcome to the teaOS Installer! Press enter to continue, press Ctrl-C to stop"
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

echo export PATH="/teaOS/bin:$PATH" >> ~/.bashrc
touch ~/.config/fish/config.fish
echo export PATH="/teaOS/bin:$PATH" >> ~/.config/fish/config.fish
echo "Done"


echo "Copying programs and files..."
cp -r ./utils/* /teaOS/utils
cp -r ./bin/* /teaOS/bin
echo "Done"



echo "Linking programs..."
./scripts/link 2> error.log
echo "Done"



echo "Running post-install script"
./scripts/post-install 2> ./error.log



echo "Sourcing .bashrc"
source ~/.bashrc 2> /dev/null
source ~/.config/fish/config.fish



echo "Copying old os-release to /teaOS/sys/old"
cp /etc/os-release /teaOS/sys/old
cp ./scripts/os-release /etc/

echo "Finished installing teaOS!"
echo
echo "Add termup to your config.fish to get TermUp on terminal start!"