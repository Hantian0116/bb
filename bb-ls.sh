#!/usr/bin/env sh

source ./bin/bb.conf
grep "post_abs" $HTMLDIR/index.html | cut -d">" -f4 | cut -d"<" -f1
