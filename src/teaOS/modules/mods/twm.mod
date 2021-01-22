#!/bin/sh

ver="0.2.0"

echo "Installing the twm mod for teaOS"
echo ""
echo ""
echo "Description: A mod that enables twm"
echo "Version:     0.2.0+"
echo "Author:      teaOS"
sleep 4s
clear
echo "Installing base..."
cp /teaOS/utils/twm/compressed /teaOS/utils/twm/
tar xvf /teaOS/utils/twm/twm-$ver.tar.xz
echo "Copying view file"
cp /teaOS/utils/twm/twm.view /teaOS/modules/view/twm
echo "Finished installing twm $ver"
