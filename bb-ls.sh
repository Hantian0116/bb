#!/usr/bin/env sh

grep "post_abs" html/index.html | cut -d">" -f4 | cut -d"<" -f1
