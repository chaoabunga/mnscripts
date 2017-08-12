#!/bin/sh
#TODO: add version number to script
#TODO: add chc version dependency to script
#TODO: make script less "ubuntu" or add other linux flavors
#TODO: remove dependency on sudo user account to run script (i.e. run as root and specifiy chaincoin user so chaincoin user does not require sudo privileges)

noflags() {
    echo "Usage: install-chc [options]"
    echo "Valid options are:"
    echo "-gui" #can prolly change this for something more interesting i.e. desktop, master node, etc.
    echo "-nogui" #this too
    echo "Do not provide more than one option."
    exit 2
}

error() {
	echo "|================================================|"
	echo "| An error occured, you must fix it to continue! |"
	echo "|================================================|"
	exit 1
}

success() {
	echo "SUCCESS! You can now run chaincoind"
	exit 0
}

prepdependencies() { #TODO: add error detection
	sudo apt-get update
	sudo apt-get upgrade -y
	sudo apt-get install automake libdb++-dev build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev libminiupnpc-dev git software-properties-common python-software-properties g++ bsdmainutils libevent-dev
	sudo add-apt-repository ppa:bitcoin/bitcoin -y
	sudo apt-get update
	sudo apt-get install libdb4.8-dev libdb4.8++-dev
}

createswap() { #TODO: add error detection
	sudo dd if=/dev/zero of=/swapfile bs=1024M count=2000
	sudo mkswap /swapfile
	sudo chown root:root /swapfile
	sudo chmod 0600 /swapfile
	sudo swapon /swapfile
}

clonerepo() { #TODO: add error detection
	git clone https://github.com/chaincoin/chaincoin.git
}

compile() {
	cd chaincoin #TODO: squash relative path
	./autogen.sh
	if [ $? -ne 0 ]; error fi
	./configure $1 --disable-tests
	if [ $? -ne 0 ]; error fi
	make
	if [ $? -ne 0 ]; error fi
	sudo make install
	if [ $? -ne 0 ]; error fi
}

install() {
	prepdependencies
	createswap
	clonerepo
	compile $1
	success
}

#main
if [ -z $1 ] || [ $# -gt 1 ]
then
	noflags
fi

if [ $1 = "-gui" ]
then
	install
elif [ $1 = "-nogui" ]
then
	install --without-gui
else
	noflags
fi