#!/bin/bash


while getopts 'lha:' OPTION; do
	case "$OPTION" in
		l)
			echo "linuxconfig"
			;;
		h)
			echo "you have supplied the -h option"
			;;
		a)
			avalue="$OPTARG"
			echo "The value provided is $OPTARG"
			;;
		?)
			echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" >&2
			exit 1
			;;
	esac
done

PROJECT=$1

# Create folder tree
mkdir $PROJECT
mkdir $PROJECT/bin
mkdir $PROJECT/cfg
mkdir $PROJECT/doc
mkdir $PROJECT/inc
mkdir $PROJECT/lib
mkdir $PROJECT/obj
mkdir $PROJECT/os
mkdir $PROJECT/res
mkdir $PROJECT/src
mkdir $PROJECT/src/test

# Create common files
touch BUGS
touch Changelog
touch COPYING
touch Doxyfile
touch INSTALL
touch Makefile
touch README
touch TODO
touch BUGS
touch BUGS
