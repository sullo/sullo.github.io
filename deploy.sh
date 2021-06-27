#!/bin/bash

bundle exec jekyll build
cp -R _site/* ../sullo.github.io/
cd ../sullo.github.io/ && git add -A && git commit -m "Site Updates" && git push

