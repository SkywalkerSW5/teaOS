#!/bin/sh

clear
echo "Before the installation, you must agree to the licenses."
echo ""
cat ../utils/license/licenses/bsd
echo
echo "Press Enter to agree to the license"
read -n 1 -s -p ""
