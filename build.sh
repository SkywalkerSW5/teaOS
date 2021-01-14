#!/bin/sh

echo "Removing work and ISO directories..."
rm -r ./iso/iso 2> /dev/null
rm -r ./iso/work 2> /dev/null

mkdir ./iso/work
mkdir ./iso/iso
mkarchiso -v -o ./iso/iso -w ./iso/work ./iso/
echo "Finished"
