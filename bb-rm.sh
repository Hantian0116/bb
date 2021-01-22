#!/usr/bin/env sh

. ./bin/bb.conf
sed -i "/h2>$1</,/-- post $1 --/d" $HTMLDIR/index.html
echo "$1 deleted!"
