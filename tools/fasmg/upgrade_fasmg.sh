#!/bin/bash

# this script currently only runs on linux.

build_fasmg () {
    .tmp/fasmg/fasmg.x64 .tmp/fasmg/source/$1/$3/fasmg.asm $1/$2
    chmod -x $1/$2
}

cd fasmg-ez80
git checkout calm
git pull origin calm
cd ..
mkdir -p .tmp
wget --no-verbose https://flatassembler.net/$(wget --no-verbose https://flatassembler.net/download.php --output-document=- | grep --only-matching --max-count=1 fasmg\\.[0-9a-z]\\+\.zip) --output-document=.tmp/fasmg.zip
unzip -od .tmp/fasmg .tmp/fasmg.zip
chmod +x .tmp/fasmg/fasmg.x64

build_fasmg linux   fasmg      x64
build_fasmg windows fasmg.exe
build_fasmg macos   fasmg      x64

rm -rf .tmp

