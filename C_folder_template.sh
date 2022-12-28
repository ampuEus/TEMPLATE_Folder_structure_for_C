#!/bin/bash

function usage {
	echo
	echo "Usage: $(basename $0) [-n NAME] [-mh]" 2>&1
	echo "    -n NAME   especify project folder name/path"
	echo "    -m        only create basic folder tree"
	echo "    -h        shows help"
	exit 1
}

if [ ${#} -eq 0 ]; then usage; fi

while getopts "hmln:" OPTION; do
	case "$OPTION" in
		n)
			PROJECT="$OPTARG"
			echo "Project name: $OPTARG"
			;;
		m)
			MINIMAL=1
			echo "Creating minimal folder tree..."
			;;
		l)
			LIB=1
			echo "Creating folder tree for a library..."
			;;
		h | ?)
			usage;;
		:)
			echo "Missing option argument for -$OPTARG." >&2
			usage
			;;
	esac
done

if [ -z $PROJECT ]; then
	echo "ERROR: No project name passed" >&2
	usage
fi

# Create folder tree
mkdir -p $PROJECT
[ -z ${MINIMAL} ] && mkdir -p $PROJECT/bin
[ -z ${MINIMAL} ] && mkdir -p $PROJECT/cfg
[ -z ${MINIMAL} ] && mkdir -p $PROJECT/doc
[ -z ${MINIMAL} || -z ${LIB} ] && mkdir -p $PROJECT/inc
mkdir -p $PROJECT/lib
[ -z ${MINIMAL} ] && mkdir -p $PROJECT/obj
[ -z ${MINIMAL} ] && mkdir -p $PROJECT/os
[ -z ${MINIMAL} ] && mkdir -p $PROJECT/res
mkdir -p $PROJECT/src
mkdir -p $PROJECT/src/test

# Create common files
[ -z ${MINIMAL} ] && touch $PROJECT/BUGS
[ -z ${MINIMAL} ] && touch $PROJECT/Changelog
touch $PROJECT/LICENSE
[ -z ${MINIMAL} ] && touch $PROJECT/Doxyfile
[ -z ${MINIMAL} ] && touch $PROJECT/INSTALL
touch $PROJECT/Makefile
touch $PROJECT/README
[ -z ${MINIMAL} ] && touch $PROJECT/TODO

echo "done"
