#!/bin/sh
echo "Installing the Base Mod for teaOS"
echo
echo
echo "Description:  Base Module for teaOS"
echo "Version:      0.2.0+"
echo "Author:       teaOS"
sleep 4s
clear
echo "Installing base..."
cp /teaOS/modules/uninstalled/mod /teaOS/bin
echo "Creating directories..."
mkdir /teaOS/modules/bin
mkdir /teaOS/modules/mods
mkdir /teaOS/modules/
echo "Finished installing Base Mod"
