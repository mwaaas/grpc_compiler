#!/usr/bin/env bash
set -e

[ -d dist ] || mkdir dist   # will be used to store the lambda zip file

if [ $( ls /dist/ ) ]; then rm /dist/*.zip; fi

cp -R ./ /tmp/build/  # add the source code to a build environment

#pip3.6 install -r ./requirements.txt -t /tmp/build/

cd /tmp/build/ && zip /usr/src/app/dist/bundle.zip -r .

rm -r /tmp/build

