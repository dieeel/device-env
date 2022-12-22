#!/bin/bash

set -e

abspathdir=$(cd $(dirname "$0") && pwd)
filedir="/files/"

for f in `ls ${abspathdir%/}${filedir}`
do
	if [ $f = "README.md" ] || [ $f = "setup.sh" ]; then
		continue
	fi
	ln -snf ${abspathdir%/}${filedir}$(basename "$f") ${HOME}'/.'$f
done

