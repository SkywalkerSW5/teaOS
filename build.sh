#!/bin/sh

case $1 in
	
	iso)
		echo "Building the ISO"
		echo
		echo "		Removing work and ISO folders..."
		rm -r ./iso/iso  2> /dev/null
		rm -r ./iso/work 2> /dev/null
		echo "		Making folders..."
		mkdir ./iso/work
		mkdir ./iso/iso
		echo "		Building the ISO..."
		./iso/archiso/archiso/mkarchiso -v -o ./iso/iso -w ./iso/work ./iso
		echo "Finished"
;;

	pkg)
		echo "Building tar"
		cd src/
		tar cvf tea-utils-$2.tar.xz *
		mv tea-utils-$2.tar.xz ../teaOS-builds/
		echo "Finished"
;;
	clean)
		echo "Cleaning..."
		mv ./iso/iso/*.iso ./
		rm -r ./iso/work ./iso/iso
		echo "Done"
;;
	"")
		echo "build.sh:"
		echo
		echo "pkg version: Builds teaOS Tar"
		echo "iso: Builds teaOS ISO"
;;		
esac
