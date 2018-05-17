#!/bin/sh

cd /home/ubuntu

# Cleanup
rm -f log
rm -rf bin
rm -rf src
rm -rf db
mkdir db

# Setup
go get -d github.com/RSenApps/nchainz
go install github.com/RSenApps/nchainz

cp /home/ubuntu/src/github.com/RSenApps/nchainz/genesis.dat ./
/home/ubuntu/src/github.com/RSenApps/nchainz/config.sh MAINNET

# Run
nchainz node $(curl -s "http://169.254.169.254/latest/meta-data/public-ipv4"):5000 2>> log
