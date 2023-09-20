#!/bin/bash
TIMESTAMP=$(date +%Y%m%d-%H%M)
FOLDER=/srv/crosscompute-pages-$TIMESTAMP

cd ~/Projects/landing-pages
git checkout main
git pull

cp ~/Projects/landing-pages/pages/* $FOLDER -r
ln -snf $FOLDER /srv/crosscompute-pages
