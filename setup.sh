#!/bin/sh

apt-get update
apt-get dist-upgrade -y
apt-get install -y virtualenvwrapper

mkvirtualenv env01 -p /usr/bin/python3

mkdir ./env01

cd ./env01

git clone https://github.com/nfgit01/ts_selenium.git

cd ./ts_selenium.git

wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz

tar xzf ./geckodriver-v0.18.0-linux64.tar.gz

mkdir ./driver
mv ./geckodriver ./driver/

rm -rf ./geckodriver-v0.18.0-linux64.tar.gz

export PATH=$PATH:$(pwd)/driver

workon env01

pip3 install selenium
