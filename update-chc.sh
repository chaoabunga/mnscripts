cd
chaincoind stop
rm -fr chaincoin/
git clone https://github.com/chaincoin/chaincoin
cd chaincoin/src
./autogen.sh
./configure
make
make install
chaincoind
