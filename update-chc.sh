#!/bin/bash

cd ~/
chaincoind stop
sudo rm -fr chaincoin/
sudo git clone https://github.com/chaincoin/chaincoin
cd chaincoin
sudo ./autogen.sh
sudo ./configure --without-gui --disable-tests
sudo make
sudo make install
chaincoind
