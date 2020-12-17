#!/bin/sh
echo "Building teaOS"
genisoimage -J -allow-lowercase -R -iso-level 2 -o teaOS-$(date +%Y.%m.%d).$(uname -m).iso ./
echo "Finished building"
