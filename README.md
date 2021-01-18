# bb: a bloatless blog

**bb** is a small project that i wrote to hone my `sed` skill. the assumption is that cms' are too heavy of a personal blog, we don't need a complicated database to hold less than a handful of pages. the project is at its initial stage, no functionality guaranteed.

## installation

there is no need to install, clone the repository and adjust the settings in `md2html.sh` so that it would piping files to your `/var/www/html/` directory.

## configuration

edit `./bin/bb.conf` to configure the draft and the webpage directory to your taste.

## usage

the `bb-ls.sh`, `bb-rm.sh`, and `bb-add.sh` are the basic utilities for **list**, **remove**, and **add** posts. there is no namespace management thing, you are responsible to your nomenclatures, for example if you add two post with the same **title**, say 'A post', then `./bb-rm.sh 'A post'` will remove both entries. avoid doing that.

## todos

- coerce it to the [github page site standard](https://docs.github.com/en/github/working-with-github-pages/about-github-pages) so that the site can be easily hosted on github.
- create a 'compose' page.
- move data to a sqlite database for portability.
