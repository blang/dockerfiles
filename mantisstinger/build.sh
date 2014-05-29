#!/bin/sh
mkdir -p work
mkdir -p work/arma
mkdir -p work/bin
mkdir -p work/www

# Binaries
cd work/bin
go build github.com/blang/mantis
go build github.com/blang/stinger
go build github.com/blang/httpserv
cd ../..

# Build fake arma
cd work/arma
go build github.com/blang/runner
cp runner arma2oa.exe
cp runner arma2oaserver.exe
mkdir -p "@he_beta"
cp arma2oa.exe "@he_beta/"
cp arma2oaserver.exe "@he_beta/"
cd ../../

# Build webfrontend
LPWD=$PWD
cd $HOME/projects/mantis-webfrontend
grunt build
mv dist/* $LPWD/work/www
cd $LPWD

docker build -t mantisstinger .

rm -rf "./work"