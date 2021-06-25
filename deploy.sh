#!/bin/bash

jekyll build
cp -R _site/* ../sullo.github.io/
#cp -R _posts/ ../sullo.github.io/
#cp -R _layouts/ ../sullo.github.io/
#cp -R includes/ ../sullo.github.io/
#cp *html ../sullo.github.io/
cd ../sullo.github.io/ && git add -A && git commit -m "Site Updates" && git push

