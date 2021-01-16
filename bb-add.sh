#!/usr/bin/env sh

sed -f bin/sed-markdown drafts/$1.md > body.html
title=`sed -n '/<h1>/p' body.html | cut -d\> -f2 | cut -d\< -f1`
sed -f bin/sed-html bin/template.html > html/blogs/$1.html
sed -i "s/@title@/$title/;
    10i<div class='timestamp'>`date`</div>
    10a<a href='../index.html'>back to index</a></p><p>" html/blogs/$1.html
echo "<div class='post_abstract'><a href='./blogs/$1.html'><h2>$title</h2></a>
<p>" > abstract.html
sed -n '4,/p><p/p' body.html >> abstract.html
echo "</p><!-- post $title --></div>" >> abstract.html
sed -i "/new posts here/r abstract.html" html/index.html
rm abstract.html
rm body.html
echo "$title generated!"
