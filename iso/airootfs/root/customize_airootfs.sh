#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

# teaOS specific commands

cd ../teaOS/utils/twm/
cd dwm-6.2
make
make install
cd ..
cd dmenu-5.0
make 
make install
cd ../st
make
make install
cd ../dwmblocks
make
make install
