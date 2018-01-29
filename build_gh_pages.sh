#!/bin/sh

git checkout gh-pages
rm -rf build/*
git merge --commit master
touch .nojekyll  # Make sure the repo has this file in its root, otherwise it will not render on github.io
make html
open build/html/index.html
git add *
git commit -a --no-edit -m "Updating presentation materials"
git pull -s ours --no-edit
git push
