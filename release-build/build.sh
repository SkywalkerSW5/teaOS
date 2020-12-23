#!/bin/sh
echo "Building teaOS"
genisoimage -J -allow-lowercase -R -iso-level 2 -o teaOS-0.1.0.$(uname -m).iso ./
echo "Finished building"
