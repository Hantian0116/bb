#!/usr/bin/env sh

sed -i "/h2>$1</,/-- post $1 --/d" html/index.html
echo "$1 deleted!"
