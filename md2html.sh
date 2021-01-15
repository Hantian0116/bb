#!/usr/bin/env sh

sed -f bin/sed-markdown drafts/$1.md > body.html
title=`sed -n '/<h1>/p' body.html | cut -d\> -f2 | cut -d\< -f1`
sed -f bin/sed-html bin/template.html > html/blogs/$1.html
sed -i "s/@title@/$title/;
    10i<div class='timestamp'>`date`</div>
    10a<a href='../index.html'>back to index</a></p><p>" html/blogs/$1.html
#rm body.html
echo "$title generated!\n"
