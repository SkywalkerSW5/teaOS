#!/bin/sh

echo "Preparing for the install..."
pacman -Syu --needed `cat ./scripts/pkgs`

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
./scripts/license.sh


echo
echo "Creating directorys....."
mkdir /teaOS >> /dev/null
mkdir /teaOS/backup >> /dev/null
mkdir /teaOS/sys
mkdir /teaOS/bin
mkdir /teaOS/modules
mkdir /teaOS/utils
mkdir /teaOS/sys/old
echo "Done"

 
echo
cp ./scripts/version /teaOS/sys

echo "Exporting executable directories..."
echo export PATH="/teaOS/bin:/teaOS/modules/bin:$PATH" >> ~/.zshrc
echo "Done"


echo "Copying programs and files..."
cp -r ./utils/* /teaOS/utils
cp -r ./bin/* /teaOS/bin
#cp -r ./sys/* /teaOS/sys
cp -r ./modules/* /teaOS/modules
cp -r ./sys/* /teaOS/sys
echo "Done"

echo "Running post-install scripts"

./scripts/link 2> error.log
echo "Done"
./scripts/post-install 2> ./error.log

echo "Copying old os-release to /teaOS/sys/old"
cp /etc/os-release /teaOS/sys/old
cp ./scripts/os-release /etc/
echo
echo
echo
echo "                       teaOS Mods              "
echo "           Mods allow customization to teaOS    "
echo "    Press enter to enable them, or Ctrl-C to disable"
echo
echo
echo
read -n 1 -s -p ""

cp /teaOS/modules/uninstalled/mod /teaOS/bin/
/teaOS/bin/mod install /teaOS/modules/uninstalled/base.mod


echo "Finished installing teaOS!"


# EOF
