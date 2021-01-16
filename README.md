# bb: a bloatless blog

**bb** is a small project that i wrote to hone my `sed` skill. the assumption is that cms' are too heavy of a personal blog, we don't need a complicated database to hold less than a handful of pages. the project is at its initial stage, no functionality guaranteed.

## installation

there is no need to install, clone the repository and adjust the settings in `md2html.sh` so that it would piping files to your `/var/www/html/` directory.

## usage

the `md2html.sh` is the only entrance, run `./md2html.sh <draft-name>` would generate a static web\_page in the html directory. no name management facility is provided, you need to responisible for the names of your blogs.

## todos

- add abstracts to the index page
- add functionality to remove blogposts.
