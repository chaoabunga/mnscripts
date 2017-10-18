#!/bin/bash

cd ~/
sudo chaincoind stop
sudo rm -fr chaincoin/
sudo git clone https://github.com/chaincoin/chaincoin
cd chaincoin
sudo dd if=/dev/zero of=/swapfile bs=1M count=2000
sudo mkswap /swapfile
sudo chown root:root /swapfile
sudo chmod 0600 /swapfile
sudo swapon /swapfile
sudo ./autogen.sh
sudo ./configure --without-gui --disable-tests
sudo make
sudo make install
sudo chaincoind
