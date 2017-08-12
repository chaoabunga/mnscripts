sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common python-software-properties 
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update -y
sudo apt-get install -y git 
sudo apt-get install -y pkg-config 
sudo apt-get install -y build-essential 
sudo apt-get install -y libtool autotools-dev autoconf automake 
sudo apt-get install -y libssl-dev
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update -y
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libdb4.8-dev
sudo apt-get install -y libdb4.8++-dev
sudo apt-get install -y libevent-dev

sudo dd if=/dev/zero of=/swapfile bs=64M count=16
sudo mkswap /swapfile
sudo swapon /swapfile

git clone https://github.com/chaincoin/chaincoin
cd chaincoin
./autogen.sh
./configure
make
make install
mkdir .chaincoin
mv chc-scripts/chaincoin.conf .chaincoin
